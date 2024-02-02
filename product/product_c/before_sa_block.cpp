#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>

#include <vector>

#include "xparameters.h"
#include "xil_cache.h"
#include "init_dvi.h"
#include "init_ov9655.h"
#include "init_xclk.h"
#include "cojt.h"

#define __max(a,b) (((a) > (b)) ? (a) : (b))
#define __min(a,b) (((a) < (b)) ? (a) : (b))
#define range(l, r, v) (__min(__max((l), (v)), (r)))

#define FRAME_WIDTH 1024
#define FRAME_HEIGHT 768

#define SIZE_OF_FRAME (FRAME_WIDTH * FRAME_HEIGHT * sizeof(pixel))

#define disp_base_addr_1 ((pixel(*)[FRAME_HEIGHT][FRAME_WIDTH])(0x20000000 + 0 * SIZE_OF_FRAME))
#define disp_base_addr_2 ((pixel(*)[FRAME_HEIGHT][FRAME_WIDTH])(0x20000000 + 1 * SIZE_OF_FRAME))
#define cap_base_addr_1 ((pixel(*)[FRAME_HEIGHT][FRAME_WIDTH])(0x20000000 + 2 * SIZE_OF_FRAME))
#define cap_base_addr_2 ((pixel(*)[FRAME_HEIGHT][FRAME_WIDTH])(0x20000000 + 3 * SIZE_OF_FRAME))
#define cap_base_addr_3 ((pixel(*)[FRAME_HEIGHT][FRAME_WIDTH])(0x20000000 + 4 * SIZE_OF_FRAME))
#define SET_CBLANK() do {CAPCTRL |= CBLANK;} while(0) #define CBLANK_ASSERTED ((CAPCTRL & CBLANK) != 0)

#define OBJECT_RAD 10
#define OBJECT_RAD_IN_PIXEL (OBJECT_RAD * W_PIXEL_PER_CELL)

#define BALL_RAD 2
#define BALL_RAD_IN_PIXEL (BALL_RAD * W_PIXEL_PER_CELL)

#define FIELD_WIDTH 256
#define FIELD_HEIGHT 256

#define DISP_FIELD_WIDTH 256
#define DISP_FIELD_HEIGHT 192

#define W_PIXEL_PER_CELL 4
#define H_PIXEL_PER_CELL 4

typedef union {
public:
    __attribute__((packed)) uint32_t raw;
    struct {
        uint8_t b, g, r, a;
    };

    uint8_t& operator[](int idx) {
        switch(idx) {
            case 0:
                return b;
            case 1:
                return g; case 2: return r; case 3: return a;
            default:
                return b;
        }
    }
} pixel;

const static pixel black = {.b = 0x00, .g = 0x00, .r = 0x00, .a = 0xff};
const static pixel white = {.b = 0xff, .g = 0xff, .r = 0xff, .a = 0xff};
// const static pixel red = {.b = 0x00, .g = 0x00, .r = 0xff, .a = 0xff};
// const static pixel green = {.b = 0x00, .g = 0xff, .r = 0x00, .a = 0xff};
// const static pixel blue = {.b = 0xff, .g = 0x00, .r = 0x00, .a = 0xff};

typedef pixel disp_t[FRAME_HEIGHT][FRAME_WIDTH];

class capture_manager {
private:
    disp_t *frames[3];
    int current_write_idx;
protected:
    int prev_prev_int(int idx) {
        return (idx + 1) % 3;
    }
    int _prev_int(int idx) {
        return (idx + 2) % 3;
    }
    int _next_idx(int idx) {
        return (idx + 1) % 3;
    }

public:
    capture_manager(disp_t *frame1, disp_t *frame2, disp_t *frame3) {
        frames[0] = frame1;
        frames[1] = frame2;
        frames[2] = frame3;

        current_write_idx = 0;
    }

