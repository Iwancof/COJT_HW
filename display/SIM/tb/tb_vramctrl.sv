//-----------------------------------------------------------------------------
// Title       : 表示回路1のテストベンチ（syncgen)
// Project     : display
// Filename    : tb_syncgen.sv
//-----------------------------------------------------------------------------
// Revisions   :
// Date        Version  Author        Description
// 2023/01/20  1.00     M.Kobayashi   VIP利用、ARREADYランダム化、SystemVerilog
//-----------------------------------------------------------------------------

`timescale 1ns/1ps

module tb_vramctrl;

/* 各種定数 */
localparam integer STEP  = 8;
localparam integer DSTEP = 40;

localparam P_RESOL_VGA  = 2'b00;
localparam P_RESOL_XGA  = 2'b01;
localparam P_RESOL_SXGA = 2'b10;

/* シミュレーションする解像度の設定 */
localparam SIM_RESOL = P_RESOL_VGA;

/* 解像度に応じて総画素数や画像ファイルを切り替える */
localparam PIX_NUMBER   = (SIM_RESOL == P_RESOL_VGA) ? 640*480: (SIM_RESOL == P_RESOL_XGA) ? 1024*768: 1280*1024;
localparam PIC_FILENAME = (SIM_RESOL == P_RESOL_VGA) ? "wcup2002_VGA.raw":
                          (SIM_RESOL == P_RESOL_XGA) ? "wcup2002_XGA.raw": "wcup2002_SXGA.raw";

/* 画像系信号 */
logic           ACLK;
logic           ARESETN;
logic           DCLK;
logic           DSP_IRQ;
logic   [1:0]   RESOL;
logic   [7:0]   DSP_R, DSP_G, DSP_B;
logic           DSP_DE, DSP_HSYNC_X, DSP_VSYNC_X;
logic           DSP_FIFO_OVER, DSP_FIFO_UNDER;

/* レジスタバス */
logic   [15:0]  WRADDR;
logic   [3:0]   BYTEEN;
logic           WREN;
logic   [31:0]  WDATA;
logic   [15:0]  RDADDR;
logic           RDEN;
logic   [31:0]  RDATA;

/* DUTの接続 */
// design_1_wrapper dut (.*);

/* 各種クロック */
always begin
    ACLK = 0; #(STEP/2);
    ACLK = 1; #(STEP/2);
end

always begin
    DCLK = 0; #(DSTEP/2);
    DCLK = 1; #(DSTEP/2);
end

/* レジスタアドレス */
localparam DISPADDR = 16'h0000;
localparam DISPCTRL = 16'h0004;
localparam DISPINT  = 16'h0008;
localparam DISPFIFO = 16'h000c;
localparam VBLANK = 32'h2;

reg DRST;


reg ar_ready, vr_start, disp_on, r_last, bwready;
reg[28: 0] disp_addr;
reg ARST;

disp_vramctrl inst(
    .ACLK(ACLK),
    .ARST(ARST),
    .ARREADY(ar_ready),
    .VRSTART(vr_start),
    .DISPON(disp_on),
    .RLAST(r_last),
    .DISPADDR(disp_addr),
    .BUF_WREADY(bwready)
);

initial begin
    disp_addr = 29'h01234567;
    ar_ready = 1'h1;
    vr_start = 1'h1;
    disp_on = 1'h1;
    r_last = 1'h0;
    bwready = 1'h1;

    ARST = 1;
    @(negedge DCLK) ;
    ARST = 0;
    @(negedge DCLK) ;

    #100;
    ar_ready = 1'h0;
    #100;
    ar_ready = 1'h1;
    #100;

    #(STEP*45000); /* 2画面分＋α */
    $stop;
end

endmodule
