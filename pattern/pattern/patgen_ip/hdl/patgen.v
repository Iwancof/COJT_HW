//-----------------------------------------------------------------------------
// Title       : �p�^�[���\����H�i��u�Ґ݌v�Ώہj
// Project     : pattern
// Filename    : patgen.v
//-----------------------------------------------------------------------------
// Description :
// 
//-----------------------------------------------------------------------------
// Revisions   :
// Date        Version  Author        Description
// 202?/??/??  1.00     ???????????   Created
//-----------------------------------------------------------------------------

module patgen(
        input                   DCLK,
        input                   ARESETN,
        input           [1:0]   RESOL,
        output                  DSP_HSYNC_X,
        output                  DSP_VSYNC_X,
        output  reg             DSP_DE,
        output  reg     [7:0]   DSP_R,
        output  reg     [7:0]   DSP_G,
        output  reg     [7:0]   DSP_B
    );

    `include "syncgen_param.vh"

    /* DCLK�œ������������Z�b�g�M��DRST�̍쐬 */
    reg [1:0]   drst_ff;

    always @( posedge DCLK ) begin
        drst_ff <= { drst_ff[0], ~ARESETN };
    end

    wire DRST = drst_ff[1];

    /* �����M��������H�̐ڑ� */
    wire    [10:0]  HCNT, VCNT;
    wire            DSP_preDE;

    /*
    wire [10: 0] horizontal_color_width = HDO >> 3'h3;
    wire [10: 0] next_horizontal_count = ((horizontal_index + 1) & 3'b111) * horizontal_color_width;
    wire [10: 0] horizontal_offset = HCNT - HFP - HPW - HBP;
    wire [10: 0] vertical_color_width = VDO >> 3'h2;
    wire [10: 0] next_vertical_count = ((vertical_index + 1) & 3'b11) * vertical_color_width;
    wire [10: 0] vertical_offset = VCNT - VFP - VPW - VBP;

    reg [2: 0] horizontal_index;
    reg [1: 0] vertical_index;

    always @(posedge DCLK) begin
        if (DRST) begin
            horizontal_index <= 3'h0;
        end else if (!DSP_preDE) begin
            horizontal_index <= 3'h0;
        end else if (next_horizontal_count == HCNT + 2) begin
            horizontal_index <= horizontal_index + 3'h1;
        end
    end

    always @(posedge DCLK) begin
        if (DRST) begin
            vertical_index <= 3'h0;
        end else if (!DSP_preDE) begin
            vertical_index <= 3'h0;
        end else if (next_vertical_count == VCNT + 2) begin
            vertical_index <= vertical_index + 3'h1;
        end
    end
    */

    syncgen syncgen(
        .DCLK       (DCLK),
        .DRST       (DRST),
        .RESOL      (RESOL),
        .DSP_HSYNC_X(DSP_HSYNC_X),
        .DSP_VSYNC_X(DSP_VSYNC_X),
        .DSP_preDE  (DSP_preDE),
        .HCNT       (HCNT),
        .VCNT       (VCNT)
    );

    always @(posedge DCLK) begin
        if (DRST) begin
            DSP_DE <= 0;
        end else begin
            DSP_DE <= DSP_preDE;
        end
    end

    wire [10: 0] raw_vertical_offset = VCNT - VFP - VPW - VBP;
    wire [10: 0] raw_horizontal_offset = HCNT - HFP - HPW - HBP + 1;
    wire [10: 0] horizontal_color_width = HDO >> 3'h3;
    wire [10: 0] vertical_color_width = VDO >> 3'h2;

    wire h0 = 0 * horizontal_color_width <= raw_horizontal_offset && raw_horizontal_offset < 1 * horizontal_color_width;
    wire h1 = 1 * horizontal_color_width <= raw_horizontal_offset && raw_horizontal_offset < 2 * horizontal_color_width;
    wire h2 = 2 * horizontal_color_width <= raw_horizontal_offset && raw_horizontal_offset < 3 * horizontal_color_width;
    wire h3 = 3 * horizontal_color_width <= raw_horizontal_offset && raw_horizontal_offset < 4 * horizontal_color_width;
    wire h4 = 4 * horizontal_color_width <= raw_horizontal_offset && raw_horizontal_offset < 5 * horizontal_color_width;
    wire h5 = 5 * horizontal_color_width <= raw_horizontal_offset && raw_horizontal_offset < 6 * horizontal_color_width;
    wire h6 = 6 * horizontal_color_width <= raw_horizontal_offset && raw_horizontal_offset < 7 * horizontal_color_width;
    wire h7 = 7 * horizontal_color_width <= raw_horizontal_offset && raw_horizontal_offset < 8 * horizontal_color_width;
    wire [7:0] h;
    assign h[0] = h0;
    assign h[1] = h1;
    assign h[2] = h2;
    assign h[3] = h3;
    assign h[4] = h4;
    assign h[5] = h5;
    assign h[6] = h6;
    assign h[7] = h7;

    wire v0 = 0 * vertical_color_width <= raw_vertical_offset && raw_vertical_offset < 1 * vertical_color_width;
    wire v1 = 1 * vertical_color_width <= raw_vertical_offset && raw_vertical_offset < 2 * vertical_color_width;
    wire v2 = 2 * vertical_color_width <= raw_vertical_offset && raw_vertical_offset < 3 * vertical_color_width;
    wire v3 = 3 * vertical_color_width <= raw_vertical_offset && raw_vertical_offset < 4 * vertical_color_width;
    wire [3:0] v;
    assign v[0] = v0;
    assign v[1] = v1;
    assign v[2] = v2;
    assign v[3] = v3;

    function [0: 0] check(
        input [2: 0] hidx, input [7: 0] h, input [3: 0] v
    );
        check = 
        (v[3'h0] && h[(hidx + 3'h0) & 3'b111]) ||
        (v[3'h1] && h[(hidx + 3'h1) & 3'b111]) ||
        (v[3'h2] && h[(hidx + 3'h2) & 3'b111]) ||
        (v[3'h3] && h[(hidx + 3'h3) & 3'b111]);
    endfunction

    assign check_red =      check(3'h0, h, v);
    assign check_green =    check(3'h1, h, v);
    assign check_blue =     check(3'h2, h, v);
    assign check_pink =     check(3'h3, h, v);
    assign check_yellow =   check(3'h4, h, v);
    assign check_cyan =     check(3'h5, h, v);
    assign check_black =    check(3'h6, h, v);
    assign check_white =    check(3'h7, h, v);


    always @(posedge DCLK) begin
        if (DRST) begin
            DSP_R <= 8'h00;
        end else if (check_red || check_pink || check_yellow || check_white) begin
            DSP_R <= 8'hff;
        end else begin
            DSP_R <= 8'h00;
        end
    end
    always @(posedge DCLK) begin
        if (DRST) begin
            DSP_G <= 8'h00;
        end else if (check_green || check_yellow || check_cyan || check_white) begin
            DSP_G <= 8'hff;
        end else begin
            DSP_G <= 8'h00;
        end
    end
    always @(posedge DCLK) begin
        if (DRST) begin
            DSP_B <= 8'h00;
        end else if (check_blue || check_pink || check_cyan || check_white) begin
            DSP_B <= 8'hff;
        end else begin
            DSP_B <= 8'h00;
        end
    end


endmodule