    disp_t *get_prev_prev_cap() {
        return frames[prev_prev_int(current_write_idx)];
    }
    disp_t *get_prev_cap() {
        return frames[_prev_int(current_write_idx)];
    }
    disp_t *get_current_cap() {
        return frames[current_write_idx];
    }

    void wait_and_next_cap() {
        wait_cblank();
        current_write_idx = _next_idx(current_write_idx);
        CAPADDR = (size_t)get_current_cap();
    }

    void nonblock_next_cap() {
        if(CBLANK_ASSERTED) {
            current_write_idx = _next_idx(current_write_idx);
            CAPADDR = (size_t)get_current_cap();

            SET_CBLANK();
        }
    }

    void handler() {
        // TODO
    }
} capture_frames(cap_base_addr_1, cap_base_addr_2, cap_base_addr_3);

void handle_cint() {
    capture_frames.handler();
    CAPINT |= CAPINTCLR;
}

void handle_dint() {
    xil_printf("dint\n");
    DISPINT |= DISPINTCLR;
}

int disp_idx = 0;
disp_t *disp_frames[2];

void frames_init() {
    disp_frames[disp_idx] = disp_base_addr_1;
    disp_frames[1-disp_idx] = disp_base_addr_2;

    DISPADDR = (size_t)disp_frames[disp_idx];
    CAPADDR = (size_t)capture_frames.get_current_cap();
}

#undef disp_base_addr_1
#undef disp_base_addr_2
#undef cap_base_addr_1
#undef cap_base_addr_2
#undef cap_base_addr_3

void swap_disp() {
    disp_idx = 1 - disp_idx;
    DISPADDR = (size_t)disp_frames[disp_idx];
}
disp_t *get_hidden_disp() {
    return disp_frames[1 - disp_idx];
}

disp_t *get_disp() {
    return disp_frames[disp_idx];
}

void draw_pixel_unchecked(disp_t *disp, int x, int y, pixel p) {
    (*disp)[y][x] = p;
}

void draw_vertical_line_unchecked(disp_t *disp, int left_x, int right_x, int y, pixel p) {
    pixel *start = &(*disp)[y][left_x];
    pixel *end = &(*disp)[y][right_x];

    memset(start, p.raw, (char*)end - (char*)start);
}

void draw_circle_unchecked(disp_t *disp, int x, int y, int rad, pixel p) {
    for(int i = -rad;i <= rad;i++) {
        for(int j = -rad;j <= rad;j++) {
            if(i * i + j * j <= rad * rad) {
                draw_pixel_unchecked(disp, x + i, y + j, p);
            }
        }
    }
}

void clear_disp(disp_t *disp) {
    memset(disp, 0, sizeof(disp_t));
}

_Static_assert(DISP_FIELD_WIDTH * W_PIXEL_PER_CELL == 1024, "LIFE_WIDTH * W_PIXEL_PER_CELL must be 1024");
_Static_assert(DISP_FIELD_HEIGHT * H_PIXEL_PER_CELL == 768, "LIFE_HEIGHT * H_PIXEL_PER_CELL must be 768");

short bit_separate(short x) {
    x = (x | (x << 8)) & 0x00ff;
    x = (x | (x << 4)) & 0x0f0f;
    x = (x | (x << 2)) & 0x3333;
    x = (x | (x << 1)) & 0x5555;

    return x;
}

short to_morton(short x, short y) {
    return bit_separate(x) | (bit_separate(y) << 1);
}

class object_t {
public:
    short x, y;
    short morton;

    object_t(short x, short y) {
        this->x = x;
        this->y = y;

        this->morton = to_morton(x, y);
    }
};

int prev_x, xpos, ypos, zpos, button;

std::vector<object_t> objects;
class ball_t {
public:
    int x, y;
    int vx, vy;

    ball_t(int x, int y, int vx, int vy) {
        this->x = x;
        this->y = y;
        this->vx = vx;
        this->vy = vy;
    }

