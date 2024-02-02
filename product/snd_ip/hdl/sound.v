//-----------------------------------------------------------------------------
// Title       : サウンド回路最上位階層（受講者設計対象）
// Project     : sound
// Filename    : sound.v
//-----------------------------------------------------------------------------
// Description : 
// 
//-----------------------------------------------------------------------------
// Revisions   :
// Date        Version  Author        Description
// 202?/??/??  1.00     ???????????   Created
//-----------------------------------------------------------------------------


module sound #
  (
    parameter integer C_M_AXI_THREAD_ID_WIDTH       = 1,
    parameter integer C_M_AXI_ADDR_WIDTH            = 32,
    parameter integer C_M_AXI_DATA_WIDTH            = 64,
    parameter integer C_M_AXI_AWUSER_WIDTH          = 1,
    parameter integer C_M_AXI_ARUSER_WIDTH          = 1,
    parameter integer C_M_AXI_WUSER_WIDTH           = 8,    // Warning対策
    parameter integer C_M_AXI_RUSER_WIDTH           = 8,    // Warning対策
    parameter integer C_M_AXI_BUSER_WIDTH           = 1,

    /* 以下は未対応だけどコンパイルエラー回避のため付加しておく */
    parameter integer C_INTERCONNECT_M_AXI_WRITE_ISSUING = 0,
    parameter integer C_M_AXI_SUPPORTS_READ              = 0,
    parameter integer C_M_AXI_SUPPORTS_WRITE             = 1,
    parameter integer C_M_AXI_TARGET                     = 0,
    parameter integer C_M_AXI_BURST_LEN                  = 0,
    parameter integer C_OFFSET_WIDTH                     = 0
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

    /* 音声関連信号 */
    input               CLK40,
    output              SND_MCLK, SND_BCLK, SND_LRCLK, SND_DOUT,

    /* レジスタバス */
    input   [15:0]      WRADDR,
    input   [3:0]       BYTEEN,
    input               WREN,
    input   [31:0]      WDATA,
    input   [15:0]      RDADDR,
    input               RDEN,
    output  [31:0]      RDATA,

    /* FIFOフラグ（LED[4]、LED[5]にそれぞれ接続している）*/
    output              SND_FIFO_UNDER, SND_FIFO_OVER
    ); 

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
/* ★以下の3か所の???を、正しい設定値にしておく★ */
assign M_AXI_ARID    = 'b0;
assign M_AXI_ARLEN   = 8'd31;
assign M_AXI_ARSIZE  = 3'b011;
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

/* MCLKで同期化したリセット信号MRSTの作成 */
reg [1:0]   mrst_ff;

always @( posedge SND_MCLK ) begin
    mrst_ff <= { mrst_ff[0], ~ARESETN };
end

wire MRST = mrst_ff[1];

/* VRAM制御部のARADDRにVRAMCTRL_ARADDRを接続することで */
/* アクセス範囲を0x20000000～0x3FFFFFFFに限定する      */
wire    [31:0] VRAMCTRL_ARADDR;
assign M_AXI_ARADDR = {3'b001, VRAMCTRL_ARADDR[28:0]};

/* MCLK生成部を接続 */
snd_mclkgen snd_mclkgen (
    .CLK40      (CLK40),
    .SND_MCLK   (SND_MCLK)
);

wire SND_BCLK;

snd_freqdivider snd_freqdivider (
  .SND_MCLK(SND_MCLK),
  .SND_BCLK(SND_BCLK)
);

wire        FIFORST, FIFORD, BUF_OVER, BUF_UNDER;
wire [31:0] DOUT;
wire [10:0] FIFORDCNT;

/* とりあえず0固定しておくが、自由に使っていい */
assign SND_FIFO_OVER  = BUF_OVER; // LED[5]
assign SND_FIFO_UNDER = BUF_UNDER; // LED[4]

fifo_32in32out_2048depth fifo_32in32out_2048depth (
  .rst(FIFORST),
  .wr_clk(ACLK),
  .rd_clk(SND_BCLK),
  .din(M_AXI_RDATA),
  .wr_en(M_AXI_RVALID),
  .rd_en(FIFORD),
  .dout(DOUT),
  .overflow(BUF_OVER),
  .underflow(BUF_UNDER),
  .rd_data_count(FIFORDCNT)
);

snd_serialconverter snd_serialconverter(
  .SND_BCLK(SND_BCLK),
  .MRST(MRST),
  .FIFORDCNT(FIFORDCNT),
  .DOUT(DOUT),
  .DATASIZE(SNDSIZE),
  .LOOP(LOOP),
  .COMMAND(COMMAND),
  .FIFORST(FIFORST),
  .FIFORD(FIFORD),
  .SND_LRCLK(SND_LRCLK),
  .SND_DOUT(SND_DOUT)
);

wire  [28:0] SNDADDR;
wire  [28:0] SNDSIZE;
wire  [7:0]  VOLUME;
wire         LOOP;
wire  [1:0]  COMMAND;

snd_regctl snd_regctl(
  .ACLK(ACLK),
  .ARST(ARST),
  .WRADDR(WRADDR),
  .BYTEEN(BYTEEN),
  .WREN(WREN),
  .WDATA(WDATA),
  .RDADDR(RDADDR),
  .RDEN(RDEN),
  .RDATA(RDATA),
  .SNDADDR(SNDADDR),
  .SNDSIZE(SNDSIZE),
  .VOLUME(VOLUME),
  .LOOP(LOOP),
  .COMMAND(COMMAND)
);

wire M_AXI_ARVALID;

snd_vramctl snd_vramctl(
        .ACLK(ACLK),
        .ARST(ARST),
        .ARADDR(VRAMCTRL_ARADDR),
        .ARVALID(M_AXI_ARVALID),
        .ARREADY(M_AXI_ARREADY),
        .RLAST(M_AXI_RLAST),
        .RVALID(M_AXI_RVALID),
        .RREADY(M_AXI_RREADY),
        
        .SNDADDR(SNDADDR),
        .SNDSIZE(SNDSIZE),
        .LOOP(LOOP),
        .COMMAND(COMMAND),

        .FIFORDCNT(FIFORDCNT)
);

endmodule
