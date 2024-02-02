//-----------------------------------------------------------------------------
// Title       : �L���v�`����H�̍ŏ�ʊK�w�i��u�Ґ݌v�Ώہj
// Project     : capture
// Filename    : capture.v
//-----------------------------------------------------------------------------
// Description :
//
//-----------------------------------------------------------------------------
// Revisions   :
// Date        Version  Author        Description
// 202?/??/??  1.00     ???????????   Created
//-----------------------------------------------------------------------------


module capture #
  (
    parameter integer C_M_AXI_THREAD_ID_WIDTH       = 1,
    parameter integer C_M_AXI_ADDR_WIDTH            = 32,
    parameter integer C_M_AXI_DATA_WIDTH            = 64,
    parameter integer C_M_AXI_AWUSER_WIDTH          = 1,
    parameter integer C_M_AXI_ARUSER_WIDTH          = 1,
    parameter integer C_M_AXI_WUSER_WIDTH           = 8,    // Warning�΍�
    parameter integer C_M_AXI_RUSER_WIDTH           = 8,    // Warning�΍�
    parameter integer C_M_AXI_BUSER_WIDTH           = 1,

    /* �ȉ��͖��Ή������ǃR���p�C���G���[����̂��ߕt�����Ă��� */
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
    output wire [C_M_AXI_THREAD_ID_WIDTH-1:0]    M_AXI_ARID, // この辺は自分で Assign していく
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

    /* ���荞�� */
    output              CAP_IRQ,

    /* �𑜓x�؂�ւ� */
    input   [1:0]       RESOL,

    /* �J�����M�� */
    input               PCLK, HREF, VSYNC,
    input   [7:0]       CAMDATA,

    /* ���W�X�^�o�X */
    input   [15:0]      WRADDR,
    input   [3:0]       BYTEEN,
    input               WREN,
    input   [31:0]      WDATA,
    input   [15:0]      RDADDR,
    input               RDEN,
    output  [31:0]      RDATA,

    /* FIFO�t���O�iLED[3]�ALED[2]�ɂ��ꂼ��ڑ����Ă��� */
    output              CAP_FIFO_OVER, CAP_FIFO_UNDER
    );

/* VRAM���䕔��AWADDR��VRAMCTRL_AWADDR��ڑ����邱�Ƃ� */
/* �A�N�Z�X�͈͂�0x20000000�`0x3FFFFFFF�Ɍ��肷��      */
wire [31:0] VRAMCTRL_AWADDR;
wire FIFORD, HASDATA, FIFOVALID;
wire [47: 0] read_data;
wire [31: 0] cap_addr;
wire found_href;
wire end_of_screen;
wire CAPON;

wire ARST, PRST;

assign ARST = ~ARESETN;
clock_sync #(.WIDTH(1)) pclk_rst(
    .clk(PCLK),
    .foreign_signal(~ARESETN),
    .result(PRST)
);

wire AVSYNC;
clock_sync #(.WIDTH(1)) vsync_rst(
    .clk(ACLK),
    .foreign_signal(VSYNC),
    .result(AVSYNC)
);

