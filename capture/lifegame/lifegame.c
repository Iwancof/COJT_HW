#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include "xparameters.h"
#include "xil_cache.h"

#include "init_dvi.h"
#include "init_ov9655.h"
#include "init_xclk.h"
#include "cojt.h"

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

int disp_idx = 0;
int cap_idx = 0;
disp_t *cap_frames[2];
disp_t *disp_frames[2];

#define SIZE_OF_FRAME (1024 * 768 * sizeof(pixel))

void frames_init() {
#define disp_base_addr_1 ((void*)0x20000000 + 0 * SIZE_OF_FRAME)
#define disp_base_addr_2 ((void*)0x20000000 + 1 * SIZE_OF_FRAME)
#define cap_base_addr_1 ((void*)0x20000000 + 2 * SIZE_OF_FRAME)
#define cap_base_addr_2 ((void*)0x20000000 + 3 * SIZE_OF_FRAME)

    disp_frames[disp_idx] = disp_base_addr_1;
    disp_frames[1-disp_idx] = disp_base_addr_2;
    cap_frames[cap_idx] = cap_base_addr_1;
    cap_frames[1-cap_idx] = cap_base_addr_2;

    DISPADDR = (void*)disp_frames[disp_idx];
    CAPADDR = (void*)cap_frames[cap_idx];

#undef disp_base_addr_1
#undef disp_base_addr_2
#undef cap_base_addr_1
#undef cap_base_addr_2
}

void swap_disp() {
    disp_idx = 1 - disp_idx;
    DISPADDR = (void*)disp_frames[disp_idx];
}

disp_t *get_hidden_disp() {
    return disp_frames[1 - disp_idx];
}

disp_t *get_disp() {
    return disp_frames[disp_idx];
}

void swap_cap() {
    cap_idx = 1 - cap_idx;
    CAPADDR = (void*)cap_frames[cap_idx];
}

disp_t *get_hidden_cap() {
    return cap_frames[1 - cap_idx];
}

disp_t *get_cap() {
    return cap_frames[cap_idx];
}


int current = 0;
uint8_t life[2][3][768][1024];
// [buffer_idx][channel][y][x]

void init_life(disp_t *cap) {
    for(int channel = 0; channel < 3; channel++) {
        for(int y = 0;y < 768;y++) {
            for(int x = 0;x < 1024;x++) {
                // life[current][channel][y][x] = *by_index(&(*cap)[y][x], channel) > 0x30;
                if(*by_index(&(*cap)[y][x], channel) < 0x80) {
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

void get_at(uint8_t ret[3], int fidx, int x, int y) {
    if(x < 0 || x >= 1024 || y < 0 || y >= 768) {
        for(int channel = 0; channel < 3; channel++) {
            ret[channel] = 0;
        }
    } else {
        for(int channel = 0; channel < 3; channel++) {
            ret[channel] += life[fidx][channel][y][x];
        }
    }
}

void count_around(uint8_t ret[3], int fidx, int x, int y) {
    for(int i = 0; i < 8; i++) {
        get_at(ret, fidx, x + dx[i], y + dy[i]);
    }
}

void next_life() {
    int nidx = 1 - current;

    for(int y = 0; y < 768; y++) {
        for(int x = 0; x < 1024; x++) {
            uint8_t is_alive[3] = {0};
            uint8_t cnt[3] = {0};

            get_at(is_alive, current, x, y);
            count_around(cnt, current, x, y);

            for(int channel = 0;channel < 3;channel++) {
                life[nidx][channel][y][x] = (is_alive[channel] && (cnt[channel] == 2 || cnt[channel] == 3)) || (!is_alive[channel] && cnt[channel] == 3);
            }
        }
    }

    current = nidx;
}

void draw_life(disp_t* disp, disp_t *cap) {
    for(int channel = 0; channel < 3; channel++) { // The order is for cache locality
        for(int y = 0;y < 768;y++) {
            for(int x = 0;x < 1024;x++) {
                if(life[current][channel][y][x] == 1) { // alive
                    *by_index(&(*disp)[y][x], channel) = *by_index(&(*cap)[y][x], channel);
                } else { // dead
                    *by_index(&(*disp)[y][x], channel) = 0x00;
                }
            }
        }
    }
}

int main() {
    init_tpf410();

    init_xclk(XCLK24MHz);

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

    disp_t *cap = get_cap();
    disp_t *disp = get_disp();
    memcpy(disp, cap, SIZE_OF_FRAME);
    Xil_DCacheFlush();
    wait_cblank();
    swap_cap();
    init_life(cap);
    draw_life(disp, cap);
    Xil_DCacheFlush();

    while (1) {
        if(frame % 30 == 0) {
            cap = get_cap();
            wait_cblank();
            swap_cap();
            init_life(cap);
        } else {
            next_life();
        }

        disp_t *disp = get_hidden_disp();

        draw_life(disp, cap);
        Xil_DCacheFlush();

        wait_vblank();
        swap_disp();

        xil_printf("frame5 = %d\n", frame++);
    }

    return 0;
}
