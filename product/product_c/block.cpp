#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>
#include <time.h>

#include <vector>

#include "init_dvi.h"
#include "init_ov9655.h"
#include "init_xclk.h"
#include "cojt.h"

#include "xil_cache.h"
#include "xparameters.h"
#include "ff.h"

#define __max(a,b) (((a) > (b)) ? (a) : (b))
#define __min(a,b) (((a) < (b)) ? (a) : (b))
#define range(l, r, v) (__min(__max((l), (v)), (r)))

#define FRAME_WIDTH 1024
#define FRAME_HEIGHT 768

#define SIZE_OF_FRAME (FRAME_WIDTH * FRAME_HEIGHT * sizeof(pixel))

#define disp_base_addr_1 ((pixel(*)[FRAME_HEIGHT][FRAME_WIDTH])(0x20000000 + 0 * SIZE_OF_FRAME))
#define disp_base_addr_2 ((pixel(*)[FRAME_HEIGHT][FRAME_WIDTH])(0x20000000 + 1 * SIZE_OF_FRAME))
#define cap_base_addr ((pixel(*)[FRAME_HEIGHT][FRAME_WIDTH])(0x20000000 + 2 * SIZE_OF_FRAME))

#define SET_CBLANK() do {CAPCTRL |= CBLANK;} while(0)
#define CBLANK_ASSERTED ((CAPCTRL & CBLANK) != 0)

#define OBJECT_RAD 5
#define OBJECT_RAD_IN_PIXEL (OBJECT_RAD * W_PIXEL_PER_CELL + 5)

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
                return g; 
            case 2:
                return r;
            case 3:
                return a;
            default:
                return b;
        }
    }
} pixel;

const static pixel black = {.b = 0x00, .g = 0x00, .r = 0x00, .a = 0xff};
const static pixel white = {.b = 0xff, .g = 0xff, .r = 0xff, .a = 0xff};
const static pixel red = {.b = 0x00, .g = 0x00, .r = 0xff, .a = 0xff};
const static pixel green = {.b = 0x00, .g = 0xff, .r = 0x00, .a = 0xff};
const static pixel blue = {.b = 0xff, .g = 0x00, .r = 0x00, .a = 0xff};

typedef pixel disp_t[FRAME_HEIGHT][FRAME_WIDTH];

disp_t *background_image_1;
disp_t *background_image_2;

#define NUM_OF_CAP_FRAMES 5

