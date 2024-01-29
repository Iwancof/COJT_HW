#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <math.h>

#include "xparameters.h"
#include "xil_cache.h"
#include "init_dvi.h"
#include "init_ov9655.h"
#include "init_xclk.h"
#include "cojt.h"

#define SIZE_OF_FRAME (1024 * 768 * sizeof(pixel))

#define disp_base_addr_1 ((void*)0x20000000 + 0 * SIZE_OF_FRAME)
#define disp_base_addr_2 ((void*)0x20000000 + 1 * SIZE_OF_FRAME)
#define cap_base_addr_1 ((void*)0x20000000 + 2 * SIZE_OF_FRAME)
#define cap_base_addr_2 ((void*)0x20000000 + 3 * SIZE_OF_FRAME)
#define cap_base_addr_3 ((void*)0x20000000 + 4 * SIZE_OF_FRAME)


typedef struct {
	uint8_t b, g, r, a;
} pixel;

uint8_t* by_index(pixel *p, int idx) {
    switch(idx) {
        case 0:
            return &p->b;
        case 1:
            return &p->g;
        case 2:
            return &p->r;
        case 3:
            return &p->a;
        default:
            return NULL;
    }
}

typedef pixel disp_t[768][1024];

struct {
    disp_t *frames[3];
    int current_write_idx;
} capture_frames = {.frames = {cap_base_addr_1, cap_base_addr_2, cap_base_addr_3}, .current_write_idx = 0};

inline int _prev_prev_idx(int idx) {
    return (idx + 1) % 3;
}

inline int _prev_idx(int idx) {
    return (idx + 2) % 3;
}

inline int _next_idx(int idx) {
    return (idx + 1) % 3;
}

inline disp_t* get_prev_prev_cap() {
    return capture_frames.frames[_prev_prev_idx(capture_frames.current_write_idx)];
}

inline disp_t* get_prev_cap() {
    return capture_frames.frames[_prev_idx(capture_frames.current_write_idx)];
}

inline disp_t* get_current_cap() {
    return capture_frames.frames[capture_frames.current_write_idx];
}

void wait_and_next_cap() {
    wait_cblank();
    capture_frames.current_write_idx = _next_idx(capture_frames.current_write_idx);
    CAPADDR = (size_t)get_current_cap();
}

int disp_idx = 0;
int current_write_idx = 2;
disp_t *disp_frames[2];


