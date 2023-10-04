// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Fri Jun 23 16:50:10 2023
// Host        : COJTHW101 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/HW101.COJTHW/COJT/display/display.gen/sources_1/bd/design_1/ip/design_1_regbus_0_0/design_1_regbus_0_0_sim_netlist.v
// Design      : design_1_regbus_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_regbus_0_0,regbus_v2_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "regbus_v2_0,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module design_1_regbus_0_0
   (WRADDR,
    BYTEEN,
    WREN,
    WDATA,
    RDADDR,
    RDEN,
    RDATA_DISP,
    RDATA_CAPT,
    RDATA_DRAW,
    RDATA_SOUND,
    RDATA_OPT0,
    RDATA_OPT1,
    RDATA_OPT2,
    RDATA_OPT3,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready);
  output [15:0]WRADDR;
  output [3:0]BYTEEN;
  output WREN;
  output [31:0]WDATA;
  output [15:0]RDADDR;
  output RDEN;
  input [31:0]RDATA_DISP;
  input [31:0]RDATA_CAPT;
  input [31:0]RDATA_DRAW;
  input [31:0]RDATA_SOUND;
  input [31:0]RDATA_OPT0;
  input [31:0]RDATA_OPT1;
  input [31:0]RDATA_OPT2;
  input [31:0]RDATA_OPT3;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s00_axi_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00_axi_aclk, ASSOCIATED_BUSIF s00_axi, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s00_axi_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi AWADDR" *) input [15:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi ARADDR" *) input [15:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 125000000, ID_WIDTH 0, ADDR_WIDTH 16, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s00_axi_rready;

  wire \<const0> ;
  wire [3:0]BYTEEN;
  wire [15:0]RDADDR;
  wire [31:0]RDATA_CAPT;
  wire [31:0]RDATA_DISP;
  wire [31:0]RDATA_DRAW;
  wire [31:0]RDATA_OPT0;
  wire [31:0]RDATA_OPT1;
  wire [31:0]RDATA_OPT2;
  wire [31:0]RDATA_OPT3;
  wire [31:0]RDATA_SOUND;
  wire RDEN;
  wire [31:0]WDATA;
  wire [15:0]WRADDR;
  wire WREN;
  wire s00_axi_aclk;
  wire [15:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [15:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_regbus_0_0_regbus_v2_0 inst
       (.BYTEEN(BYTEEN),
        .Q(RDADDR),
        .RDATA_CAPT(RDATA_CAPT),
        .RDATA_DISP(RDATA_DISP),
        .RDATA_DRAW(RDATA_DRAW),
        .RDATA_OPT0(RDATA_OPT0),
        .RDATA_OPT1(RDATA_OPT1),
        .RDATA_OPT2(RDATA_OPT2),
        .RDATA_OPT3(RDATA_OPT3),
        .RDATA_SOUND(RDATA_SOUND),
        .RDEN(RDEN),
        .S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_WREADY(s00_axi_wready),
        .WDATA(WDATA),
        .WRADDR(WRADDR),
        .WREN(WREN),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "regbus_v2_0" *) 
module design_1_regbus_0_0_regbus_v2_0
   (S_AXI_AWREADY,
    WRADDR,
    BYTEEN,
    S_AXI_WREADY,
    WREN,
    WDATA,
    S_AXI_ARREADY,
    Q,
    s00_axi_rdata,
    RDEN,
    s00_axi_bvalid,
    s00_axi_rvalid,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_wstrb,
    s00_axi_wdata,
    s00_axi_araddr,
    RDATA_SOUND,
    RDATA_DRAW,
    RDATA_CAPT,
    RDATA_DISP,
    RDATA_OPT3,
    RDATA_OPT2,
    RDATA_OPT1,
    RDATA_OPT0,
    s00_axi_aresetn,
    s00_axi_arvalid,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_AWREADY;
  output [15:0]WRADDR;
  output [3:0]BYTEEN;
  output S_AXI_WREADY;
  output WREN;
  output [31:0]WDATA;
  output S_AXI_ARREADY;
  output [15:0]Q;
  output [31:0]s00_axi_rdata;
  output RDEN;
  output s00_axi_bvalid;
  output s00_axi_rvalid;
  input s00_axi_aclk;
  input [15:0]s00_axi_awaddr;
  input [3:0]s00_axi_wstrb;
  input [31:0]s00_axi_wdata;
  input [15:0]s00_axi_araddr;
  input [31:0]RDATA_SOUND;
  input [31:0]RDATA_DRAW;
  input [31:0]RDATA_CAPT;
  input [31:0]RDATA_DISP;
  input [31:0]RDATA_OPT3;
  input [31:0]RDATA_OPT2;
  input [31:0]RDATA_OPT1;
  input [31:0]RDATA_OPT0;
  input s00_axi_aresetn;
  input s00_axi_arvalid;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_bready;
  input s00_axi_rready;

  wire [3:0]BYTEEN;
  wire [15:0]Q;
  wire [31:0]RDATA_CAPT;
  wire [31:0]RDATA_DISP;
  wire [31:0]RDATA_DRAW;
  wire [31:0]RDATA_OPT0;
  wire [31:0]RDATA_OPT1;
  wire [31:0]RDATA_OPT2;
  wire [31:0]RDATA_OPT3;
  wire [31:0]RDATA_SOUND;
  wire RDEN;
  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire [31:0]WDATA;
  wire [15:0]WRADDR;
  wire WREN;
  wire s00_axi_aclk;
  wire [15:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [15:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  design_1_regbus_0_0_regbus_v2_0_S00_AXI regbus_v2_0_S00_AXI_inst
       (.BYTEEN(BYTEEN),
        .RDADDR(Q),
        .RDATA_CAPT(RDATA_CAPT),
        .RDATA_DISP(RDATA_DISP),
        .RDATA_DRAW(RDATA_DRAW),
        .RDATA_OPT0(RDATA_OPT0),
        .RDATA_OPT1(RDATA_OPT1),
        .RDATA_OPT2(RDATA_OPT2),
        .RDATA_OPT3(RDATA_OPT3),
        .RDATA_SOUND(RDATA_SOUND),
        .RDEN(RDEN),
        .WDATA(WDATA),
        .WRADDR(WRADDR),
        .WREN(WREN),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arready(S_AXI_ARREADY),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awready(S_AXI_AWREADY),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(S_AXI_WREADY),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "regbus_v2_0_S00_AXI" *) 
module design_1_regbus_0_0_regbus_v2_0_S00_AXI
   (s00_axi_awready,
    WRADDR,
    BYTEEN,
    s00_axi_wready,
    WREN,
    WDATA,
    s00_axi_arready,
    RDADDR,
    s00_axi_rdata,
    RDEN,
    s00_axi_bvalid,
    s00_axi_rvalid,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_wstrb,
    s00_axi_wdata,
    s00_axi_araddr,
    RDATA_SOUND,
    RDATA_DRAW,
    RDATA_CAPT,
    RDATA_DISP,
    RDATA_OPT3,
    RDATA_OPT2,
    RDATA_OPT1,
    RDATA_OPT0,
    s00_axi_aresetn,
    s00_axi_arvalid,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_bready,
    s00_axi_rready);
  output s00_axi_awready;
  output [15:0]WRADDR;
  output [3:0]BYTEEN;
  output s00_axi_wready;
  output WREN;
  output [31:0]WDATA;
  output s00_axi_arready;
  output [15:0]RDADDR;
  output [31:0]s00_axi_rdata;
  output RDEN;
  output s00_axi_bvalid;
  output s00_axi_rvalid;
  input s00_axi_aclk;
  input [15:0]s00_axi_awaddr;
  input [3:0]s00_axi_wstrb;
  input [31:0]s00_axi_wdata;
  input [15:0]s00_axi_araddr;
  input [31:0]RDATA_SOUND;
  input [31:0]RDATA_DRAW;
  input [31:0]RDATA_CAPT;
  input [31:0]RDATA_DISP;
  input [31:0]RDATA_OPT3;
  input [31:0]RDATA_OPT2;
  input [31:0]RDATA_OPT1;
  input [31:0]RDATA_OPT0;
  input s00_axi_aresetn;
  input s00_axi_arvalid;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_bready;
  input s00_axi_rready;

  wire [3:0]BYTEEN;
  wire [15:0]RDADDR;
  wire [31:0]RDATA_CAPT;
  wire [31:0]RDATA_DISP;
  wire [31:0]RDATA_DRAW;
  wire [31:0]RDATA_OPT0;
  wire [31:0]RDATA_OPT1;
  wire [31:0]RDATA_OPT2;
  wire [31:0]RDATA_OPT3;
  wire [31:0]RDATA_SOUND;
  wire RDEN;
  wire RDEN_i_1_n_0;
  wire [31:0]WDATA;
  wire [15:0]WRADDR;
  wire WREN;
  wire axi_araddr0;
  wire [15:0]axi_awaddr;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire \axi_rdata[0]_i_2_n_0 ;
  wire \axi_rdata[0]_i_3_n_0 ;
  wire \axi_rdata[10]_i_2_n_0 ;
  wire \axi_rdata[10]_i_3_n_0 ;
  wire \axi_rdata[11]_i_2_n_0 ;
  wire \axi_rdata[11]_i_3_n_0 ;
  wire \axi_rdata[12]_i_2_n_0 ;
  wire \axi_rdata[12]_i_3_n_0 ;
  wire \axi_rdata[13]_i_2_n_0 ;
  wire \axi_rdata[13]_i_3_n_0 ;
  wire \axi_rdata[14]_i_2_n_0 ;
  wire \axi_rdata[14]_i_3_n_0 ;
  wire \axi_rdata[15]_i_2_n_0 ;
  wire \axi_rdata[15]_i_3_n_0 ;
  wire \axi_rdata[16]_i_2_n_0 ;
  wire \axi_rdata[16]_i_3_n_0 ;
  wire \axi_rdata[17]_i_2_n_0 ;
  wire \axi_rdata[17]_i_3_n_0 ;
  wire \axi_rdata[18]_i_2_n_0 ;
  wire \axi_rdata[18]_i_3_n_0 ;
  wire \axi_rdata[19]_i_2_n_0 ;
  wire \axi_rdata[19]_i_3_n_0 ;
  wire \axi_rdata[1]_i_2_n_0 ;
  wire \axi_rdata[1]_i_3_n_0 ;
  wire \axi_rdata[20]_i_2_n_0 ;
  wire \axi_rdata[20]_i_3_n_0 ;
  wire \axi_rdata[21]_i_2_n_0 ;
  wire \axi_rdata[21]_i_3_n_0 ;
  wire \axi_rdata[22]_i_2_n_0 ;
  wire \axi_rdata[22]_i_3_n_0 ;
  wire \axi_rdata[23]_i_2_n_0 ;
  wire \axi_rdata[23]_i_3_n_0 ;
  wire \axi_rdata[24]_i_2_n_0 ;
  wire \axi_rdata[24]_i_3_n_0 ;
  wire \axi_rdata[25]_i_2_n_0 ;
  wire \axi_rdata[25]_i_3_n_0 ;
  wire \axi_rdata[26]_i_2_n_0 ;
  wire \axi_rdata[26]_i_3_n_0 ;
  wire \axi_rdata[27]_i_2_n_0 ;
  wire \axi_rdata[27]_i_3_n_0 ;
  wire \axi_rdata[28]_i_2_n_0 ;
  wire \axi_rdata[28]_i_3_n_0 ;
  wire \axi_rdata[29]_i_2_n_0 ;
  wire \axi_rdata[29]_i_3_n_0 ;
  wire \axi_rdata[2]_i_2_n_0 ;
  wire \axi_rdata[2]_i_3_n_0 ;
  wire \axi_rdata[30]_i_2_n_0 ;
  wire \axi_rdata[30]_i_3_n_0 ;
  wire \axi_rdata[31]_i_2_n_0 ;
  wire \axi_rdata[31]_i_3_n_0 ;
  wire \axi_rdata[3]_i_2_n_0 ;
  wire \axi_rdata[3]_i_3_n_0 ;
  wire \axi_rdata[4]_i_2_n_0 ;
  wire \axi_rdata[4]_i_3_n_0 ;
  wire \axi_rdata[5]_i_2_n_0 ;
  wire \axi_rdata[5]_i_3_n_0 ;
  wire \axi_rdata[6]_i_2_n_0 ;
  wire \axi_rdata[6]_i_3_n_0 ;
  wire \axi_rdata[7]_i_2_n_0 ;
  wire \axi_rdata[7]_i_3_n_0 ;
  wire \axi_rdata[8]_i_2_n_0 ;
  wire \axi_rdata[8]_i_3_n_0 ;
  wire \axi_rdata[9]_i_2_n_0 ;
  wire \axi_rdata[9]_i_3_n_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire p_0_in;
  wire [31:0]p_1_in;
  wire pre_axi_arready;
  wire pre_axi_arready0;
  wire s00_axi_aclk;
  wire [15:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [15:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire slv_reg_rden__0;
  wire slv_reg_wren;

  FDRE \BYTEEN_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s00_axi_wstrb[0]),
        .Q(BYTEEN[0]),
        .R(p_0_in));
  FDRE \BYTEEN_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s00_axi_wstrb[1]),
        .Q(BYTEEN[1]),
        .R(p_0_in));
  FDRE \BYTEEN_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s00_axi_wstrb[2]),
        .Q(BYTEEN[2]),
        .R(p_0_in));
  FDRE \BYTEEN_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s00_axi_wstrb[3]),
        .Q(BYTEEN[3]),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h32)) 
    RDEN_i_1
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_arready),
        .I2(RDEN),
        .O(RDEN_i_1_n_0));
  FDRE RDEN_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(RDEN_i_1_n_0),
        .Q(RDEN),
        .R(p_0_in));
  FDRE \WDATA_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s00_axi_wdata[0]),
        .Q(WDATA[0]),
        .R(p_0_in));
  FDRE \WDATA_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s00_axi_wdata[10]),
        .Q(WDATA[10]),
        .R(p_0_in));
  FDRE \WDATA_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s00_axi_wdata[11]),
        .Q(WDATA[11]),
        .R(p_0_in));
  FDRE \WDATA_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s00_axi_wdata[12]),
        .Q(WDATA[12]),
        .R(p_0_in));
  FDRE \WDATA_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s00_axi_wdata[13]),
        .Q(WDATA[13]),
        .R(p_0_in));
  FDRE \WDATA_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s00_axi_wdata[14]),
        .Q(WDATA[14]),
        .R(p_0_in));
  FDRE \WDATA_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s00_axi_wdata[15]),
        .Q(WDATA[15]),
        .R(p_0_in));
  FDRE \WDATA_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s00_axi_wdata[16]),
        .Q(WDATA[16]),
        .R(p_0_in));
  FDRE \WDATA_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s00_axi_wdata[17]),
        .Q(WDATA[17]),
        .R(p_0_in));
  FDRE \WDATA_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s00_axi_wdata[18]),
        .Q(WDATA[18]),
        .R(p_0_in));
  FDRE \WDATA_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s00_axi_wdata[19]),
        .Q(WDATA[19]),
        .R(p_0_in));
  FDRE \WDATA_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s00_axi_wdata[1]),
        .Q(WDATA[1]),
        .R(p_0_in));
  FDRE \WDATA_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s00_axi_wdata[20]),
        .Q(WDATA[20]),
        .R(p_0_in));
  FDRE \WDATA_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s00_axi_wdata[21]),
        .Q(WDATA[21]),
        .R(p_0_in));
  FDRE \WDATA_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s00_axi_wdata[22]),
        .Q(WDATA[22]),
        .R(p_0_in));
  FDRE \WDATA_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s00_axi_wdata[23]),
        .Q(WDATA[23]),
        .R(p_0_in));
  FDRE \WDATA_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s00_axi_wdata[24]),
        .Q(WDATA[24]),
        .R(p_0_in));
  FDRE \WDATA_reg[25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s00_axi_wdata[25]),
        .Q(WDATA[25]),
        .R(p_0_in));
  FDRE \WDATA_reg[26] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s00_axi_wdata[26]),
        .Q(WDATA[26]),
        .R(p_0_in));
  FDRE \WDATA_reg[27] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s00_axi_wdata[27]),
        .Q(WDATA[27]),
        .R(p_0_in));
  FDRE \WDATA_reg[28] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s00_axi_wdata[28]),
        .Q(WDATA[28]),
        .R(p_0_in));
  FDRE \WDATA_reg[29] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s00_axi_wdata[29]),
        .Q(WDATA[29]),
        .R(p_0_in));
  FDRE \WDATA_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s00_axi_wdata[2]),
        .Q(WDATA[2]),
        .R(p_0_in));
  FDRE \WDATA_reg[30] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s00_axi_wdata[30]),
        .Q(WDATA[30]),
        .R(p_0_in));
  FDRE \WDATA_reg[31] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s00_axi_wdata[31]),
        .Q(WDATA[31]),
        .R(p_0_in));
  FDRE \WDATA_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s00_axi_wdata[3]),
        .Q(WDATA[3]),
        .R(p_0_in));
  FDRE \WDATA_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s00_axi_wdata[4]),
        .Q(WDATA[4]),
        .R(p_0_in));
  FDRE \WDATA_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s00_axi_wdata[5]),
        .Q(WDATA[5]),
        .R(p_0_in));
  FDRE \WDATA_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s00_axi_wdata[6]),
        .Q(WDATA[6]),
        .R(p_0_in));
  FDRE \WDATA_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s00_axi_wdata[7]),
        .Q(WDATA[7]),
        .R(p_0_in));
  FDRE \WDATA_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s00_axi_wdata[8]),
        .Q(WDATA[8]),
        .R(p_0_in));
  FDRE \WDATA_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s00_axi_wdata[9]),
        .Q(WDATA[9]),
        .R(p_0_in));
  LUT1 #(
    .INIT(2'h1)) 
    \WRADDR[15]_i_1 
       (.I0(s00_axi_aresetn),
        .O(p_0_in));
  FDRE \WRADDR_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awaddr[0]),
        .Q(WRADDR[0]),
        .R(p_0_in));
  FDRE \WRADDR_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awaddr[10]),
        .Q(WRADDR[10]),
        .R(p_0_in));
  FDRE \WRADDR_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awaddr[11]),
        .Q(WRADDR[11]),
        .R(p_0_in));
  FDRE \WRADDR_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awaddr[12]),
        .Q(WRADDR[12]),
        .R(p_0_in));
  FDRE \WRADDR_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awaddr[13]),
        .Q(WRADDR[13]),
        .R(p_0_in));
  FDRE \WRADDR_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awaddr[14]),
        .Q(WRADDR[14]),
        .R(p_0_in));
  FDRE \WRADDR_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awaddr[15]),
        .Q(WRADDR[15]),
        .R(p_0_in));
  FDRE \WRADDR_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awaddr[1]),
        .Q(WRADDR[1]),
        .R(p_0_in));
  FDRE \WRADDR_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awaddr[2]),
        .Q(WRADDR[2]),
        .R(p_0_in));
  FDRE \WRADDR_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awaddr[3]),
        .Q(WRADDR[3]),
        .R(p_0_in));
  FDRE \WRADDR_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awaddr[4]),
        .Q(WRADDR[4]),
        .R(p_0_in));
  FDRE \WRADDR_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awaddr[5]),
        .Q(WRADDR[5]),
        .R(p_0_in));
  FDRE \WRADDR_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awaddr[6]),
        .Q(WRADDR[6]),
        .R(p_0_in));
  FDRE \WRADDR_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awaddr[7]),
        .Q(WRADDR[7]),
        .R(p_0_in));
  FDRE \WRADDR_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awaddr[8]),
        .Q(WRADDR[8]),
        .R(p_0_in));
  FDRE \WRADDR_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awaddr[9]),
        .Q(WRADDR[9]),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    WREN_i_1
       (.I0(s00_axi_awready),
        .I1(s00_axi_wready),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .O(slv_reg_wren));
  FDRE WREN_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_wren),
        .Q(WREN),
        .R(p_0_in));
  LUT2 #(
    .INIT(4'h2)) 
    \axi_araddr[15]_i_1 
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_arready),
        .O(axi_araddr0));
  FDRE \axi_araddr_reg[0] 
       (.C(s00_axi_aclk),
        .CE(axi_araddr0),
        .D(s00_axi_araddr[0]),
        .Q(RDADDR[0]),
        .R(p_0_in));
  FDRE \axi_araddr_reg[10] 
       (.C(s00_axi_aclk),
        .CE(axi_araddr0),
        .D(s00_axi_araddr[10]),
        .Q(RDADDR[10]),
        .R(p_0_in));
  FDRE \axi_araddr_reg[11] 
       (.C(s00_axi_aclk),
        .CE(axi_araddr0),
        .D(s00_axi_araddr[11]),
        .Q(RDADDR[11]),
        .R(p_0_in));
  FDRE \axi_araddr_reg[12] 
       (.C(s00_axi_aclk),
        .CE(axi_araddr0),
        .D(s00_axi_araddr[12]),
        .Q(RDADDR[12]),
        .R(p_0_in));
  FDRE \axi_araddr_reg[13] 
       (.C(s00_axi_aclk),
        .CE(axi_araddr0),
        .D(s00_axi_araddr[13]),
        .Q(RDADDR[13]),
        .R(p_0_in));
  FDRE \axi_araddr_reg[14] 
       (.C(s00_axi_aclk),
        .CE(axi_araddr0),
        .D(s00_axi_araddr[14]),
        .Q(RDADDR[14]),
        .R(p_0_in));
  FDRE \axi_araddr_reg[15] 
       (.C(s00_axi_aclk),
        .CE(axi_araddr0),
        .D(s00_axi_araddr[15]),
        .Q(RDADDR[15]),
        .R(p_0_in));
  FDRE \axi_araddr_reg[1] 
       (.C(s00_axi_aclk),
        .CE(axi_araddr0),
        .D(s00_axi_araddr[1]),
        .Q(RDADDR[1]),
        .R(p_0_in));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_araddr0),
        .D(s00_axi_araddr[2]),
        .Q(RDADDR[2]),
        .R(p_0_in));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_araddr0),
        .D(s00_axi_araddr[3]),
        .Q(RDADDR[3]),
        .R(p_0_in));
  FDRE \axi_araddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_araddr0),
        .D(s00_axi_araddr[4]),
        .Q(RDADDR[4]),
        .R(p_0_in));
  FDRE \axi_araddr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(axi_araddr0),
        .D(s00_axi_araddr[5]),
        .Q(RDADDR[5]),
        .R(p_0_in));
  FDRE \axi_araddr_reg[6] 
       (.C(s00_axi_aclk),
        .CE(axi_araddr0),
        .D(s00_axi_araddr[6]),
        .Q(RDADDR[6]),
        .R(p_0_in));
  FDRE \axi_araddr_reg[7] 
       (.C(s00_axi_aclk),
        .CE(axi_araddr0),
        .D(s00_axi_araddr[7]),
        .Q(RDADDR[7]),
        .R(p_0_in));
  FDRE \axi_araddr_reg[8] 
       (.C(s00_axi_aclk),
        .CE(axi_araddr0),
        .D(s00_axi_araddr[8]),
        .Q(RDADDR[8]),
        .R(p_0_in));
  FDRE \axi_araddr_reg[9] 
       (.C(s00_axi_aclk),
        .CE(axi_araddr0),
        .D(s00_axi_araddr[9]),
        .Q(RDADDR[9]),
        .R(p_0_in));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(pre_axi_arready),
        .Q(s00_axi_arready),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[0] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[0]),
        .Q(axi_awaddr[0]),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[10] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[10]),
        .Q(axi_awaddr[10]),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[11] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[11]),
        .Q(axi_awaddr[11]),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[12] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[12]),
        .Q(axi_awaddr[12]),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[13] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[13]),
        .Q(axi_awaddr[13]),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[14] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[14]),
        .Q(axi_awaddr[14]),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[15] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[15]),
        .Q(axi_awaddr[15]),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[1] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[1]),
        .Q(axi_awaddr[1]),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[2]),
        .Q(axi_awaddr[2]),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[3]),
        .Q(axi_awaddr[3]),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[4]),
        .Q(axi_awaddr[4]),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[5]),
        .Q(axi_awaddr[5]),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[6] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[6]),
        .Q(axi_awaddr[6]),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[7] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[7]),
        .Q(axi_awaddr[7]),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[8] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[8]),
        .Q(axi_awaddr[8]),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[9] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[9]),
        .Q(axi_awaddr[9]),
        .R(p_0_in));
  LUT3 #(
    .INIT(8'h08)) 
    axi_awready_i_1
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_awready),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(s00_axi_awready),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wready),
        .I3(s00_axi_awready),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[0]_i_1 
       (.I0(\axi_rdata[0]_i_2_n_0 ),
        .I1(RDADDR[14]),
        .I2(\axi_rdata[0]_i_3_n_0 ),
        .I3(RDADDR[15]),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_2 
       (.I0(RDATA_SOUND[0]),
        .I1(RDATA_DRAW[0]),
        .I2(RDADDR[13]),
        .I3(RDATA_CAPT[0]),
        .I4(RDADDR[12]),
        .I5(RDATA_DISP[0]),
        .O(\axi_rdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_3 
       (.I0(RDATA_OPT3[0]),
        .I1(RDATA_OPT2[0]),
        .I2(RDADDR[13]),
        .I3(RDATA_OPT1[0]),
        .I4(RDADDR[12]),
        .I5(RDATA_OPT0[0]),
        .O(\axi_rdata[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[10]_i_1 
       (.I0(\axi_rdata[10]_i_2_n_0 ),
        .I1(RDADDR[14]),
        .I2(\axi_rdata[10]_i_3_n_0 ),
        .I3(RDADDR[15]),
        .O(p_1_in[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_2 
       (.I0(RDATA_SOUND[10]),
        .I1(RDATA_DRAW[10]),
        .I2(RDADDR[13]),
        .I3(RDATA_CAPT[10]),
        .I4(RDADDR[12]),
        .I5(RDATA_DISP[10]),
        .O(\axi_rdata[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_3 
       (.I0(RDATA_OPT3[10]),
        .I1(RDATA_OPT2[10]),
        .I2(RDADDR[13]),
        .I3(RDATA_OPT1[10]),
        .I4(RDADDR[12]),
        .I5(RDATA_OPT0[10]),
        .O(\axi_rdata[10]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[11]_i_1 
       (.I0(\axi_rdata[11]_i_2_n_0 ),
        .I1(RDADDR[14]),
        .I2(\axi_rdata[11]_i_3_n_0 ),
        .I3(RDADDR[15]),
        .O(p_1_in[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_2 
       (.I0(RDATA_SOUND[11]),
        .I1(RDATA_DRAW[11]),
        .I2(RDADDR[13]),
        .I3(RDATA_CAPT[11]),
        .I4(RDADDR[12]),
        .I5(RDATA_DISP[11]),
        .O(\axi_rdata[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_3 
       (.I0(RDATA_OPT3[11]),
        .I1(RDATA_OPT2[11]),
        .I2(RDADDR[13]),
        .I3(RDATA_OPT1[11]),
        .I4(RDADDR[12]),
        .I5(RDATA_OPT0[11]),
        .O(\axi_rdata[11]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[12]_i_1 
       (.I0(\axi_rdata[12]_i_2_n_0 ),
        .I1(RDADDR[14]),
        .I2(\axi_rdata[12]_i_3_n_0 ),
        .I3(RDADDR[15]),
        .O(p_1_in[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_2 
       (.I0(RDATA_SOUND[12]),
        .I1(RDATA_DRAW[12]),
        .I2(RDADDR[13]),
        .I3(RDATA_CAPT[12]),
        .I4(RDADDR[12]),
        .I5(RDATA_DISP[12]),
        .O(\axi_rdata[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_3 
       (.I0(RDATA_OPT3[12]),
        .I1(RDATA_OPT2[12]),
        .I2(RDADDR[13]),
        .I3(RDATA_OPT1[12]),
        .I4(RDADDR[12]),
        .I5(RDATA_OPT0[12]),
        .O(\axi_rdata[12]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[13]_i_1 
       (.I0(\axi_rdata[13]_i_2_n_0 ),
        .I1(RDADDR[14]),
        .I2(\axi_rdata[13]_i_3_n_0 ),
        .I3(RDADDR[15]),
        .O(p_1_in[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_2 
       (.I0(RDATA_SOUND[13]),
        .I1(RDATA_DRAW[13]),
        .I2(RDADDR[13]),
        .I3(RDATA_CAPT[13]),
        .I4(RDADDR[12]),
        .I5(RDATA_DISP[13]),
        .O(\axi_rdata[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_3 
       (.I0(RDATA_OPT3[13]),
        .I1(RDATA_OPT2[13]),
        .I2(RDADDR[13]),
        .I3(RDATA_OPT1[13]),
        .I4(RDADDR[12]),
        .I5(RDATA_OPT0[13]),
        .O(\axi_rdata[13]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[14]_i_1 
       (.I0(\axi_rdata[14]_i_2_n_0 ),
        .I1(RDADDR[14]),
        .I2(\axi_rdata[14]_i_3_n_0 ),
        .I3(RDADDR[15]),
        .O(p_1_in[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_2 
       (.I0(RDATA_SOUND[14]),
        .I1(RDATA_DRAW[14]),
        .I2(RDADDR[13]),
        .I3(RDATA_CAPT[14]),
        .I4(RDADDR[12]),
        .I5(RDATA_DISP[14]),
        .O(\axi_rdata[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_3 
       (.I0(RDATA_OPT3[14]),
        .I1(RDATA_OPT2[14]),
        .I2(RDADDR[13]),
        .I3(RDATA_OPT1[14]),
        .I4(RDADDR[12]),
        .I5(RDATA_OPT0[14]),
        .O(\axi_rdata[14]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[15]_i_1 
       (.I0(\axi_rdata[15]_i_2_n_0 ),
        .I1(RDADDR[14]),
        .I2(\axi_rdata[15]_i_3_n_0 ),
        .I3(RDADDR[15]),
        .O(p_1_in[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_2 
       (.I0(RDATA_SOUND[15]),
        .I1(RDATA_DRAW[15]),
        .I2(RDADDR[13]),
        .I3(RDATA_CAPT[15]),
        .I4(RDADDR[12]),
        .I5(RDATA_DISP[15]),
        .O(\axi_rdata[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_3 
       (.I0(RDATA_OPT3[15]),
        .I1(RDATA_OPT2[15]),
        .I2(RDADDR[13]),
        .I3(RDATA_OPT1[15]),
        .I4(RDADDR[12]),
        .I5(RDATA_OPT0[15]),
        .O(\axi_rdata[15]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[16]_i_1 
       (.I0(\axi_rdata[16]_i_2_n_0 ),
        .I1(RDADDR[14]),
        .I2(\axi_rdata[16]_i_3_n_0 ),
        .I3(RDADDR[15]),
        .O(p_1_in[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_2 
       (.I0(RDATA_SOUND[16]),
        .I1(RDATA_DRAW[16]),
        .I2(RDADDR[13]),
        .I3(RDATA_CAPT[16]),
        .I4(RDADDR[12]),
        .I5(RDATA_DISP[16]),
        .O(\axi_rdata[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_3 
       (.I0(RDATA_OPT3[16]),
        .I1(RDATA_OPT2[16]),
        .I2(RDADDR[13]),
        .I3(RDATA_OPT1[16]),
        .I4(RDADDR[12]),
        .I5(RDATA_OPT0[16]),
        .O(\axi_rdata[16]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[17]_i_1 
       (.I0(\axi_rdata[17]_i_2_n_0 ),
        .I1(RDADDR[14]),
        .I2(\axi_rdata[17]_i_3_n_0 ),
        .I3(RDADDR[15]),
        .O(p_1_in[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_2 
       (.I0(RDATA_SOUND[17]),
        .I1(RDATA_DRAW[17]),
        .I2(RDADDR[13]),
        .I3(RDATA_CAPT[17]),
        .I4(RDADDR[12]),
        .I5(RDATA_DISP[17]),
        .O(\axi_rdata[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_3 
       (.I0(RDATA_OPT3[17]),
        .I1(RDATA_OPT2[17]),
        .I2(RDADDR[13]),
        .I3(RDATA_OPT1[17]),
        .I4(RDADDR[12]),
        .I5(RDATA_OPT0[17]),
        .O(\axi_rdata[17]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[18]_i_1 
       (.I0(\axi_rdata[18]_i_2_n_0 ),
        .I1(RDADDR[14]),
        .I2(\axi_rdata[18]_i_3_n_0 ),
        .I3(RDADDR[15]),
        .O(p_1_in[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_2 
       (.I0(RDATA_SOUND[18]),
        .I1(RDATA_DRAW[18]),
        .I2(RDADDR[13]),
        .I3(RDATA_CAPT[18]),
        .I4(RDADDR[12]),
        .I5(RDATA_DISP[18]),
        .O(\axi_rdata[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_3 
       (.I0(RDATA_OPT3[18]),
        .I1(RDATA_OPT2[18]),
        .I2(RDADDR[13]),
        .I3(RDATA_OPT1[18]),
        .I4(RDADDR[12]),
        .I5(RDATA_OPT0[18]),
        .O(\axi_rdata[18]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[19]_i_1 
       (.I0(\axi_rdata[19]_i_2_n_0 ),
        .I1(RDADDR[14]),
        .I2(\axi_rdata[19]_i_3_n_0 ),
        .I3(RDADDR[15]),
        .O(p_1_in[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_2 
       (.I0(RDATA_SOUND[19]),
        .I1(RDATA_DRAW[19]),
        .I2(RDADDR[13]),
        .I3(RDATA_CAPT[19]),
        .I4(RDADDR[12]),
        .I5(RDATA_DISP[19]),
        .O(\axi_rdata[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_3 
       (.I0(RDATA_OPT3[19]),
        .I1(RDATA_OPT2[19]),
        .I2(RDADDR[13]),
        .I3(RDATA_OPT1[19]),
        .I4(RDADDR[12]),
        .I5(RDATA_OPT0[19]),
        .O(\axi_rdata[19]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[1]_i_1 
       (.I0(\axi_rdata[1]_i_2_n_0 ),
        .I1(RDADDR[14]),
        .I2(\axi_rdata[1]_i_3_n_0 ),
        .I3(RDADDR[15]),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_2 
       (.I0(RDATA_SOUND[1]),
        .I1(RDATA_DRAW[1]),
        .I2(RDADDR[13]),
        .I3(RDATA_CAPT[1]),
        .I4(RDADDR[12]),
        .I5(RDATA_DISP[1]),
        .O(\axi_rdata[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_3 
       (.I0(RDATA_OPT3[1]),
        .I1(RDATA_OPT2[1]),
        .I2(RDADDR[13]),
        .I3(RDATA_OPT1[1]),
        .I4(RDADDR[12]),
        .I5(RDATA_OPT0[1]),
        .O(\axi_rdata[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[20]_i_1 
       (.I0(\axi_rdata[20]_i_2_n_0 ),
        .I1(RDADDR[14]),
        .I2(\axi_rdata[20]_i_3_n_0 ),
        .I3(RDADDR[15]),
        .O(p_1_in[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_2 
       (.I0(RDATA_SOUND[20]),
        .I1(RDATA_DRAW[20]),
        .I2(RDADDR[13]),
        .I3(RDATA_CAPT[20]),
        .I4(RDADDR[12]),
        .I5(RDATA_DISP[20]),
        .O(\axi_rdata[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_3 
       (.I0(RDATA_OPT3[20]),
        .I1(RDATA_OPT2[20]),
        .I2(RDADDR[13]),
        .I3(RDATA_OPT1[20]),
        .I4(RDADDR[12]),
        .I5(RDATA_OPT0[20]),
        .O(\axi_rdata[20]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[21]_i_1 
       (.I0(\axi_rdata[21]_i_2_n_0 ),
        .I1(RDADDR[14]),
        .I2(\axi_rdata[21]_i_3_n_0 ),
        .I3(RDADDR[15]),
        .O(p_1_in[21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_2 
       (.I0(RDATA_SOUND[21]),
        .I1(RDATA_DRAW[21]),
        .I2(RDADDR[13]),
        .I3(RDATA_CAPT[21]),
        .I4(RDADDR[12]),
        .I5(RDATA_DISP[21]),
        .O(\axi_rdata[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_3 
       (.I0(RDATA_OPT3[21]),
        .I1(RDATA_OPT2[21]),
        .I2(RDADDR[13]),
        .I3(RDATA_OPT1[21]),
        .I4(RDADDR[12]),
        .I5(RDATA_OPT0[21]),
        .O(\axi_rdata[21]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[22]_i_1 
       (.I0(\axi_rdata[22]_i_2_n_0 ),
        .I1(RDADDR[14]),
        .I2(\axi_rdata[22]_i_3_n_0 ),
        .I3(RDADDR[15]),
        .O(p_1_in[22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_2 
       (.I0(RDATA_SOUND[22]),
        .I1(RDATA_DRAW[22]),
        .I2(RDADDR[13]),
        .I3(RDATA_CAPT[22]),
        .I4(RDADDR[12]),
        .I5(RDATA_DISP[22]),
        .O(\axi_rdata[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_3 
       (.I0(RDATA_OPT3[22]),
        .I1(RDATA_OPT2[22]),
        .I2(RDADDR[13]),
        .I3(RDATA_OPT1[22]),
        .I4(RDADDR[12]),
        .I5(RDATA_OPT0[22]),
        .O(\axi_rdata[22]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[23]_i_1 
       (.I0(\axi_rdata[23]_i_2_n_0 ),
        .I1(RDADDR[14]),
        .I2(\axi_rdata[23]_i_3_n_0 ),
        .I3(RDADDR[15]),
        .O(p_1_in[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_2 
       (.I0(RDATA_SOUND[23]),
        .I1(RDATA_DRAW[23]),
        .I2(RDADDR[13]),
        .I3(RDATA_CAPT[23]),
        .I4(RDADDR[12]),
        .I5(RDATA_DISP[23]),
        .O(\axi_rdata[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_3 
       (.I0(RDATA_OPT3[23]),
        .I1(RDATA_OPT2[23]),
        .I2(RDADDR[13]),
        .I3(RDATA_OPT1[23]),
        .I4(RDADDR[12]),
        .I5(RDATA_OPT0[23]),
        .O(\axi_rdata[23]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[24]_i_1 
       (.I0(\axi_rdata[24]_i_2_n_0 ),
        .I1(RDADDR[14]),
        .I2(\axi_rdata[24]_i_3_n_0 ),
        .I3(RDADDR[15]),
        .O(p_1_in[24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_2 
       (.I0(RDATA_SOUND[24]),
        .I1(RDATA_DRAW[24]),
        .I2(RDADDR[13]),
        .I3(RDATA_CAPT[24]),
        .I4(RDADDR[12]),
        .I5(RDATA_DISP[24]),
        .O(\axi_rdata[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_3 
       (.I0(RDATA_OPT3[24]),
        .I1(RDATA_OPT2[24]),
        .I2(RDADDR[13]),
        .I3(RDATA_OPT1[24]),
        .I4(RDADDR[12]),
        .I5(RDATA_OPT0[24]),
        .O(\axi_rdata[24]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[25]_i_1 
       (.I0(\axi_rdata[25]_i_2_n_0 ),
        .I1(RDADDR[14]),
        .I2(\axi_rdata[25]_i_3_n_0 ),
        .I3(RDADDR[15]),
        .O(p_1_in[25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_2 
       (.I0(RDATA_SOUND[25]),
        .I1(RDATA_DRAW[25]),
        .I2(RDADDR[13]),
        .I3(RDATA_CAPT[25]),
        .I4(RDADDR[12]),
        .I5(RDATA_DISP[25]),
        .O(\axi_rdata[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_3 
       (.I0(RDATA_OPT3[25]),
        .I1(RDATA_OPT2[25]),
        .I2(RDADDR[13]),
        .I3(RDATA_OPT1[25]),
        .I4(RDADDR[12]),
        .I5(RDATA_OPT0[25]),
        .O(\axi_rdata[25]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[26]_i_1 
       (.I0(\axi_rdata[26]_i_2_n_0 ),
        .I1(RDADDR[14]),
        .I2(\axi_rdata[26]_i_3_n_0 ),
        .I3(RDADDR[15]),
        .O(p_1_in[26]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_2 
       (.I0(RDATA_SOUND[26]),
        .I1(RDATA_DRAW[26]),
        .I2(RDADDR[13]),
        .I3(RDATA_CAPT[26]),
        .I4(RDADDR[12]),
        .I5(RDATA_DISP[26]),
        .O(\axi_rdata[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_3 
       (.I0(RDATA_OPT3[26]),
        .I1(RDATA_OPT2[26]),
        .I2(RDADDR[13]),
        .I3(RDATA_OPT1[26]),
        .I4(RDADDR[12]),
        .I5(RDATA_OPT0[26]),
        .O(\axi_rdata[26]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[27]_i_1 
       (.I0(\axi_rdata[27]_i_2_n_0 ),
        .I1(RDADDR[14]),
        .I2(\axi_rdata[27]_i_3_n_0 ),
        .I3(RDADDR[15]),
        .O(p_1_in[27]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_2 
       (.I0(RDATA_SOUND[27]),
        .I1(RDATA_DRAW[27]),
        .I2(RDADDR[13]),
        .I3(RDATA_CAPT[27]),
        .I4(RDADDR[12]),
        .I5(RDATA_DISP[27]),
        .O(\axi_rdata[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_3 
       (.I0(RDATA_OPT3[27]),
        .I1(RDATA_OPT2[27]),
        .I2(RDADDR[13]),
        .I3(RDATA_OPT1[27]),
        .I4(RDADDR[12]),
        .I5(RDATA_OPT0[27]),
        .O(\axi_rdata[27]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[28]_i_1 
       (.I0(\axi_rdata[28]_i_2_n_0 ),
        .I1(RDADDR[14]),
        .I2(\axi_rdata[28]_i_3_n_0 ),
        .I3(RDADDR[15]),
        .O(p_1_in[28]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_2 
       (.I0(RDATA_SOUND[28]),
        .I1(RDATA_DRAW[28]),
        .I2(RDADDR[13]),
        .I3(RDATA_CAPT[28]),
        .I4(RDADDR[12]),
        .I5(RDATA_DISP[28]),
        .O(\axi_rdata[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_3 
       (.I0(RDATA_OPT3[28]),
        .I1(RDATA_OPT2[28]),
        .I2(RDADDR[13]),
        .I3(RDATA_OPT1[28]),
        .I4(RDADDR[12]),
        .I5(RDATA_OPT0[28]),
        .O(\axi_rdata[28]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[29]_i_1 
       (.I0(\axi_rdata[29]_i_2_n_0 ),
        .I1(RDADDR[14]),
        .I2(\axi_rdata[29]_i_3_n_0 ),
        .I3(RDADDR[15]),
        .O(p_1_in[29]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_2 
       (.I0(RDATA_SOUND[29]),
        .I1(RDATA_DRAW[29]),
        .I2(RDADDR[13]),
        .I3(RDATA_CAPT[29]),
        .I4(RDADDR[12]),
        .I5(RDATA_DISP[29]),
        .O(\axi_rdata[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_3 
       (.I0(RDATA_OPT3[29]),
        .I1(RDATA_OPT2[29]),
        .I2(RDADDR[13]),
        .I3(RDATA_OPT1[29]),
        .I4(RDADDR[12]),
        .I5(RDATA_OPT0[29]),
        .O(\axi_rdata[29]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[2]_i_1 
       (.I0(\axi_rdata[2]_i_2_n_0 ),
        .I1(RDADDR[14]),
        .I2(\axi_rdata[2]_i_3_n_0 ),
        .I3(RDADDR[15]),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_2 
       (.I0(RDATA_SOUND[2]),
        .I1(RDATA_DRAW[2]),
        .I2(RDADDR[13]),
        .I3(RDATA_CAPT[2]),
        .I4(RDADDR[12]),
        .I5(RDATA_DISP[2]),
        .O(\axi_rdata[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_3 
       (.I0(RDATA_OPT3[2]),
        .I1(RDATA_OPT2[2]),
        .I2(RDADDR[13]),
        .I3(RDATA_OPT1[2]),
        .I4(RDADDR[12]),
        .I5(RDATA_OPT0[2]),
        .O(\axi_rdata[2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[30]_i_1 
       (.I0(\axi_rdata[30]_i_2_n_0 ),
        .I1(RDADDR[14]),
        .I2(\axi_rdata[30]_i_3_n_0 ),
        .I3(RDADDR[15]),
        .O(p_1_in[30]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_2 
       (.I0(RDATA_SOUND[30]),
        .I1(RDATA_DRAW[30]),
        .I2(RDADDR[13]),
        .I3(RDATA_CAPT[30]),
        .I4(RDADDR[12]),
        .I5(RDATA_DISP[30]),
        .O(\axi_rdata[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_3 
       (.I0(RDATA_OPT3[30]),
        .I1(RDATA_OPT2[30]),
        .I2(RDADDR[13]),
        .I3(RDATA_OPT1[30]),
        .I4(RDADDR[12]),
        .I5(RDATA_OPT0[30]),
        .O(\axi_rdata[30]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[31]_i_1 
       (.I0(\axi_rdata[31]_i_2_n_0 ),
        .I1(RDADDR[14]),
        .I2(\axi_rdata[31]_i_3_n_0 ),
        .I3(RDADDR[15]),
        .O(p_1_in[31]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_2 
       (.I0(RDATA_SOUND[31]),
        .I1(RDATA_DRAW[31]),
        .I2(RDADDR[13]),
        .I3(RDATA_CAPT[31]),
        .I4(RDADDR[12]),
        .I5(RDATA_DISP[31]),
        .O(\axi_rdata[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_3 
       (.I0(RDATA_OPT3[31]),
        .I1(RDATA_OPT2[31]),
        .I2(RDADDR[13]),
        .I3(RDATA_OPT1[31]),
        .I4(RDADDR[12]),
        .I5(RDATA_OPT0[31]),
        .O(\axi_rdata[31]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[3]_i_1 
       (.I0(\axi_rdata[3]_i_2_n_0 ),
        .I1(RDADDR[14]),
        .I2(\axi_rdata[3]_i_3_n_0 ),
        .I3(RDADDR[15]),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_2 
       (.I0(RDATA_SOUND[3]),
        .I1(RDATA_DRAW[3]),
        .I2(RDADDR[13]),
        .I3(RDATA_CAPT[3]),
        .I4(RDADDR[12]),
        .I5(RDATA_DISP[3]),
        .O(\axi_rdata[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_3 
       (.I0(RDATA_OPT3[3]),
        .I1(RDATA_OPT2[3]),
        .I2(RDADDR[13]),
        .I3(RDATA_OPT1[3]),
        .I4(RDADDR[12]),
        .I5(RDATA_OPT0[3]),
        .O(\axi_rdata[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[4]_i_1 
       (.I0(\axi_rdata[4]_i_2_n_0 ),
        .I1(RDADDR[14]),
        .I2(\axi_rdata[4]_i_3_n_0 ),
        .I3(RDADDR[15]),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_2 
       (.I0(RDATA_SOUND[4]),
        .I1(RDATA_DRAW[4]),
        .I2(RDADDR[13]),
        .I3(RDATA_CAPT[4]),
        .I4(RDADDR[12]),
        .I5(RDATA_DISP[4]),
        .O(\axi_rdata[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_3 
       (.I0(RDATA_OPT3[4]),
        .I1(RDATA_OPT2[4]),
        .I2(RDADDR[13]),
        .I3(RDATA_OPT1[4]),
        .I4(RDADDR[12]),
        .I5(RDATA_OPT0[4]),
        .O(\axi_rdata[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[5]_i_1 
       (.I0(\axi_rdata[5]_i_2_n_0 ),
        .I1(RDADDR[14]),
        .I2(\axi_rdata[5]_i_3_n_0 ),
        .I3(RDADDR[15]),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_2 
       (.I0(RDATA_SOUND[5]),
        .I1(RDATA_DRAW[5]),
        .I2(RDADDR[13]),
        .I3(RDATA_CAPT[5]),
        .I4(RDADDR[12]),
        .I5(RDATA_DISP[5]),
        .O(\axi_rdata[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_3 
       (.I0(RDATA_OPT3[5]),
        .I1(RDATA_OPT2[5]),
        .I2(RDADDR[13]),
        .I3(RDATA_OPT1[5]),
        .I4(RDADDR[12]),
        .I5(RDATA_OPT0[5]),
        .O(\axi_rdata[5]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[6]_i_1 
       (.I0(\axi_rdata[6]_i_2_n_0 ),
        .I1(RDADDR[14]),
        .I2(\axi_rdata[6]_i_3_n_0 ),
        .I3(RDADDR[15]),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_2 
       (.I0(RDATA_SOUND[6]),
        .I1(RDATA_DRAW[6]),
        .I2(RDADDR[13]),
        .I3(RDATA_CAPT[6]),
        .I4(RDADDR[12]),
        .I5(RDATA_DISP[6]),
        .O(\axi_rdata[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_3 
       (.I0(RDATA_OPT3[6]),
        .I1(RDATA_OPT2[6]),
        .I2(RDADDR[13]),
        .I3(RDATA_OPT1[6]),
        .I4(RDADDR[12]),
        .I5(RDATA_OPT0[6]),
        .O(\axi_rdata[6]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[7]_i_1 
       (.I0(\axi_rdata[7]_i_2_n_0 ),
        .I1(RDADDR[14]),
        .I2(\axi_rdata[7]_i_3_n_0 ),
        .I3(RDADDR[15]),
        .O(p_1_in[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_2 
       (.I0(RDATA_SOUND[7]),
        .I1(RDATA_DRAW[7]),
        .I2(RDADDR[13]),
        .I3(RDATA_CAPT[7]),
        .I4(RDADDR[12]),
        .I5(RDATA_DISP[7]),
        .O(\axi_rdata[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_3 
       (.I0(RDATA_OPT3[7]),
        .I1(RDATA_OPT2[7]),
        .I2(RDADDR[13]),
        .I3(RDATA_OPT1[7]),
        .I4(RDADDR[12]),
        .I5(RDATA_OPT0[7]),
        .O(\axi_rdata[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[8]_i_1 
       (.I0(\axi_rdata[8]_i_2_n_0 ),
        .I1(RDADDR[14]),
        .I2(\axi_rdata[8]_i_3_n_0 ),
        .I3(RDADDR[15]),
        .O(p_1_in[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_2 
       (.I0(RDATA_SOUND[8]),
        .I1(RDATA_DRAW[8]),
        .I2(RDADDR[13]),
        .I3(RDATA_CAPT[8]),
        .I4(RDADDR[12]),
        .I5(RDATA_DISP[8]),
        .O(\axi_rdata[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_3 
       (.I0(RDATA_OPT3[8]),
        .I1(RDATA_OPT2[8]),
        .I2(RDADDR[13]),
        .I3(RDATA_OPT1[8]),
        .I4(RDADDR[12]),
        .I5(RDATA_OPT0[8]),
        .O(\axi_rdata[8]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[9]_i_1 
       (.I0(\axi_rdata[9]_i_2_n_0 ),
        .I1(RDADDR[14]),
        .I2(\axi_rdata[9]_i_3_n_0 ),
        .I3(RDADDR[15]),
        .O(p_1_in[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_2 
       (.I0(RDATA_SOUND[9]),
        .I1(RDATA_DRAW[9]),
        .I2(RDADDR[13]),
        .I3(RDATA_CAPT[9]),
        .I4(RDADDR[12]),
        .I5(RDATA_DISP[9]),
        .O(\axi_rdata[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_3 
       (.I0(RDATA_OPT3[9]),
        .I1(RDATA_OPT2[9]),
        .I2(RDADDR[13]),
        .I3(RDATA_OPT1[9]),
        .I4(RDADDR[12]),
        .I5(RDATA_OPT0[9]),
        .O(\axi_rdata[9]_i_3_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(p_1_in[0]),
        .Q(s00_axi_rdata[0]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(p_1_in[10]),
        .Q(s00_axi_rdata[10]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(p_1_in[11]),
        .Q(s00_axi_rdata[11]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(p_1_in[12]),
        .Q(s00_axi_rdata[12]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(p_1_in[13]),
        .Q(s00_axi_rdata[13]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(p_1_in[14]),
        .Q(s00_axi_rdata[14]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(p_1_in[15]),
        .Q(s00_axi_rdata[15]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(p_1_in[16]),
        .Q(s00_axi_rdata[16]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(p_1_in[17]),
        .Q(s00_axi_rdata[17]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(p_1_in[18]),
        .Q(s00_axi_rdata[18]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(p_1_in[19]),
        .Q(s00_axi_rdata[19]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(p_1_in[1]),
        .Q(s00_axi_rdata[1]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(p_1_in[20]),
        .Q(s00_axi_rdata[20]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(p_1_in[21]),
        .Q(s00_axi_rdata[21]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(p_1_in[22]),
        .Q(s00_axi_rdata[22]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(p_1_in[23]),
        .Q(s00_axi_rdata[23]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(p_1_in[24]),
        .Q(s00_axi_rdata[24]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(p_1_in[25]),
        .Q(s00_axi_rdata[25]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(p_1_in[26]),
        .Q(s00_axi_rdata[26]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(p_1_in[27]),
        .Q(s00_axi_rdata[27]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(p_1_in[28]),
        .Q(s00_axi_rdata[28]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(p_1_in[29]),
        .Q(s00_axi_rdata[29]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(p_1_in[2]),
        .Q(s00_axi_rdata[2]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(p_1_in[30]),
        .Q(s00_axi_rdata[30]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(p_1_in[31]),
        .Q(s00_axi_rdata[31]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(p_1_in[3]),
        .Q(s00_axi_rdata[3]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(p_1_in[4]),
        .Q(s00_axi_rdata[4]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(p_1_in[5]),
        .Q(s00_axi_rdata[5]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(p_1_in[6]),
        .Q(s00_axi_rdata[6]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(p_1_in[7]),
        .Q(s00_axi_rdata[7]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(p_1_in[8]),
        .Q(s00_axi_rdata[8]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(p_1_in[9]),
        .Q(s00_axi_rdata[9]),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_arready),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_wready_i_1
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wready),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(s00_axi_wready),
        .R(p_0_in));
  LUT2 #(
    .INIT(4'h2)) 
    pre_axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(pre_axi_arready),
        .O(pre_axi_arready0));
  FDRE pre_axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(pre_axi_arready0),
        .Q(pre_axi_arready),
        .R(p_0_in));
  LUT3 #(
    .INIT(8'h08)) 
    slv_reg_rden
       (.I0(s00_axi_arready),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .O(slv_reg_rden__0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