class capture_manager {
public:
    disp_t *frames[NUM_OF_CAP_FRAMES];
    int current_write_idx;
public:
    int _prev_int(int idx) {
        return (idx + NUM_OF_CAP_FRAMES - 1) % NUM_OF_CAP_FRAMES;
    }
    int _next_idx(int idx) {
        return (idx + 1) % NUM_OF_CAP_FRAMES;
    }

public:
    capture_manager(disp_t *base_frame) {
        for(int i = 0; i < NUM_OF_CAP_FRAMES; i++) {
            frames[i] = base_frame + i;
        }

        current_write_idx = 0;
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

    void handler() {
        current_write_idx = _next_idx(current_write_idx);
        CAPADDR = (size_t)get_current_cap();
    }
} capture_frames(cap_base_addr);

int cap_frame = 0, disp_frame = 0;

void handle_cint() {
    cap_frame++;
    capture_frames.handler();
    CAPINT |= CAPINTCLR;
}

void handle_dint() {
    disp_frame++;
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

void draw_circle_unchecked(disp_t *disp, int x, int y, int rad, pixel fill, pixel border) {
    int rad_sqr = rad * rad;
    int rad_sqr_half = rad_sqr / 4;
    for(int i = -rad;i <= rad;i++) {
        for(int j = -rad;j <= rad;j++) {
            int check = i * i + j * j;
            if(check < rad_sqr_half) {
                draw_pixel_unchecked(disp, x + i, y + j, fill);
            } else if(check < rad_sqr) {
                draw_pixel_unchecked(disp, x + i, y + j, border);
            }
        }
    }
}

char ascii_buf[16 * 12][16 * 6] = {0};

void char_to_index(unsigned char c, int *x, int *y) {
    *x = (c & 0xf) * 6;
    *y = (c >> 4) * 12;
}
void draw_char_unchecked(disp_t *disp, int font_size, int x, int y, char c, pixel p) {
    int x_idx, y_idx;
    char_to_index(c, &x_idx, &y_idx);

    for(int i = 0;i < 12;i++) {
        for(int j = 0;j < 6;j++) {
            if(ascii_buf[y_idx + i][x_idx + j]) {
                for(int si = 0;si < font_size;si++) {
                    for(int sj = 0;sj < font_size;sj++) {
                        draw_pixel_unchecked(disp, x + j * font_size + sj, y + i * font_size + si, p);
                    }
                }
            }
        }
    }
}

typedef struct _printf_state_t {
    int initial_x, initial_y;
    int current_x, current_y;
    int font_size;
    pixel color;

public:
    _printf_state_t(int font_size, int x, int y, pixel color) {
        this->initial_x = x;
        this->initial_y = y;
        this->current_x = x;
        this->current_y = y;
        this->font_size = font_size;
        this->color = color;
    }

    void set_color(pixel color) {
        this->color = color;
    }
} printf_state_t;

void printf(disp_t *disp, printf_state_t* state, const char* fmt, ...) {
    char buf[256];
    va_list args;

    va_start(args, fmt);
    vsnprintf(buf, 256, fmt, args);
    va_end(args);

    char current, *p = &buf[0];
    while((current = *p++) != '\0') {
        switch(current) {
            case '\n':
                state->current_x = state->initial_x;
                state->current_y += 12 * state->font_size;
                break;
            default:
                draw_char_unchecked(disp, state->font_size, state->current_x, state->current_y, current, state->color);
                state->current_x += 6 * state->font_size;
                break;
        }
    }
}

void clear_disp(disp_t *disp) {
    memset(disp, 0, sizeof(disp_t));
}

FATFS fs;

void fat_init(void) {
    f_mount(&fs, "", 0);
}

unsigned int read_file(const TCHAR* path, void* buf, unsigned int num) {
    FIL fil;
    unsigned int num_of_read;

    if (f_open(&fil, path, FA_READ)) {
        xil_printf("Open Error!\n");
    }
    f_read(&fil, buf, num, &num_of_read);

    return num_of_read;
}

unsigned int write_file(const TCHAR* path, void* buf, unsigned int num) {
    FIL fil;
    unsigned int num_of_written;

    if (f_open(&fil, path, FA_WRITE | FA_CREATE_ALWAYS)) {
        xil_printf("Open Error!\n");
    }
    f_write(&fil, buf, num, &num_of_written);
    
    if (f_close(&fil)) {
        xil_printf("Close Error!\n");
    }

    if(num_of_written != num) {
        xil_printf("write error: %d\n", num_of_written);
    } else {
        xil_printf("write success: %d\n", num_of_written);
    }

    return num_of_written;
}

// Game!

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
    short morton; // 4-indexed morton code
    int super_object;
    pixel border_color;

    object_t(short x, short y) {
        this->x = x;
        this->y = y;

        this->morton = to_morton(x, y);
        if(rand() % 10 == 0) {
            this->super_object = 1;
            this->border_color = red;
        } else {
            this->super_object = 0;
            this->border_color = black;
        }
    }

    void draw(disp_t* buf, disp_t *cap) {
        int disp_x = x * W_PIXEL_PER_CELL;
        int disp_y = y * H_PIXEL_PER_CELL;

        int border = OBJECT_RAD_IN_PIXEL * OBJECT_RAD_IN_PIXEL - 30;
        int fill = OBJECT_RAD_IN_PIXEL * OBJECT_RAD_IN_PIXEL;
        for(int x = -OBJECT_RAD_IN_PIXEL; x <= OBJECT_RAD_IN_PIXEL; x++) {
            for(int y = -OBJECT_RAD_IN_PIXEL; y <= OBJECT_RAD_IN_PIXEL; y++) {
                if(x * x + y * y <= border) {
                    // draw_pixel(buf, disp_x + x, disp_y + y, white);
                    (*buf)[disp_y + y][disp_x + x] = (*cap)[disp_y + y][disp_x + x];
                } else if(x * x + y * y <= fill) {
                    // draw_pixel(buf, disp_x + x, disp_y + y, black);
                    (*buf)[disp_y + y][disp_x + x] = border_color;
                }
            }
        }
    }

    void on_detect_collision();
};

int prev_x, xpos, ypos, zpos, button;

std::vector<object_t> objects;
int delete_object_count = 0;

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

