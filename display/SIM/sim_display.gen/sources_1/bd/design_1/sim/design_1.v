//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Wed Jul 12 14:57:37 2023
//Host        : COJTHW101 running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (ACLK,
    ARESETN,
    BYTEEN,
    DCLK,
    DSP_B,
    DSP_DE,
    DSP_FIFO_OVER,
    DSP_FIFO_UNDER,
    DSP_G,
    DSP_HSYNC_X,
    DSP_IRQ,
    DSP_R,
    DSP_VSYNC_X,
    RDADDR,
    RDATA,
    RDEN,
    RESOL,
    WDATA,
    WRADDR,
    WREN);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK, ASSOCIATED_RESET ARESETN, CLK_DOMAIN design_1_ACLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input ACLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input ARESETN;
  input [3:0]BYTEEN;
  input DCLK;
  output [7:0]DSP_B;
  output DSP_DE;
  output DSP_FIFO_OVER;
  output DSP_FIFO_UNDER;
  output [7:0]DSP_G;
  output DSP_HSYNC_X;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.DSP_IRQ INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.DSP_IRQ, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) output DSP_IRQ;
  output [7:0]DSP_R;
  output DSP_VSYNC_X;
  input [15:0]RDADDR;
  output [31:0]RDATA;
  input RDEN;
  input [1:0]RESOL;
  input [31:0]WDATA;
  input [15:0]WRADDR;
  input WREN;

  wire ACLK_0_1;
  wire ARESETN_0_1;
  wire [3:0]BYTEEN_0_1;
  wire DCLK_0_1;
  wire [15:0]RDADDR_0_1;
  wire RDEN_0_1;
  wire [1:0]RESOL_0_1;
  wire [31:0]WDATA_0_1;
  wire [15:0]WRADDR_0_1;
  wire WREN_0_1;
  wire [7:0]display_0_DSP_B;
  wire display_0_DSP_DE;
  wire display_0_DSP_FIFO_OVER;
  wire display_0_DSP_FIFO_UNDER;
  wire [7:0]display_0_DSP_G;
  wire display_0_DSP_HSYNC_X;
  wire display_0_DSP_IRQ;
  wire [7:0]display_0_DSP_R;
  wire display_0_DSP_VSYNC_X;
  wire [31:0]display_0_M_AXI_ARADDR;
  wire [1:0]display_0_M_AXI_ARBURST;
  wire [3:0]display_0_M_AXI_ARCACHE;
  wire [0:0]display_0_M_AXI_ARID;
  wire [7:0]display_0_M_AXI_ARLEN;
  wire [1:0]display_0_M_AXI_ARLOCK;
  wire [2:0]display_0_M_AXI_ARPROT;
  wire [3:0]display_0_M_AXI_ARQOS;
  wire display_0_M_AXI_ARREADY;
  wire [2:0]display_0_M_AXI_ARSIZE;
  wire [0:0]display_0_M_AXI_ARUSER;
  wire display_0_M_AXI_ARVALID;
  wire [31:0]display_0_M_AXI_AWADDR;
  wire [1:0]display_0_M_AXI_AWBURST;
  wire [3:0]display_0_M_AXI_AWCACHE;
  wire [0:0]display_0_M_AXI_AWID;
  wire [7:0]display_0_M_AXI_AWLEN;
  wire [1:0]display_0_M_AXI_AWLOCK;
  wire [2:0]display_0_M_AXI_AWPROT;
  wire [3:0]display_0_M_AXI_AWQOS;
  wire display_0_M_AXI_AWREADY;
  wire [2:0]display_0_M_AXI_AWSIZE;
  wire [0:0]display_0_M_AXI_AWUSER;
  wire display_0_M_AXI_AWVALID;
  wire [0:0]display_0_M_AXI_BID;
  wire display_0_M_AXI_BREADY;
  wire [1:0]display_0_M_AXI_BRESP;
  wire [0:0]display_0_M_AXI_BUSER;
  wire display_0_M_AXI_BVALID;
  wire [63:0]display_0_M_AXI_RDATA;
  wire [0:0]display_0_M_AXI_RID;
  wire display_0_M_AXI_RLAST;
  wire display_0_M_AXI_RREADY;
  wire [1:0]display_0_M_AXI_RRESP;
  wire [7:0]display_0_M_AXI_RUSER;
  wire display_0_M_AXI_RVALID;
  wire [63:0]display_0_M_AXI_WDATA;
  wire display_0_M_AXI_WLAST;
  wire display_0_M_AXI_WREADY;
  wire [7:0]display_0_M_AXI_WSTRB;
  wire [7:0]display_0_M_AXI_WUSER;
  wire display_0_M_AXI_WVALID;
  wire [31:0]display_0_RDATA;

  assign ACLK_0_1 = ACLK;
  assign ARESETN_0_1 = ARESETN;
  assign BYTEEN_0_1 = BYTEEN[3:0];
  assign DCLK_0_1 = DCLK;
  assign DSP_B[7:0] = display_0_DSP_B;
  assign DSP_DE = display_0_DSP_DE;
  assign DSP_FIFO_OVER = display_0_DSP_FIFO_OVER;
  assign DSP_FIFO_UNDER = display_0_DSP_FIFO_UNDER;
  assign DSP_G[7:0] = display_0_DSP_G;
  assign DSP_HSYNC_X = display_0_DSP_HSYNC_X;
  assign DSP_IRQ = display_0_DSP_IRQ;
  assign DSP_R[7:0] = display_0_DSP_R;
  assign DSP_VSYNC_X = display_0_DSP_VSYNC_X;
  assign RDADDR_0_1 = RDADDR[15:0];
  assign RDATA[31:0] = display_0_RDATA;
  assign RDEN_0_1 = RDEN;
  assign RESOL_0_1 = RESOL[1:0];
  assign WDATA_0_1 = WDATA[31:0];
  assign WRADDR_0_1 = WRADDR[15:0];
  assign WREN_0_1 = WREN;
  design_1_axi_vip_0_0 axi_vip_0
       (.aclk(ACLK_0_1),
        .aresetn(ARESETN_0_1),
        .s_axi_araddr(display_0_M_AXI_ARADDR),
        .s_axi_arburst(display_0_M_AXI_ARBURST),
        .s_axi_arcache(display_0_M_AXI_ARCACHE),
        .s_axi_arid(display_0_M_AXI_ARID),
        .s_axi_arlen(display_0_M_AXI_ARLEN),
        .s_axi_arlock(display_0_M_AXI_ARLOCK[0]),
        .s_axi_arprot(display_0_M_AXI_ARPROT),
        .s_axi_arqos(display_0_M_AXI_ARQOS),
        .s_axi_arready(display_0_M_AXI_ARREADY),
        .s_axi_arsize(display_0_M_AXI_ARSIZE),
        .s_axi_aruser(display_0_M_AXI_ARUSER),
        .s_axi_arvalid(display_0_M_AXI_ARVALID),
        .s_axi_awaddr(display_0_M_AXI_AWADDR),
        .s_axi_awburst(display_0_M_AXI_AWBURST),
        .s_axi_awcache(display_0_M_AXI_AWCACHE),
        .s_axi_awid(display_0_M_AXI_AWID),
        .s_axi_awlen(display_0_M_AXI_AWLEN),
        .s_axi_awlock(display_0_M_AXI_AWLOCK[0]),
        .s_axi_awprot(display_0_M_AXI_AWPROT),
        .s_axi_awqos(display_0_M_AXI_AWQOS),
        .s_axi_awready(display_0_M_AXI_AWREADY),
        .s_axi_awsize(display_0_M_AXI_AWSIZE),
        .s_axi_awuser(display_0_M_AXI_AWUSER),
        .s_axi_awvalid(display_0_M_AXI_AWVALID),
        .s_axi_bid(display_0_M_AXI_BID),
        .s_axi_bready(display_0_M_AXI_BREADY),
        .s_axi_bresp(display_0_M_AXI_BRESP),
        .s_axi_buser(display_0_M_AXI_BUSER),
        .s_axi_bvalid(display_0_M_AXI_BVALID),
        .s_axi_rdata(display_0_M_AXI_RDATA),
        .s_axi_rid(display_0_M_AXI_RID),
        .s_axi_rlast(display_0_M_AXI_RLAST),
        .s_axi_rready(display_0_M_AXI_RREADY),
        .s_axi_rresp(display_0_M_AXI_RRESP),
        .s_axi_ruser(display_0_M_AXI_RUSER),
        .s_axi_rvalid(display_0_M_AXI_RVALID),
        .s_axi_wdata(display_0_M_AXI_WDATA),
        .s_axi_wlast(display_0_M_AXI_WLAST),
        .s_axi_wready(display_0_M_AXI_WREADY),
        .s_axi_wstrb(display_0_M_AXI_WSTRB),
        .s_axi_wuser(display_0_M_AXI_WUSER),
        .s_axi_wvalid(display_0_M_AXI_WVALID));
  design_1_display_0_0 display_0
       (.ACLK(ACLK_0_1),
        .ARESETN(ARESETN_0_1),
        .BYTEEN(BYTEEN_0_1),
        .DCLK(DCLK_0_1),
        .DSP_B(display_0_DSP_B),
        .DSP_DE(display_0_DSP_DE),
        .DSP_FIFO_OVER(display_0_DSP_FIFO_OVER),
        .DSP_FIFO_UNDER(display_0_DSP_FIFO_UNDER),
        .DSP_G(display_0_DSP_G),
        .DSP_HSYNC_X(display_0_DSP_HSYNC_X),
        .DSP_IRQ(display_0_DSP_IRQ),
        .DSP_R(display_0_DSP_R),
        .DSP_VSYNC_X(display_0_DSP_VSYNC_X),
        .M_AXI_ARADDR(display_0_M_AXI_ARADDR),
        .M_AXI_ARBURST(display_0_M_AXI_ARBURST),
        .M_AXI_ARCACHE(display_0_M_AXI_ARCACHE),
        .M_AXI_ARID(display_0_M_AXI_ARID),
        .M_AXI_ARLEN(display_0_M_AXI_ARLEN),
        .M_AXI_ARLOCK(display_0_M_AXI_ARLOCK),
        .M_AXI_ARPROT(display_0_M_AXI_ARPROT),
        .M_AXI_ARQOS(display_0_M_AXI_ARQOS),
        .M_AXI_ARREADY(display_0_M_AXI_ARREADY),
        .M_AXI_ARSIZE(display_0_M_AXI_ARSIZE),
        .M_AXI_ARUSER(display_0_M_AXI_ARUSER),
        .M_AXI_ARVALID(display_0_M_AXI_ARVALID),
        .M_AXI_AWADDR(display_0_M_AXI_AWADDR),
        .M_AXI_AWBURST(display_0_M_AXI_AWBURST),
        .M_AXI_AWCACHE(display_0_M_AXI_AWCACHE),
        .M_AXI_AWID(display_0_M_AXI_AWID),
        .M_AXI_AWLEN(display_0_M_AXI_AWLEN),
        .M_AXI_AWLOCK(display_0_M_AXI_AWLOCK),
        .M_AXI_AWPROT(display_0_M_AXI_AWPROT),
        .M_AXI_AWQOS(display_0_M_AXI_AWQOS),
        .M_AXI_AWREADY(display_0_M_AXI_AWREADY),
        .M_AXI_AWSIZE(display_0_M_AXI_AWSIZE),
        .M_AXI_AWUSER(display_0_M_AXI_AWUSER),
        .M_AXI_AWVALID(display_0_M_AXI_AWVALID),
        .M_AXI_BID(display_0_M_AXI_BID),
        .M_AXI_BREADY(display_0_M_AXI_BREADY),
        .M_AXI_BRESP(display_0_M_AXI_BRESP),
        .M_AXI_BUSER(display_0_M_AXI_BUSER),
        .M_AXI_BVALID(display_0_M_AXI_BVALID),
        .M_AXI_RDATA(display_0_M_AXI_RDATA),
        .M_AXI_RID(display_0_M_AXI_RID),
        .M_AXI_RLAST(display_0_M_AXI_RLAST),
        .M_AXI_RREADY(display_0_M_AXI_RREADY),
        .M_AXI_RRESP(display_0_M_AXI_RRESP),
        .M_AXI_RUSER(display_0_M_AXI_RUSER),
        .M_AXI_RVALID(display_0_M_AXI_RVALID),
        .M_AXI_WDATA(display_0_M_AXI_WDATA),
        .M_AXI_WLAST(display_0_M_AXI_WLAST),
        .M_AXI_WREADY(display_0_M_AXI_WREADY),
        .M_AXI_WSTRB(display_0_M_AXI_WSTRB),
        .M_AXI_WUSER(display_0_M_AXI_WUSER),
        .M_AXI_WVALID(display_0_M_AXI_WVALID),
        .RDADDR(RDADDR_0_1),
        .RDATA(display_0_RDATA),
        .RDEN(RDEN_0_1),
        .RESOL(RESOL_0_1),
        .WDATA(WDATA_0_1),
        .WRADDR(WRADDR_0_1),
        .WREN(WREN_0_1));
endmodule
