//-----------------------------------------------------------------------------
// Title       : 同期信号生成（表示回路用）
// Project     : display
// Filename    : syncgen.v
//-----------------------------------------------------------------------------
// Description :
// 
//-----------------------------------------------------------------------------
// Revisions   :
// Date        Version  Author        Description
// 2014/04/03  1.00     M.Kobayashi   Created
//-----------------------------------------------------------------------------


module syncgen(
    input               DCLK,
    input               DRST,
    input       [1:0]   RESOL,
    output  reg         DSP_HSYNC_X,
    output  reg         DSP_VSYNC_X,
    output  reg         DSP_preDE,
    output  reg         VRSTART
);

`include "syncgen_param.vh"

/* 水平カウンタ */
reg [10:0]  HCNT;
wire hcntend = (HCNT==HSC-11'h001);

always @( posedge DCLK ) begin
    if ( DRST )
        HCNT <= 11'h000;
    else if ( hcntend )
        HCNT <= 11'h000;
    else
        HCNT <= HCNT + 11'h001;
end

/* 垂直カウンタ */
reg [10:0]  VCNT;
always @( posedge DCLK ) begin
    if ( DRST )
        VCNT <= 11'h000;
    else if ( hcntend ) begin
        if ( VCNT==VSC-11'h001 )
            VCNT <= 11'h000;
        else
            VCNT <= VCNT + 11'h001;
    end
end

/* 同期信号 */
wire [10:0] DESTART = HFP + HPW + HBP - 11'h003; /* DSP_preDEはDSP_DEの2クロック前に変化 */
wire [10:0] DEEND   = HSC - 11'h003;             /* 同上 */
wire [10:0] HSSTART = HFP - 11'h001;
wire [10:0] HSEND   = HFP + HPW - 11'h001;
wire [10:0] VSSTART = VFP;  /* VCNTが進んでからHSYNCが0になるので、ここでは-1しない */
wire [10:0] VSEND   = VFP + VPW;  /* 同上 */

always @( posedge DCLK ) begin
    if ( DRST )
        DSP_preDE <= 1'b0;
    else if ( (VCNT < VFP + VPW + VBP) || (VSC <= VCNT) )
        DSP_preDE <= 1'b0;
    else if (HCNT==DESTART)
        DSP_preDE <= 1'b1;
    else if (HCNT==DEEND)
        DSP_preDE <= 1'b0;
end

always @( posedge DCLK ) begin
    if ( DRST )
        DSP_HSYNC_X <= 1'b1;
    else if ( HCNT==HSSTART )
        DSP_HSYNC_X <= 1'b0;
    else if ( HCNT==HSEND )
        DSP_HSYNC_X <= 1'b1;
end

always @( posedge DCLK ) begin
    if ( DRST )
        DSP_VSYNC_X <= 1'b1;
    else if ( HCNT==HSSTART ) begin
        if ( VCNT==VSSTART )
            DSP_VSYNC_X <= 1'b0;
        else if ( VCNT==VSEND )
            DSP_VSYNC_X <= 1'b1;
    end
end

/* VRAM読み出し開始 */
always @( posedge DCLK ) begin
    if ( DRST )
        VRSTART <= 1'b0;
    else
        VRSTART <= (VCNT == VFP+VPW+VBP-10'h1); // DEの1ライン前
end

endmodule