        draw_circle_unchecked(buf, disp_x, disp_y, BALL_RAD_IN_PIXEL, white, blue);
    }

    void on_detect_collision(object_t& obj) {
        // xil_printf("collision: %d, obj = %p\n", dist, obj);
        // ball.vx *= -1;
        // ball.vy *= -1;

        delete_object_count++;
        obj.on_detect_collision();

        if(obj.x <= x) {
            vx *= -1;
        }
        if(obj.y <= y) {
            vy *= -1;
        }
    }
};

class mouse_ball: public ball_t {
public:
    mouse_ball(int x, int y, int vx, int vy): ball_t(x, y, vx, vy) {}
    void draw(disp_t *buf, disp_t *cap) {
        int disp_x = x * W_PIXEL_PER_CELL;
        int disp_y = y * H_PIXEL_PER_CELL;

        draw_circle_unchecked(buf, disp_x, disp_y, BALL_RAD_IN_PIXEL, black, red);
    }
};

std::vector<ball_t> balls;


void object_t::on_detect_collision() {
    if(super_object) {
        ball_t ball(x, y, 0, 1);
        balls.push_back(ball);
    }
}

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
int ball_generate = 0;

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
        obj.draw(buf, cap);
    }
}

enum game_state_t {
    TITLE,
    PLAYING,
    GAMEOVER,
    TAKE_PIC,
};

const char* state_to_string(game_state_t *state) {
    switch(*state) {
        case TITLE:
            return "TITLE";
        case PLAYING:
            return "PLAYING";
        case GAMEOVER:
            return "GAMEOVER";
        case TAKE_PIC:
            return "TAKE_PIC";
        default:
            return "UNKNOWN";
    }
};

enum game_state_t game_state = game_state_t::TITLE;

void restart_game() {
    objects.clear();
    for(int i = 1;i < 13 * 2; i++) {
        for(int j = 1;j < 7 * 2 - 1;j++) {
            // object_t obj = make_object(OBJECT_RAD * 2 * i, OBJECT_RAD * 2 * j);
            object_t obj(OBJECT_RAD * 2 * i, OBJECT_RAD * 2 * j);
            objects.push_back(obj);
        }
    }

    balls.clear();
    ball_generate = 0;
    delete_object_count = 0;
    hit_threshold = (OBJECT_RAD + BALL_RAD) * (OBJECT_RAD + BALL_RAD);
}

void take_picture() {
    char filename[256];
    sprintf(filename, "result-%d.bit", ball_generate);

    write_file(filename, get_disp(), SIZE_OF_FRAME);
}

void switch_game_mode() {
    switch(game_state) {
        case game_state_t::TITLE:
            game_state = game_state_t::PLAYING;
            restart_game();
            break;
        case game_state_t::PLAYING:
            game_state = game_state_t::TITLE;
            break;
        case game_state_t::GAMEOVER:
            game_state = game_state_t::TAKE_PIC;
            break;
        case game_state_t::TAKE_PIC:
            take_picture();

            game_state = game_state_t::TITLE;
            break;
    }
}

int lowest_ball_generate = 0xffff;
int found_record = 0;

int remain_time;
int waiting = 0;

void draw_game_over(disp_t *buf) {
    printf_state_t state(0, 0, 0, white);

    memmove(buf, background_image_2, 1024 * 550 * sizeof(pixel));

    state = printf_state_t(10, 50, 10, red);
    printf(buf, &state, "GAME is OVER!\n");

    state = printf_state_t(5, 100, 250, blue);
    printf(buf, &state, "Game results\n\n");
    printf(buf, &state, "ball gen: %d\n", ball_generate);

    if(lowest_ball_generate > ball_generate) {
        found_record = 1;
        lowest_ball_generate = ball_generate;
    }

    if(found_record) {
        state = printf_state_t(10, 100, 500, green);
        printf(buf, &state, "  NEW RECORD!\n");
    } else {
        printf(buf, &state, "lowest ball generation: %d\n", lowest_ball_generate);
    }
}