    std::pair<unsigned short, short> get_belong_space() {
        // p1 -- x
        // |     |
        // x  -- p2

        // 3 is size of ball
        short p1_x = __min(x, x + vx) - 0;
        short p2_x = __max(x, x + vx) + 0;
        short p1_y = __min(y, y + vy) - 0;
        short p2_y = __max(y, y + vy) + 0;

        short p1_mort = to_morton(p1_x, p1_y);
        short p2_mort = to_morton(p2_x, p2_y);
        short code = p2_mort ^ p1_mort;

        signed short mask = 0b1100000000000000;

        while(mask != -1) {
            if((code & mask) != 0) {
                break;
            }
            mask >>= 2; // arithmetic shift
        }

        return { mask, p1_mort & mask };
    }

    void draw(disp_t *buf, disp_t *cap) {
        int disp_x = x * W_PIXEL_PER_CELL;
        int disp_y = y * H_PIXEL_PER_CELL;

        draw_circle_unchecked(buf, disp_x, disp_y, BALL_RAD_IN_PIXEL, white);
    }

    void on_detect_collision(object_t& obj) {
        // xil_printf("collision: %d, obj = %p\n", dist, obj);
        // ball.vx *= -1;
        // ball.vy *= -1;

        if(obj.x <= x) {
            vx *= -1;
        }
        if(obj.y <= y) {
            vy *= -1;
        }
    }
};

std::vector<ball_t> balls;

#define USE_DIRECT_DISTANCE

#ifdef USE_LINE_CHECK
struct param {
    int x1, y1, x2, y2;
    int dx, dy, dist;
};

struct param prepare_line_check_param(int x1, int y1, int x2, int y2) {
    param ret = {.x1 = x1, .y1 = y1, .x2 = x2, .y2 = y2};

    int tdx = ret.dx = x2 - x1;
    int tdy = ret.dy = y2 - y1;
    ret.dist = tdx * tdx + tdy * tdy; // prevent memory access

    return ret;
}

int line_check(int x0, int y0, struct param *param) {
    int x1_m_x0 = param->x1 - x0;
    int y1_m_y0 = param->y1 - y0;

    int tt = -(param->dx * x1_m_x0 + param->dy * y1_m_y0);
    if(tt < 0) {
        return x1_m_x0 * x1_m_x0 + y1_m_y0 * y1_m_y0;
    }

    if(tt > param->dist) {
        int t = (param->x2 - x0);
        t *= t;
        int t2 = (param->y2 - y0);
        return t2 * t2 + t;
    }

    int t = param->dx * y1_m_y0 - param->dy * x1_m_x0;;
    return (t * t) / param->dist;
}
#endif // USE_LINE_CHECK

#ifdef USE_DIRECT_DISTANCE

int direct_distance(int x1, int y1, int x2, int y2) {
    int dx = x2 - x1;
    int dy = y2 - y1;

    return dx * dx + dy * dy;
}

#endif // USE_DIRECT_DISTANCE

int hit_threshold = (OBJECT_RAD + BALL_RAD) * (OBJECT_RAD + BALL_RAD);
// int hit_threshold = 260;

void check_collision() {
    int _hit_threshold = hit_threshold;
    for(auto& ball: balls) {
        auto [mask, code] = ball.get_belong_space();

#ifdef USE_LINE_CHECK
        struct param param = prepare_line_check_param(ball.x, ball.y, ball.x + ball.vx, ball.y + ball.vy);
#endif // USE_LINE_CHECK

        // for(auto& obj: objects) { // use 4-indexed morton code
        for(auto obj = objects.begin(); obj != objects.end();) {
            if(((*obj).morton & mask) == code) {
                // check collision carenfully

#ifdef USE_LINE_CHECK
                int dist = line_check((*obj).x, (*obj).y, &param);
#elif defined(USE_DIRECT_DISTANCE)
                int dist = direct_distance((*obj).x, (*obj).y, ball.x, ball.y);
#endif
                // xil_printf("dist: %d\n", dist);

                if(dist <= _hit_threshold) {
                    ball.on_detect_collision(*obj);

                    obj = objects.erase(obj);
                    continue;
                }
            }

            obj++;
        }
    }
}


