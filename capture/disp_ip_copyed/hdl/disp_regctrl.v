//-----------------------------------------------------------------------------
// Title       : レジスタ制御（受講者設計対象）
// Project     : display
// Filename    : disp_regctrl.v
//-----------------------------------------------------------------------------
// Description :
// 
//-----------------------------------------------------------------------------
// Revisions   :
// Date        Version  Author        Description
// 2014/04/04  1.00     M.Kobayashi   Created
// 2014/05/22  1.01     M.Kobayashi   Modified（未使用信号削除）
// 2015/09/29  1.10     M.Kobayashi   regbus2対応
//-----------------------------------------------------------------------------

module disp_regctrl
  (
    // System Signals
    input               ACLK,
    input               ARST,

    /* VSYNC */
    input               DSP_VSYNC_X,

    /* レジスタバス */
    input   [15:0]      WRADDR,
    input   [3:0]       BYTEEN,
    input               WREN,
    input   [31:0]      WDATA,
    input   [15:0]      RDADDR,
    input               RDEN,
    output  reg [31:0]  RDATA,

    /* レジスタ出力 */
    output  reg         DISPON,
    output  reg [28:0]  DISPADDR,

    /* 割り込み、FIFOフラグ */
    output  reg         DSP_IRQ,
    input               BUF_UNDER,
    input               BUF_OVER
    ); 

/* 各レジスタ */
reg     dsp_ien;
reg     vblank, over, under;
wire    set_vblank;
wire    write_reg  = WREN && WRADDR[15:12]==4'h0;
wire    ctrlreg_wr = (write_reg && WRADDR[11:2]==10'h001 && BYTEEN[0]);
wire    intreg_wr  = (write_reg && WRADDR[11:2]==10'h002 && BYTEEN[0]);
wire    fiforeg_wr = (write_reg && WRADDR[11:2]==10'h003 && BYTEEN[0]);

/* vblankセット信号・・・DSP_VSYNC_XをACLKで同期化 */
reg [2:0]   vblank_ff; 

always @( posedge ACLK ) begin
    if ( ARST )
        vblank_ff <= 3'b111;
    else begin
        vblank_ff[0] <= DSP_VSYNC_X;
        vblank_ff[1] <= vblank_ff[0];
        vblank_ff[2] <= vblank_ff[1];
    end
end

assign set_vblank = (vblank_ff[2:1] == 2'b10);

// 表示アドレスレジスタ（DISPADDR）
always @( posedge ACLK ) begin
    if ( ARST )
        DISPADDR          <= 29'h0;
    else if ( write_reg ) begin
        if ( WRADDR[11:2]==10'h000 ) begin
            if ( BYTEEN[0] )
                DISPADDR[7:0] <= WDATA[7:0];
            if ( BYTEEN[1] )
                DISPADDR[15:8] <= WDATA[15:8];
            if ( BYTEEN[2] )
                DISPADDR[23:16] <= WDATA[23:16];
            if ( BYTEEN[3] )
                DISPADDR[28:24] <= WDATA[28:24];
        end
    end
end

// コントロールレジスタ（DISPCTRL）・・DISPON
always @( posedge ACLK ) begin
    if ( ARST )
        DISPON <= 1'b0;
    else if ( ctrlreg_wr )
        DISPON <= WDATA[0];
end

// コントロールレジスタ（DISPCTRL）・・VBLANK
always @( posedge ACLK ) begin
    if ( ARST )
        vblank <= 1'b0;
    else if ( set_vblank )
        vblank <= 1'b1;
    else if ( ctrlreg_wr & WDATA[1]==1'b1 )
        vblank <= 1'b0;
end

// 割り込みレジスタ（DISPINT）・・INTENBL
always @( posedge ACLK ) begin
    if ( ARST )
        dsp_ien <= 1'b0;
    else if ( intreg_wr )
        dsp_ien <= WDATA[0];
end

// 割り込み信号
always @( posedge ACLK ) begin
    if ( ARST )
        DSP_IRQ <= 1'b0;
    else if ( set_vblank & dsp_ien )
        DSP_IRQ <= 1'b1;
    else if ( intreg_wr & WDATA[1]==1'b1 )
        DSP_IRQ <= 1'b0;
end

// FIFOレジスタ（DISPFIFO）・・アンダーフロー（FIFOUNDER）
always @( posedge ACLK ) begin
    if ( ARST )
        under <= 1'b0;
    else if ( BUF_UNDER )
        under <= 1'b1;
    else if ( fiforeg_wr & WDATA[0]==1'b1 )
        under <= 1'b0;
end

// FIFOレジスタ（DISPFIFO）・・オーバーフロー（FIFOOVER）
// DCLKで変化する信号なのでACLKで同期化してから使う
reg [1:0]   over_ff; 

always @( posedge ACLK ) begin
    if ( ARST )
        over_ff <= 2'b00;
    else begin
        over_ff[0] <= BUF_OVER;
        over_ff[1] <= over_ff[0];
    end
end

always @( posedge ACLK ) begin
    if ( ARST )
        over <= 1'b0;
    else if ( over_ff[1] )
        over <= 1'b1;
    else if ( fiforeg_wr & WDATA[1]==1'b1 )
        over <= 1'b0;
end

// レジスタ読み出し
always @* begin
    case ( RDADDR[11:2] )
        10'h000: RDATA <= {3'b000, DISPADDR};
        10'h001: RDATA <= {30'b0, vblank, DISPON};
        10'h002: RDATA <= {31'b0, dsp_ien};
        10'h003: RDATA <= {30'b0, over, under};
        default: RDATA <= 32'h0;
    endcase
end

endmodule
