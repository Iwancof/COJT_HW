//-----------------------------------------------------------------------------
// Title       : �����M�������i��u�Ґ݌v�Ώہj
// Project     : pattern
// Filename    : syncgen.v
//-----------------------------------------------------------------------------
// Description :
// 
//-----------------------------------------------------------------------------
// Revisions   :
// Date        Version  Author        Description
// 202?/??/??  1.00     ???????????   Created
//-----------------------------------------------------------------------------


module syncgen(
        input               DCLK,
        input               DRST,
        input       [1:0]   RESOL,
        output  reg         DSP_HSYNC_X,
        output  reg         DSP_VSYNC_X,
        output  reg         DSP_preDE,
        output  reg [10:0]  HCNT,
        output  reg [10:0]  VCNT
    );


    `include "syncgen_param.vh"

    always @(posedge DCLK) begin
        // HCNT
        if (DRST) begin
            HCNT <= 11'h0;
        end else if (HCNT + 1 == HSC) begin
            HCNT <= 11'h0;
        end else begin
            HCNT <= HCNT + 1;
        end
    end

    always @(posedge DCLK) begin
        // VCNT
        if (DRST) begin
            VCNT <= 11'h0;
        end else if (HCNT + 1 == HSC) begin
            if (VCNT + 1 == VSC) begin
                VCNT <= 11'h0;
            end else begin
                VCNT <= VCNT + 1;
            end
        end
    end

    always @(posedge DCLK) begin
        // DSP_preDE
        if (DRST) begin
            DSP_preDE <= 0;
        end else if (VFP + VPW + VBP > VCNT) begin
            DSP_preDE <= 0;
        end else if (HFP + HPW + HBP == HCNT + 2) begin
            DSP_preDE <= 1;
        end else if (HSC == HCNT + 2) begin
            DSP_preDE <= 0;
        end
    end

    always @(posedge DCLK) begin
        // DSP_HSYNC_X
        if (DRST) begin
            DSP_HSYNC_X <= 1;
        end else if (HFP == HCNT + 1) begin
            DSP_HSYNC_X <= 0;
        end else if (HFP + HPW == HCNT + 1) begin
            DSP_HSYNC_X <= 1;
        end
    end

    always @(posedge DCLK) begin
        // DSP_VSYNC_X
        if (DRST) begin
            DSP_VSYNC_X <= 1;
        end else if ((HFP == HCNT + 1)) begin
            if (VFP == VCNT) begin
                DSP_VSYNC_X <= 0;
            end else if (VFP + VPW == VCNT) begin
                DSP_VSYNC_X <= 1;
            end
        end
        /*
        end else if (VFP == VCNT) begin
            DSP_VSYNC_X <= 0;
        end else if (VFP + VPW == VCNT) begin
            DSP_VSYNC_X <= 1;
        end
        */
    end
endmodule