#define BAR_HEIGHT 150

int bar_center;
int bar_length = 20;

// #define BAR_LEFT (__min(__max(bar_center - bar_length / 2, 0), FRAME_WIDTH))
// #define BAR_RIGHT (__min(__max(bar_center + bar_length / 2, 0), FRAME_WIDTH))
#define BAR_LEFT (range(0, FIELD_WIDTH, bar_center - bar_length / 2))
#define BAR_RIGHT (range(0, FIELD_WIDTH, bar_center + bar_length / 2))

void draw_bar(disp_t *buf) {
    int line_l_x = BAR_LEFT * W_PIXEL_PER_CELL;
    int line_r_x = BAR_RIGHT * W_PIXEL_PER_CELL;

    draw_vertical_line_unchecked(buf, line_l_x, line_r_x, BAR_HEIGHT * H_PIXEL_PER_CELL, white);
}

void update_ball() {
    int bar_left = BAR_LEFT;
    int bar_right = BAR_RIGHT;

    for(auto ball = balls.begin(); ball != balls.end(); ) {
        // ball_t* ball = &balls[ball_idx];

        int current_y = (*ball).y;
        int next_y = (*ball).y + (*ball).vy;
        int current_x = (*ball).x;
        int next_x = (*ball).x + (*ball).vx;

        // xil_printf("1: %d < %d = %d\n", current_y, BAR_HEIGHT, current_y < BAR_HEIGHT);
        // xil_printf("2: %d <= %d = %d\n", BAR_HEIGHT, next_y, BAR_HEIGHT <= next_y);
        if(current_y < BAR_HEIGHT && BAR_HEIGHT <= next_y) {
            if((*ball).vy != 1) {
                xil_printf("panic: (*ball).vy != 1\n");
                return;
            }

            int next_x = (*ball).x + (*ball).vx;

            // xil_printf("3: %d <= %d = %d\n", bar_left, next_x, bar_left <= next_x);
            // xil_printf("4: %d < %d = %d\n", next_x, bar_right, next_x < bar_right);
            if(bar_left <= next_x && next_x < bar_right) {
                (*ball).vy *= -1;
                next_y = (*ball).y + (*ball).vy;

                (*ball).vx += range(-2, 2, xpos - prev_x);
                (*ball).vx = range(-5, 5, (*ball).vx + rand() % 3 - 1);

                next_x = (*ball).x + (*ball).vx;
            }
        }

        if(0 <= current_x && next_x < 0) { // left wall
            (*ball).vx *= -1;
            next_x = (*ball).x + (*ball).vx;
        }

        if(current_x < DISP_FIELD_WIDTH && DISP_FIELD_WIDTH <= next_x) { // right wall
            (*ball).vx *= -1;
            next_x = (*ball).x + (*ball).vx;
        }

        if(0 <= current_y && next_y < 0) { // top wall
            (*ball).vy *= -1;
            next_y = (*ball).y + (*ball).vy;
        }

        if(current_y < DISP_FIELD_HEIGHT && DISP_FIELD_HEIGHT <= next_y) { // bottom wall
            ball = balls.erase(ball);
            continue;
        }

        (*ball).x = next_x;
        (*ball).y = next_y;

        ball++;
    }
}

void draw_balls(disp_t *buf, disp_t *cap) {
    for(auto& ball : balls) {
        // draw_ball(&ball, buf, cap);
        ball.draw(buf, cap);
    }
}

