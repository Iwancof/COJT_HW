//-----------------------------------------------------------------------------
// Title       : 表示回路（受講者設計対象）
// Project     : display
// Filename    : display.v
//-----------------------------------------------------------------------------
// Description :
//
//-----------------------------------------------------------------------------
// Revisions   :
// Date        Version  Author        Description
// 2015/12/23  1.00     M.Kobayashi   Created
// 2020/03/02  1.01     M.Kobayashi   Critical Warning対策でWUSERとRUSERを8bitに
// 2020/03/17  1.02     M.Kobayashi   ARCACHEとAWCACHEの設定値を正しておいた
// 2023/01/31  1.03     M.Kobayashi   RESOL関連のタイミング違反対策
//-----------------------------------------------------------------------------

module display #
  (
    parameter integer C_M_AXI_THREAD_ID_WIDTH       = 1,
    parameter integer C_M_AXI_ADDR_WIDTH            = 32,
    parameter integer C_M_AXI_DATA_WIDTH            = 64,
    parameter integer C_M_AXI_AWUSER_WIDTH          = 1,
    parameter integer C_M_AXI_ARUSER_WIDTH          = 1,
    parameter integer C_M_AXI_WUSER_WIDTH           = 8,    // Warning対策
    parameter integer C_M_AXI_RUSER_WIDTH           = 8,    // Warning対策
    parameter integer C_M_AXI_BUSER_WIDTH           = 1
   )
  (
    // System Signals
    input wire        ACLK,
    input wire        ARESETN,

    // Master Interface Write Address
    output wire [C_M_AXI_THREAD_ID_WIDTH-1:0]    M_AXI_AWID,
    output wire [C_M_AXI_ADDR_WIDTH-1:0]         M_AXI_AWADDR,
    output wire [8-1:0]                          M_AXI_AWLEN,
    output wire [3-1:0]                          M_AXI_AWSIZE,
    output wire [2-1:0]                          M_AXI_AWBURST,
    output wire [2-1:0]                          M_AXI_AWLOCK,
    output wire [4-1:0]                          M_AXI_AWCACHE,
    output wire [3-1:0]                          M_AXI_AWPROT,
    // AXI3 output wire [4-1:0]                  M_AXI_AWREGION,
    output wire [4-1:0]                          M_AXI_AWQOS,
    output wire [C_M_AXI_AWUSER_WIDTH-1:0]       M_AXI_AWUSER,
    output wire                                  M_AXI_AWVALID,
    input  wire                                  M_AXI_AWREADY,

    // Master Interface Write Data
    // AXI3 output wire [C_M_AXI_THREAD_ID_WIDTH-1:0]     M_AXI_WID,
    output wire [C_M_AXI_DATA_WIDTH-1:0]         M_AXI_WDATA,
    output wire [C_M_AXI_DATA_WIDTH/8-1:0]       M_AXI_WSTRB,
    output wire                                  M_AXI_WLAST,
    output wire [C_M_AXI_WUSER_WIDTH-1:0]        M_AXI_WUSER,
    output wire                                  M_AXI_WVALID,
    input  wire                                  M_AXI_WREADY,

    // Master Interface Write Response
    input  wire [C_M_AXI_THREAD_ID_WIDTH-1:0]    M_AXI_BID,
    input  wire [2-1:0]                          M_AXI_BRESP,
    input  wire [C_M_AXI_BUSER_WIDTH-1:0]        M_AXI_BUSER,
    input  wire                                  M_AXI_BVALID,
    output wire                                  M_AXI_BREADY,

    // Master Interface Read Address
    output wire [C_M_AXI_THREAD_ID_WIDTH-1:0]    M_AXI_ARID,
    output wire [C_M_AXI_ADDR_WIDTH-1:0]         M_AXI_ARADDR,
    output wire [8-1:0]                          M_AXI_ARLEN,
    output wire [3-1:0]                          M_AXI_ARSIZE,
    output wire [2-1:0]                          M_AXI_ARBURST,
    output wire [2-1:0]                          M_AXI_ARLOCK,
    output wire [4-1:0]                          M_AXI_ARCACHE,
    output wire [3-1:0]                          M_AXI_ARPROT,
    // AXI3 output wire [4-1:0]                  M_AXI_ARREGION,
    output wire [4-1:0]                          M_AXI_ARQOS,
    output wire [C_M_AXI_ARUSER_WIDTH-1:0]       M_AXI_ARUSER,
    output wire                                  M_AXI_ARVALID,
    input  wire                                  M_AXI_ARREADY,

    // Master Interface Read Data
    input  wire [C_M_AXI_THREAD_ID_WIDTH-1:0]    M_AXI_RID,
    input  wire [C_M_AXI_DATA_WIDTH-1:0]         M_AXI_RDATA,
    input  wire [2-1:0]                          M_AXI_RRESP,
    input  wire                                  M_AXI_RLAST,
    input  wire [C_M_AXI_RUSER_WIDTH-1:0]        M_AXI_RUSER,
    input  wire                                  M_AXI_RVALID,
    output wire                                  M_AXI_RREADY,

    /* 表示クロック、割り込み */
    input               DCLK,
    output              DSP_IRQ,

    /* 解像度切り替え */
    input   [1:0]       RESOL,

    /* 画像出力 */
    output  [7:0]       DSP_R, DSP_G, DSP_B,
    output              DSP_DE, DSP_HSYNC_X, DSP_VSYNC_X,

    /* レジスタバス */
    input   [15:0]      WRADDR,
    input   [3:0]       BYTEEN,
    input               WREN,
    input   [31:0]      WDATA,
    input   [15:0]      RDADDR,
    input               RDEN,
    output  [31:0]      RDATA,

    /* FIFOフラグ */
    output              DSP_FIFO_OVER, DSP_FIFO_UNDER
    );

