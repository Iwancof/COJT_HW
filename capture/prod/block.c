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

int main() {
    init_tpf410();
    init_mouse(XGA, MOUSE_FAST);

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

    while (1) {
        xil_printf("frame = %d\n", frame++);
    }

    return 0;
}