void draw_objects(disp_t *buf, disp_t *cap) {
    for(auto& obj: objects) {
        int disp_x = obj.x * W_PIXEL_PER_CELL;
        int disp_y = obj.y * H_PIXEL_PER_CELL;

        for(int x = -OBJECT_RAD_IN_PIXEL; x <= OBJECT_RAD_IN_PIXEL; x++) {
            for(int y = -OBJECT_RAD_IN_PIXEL; y <= OBJECT_RAD_IN_PIXEL; y++) {
                if(x * x + y * y <= OBJECT_RAD_IN_PIXEL * OBJECT_RAD_IN_PIXEL) {
                    // draw_pixel(buf, disp_x + x, disp_y + y, white);
                    (*buf)[disp_y + y][disp_x + x] = (*cap)[disp_y + y][disp_x + x];
                }
            }
        }
    }
}



int main() {
    init_tpf410();
    init_xclk(XCLK24MHz);

    xil_printf("compilation date: %s %s\n", __DATE__, __TIME__);

    init_ov9655(OV9655_SXGA);

    CojtCtr cap_handler, disp_handler;
    ScuGicInt_Init();
    ScuGicInt_Reg(XPAR_FABRIC_DISPLAY_0_DSP_IRQ_INTR, &disp_handler, (void *)handle_dint);
    ScuGicInt_Reg(XPAR_FABRIC_CAPTURE_0_CAP_IRQ_INTR, &cap_handler,  (void *)handle_cint);

    frames_init();

    DISPINT |= DISPINTENBL;
    wait_vblank();
    set_resolution(XGA);
    DISPFIFO = DSP_FIFO_OVER | DSP_FIFO_UNDER;
    DISPCTRL = DISPON;

    CAPINT |= CAPINTENBL;
    wait_cblank();
    CAPFIFO = CAP_FIFO_OVER | CAP_FIFO_UNDER;
    CAPCTRL = CAPON;

    // initialize mouse
    init_mouse(XGA, MOUSE_FAST);

    // fill buffer
    capture_frames.wait_and_next_cap();
    capture_frames.wait_and_next_cap();

    memset(get_disp(), 0, sizeof(disp_t));
    memset(get_hidden_disp(), 0, sizeof(disp_t));

    Xil_DCacheFlush();

   // objects.push_back(make_object(15 * 10, 10 * 10));

    ball_t debug_mouse_ball(0, 0, 0, 0);

    while(!get_mouse(&prev_x, &ypos, &zpos, &button));
    int prev_button = 0;
    for(int frame = 0; ;frame++) {
        // capture_frames.nonblock_next_cap();

        if ( get_mouse(&xpos, &ypos, &zpos, &button) )  {
            // xil_printf("xpos = %d, ypos = %d, zpos = %d, button = %d\n", xpos, ypos, zpos, button);
            bar_center = xpos / W_PIXEL_PER_CELL;

            debug_mouse_ball.x = xpos / W_PIXEL_PER_CELL;
            debug_mouse_ball.y = ypos / H_PIXEL_PER_CELL;
        }

        if(!prev_button && button) {
            if(button == 1) {
                balls.push_back(ball_t(150, 130, 0, 1));
            } else if(button == 2) {
                if(objects.size() == 0) {
                    for(int i = 1;i < 13; i++) {
                        for(int j = 1;j < 7;j++) {
                            // object_t obj = make_object(OBJECT_RAD * 2 * i, OBJECT_RAD * 2 * j);
                            object_t obj(OBJECT_RAD * 2 * i, OBJECT_RAD * 2 * j);
                            objects.push_back(obj);
                        }
                    }
                } else {
                    objects.clear();
                }
            } else if(button == 4) {
                hit_threshold += 10;
                xil_printf("hit_threshold = %d\n", hit_threshold);
            }
        }
        prev_button = button;

        update_ball();

        disp_t* hidden = get_hidden_disp();
        clear_disp(hidden);
        draw_bar(hidden);
        draw_balls(hidden, capture_frames.get_prev_cap());
        debug_mouse_ball.draw(hidden, capture_frames.get_prev_cap());
        draw_objects(hidden, capture_frames.get_prev_cap());

        check_collision();

        Xil_DCacheFlush();
        wait_vblank();
        swap_disp();

        // xil_printf("frame = %d\n", frame);

        prev_x = xpos;
    }

    return 0;
}