/* バースト長、32、64、128、256のいずれか */
localparam BURSTLEN = 9'd64;

// Write Address (AW)
assign M_AXI_AWID    = 'b0;
assign M_AXI_AWADDR  = 0;
assign M_AXI_AWLEN   = 0;
assign M_AXI_AWSIZE  = 0;
assign M_AXI_AWBURST = 2'b01;
assign M_AXI_AWLOCK  = 2'b00;
assign M_AXI_AWCACHE = 4'b0011;
assign M_AXI_AWPROT  = 3'h0;
assign M_AXI_AWQOS   = 4'h0;
assign M_AXI_AWUSER  = 'b0;
assign M_AXI_AWVALID = 0;

// Write Data(W)
assign M_AXI_WDATA  = 0;
assign M_AXI_WSTRB  = 0;
assign M_AXI_WLAST  = 0;
assign M_AXI_WUSER  = 'b0;
assign M_AXI_WVALID = 0;

// Write Response (B)
assign M_AXI_BREADY = 0;

// Read Address (AR)
assign M_AXI_ARID    = 'b0;
assign M_AXI_ARLEN   = BURSTLEN - 8'd1;
assign M_AXI_ARSIZE  = 3;  // 8 Byte
assign M_AXI_ARBURST = 2'b01;
assign M_AXI_ARLOCK  = 1'b0;
assign M_AXI_ARCACHE = 4'b0011;
assign M_AXI_ARPROT  = 3'h0;
assign M_AXI_ARQOS   = 4'h0;
assign M_AXI_ARUSER  = 'b0;

/* ACLKで同期化したリセット信号ARSTの作成 */
reg [1:0]   arst_ff;

always @( posedge ACLK ) begin
    arst_ff <= { arst_ff[0], ~ARESETN };
end

wire ARST = arst_ff[1];

/* DCLKで同期化したリセット信号DRSTの作成 */
reg [1:0]   drst_ff;

always @( posedge DCLK ) begin
    drst_ff <= { drst_ff[0], ~ARESETN };
end

wire DRST = drst_ff[1];