/* �Ƃ肠����0�Œ肵�Ă������A���R�Ɏg���Ă��� */
assign M_AXI_AWID     = 1'b0;
assign M_AXI_AWADDR = {3'b001, VRAMCTRL_AWADDR[28:0]};
assign M_AXI_AWLEN    = 7'h7;
assign M_AXI_AWSIZE   = 3'b011; // 8[byte]
assign M_AXI_AWBURST  = 2'b01;
assign M_AXI_AWLOCK   = 2'b00;
assign M_AXI_AWCACHE  = 4'b0011;
assign M_AXI_AWPROT     = 3'b000;
// assign M_AXI_AWREGION = 4'b0000;
assign M_AXI_AWQOS    = 4'b0000;
assign M_AXI_AWUSER   = 1'b0;
// assign M_AXI_AWVALID  = 1'b0;

assign M_AXI_ARCACHE  = 4'b0011; // M_AXI_AWCACHE と同じ


// WVALID <-- FIFOVALID
// WDATA  <-- FIFODATA

// assign M_AXI_WDATA      = read_data;
assign M_AXI_WSTRB      = 8'hff;
assign M_AXI_WUSER      = 1'b0;
// assign M_AXI_WVALID     = FIFOVALID; // 直接 FIFO からつなぐことで、vramctrl をシンプルにしている。

// B channel(TODO)
// これやらなくてもいいんじゃないか？応答見ても何もできないし。

assign M_AXI_ARID    = 1'b0;
assign M_AXI_ARLEN   = 8'd31;  // 32 words
assign M_AXI_ARSIZE  = 3'b011; // 
assign M_AXI_ARBURST = 2'b01;
assign M_AXI_ARLOCK  = 2'b00;
assign M_AXI_ARCACHE = 4'b0011;
assign M_AXI_ARPROT  = 3'h0;
assign M_AXI_ARQOS   = 4'h0;
assign M_AXI_ARUSER  = 'b0;
assign M_AXI_ARVALID = 'b0;

assign M_AXI_RREADY  = 'b0;

wire [47:0] FIFOIN;
wire FIFOWR;

cam_decoder cam_decoder (
  .PCLK(PCLK),
  .PRST(PRST),

  .CAPON(CAPON),
  .HREF(HREF),
  .VSYNC(VSYNC),

  .CAMDATA(CAMDATA),
  .RESOL(RESOL),

  .FIFOIN(FIFOIN),
  .FIFOWR(FIFOWR),
  .FIFORST(FIFORST),
  .FOUND_HREF(found_href)
);

cam_buffer cam_buffer (
    .ACLK(ACLK),
    .ARST(ARST),

    .PCLK(PCLK),

    .FIFORST(FIFORST),

    .RGB(FIFOIN),        // P
    .FIFOWR(FIFOWR),     // P

    .FIFORD(FIFORD),     // A
    .HASDATA(HASDATA),    // A
    .READDATA(read_data),   // A
    .FIFOVALID(FIFOVALID),  // A

    .BUF_OVER(CAP_FIFO_OVER),   // A?
    .BUF_UNDER(CAP_FIFO_UNDER)   // A?
);

cam_regctrl cam_regctrl (
    .ACLK(ACLK),
    .ARST(ARST),

    .CAM_VSYNC(VSYNC),
    .FOUND_HREF(found_href),

    .WRADDR(WRADDR),
    .BYTEEN(BYTEEN),
    .WREN(WREN),
    .WDATA(WDATA),
    .RDADDR(RDADDR),
    .RDEN(RDEN),
    .RDATA(RDATA),

    .CAPADDR(cap_addr),
    .CAPON(CAPON),
    .CAP_IRQ(CAP_IRQ),

    .end_of_screen(end_of_screen),

    .FIFOOVER(CAP_FIFO_OVER),
    .FIFOUNDER(CAP_FIFO_UNDER)
);

cam_vramctrl cam_vramctrl (
    .ACLK(ACLK),
    .ARST(ARST),
    .AVSYNC(AVSYNC),

    .HASDATA(HASDATA),

    .START_SCREEN(VSYNC && CAPON),
    .CAPADDR(cap_addr),
    .RESOL(RESOL),

    .AWREADY(M_AXI_AWREADY),
    .AWADDR(VRAMCTRL_AWADDR),
    .AWVALID(M_AXI_AWVALID),

    .WREADY(M_AXI_WREADY),
    .WLAST(M_AXI_WLAST),
    .WVALID(M_AXI_WVALID), // output
    .WDATA(M_AXI_WDATA),

    .end_of_screen(end_of_screen),

    .FIFORD(FIFORD),
    .FIFODATA(read_data),
    .FIFOVALID(FIFOVALID),

    .BVALID(M_AXI_BVALID),
    .BREADY(M_AXI_BREADY)
);

endmodule