void frames_init() {
    disp_frames[disp_idx] = disp_base_addr_1;
    disp_frames[1-disp_idx] = disp_base_addr_2;

    DISPADDR = (size_t)disp_frames[disp_idx];
    CAPADDR = (size_t)get_current_cap();

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

// #define LIFE_WIDTH 1024
// #define LIFE_HEIGHT 768
#define LIFE_WIDTH 256
#define LIFE_HEIGHT 192

#define W_PIXEL_PER_CELL 4
#define H_PIXEL_PER_CELL 4

_Static_assert(LIFE_WIDTH * W_PIXEL_PER_CELL == 1024, "LIFE_WIDTH * W_PIXEL_PER_CELL must be 1024");
_Static_assert(LIFE_HEIGHT * H_PIXEL_PER_CELL == 768, "LIFE_HEIGHT * H_PIXEL_PER_CELL must be 768");

int current = 0;
uint8_t life[2][3][LIFE_HEIGHT][LIFE_WIDTH];
// [buffer_idx][channel][y][x]

// 

void init_life(disp_t *cap) {
    for(int channel = 0; channel < 3; channel++) {
        for(int y = 0;y < LIFE_HEIGHT;y++) {
            for(int x = 0;x < LIFE_WIDTH;x++) {
                // life[current][channel][y][x] = *by_index(&(*cap)[y][x], channel) > 0x30;
                if(*by_index(&(*cap)[y * H_PIXEL_PER_CELL][x * W_PIXEL_PER_CELL], channel) < 0x80) {
                    life[current][channel][y][x] = rand() % 2;
                } else {
                    life[current][channel][y][x] = 0;
                }
            }
        }
    }
}

const int dx[] = {-1, 0, 1, -1, 1, -1, 0, 1};
const int dy[] = {-1, -1, -1, 0, 0, 1, 1, 1};

uint8_t get_at(int fidx, int channel, int x, int y) {
    if(x < 0 || x >= LIFE_WIDTH || y < 0 || y >= LIFE_HEIGHT) {
        return 0;
    } else {
        return life[fidx][channel][y][x];
    }
}

uint8_t count_around(int fidx, int channel, int x, int y) {
    uint8_t cnt = 0;
    /*
    for(int i = 0; i < 8; i++) {
        cnt += get_at(fidx, channel, x + dx[i], y + dy[i]);
    }
    */
    cnt += get_at(fidx, channel, x - 1, y - 1);
    cnt += get_at(fidx, channel, x, y - 1);
    cnt += get_at(fidx, channel, x + 1, y - 1);
    cnt += get_at(fidx, channel, x - 1, y);
    cnt += get_at(fidx, channel, x + 1, y);
    cnt += get_at(fidx, channel, x - 1, y + 1);
    cnt += get_at(fidx, channel, x, y + 1);
    cnt += get_at(fidx, channel, x + 1, y + 1);
    
    return cnt;
}

void next_life() {
    int nidx = 1 - current;

    for(int channel = 0; channel < 3; channel++) { // for cache locality
        for(int y = 0; y < LIFE_HEIGHT; y++) {
            for(int x = 0; x < LIFE_WIDTH; x++) {
                uint8_t is_alive = get_at(current, channel, x, y);
                uint8_t cnt = count_around(current, channel, x, y);

                life[nidx][channel][y][x] = (is_alive && (cnt == 2 || cnt == 3)) || (!is_alive && cnt == 3);
            }
        }
    }
}

void apply_diff(disp_t *prev_prev, disp_t *prev) {
    int nidx = 1 - current;
    for(int channel = 0; channel < 3; channel++) {
        for(int y = 0;y < LIFE_HEIGHT; y++) {
            for(int x = 0; x < LIFE_WIDTH; x++) {
                int cap_y = y * H_PIXEL_PER_CELL;
                int cap_x = x * W_PIXEL_PER_CELL;

                if(abs(*by_index(&(*prev_prev)[cap_y][cap_x], channel) - *by_index(&(*prev)[cap_y][cap_x], channel)) > 0x80) {
                    life[nidx][channel][y][x] = 1;
                }
            }
        }
    }
}

void proceed_index() {
    current = 1 - current;
}

void draw_life(disp_t* disp, disp_t *cap) {
    for(int channel = 0; channel < 3; channel++) { // The order is for cache locality
        for(int y = 0;y < LIFE_HEIGHT;y++) {
            for(int x = 0;x < LIFE_WIDTH;x++) {
                if(life[current][channel][y][x] == 1) { // alive
                    // *by_index(&(*disp)[y][x], channel) = *by_index(&(*cap)[y][x], channel);
                    for(int w_offset = 0; w_offset < W_PIXEL_PER_CELL; w_offset++)
                        for(int h_offset = 0; h_offset < H_PIXEL_PER_CELL; h_offset++)
                            *by_index(&(*disp)[y * H_PIXEL_PER_CELL + h_offset][x * W_PIXEL_PER_CELL + w_offset], channel) = *by_index(&(*cap)[y * H_PIXEL_PER_CELL + h_offset][x * W_PIXEL_PER_CELL + w_offset], channel);
                            // *by_index(&(*disp)[y * H_PIXEL_PER_CELL + h_offset][x * W_PIXEL_PER_CELL + w_offset], channel) = 0xFF;
                } else { // dead
                    // *by_index(&(*disp)[y][x], channel) = 0x00;
                    for(int w_offset = 0; w_offset < W_PIXEL_PER_CELL; w_offset++)
                        for(int h_offset = 0; h_offset < H_PIXEL_PER_CELL; h_offset++)
                            *by_index(&(*disp)[y * H_PIXEL_PER_CELL + h_offset][x * W_PIXEL_PER_CELL + w_offset], channel) = 0x00;
                }
            }
        }
    }
}

int main() {
    init_tpf410();

    init_xclk(XCLK24MHz);
    xil_printf("compilation date: %s %s\n", __DATE__, __TIME__);

    frames_init();

    init_ov9655(OV9655_SXGA);

    wait_vblank();
    set_resolution(XGA);

    DISPFIFO = DSP_FIFO_OVER | DSP_FIFO_UNDER;
    DISPCTRL = DISPON;

    wait_cblank();
    CAPFIFO = CAP_FIFO_OVER | CAP_FIFO_UNDER;
    CAPCTRL = CAPON;

    int frame = 0;
    
    // fill buffer
    wait_and_next_cap();
    wait_and_next_cap();

    init_life(get_prev_cap());

    while (1) {
        wait_and_next_cap();

        next_life();
        apply_diff(get_prev_prev_cap(), get_prev_cap());
        proceed_index();

        disp_t *disp = get_hidden_disp();

        // draw_life(disp, get_prev_frame());

        draw_life(disp, get_prev_cap());
        Xil_DCacheFlush();

        /*
        memmove(disp, get_prev_frame(), SIZE_OF_FRAME);
        Xil_DCacheFlush();
        */

        wait_vblank();
        swap_disp();

        xil_printf("frame = %d\n", frame++);
    }

    return 0;
}