/* RESOLをDCLKで同期化して利用（syncgen用） */
reg [1:0]   RESOL_ff, RESOL_DCLK;

always @( posedge DCLK ) begin
    RESOL_ff <= RESOL;
end

always @( posedge DCLK ) begin
    RESOL_DCLK <= RESOL_ff;
end

/* RESOLをACLKのFFに取り込んでから利用（vramctrl用） */
reg [1:0]   RESOL_ACLK;

always @( posedge ACLK ) begin
    RESOL_ACLK <= RESOL;
end

/* ブロック間接続信号 */
wire            DSP_preDE, VRSTART;
wire            DISPON, BUF_UNDER, BUF_OVER;
wire            FIFOWR, BUF_GE_768, BUF_LT_512;
wire    [28:0]  DISPADDR;

syncgen syncgen (
    .DCLK       (DCLK),
    .DRST       (DRST),
    .RESOL      (RESOL_DCLK),
    .DSP_HSYNC_X(DSP_HSYNC_X),
    .DSP_VSYNC_X(DSP_VSYNC_X),
    .DSP_preDE  (DSP_preDE),
    .VRSTART    (VRSTART)
);

disp_regctrl disp_regctrl (
    .ACLK       (ACLK),
    .ARST       (ARST),
    .DSP_VSYNC_X(DSP_VSYNC_X),
    .WRADDR     (WRADDR),
    .BYTEEN     (BYTEEN),
    .WREN       (WREN),
    .WDATA      (WDATA),
    .RDADDR     (RDADDR),
    .RDEN       (RDEN),
    .RDATA      (RDATA),
    .DISPON     (DISPON),
    .DISPADDR   (DISPADDR),
    .DSP_IRQ    (DSP_IRQ),
    .BUF_UNDER  (BUF_UNDER),
    .BUF_OVER   (BUF_OVER)
);

disp_buffer disp_buffer (
    .ACLK       (ACLK),
    .ARST       (ARST),
    .DCLK       (DCLK),
    .DRST       (DRST),
    .DISPON     (DISPON),
    .FIFORST    (~DSP_VSYNC_X),
    .FIFOIN     (M_AXI_RDATA),
    .FIFOWR     (FIFOWR),
    .DSP_preDE  (DSP_preDE),
    .BUF_GE_768 (BUF_GE_768),
    .BUF_LT_512 (BUF_LT_512),
    .BUF_UNDER  (BUF_UNDER),
    .BUF_OVER   (BUF_OVER),
    .DSP_R      (DSP_R),
    .DSP_G      (DSP_G),
    .DSP_B      (DSP_B),
    .DSP_DE     (DSP_DE)
);

/* VRAM制御部のARADDRにVRAMCTRL_ARADDRを接続することで */
/* アクセス範囲を0x20000000～0x3FFFFFFFに限定する      */
wire    [31:0] VRAMCTRL_ARADDR;
assign M_AXI_ARADDR = {3'b001, VRAMCTRL_ARADDR[28:0]};

disp_vramctrl #(
    .BURSTLEN   (BURSTLEN) )
    disp_vramctrl (
    .ACLK       (ACLK),
    .ARST       (ARST),
    .ARADDR     (VRAMCTRL_ARADDR),
    .ARVALID    (M_AXI_ARVALID),
    .ARREADY    (M_AXI_ARREADY),
    .RLAST      (M_AXI_RLAST),
    .RVALID     (M_AXI_RVALID),
    .RREADY     (M_AXI_RREADY),
    .RESOL      (RESOL_ACLK),
    .DSP_VSYNC_X(DSP_VSYNC_X),
    .VRSTART    (VRSTART),
    .DISPON     (DISPON),
    .DISPADDR   (DISPADDR),
    .BUF_GE_768 (BUF_GE_768),
    .BUF_LT_512 (BUF_LT_512),
    .FIFOWR     (FIFOWR)
);

/* デバッグ用 */
assign DSP_FIFO_UNDER = BUF_UNDER;
assign DSP_FIFO_OVER  = BUF_OVER;

endmodule
