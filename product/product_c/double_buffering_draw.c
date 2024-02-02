#include <stdio.h>
#include <stdint.h>
#include "xparameters.h"
#include "xil_cache.h"

#include "init_dvi.h"
#include "init_ov9655.h"
#include "init_xclk.h"
#include "cojt.h"

typedef struct {
	uint8_t b, g, r, a;
} pixel;

typedef pixel disp_t[768][1024];

int disp_idx = 0;
int cap_idx = 0;
disp_t *cap_frames[2];
disp_t *disp_frames[2];

void frames_init() {
#define disp_base_addr_1 ((void*)0x20000000)
#define disp_base_addr_2 ((void*)0x20000000 + 0x800000)
#define cap_base_addr_1 ((void*)0x20000000 + 0x1000000)
#define cap_base_addr_2 ((void*)0x20000000 + 0x1800000)

    disp_frames[disp_idx] = disp_base_addr_1;
    disp_frames[1-disp_idx] = disp_base_addr_2;
    cap_frames[cap_idx] = cap_base_addr_1;
    cap_frames[1-cap_idx] = cap_base_addr_2;

    DISPADDR = disp_frames[disp_idx];
    CAPADDR = cap_frames[cap_idx];

#undef disp_base_addr_1
#undef disp_base_addr_2
#undef cap_base_addr_1
#undef cap_base_addr_2
}

const void swap_disp() {
    disp_idx = 1 - disp_idx;
    DISPADDR = disp_frames[disp_idx];
}

const disp_t *get_hidden_disp() {
    return disp_frames[1 - disp_idx];
}

const disp_t *get_disp() {
    return disp_frames[disp_idx];
}

const void swap_cap() {
    cap_idx = 1 - cap_idx;
    CAPADDR = cap_frames[cap_idx];
}

const disp_t *get_hidden_cap() {
    return cap_frames[1 - cap_idx];
}

const disp_t *get_cap() {
    return cap_frames[cap_idx];
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

    double x = 350.;
    double y = 500.;
    double acc = 0.;

    while (1) {
        if(y <= 0) {
            acc = 5.;
        }
        y += acc;
        acc -= 0.1;

        disp_t *disp = get_hidden_disp();

        wait_cblank();
        swap_cap();
        disp_t *cap = get_hidden_cap();

        for(int i = 0 ;i < 1024;i++) {
            for(int j = 0;j < 768;j++) {
                double dist = ((double)i - x) * ((double)i - x) + ((double)j - y) * ((double)j - y);
                if(dist < 10000) {
                    (*disp)[j][i].r = (*cap)[j][i].r;
                    (*disp)[j][i].g = 0;
                    (*disp)[j][i].b = 0;
                } else {
                    (*disp)[j][i] = (*cap)[j][i];
                }
            }
        }

        xil_printf("frame5 = %d\n", frame++);

        wait_vblank();
        swap_disp();
        // wait_cblank();
    }

    return 0;
}
