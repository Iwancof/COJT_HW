//-----------------------------------------------------------------------------
// Title       : 表示回路の付属回路
// Project     : display
// Filename    : dispsub.v
//-----------------------------------------------------------------------------
// Description : DVI出力のDDR化およびクロック生成部
// 
//-----------------------------------------------------------------------------
// Revisions   :
// Date        Version  Author        Description
// 2015/12/23  1.00     M.Kobayashi   Created
//-----------------------------------------------------------------------------

module dispsub (
    /* システムリセット */
    input           ARESETN,

    /* 表示系クロック */
    input           CLK40,
    output          DCLK,

    /* 解像度切り替え */
    input   [1:0]   RESOL,

    /* 表示回路から入力 */
    input   [7:0]   DSP_R, DSP_G, DSP_B,
    input           DSP_DE, DSP_HSYNC_X, DSP_VSYNC_X,

    /* DVIチップ向け信号を出力 */
    output          DVI_CLK,
    output  reg     DVI_HSYNC, DVI_VSYNC, DVI_DE,
    output  [11:0]  DVI_DATA
    );

/* クロック生成回路接続 */
dclkgen dclkgen(
    .CLK40      (CLK40),
    .ARESETN    (ARESETN),
    .RESOL      (RESOL),
    .DCLK       (DCLK),
    .DVI_CLK    (DVI_CLK)
);

/* DCLKで同期化したリセット信号DRSTの作成 */
reg [1:0]   drst_ff;

always @( posedge DCLK ) begin
    drst_ff <= { drst_ff[0], ~ARESETN };
end

wire DRST = drst_ff[1];

/* DVI出力（画像データ） */
reg [23:0] rgb_reg;

always @( posedge DCLK ) begin
    if ( DRST )
        rgb_reg <= 24'b0;
    else
        rgb_reg <= {DSP_R, DSP_G, DSP_B};
end

wire [11:0] din1 = rgb_reg[11:0];
wire [11:0] din2 = rgb_reg[23:12];

generate
genvar i;
for ( i=0; i<12; i=i+1 )
    ODDR #(
        .DDR_CLK_EDGE("SAME_EDGE"),
        .INIT(1'b0),
        .SRTYPE("SYNC")
    ) od_i (
        .R  (1'b0),
        .S  (1'b0),
        .CE (1'b1),
        .D1 (din1[i]),
        .D2 (din2[i]),
        .C  (DCLK),
        .Q  (DVI_DATA[i])
    );
endgenerate

/* DVI出力（同期信号など） */
reg hsync0, vsync0, de0;

always @( posedge DCLK ) begin
    if ( DRST ) begin
        {hsync0, vsync0, de0}          <= 3'b000;
        {DVI_HSYNC, DVI_VSYNC, DVI_DE} <= 3'b000;
    end
    else begin
        {hsync0, vsync0, de0}          <= {DSP_HSYNC_X, DSP_VSYNC_X, DSP_DE};
        {DVI_HSYNC, DVI_VSYNC, DVI_DE} <= {hsync0, vsync0, de0};
    end
end

endmodule