int screenn_shot_idx = 0;
void take_screen_shot() {
    char filename[256];
    sprintf(filename, "screen_shot-%d.bit", screenn_shot_idx);

    write_file(filename, get_disp(), SIZE_OF_FRAME);
    screenn_shot_idx++;
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

    int size = 768 * 384 * 4;
    char read_buffer[size];

    fat_init();
    int read = read_file("shnm6x12r.bin", read_buffer, size);

    if(read != size) {
        xil_printf("read error: %d\n", read);
        return 1;
    }
    
    for(int y = 0;y < 16 * 12;y++) {
        for(int x = 0;x < 16 * 6;x++) {
            int tx = x * 4;
            int ty = y * 4;
            ascii_buf[y][x] = read_buffer[((ty * 16 * 6 * 4) + tx) * 4];
        }
    }

    background_image_1 = (disp_t*)cap_base_addr + 11;
    read = read_file("dogeza1.bin", background_image_1, SIZE_OF_FRAME);

    if(read != SIZE_OF_FRAME) {
        xil_printf("read error: %d\n", read);
        return 1;
    }

    background_image_2 = (disp_t*)cap_base_addr + 12;
    read = read_file("dogeza2.bin", background_image_2, SIZE_OF_FRAME);

    if(read != SIZE_OF_FRAME) {
        xil_printf("read error: %d\n", read);
        return 1;
    }

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

    mouse_ball debug_mouse_ball(0, 0, 0, 0);

    while(!get_mouse(&prev_x, &ypos, &zpos, &button));
    int prev_button = 0;
    int prev_zpos = 0;

    for(int frame = 0; ;frame++) {
        if ( get_mouse(&xpos, &ypos, &zpos, &button) )  {
            // xil_printf("xpos = %d, ypos = %d, zpos = %d, button = %d\n", xpos, ypos, zpos, button);
            bar_center = xpos / W_PIXEL_PER_CELL;

            debug_mouse_ball.x = xpos / W_PIXEL_PER_CELL;
            debug_mouse_ball.y = ypos / H_PIXEL_PER_CELL;
        }

        if(!prev_button && button) {
            if(button == 1) {
                balls.push_back(ball_t(xpos / W_PIXEL_PER_CELL, 130, 0, 1));
                ball_generate++;
            } else if(button == 2) {
                switch_game_mode();
            } else if(button == 4) {
                hit_threshold += 100;
                xil_printf("hit_threshold = %d\n", hit_threshold);
            }
        } 
        prev_button = button;

        if(!prev_zpos && zpos) {
            take_screen_shot();
        }
        prev_zpos = zpos;

        disp_t* hidden = get_hidden_disp();
        disp_t* cap = capture_frames.get_prev_cap();

        clear_disp(hidden);

        printf_state_t state(1, 0, 0, white);

        switch(game_state) {
            case game_state_t::TITLE: {
                state = printf_state_t(5, 50, 50, red);
                printf(hidden, &state, "Middle click to start game!\n");

                break;
            }
            
            case game_state_t::PLAYING: {
                memmove(hidden, background_image_1, 1024 * 550 * sizeof(pixel));
                update_ball();

                draw_bar(hidden);
                draw_balls(hidden, cap);
                debug_mouse_ball.draw(hidden, cap);
                draw_objects(hidden, cap);

                check_collision();
                
                if(objects.size() == 0) {
                    if(!waiting) {
                        remain_time = 200;
                        waiting = 1;
                    }

                    if(waiting) {
                        remain_time--;

                        if(remain_time == 0) {
                            game_state = game_state_t::GAMEOVER;
                            waiting = 0;
                            found_record = 0;
                        }
                    }
                }

                break;
            }

            case game_state_t::GAMEOVER: {
                draw_game_over(hidden);
                break;
            }
            
            case game_state_t::TAKE_PIC: {
                draw_game_over(hidden);

                for(int x = 650; x < 950; x++) {
                    for(int y = 160; y < 480;y++) {
                        (*hidden)[y][x] = (*cap)[y][x];
                    }
                }

                break;
            }
        }

        // prints
        
        state = printf_state_t(1, 20, 630, white);
        
        state.set_color(red);
        printf(hidden, &state, "CONTROLS\n");
        
        if(button == 4) {
            state.set_color(green);
        } else {
            state.set_color(blue);
        }
        printf(hidden, &state, "  left click: increase hit_threshold\n");

        if(button == 2) {
            state.set_color(green);
        } else {
            state.set_color(blue);
        }

        switch(game_state) {
            case game_state_t::TITLE:
                printf(hidden, &state, "  middle click: start game\n");
                break;
            case game_state_t::PLAYING:
                printf(hidden, &state, "  middle click: back to title\n");
                break;
            case game_state_t::GAMEOVER:
                printf(hidden, &state, "  middle click: take picture\n");
                break;
            case game_state_t::TAKE_PIC:
                printf(hidden, &state, "  middle click: back to title\n");
                break;
        }

        if(button == 1) {
            state.set_color(green);
        } else {
            state.set_color(blue);
        }
        printf(hidden, &state, "  right click: generate objects\n");

        state = printf_state_t(1, 250, 630, white);

        state.set_color(red);
        printf(hidden, &state, "SYSTEM STATUS\n");

        state.set_color(white);
        printf(hidden, &state, "  complation date: %s %s\n", __DATE__, __TIME__);
        printf(hidden, &state, "  display width: %d\n", FRAME_WIDTH);
        printf(hidden, &state, "  display height: %d\n", FRAME_HEIGHT);

        state = printf_state_t(1, 500, 630, white);

        state.set_color(red);
        printf(hidden, &state, "SENSORS\n");

        state.set_color(white);
        printf(hidden, &state, "  mouse xpos: %d\n", xpos);
        printf(hidden, &state, "  mouse ypos: %d\n", ypos);
        printf(hidden, &state, "  mouse zpos: %d\n", zpos);
        printf(hidden, &state, "  mouse button: %d\n", button);

        state = printf_state_t(1, 620, 630, white);

        state.set_color(red);
        printf(hidden, &state, "GAME INFORMATIONS\n");

        state.set_color(white);
        printf(hidden, &state, "  hit_threshold = %d\n", hit_threshold);
        printf(hidden, &state, "  ball: %d\n", balls.size());
        printf(hidden, &state, "  obj: %d\n", objects.size());
        printf(hidden, &state, "  ball generation: %d\n", ball_generate);
        printf(hidden, &state, "  delete obj: %d\n", delete_object_count);
        printf(hidden, &state, "  game state: %s\n", state_to_string(&game_state));
        printf(hidden, &state, "  lowest ball generation: %d\n", lowest_ball_generate);

        state = printf_state_t(1, 830, 630, white);

        state.set_color(red);
        printf(hidden, &state, "SYSTEM INFORMATION\n");

        state.set_color(white);
        printf(hidden, &state, "  cap_frame: %d\n", cap_frame);
        printf(hidden, &state, "  disp_frame: %d\n", disp_frame);
        printf(hidden, &state, "  frame: %d\n", frame);
        printf(hidden, &state, "  display addr: %.8p\n", (void*)DISPADDR);
        printf(hidden, &state, "  capture addr: %.8p\n", (void*)CAPADDR);
        printf(hidden, &state, "  background addr 1: %.8p\n", (void*)background_image_1);
        printf(hidden, &state, "  background addr 2: %.8p\n", (void*)background_image_2);

        state = printf_state_t(1, 0, 0, blue);
        printf(hidden, &state, "COJT-HW 101 Twitter: @Iwancof_ptr. Thank you for playing!\n");


        Xil_DCacheFlush();
        wait_vblank();
        swap_disp();

        prev_x = xpos;
    }

    return 0;
}
