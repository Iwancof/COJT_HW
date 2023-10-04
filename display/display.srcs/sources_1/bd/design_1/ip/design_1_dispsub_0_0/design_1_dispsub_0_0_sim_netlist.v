// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Fri Jun 23 16:50:11 2023
// Host        : COJTHW101 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/HW101.COJTHW/COJT/display/display.gen/sources_1/bd/design_1/ip/design_1_dispsub_0_0/design_1_dispsub_0_0_sim_netlist.v
// Design      : design_1_dispsub_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_dispsub_0_0,dispsub,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "dispsub,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module design_1_dispsub_0_0
   (ARESETN,
    CLK40,
    DCLK,
    RESOL,
    DSP_R,
    DSP_G,
    DSP_B,
    DSP_DE,
    DSP_HSYNC_X,
    DSP_VSYNC_X,
    DVI_CLK,
    DVI_HSYNC,
    DVI_VSYNC,
    DVI_DE,
    DVI_DATA);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ARESETN;
  input CLK40;
  output DCLK;
  input [1:0]RESOL;
  input [7:0]DSP_R;
  input [7:0]DSP_G;
  input [7:0]DSP_B;
  input DSP_DE;
  input DSP_HSYNC_X;
  input DSP_VSYNC_X;
  output DVI_CLK;
  output DVI_HSYNC;
  output DVI_VSYNC;
  output DVI_DE;
  output [11:0]DVI_DATA;

  wire ARESETN;
  wire CLK40;
  wire DCLK;
  wire [7:0]DSP_B;
  wire DSP_DE;
  wire [7:0]DSP_G;
  wire DSP_HSYNC_X;
  wire [7:0]DSP_R;
  wire DSP_VSYNC_X;
  wire DVI_CLK;
  wire [11:0]DVI_DATA;
  wire DVI_DE;
  wire DVI_HSYNC;
  wire DVI_VSYNC;
  wire [1:0]RESOL;

  design_1_dispsub_0_0_dispsub inst
       (.ARESETN(ARESETN),
        .CLK40(CLK40),
        .D({DSP_R,DSP_G,DSP_B}),
        .DCLK(DCLK),
        .DSP_DE(DSP_DE),
        .DSP_HSYNC_X(DSP_HSYNC_X),
        .DSP_VSYNC_X(DSP_VSYNC_X),
        .DVI_CLK(DVI_CLK),
        .DVI_DATA(DVI_DATA),
        .DVI_DE(DVI_DE),
        .DVI_HSYNC(DVI_HSYNC),
        .DVI_VSYNC(DVI_VSYNC),
        .RESOL(RESOL));
endmodule

(* ORIG_REF_NAME = "dclkgen" *) 
module design_1_dispsub_0_0_dclkgen
   (CLK,
    DVI_CLK,
    D,
    CLK40,
    ARESETN,
    RESOL);
  output CLK;
  output DVI_CLK;
  output [0:0]D;
  input CLK40;
  input ARESETN;
  input [1:0]RESOL;

  wire ARESETN;
  wire CLK;
  wire CLK40;
  wire CRST;
  wire [0:0]D;
  wire DVI_CLK;
  wire [1:0]RESOL;
  wire \crst_ff_reg_n_0_[0] ;
  wire [0:0]p_3_out;
  wire [1:0]resol_ff0;
  wire \resol_ff1_reg_n_0_[0] ;
  wire \resol_ff1_reg_n_0_[1] ;
  wire \resol_ff2_reg_n_0_[0] ;
  wire \resol_ff2_reg_n_0_[1] ;
  wire [7:0]start;

  LUT1 #(
    .INIT(2'h1)) 
    \crst_ff[0]_i_1 
       (.I0(ARESETN),
        .O(D));
  FDRE \crst_ff_reg[0] 
       (.C(CLK40),
        .CE(1'b1),
        .D(D),
        .Q(\crst_ff_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \crst_ff_reg[1] 
       (.C(CLK40),
        .CE(1'b1),
        .D(\crst_ff_reg_n_0_[0] ),
        .Q(CRST),
        .R(1'b0));
  FDRE \resol_ff0_reg[0] 
       (.C(CLK40),
        .CE(1'b1),
        .D(RESOL[0]),
        .Q(resol_ff0[0]),
        .R(CRST));
  FDRE \resol_ff0_reg[1] 
       (.C(CLK40),
        .CE(1'b1),
        .D(RESOL[1]),
        .Q(resol_ff0[1]),
        .R(CRST));
  FDRE \resol_ff1_reg[0] 
       (.C(CLK40),
        .CE(1'b1),
        .D(resol_ff0[0]),
        .Q(\resol_ff1_reg_n_0_[0] ),
        .R(CRST));
  FDRE \resol_ff1_reg[1] 
       (.C(CLK40),
        .CE(1'b1),
        .D(resol_ff0[1]),
        .Q(\resol_ff1_reg_n_0_[1] ),
        .R(CRST));
  FDRE \resol_ff2_reg[0] 
       (.C(CLK40),
        .CE(1'b1),
        .D(\resol_ff1_reg_n_0_[0] ),
        .Q(\resol_ff2_reg_n_0_[0] ),
        .R(CRST));
  FDRE \resol_ff2_reg[1] 
       (.C(CLK40),
        .CE(1'b1),
        .D(\resol_ff1_reg_n_0_[1] ),
        .Q(\resol_ff2_reg_n_0_[1] ),
        .R(CRST));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \start[0]_i_1 
       (.I0(\resol_ff2_reg_n_0_[0] ),
        .I1(\resol_ff1_reg_n_0_[0] ),
        .I2(\resol_ff2_reg_n_0_[1] ),
        .I3(\resol_ff1_reg_n_0_[1] ),
        .O(p_3_out));
  FDRE \start_reg[0] 
       (.C(CLK40),
        .CE(1'b1),
        .D(p_3_out),
        .Q(start[0]),
        .R(CRST));
  FDRE \start_reg[1] 
       (.C(CLK40),
        .CE(1'b1),
        .D(start[0]),
        .Q(start[1]),
        .R(CRST));
  FDRE \start_reg[2] 
       (.C(CLK40),
        .CE(1'b1),
        .D(start[1]),
        .Q(start[2]),
        .R(CRST));
  FDRE \start_reg[3] 
       (.C(CLK40),
        .CE(1'b1),
        .D(start[2]),
        .Q(start[3]),
        .R(CRST));
  FDRE \start_reg[4] 
       (.C(CLK40),
        .CE(1'b1),
        .D(start[3]),
        .Q(start[4]),
        .R(CRST));
  FDRE \start_reg[5] 
       (.C(CLK40),
        .CE(1'b1),
        .D(start[4]),
        .Q(start[5]),
        .R(CRST));
  FDRE \start_reg[6] 
       (.C(CLK40),
        .CE(1'b1),
        .D(start[5]),
        .Q(start[6]),
        .R(CRST));
  FDRE \start_reg[7] 
       (.C(CLK40),
        .CE(1'b1),
        .D(start[6]),
        .Q(start[7]),
        .R(CRST));
  design_1_dispsub_0_0_top_mmcme2 top_mmcme2
       (.CLK(CLK),
        .CLK40(CLK40),
        .DVI_CLK(DVI_CLK),
        .Q(start[7]),
        .\current_state_reg[1] (CRST),
        .\rom_addr_reg_rep[5] ({\resol_ff1_reg_n_0_[1] ,\resol_ff1_reg_n_0_[0] }));
endmodule

(* ORIG_REF_NAME = "dispsub" *) 
module design_1_dispsub_0_0_dispsub
   (DCLK,
    DVI_CLK,
    DVI_DATA,
    DVI_HSYNC,
    DVI_VSYNC,
    DVI_DE,
    CLK40,
    RESOL,
    DSP_HSYNC_X,
    DSP_VSYNC_X,
    DSP_DE,
    D,
    ARESETN);
  output DCLK;
  output DVI_CLK;
  output [11:0]DVI_DATA;
  output DVI_HSYNC;
  output DVI_VSYNC;
  output DVI_DE;
  input CLK40;
  input [1:0]RESOL;
  input DSP_HSYNC_X;
  input DSP_VSYNC_X;
  input DSP_DE;
  input [23:0]D;
  input ARESETN;

  wire ARESETN;
  wire CLK40;
  wire [23:0]D;
  wire DCLK;
  wire DRST;
  wire DSP_DE;
  wire DSP_HSYNC_X;
  wire DSP_VSYNC_X;
  wire DVI_CLK;
  wire [11:0]DVI_DATA;
  wire DVI_DE;
  wire DVI_HSYNC;
  wire DVI_VSYNC;
  wire [1:0]RESOL;
  wire de0;
  wire [11:0]din2;
  wire \drst_ff_reg_n_0_[0] ;
  wire hsync0;
  wire [0:0]p_1_out;
  wire \rgb_reg_reg_n_0_[0] ;
  wire \rgb_reg_reg_n_0_[10] ;
  wire \rgb_reg_reg_n_0_[11] ;
  wire \rgb_reg_reg_n_0_[1] ;
  wire \rgb_reg_reg_n_0_[2] ;
  wire \rgb_reg_reg_n_0_[3] ;
  wire \rgb_reg_reg_n_0_[4] ;
  wire \rgb_reg_reg_n_0_[5] ;
  wire \rgb_reg_reg_n_0_[6] ;
  wire \rgb_reg_reg_n_0_[7] ;
  wire \rgb_reg_reg_n_0_[8] ;
  wire \rgb_reg_reg_n_0_[9] ;
  wire vsync0;
  wire \NLW_genblk1[0].od_i_R_UNCONNECTED ;
  wire \NLW_genblk1[0].od_i_S_UNCONNECTED ;
  wire \NLW_genblk1[10].od_i_R_UNCONNECTED ;
  wire \NLW_genblk1[10].od_i_S_UNCONNECTED ;
  wire \NLW_genblk1[11].od_i_R_UNCONNECTED ;
  wire \NLW_genblk1[11].od_i_S_UNCONNECTED ;
  wire \NLW_genblk1[1].od_i_R_UNCONNECTED ;
  wire \NLW_genblk1[1].od_i_S_UNCONNECTED ;
  wire \NLW_genblk1[2].od_i_R_UNCONNECTED ;
  wire \NLW_genblk1[2].od_i_S_UNCONNECTED ;
  wire \NLW_genblk1[3].od_i_R_UNCONNECTED ;
  wire \NLW_genblk1[3].od_i_S_UNCONNECTED ;
  wire \NLW_genblk1[4].od_i_R_UNCONNECTED ;
  wire \NLW_genblk1[4].od_i_S_UNCONNECTED ;
  wire \NLW_genblk1[5].od_i_R_UNCONNECTED ;
  wire \NLW_genblk1[5].od_i_S_UNCONNECTED ;
  wire \NLW_genblk1[6].od_i_R_UNCONNECTED ;
  wire \NLW_genblk1[6].od_i_S_UNCONNECTED ;
  wire \NLW_genblk1[7].od_i_R_UNCONNECTED ;
  wire \NLW_genblk1[7].od_i_S_UNCONNECTED ;
  wire \NLW_genblk1[8].od_i_R_UNCONNECTED ;
  wire \NLW_genblk1[8].od_i_S_UNCONNECTED ;
  wire \NLW_genblk1[9].od_i_R_UNCONNECTED ;
  wire \NLW_genblk1[9].od_i_S_UNCONNECTED ;

  FDRE DVI_DE_reg
       (.C(DCLK),
        .CE(1'b1),
        .D(de0),
        .Q(DVI_DE),
        .R(DRST));
  FDRE DVI_HSYNC_reg
       (.C(DCLK),
        .CE(1'b1),
        .D(hsync0),
        .Q(DVI_HSYNC),
        .R(DRST));
  FDRE DVI_VSYNC_reg
       (.C(DCLK),
        .CE(1'b1),
        .D(vsync0),
        .Q(DVI_VSYNC),
        .R(DRST));
  design_1_dispsub_0_0_dclkgen dclkgen
       (.ARESETN(ARESETN),
        .CLK(DCLK),
        .CLK40(CLK40),
        .D(p_1_out),
        .DVI_CLK(DVI_CLK),
        .RESOL(RESOL));
  FDRE de0_reg
       (.C(DCLK),
        .CE(1'b1),
        .D(DSP_DE),
        .Q(de0),
        .R(DRST));
  FDRE \drst_ff_reg[0] 
       (.C(DCLK),
        .CE(1'b1),
        .D(p_1_out),
        .Q(\drst_ff_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \drst_ff_reg[1] 
       (.C(DCLK),
        .CE(1'b1),
        .D(\drst_ff_reg_n_0_[0] ),
        .Q(DRST),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* __SRVAL = "TRUE" *) 
  ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \genblk1[0].od_i 
       (.C(DCLK),
        .CE(1'b1),
        .D1(\rgb_reg_reg_n_0_[0] ),
        .D2(din2[0]),
        .Q(DVI_DATA[0]),
        .R(\NLW_genblk1[0].od_i_R_UNCONNECTED ),
        .S(\NLW_genblk1[0].od_i_S_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* __SRVAL = "TRUE" *) 
  ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \genblk1[10].od_i 
       (.C(DCLK),
        .CE(1'b1),
        .D1(\rgb_reg_reg_n_0_[10] ),
        .D2(din2[10]),
        .Q(DVI_DATA[10]),
        .R(\NLW_genblk1[10].od_i_R_UNCONNECTED ),
        .S(\NLW_genblk1[10].od_i_S_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* __SRVAL = "TRUE" *) 
  ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \genblk1[11].od_i 
       (.C(DCLK),
        .CE(1'b1),
        .D1(\rgb_reg_reg_n_0_[11] ),
        .D2(din2[11]),
        .Q(DVI_DATA[11]),
        .R(\NLW_genblk1[11].od_i_R_UNCONNECTED ),
        .S(\NLW_genblk1[11].od_i_S_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* __SRVAL = "TRUE" *) 
  ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \genblk1[1].od_i 
       (.C(DCLK),
        .CE(1'b1),
        .D1(\rgb_reg_reg_n_0_[1] ),
        .D2(din2[1]),
        .Q(DVI_DATA[1]),
        .R(\NLW_genblk1[1].od_i_R_UNCONNECTED ),
        .S(\NLW_genblk1[1].od_i_S_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* __SRVAL = "TRUE" *) 
  ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \genblk1[2].od_i 
       (.C(DCLK),
        .CE(1'b1),
        .D1(\rgb_reg_reg_n_0_[2] ),
        .D2(din2[2]),
        .Q(DVI_DATA[2]),
        .R(\NLW_genblk1[2].od_i_R_UNCONNECTED ),
        .S(\NLW_genblk1[2].od_i_S_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* __SRVAL = "TRUE" *) 
  ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \genblk1[3].od_i 
       (.C(DCLK),
        .CE(1'b1),
        .D1(\rgb_reg_reg_n_0_[3] ),
        .D2(din2[3]),
        .Q(DVI_DATA[3]),
        .R(\NLW_genblk1[3].od_i_R_UNCONNECTED ),
        .S(\NLW_genblk1[3].od_i_S_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* __SRVAL = "TRUE" *) 
  ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \genblk1[4].od_i 
       (.C(DCLK),
        .CE(1'b1),
        .D1(\rgb_reg_reg_n_0_[4] ),
        .D2(din2[4]),
        .Q(DVI_DATA[4]),
        .R(\NLW_genblk1[4].od_i_R_UNCONNECTED ),
        .S(\NLW_genblk1[4].od_i_S_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* __SRVAL = "TRUE" *) 
  ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \genblk1[5].od_i 
       (.C(DCLK),
        .CE(1'b1),
        .D1(\rgb_reg_reg_n_0_[5] ),
        .D2(din2[5]),
        .Q(DVI_DATA[5]),
        .R(\NLW_genblk1[5].od_i_R_UNCONNECTED ),
        .S(\NLW_genblk1[5].od_i_S_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* __SRVAL = "TRUE" *) 
  ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \genblk1[6].od_i 
       (.C(DCLK),
        .CE(1'b1),
        .D1(\rgb_reg_reg_n_0_[6] ),
        .D2(din2[6]),
        .Q(DVI_DATA[6]),
        .R(\NLW_genblk1[6].od_i_R_UNCONNECTED ),
        .S(\NLW_genblk1[6].od_i_S_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* __SRVAL = "TRUE" *) 
  ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \genblk1[7].od_i 
       (.C(DCLK),
        .CE(1'b1),
        .D1(\rgb_reg_reg_n_0_[7] ),
        .D2(din2[7]),
        .Q(DVI_DATA[7]),
        .R(\NLW_genblk1[7].od_i_R_UNCONNECTED ),
        .S(\NLW_genblk1[7].od_i_S_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* __SRVAL = "TRUE" *) 
  ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \genblk1[8].od_i 
       (.C(DCLK),
        .CE(1'b1),
        .D1(\rgb_reg_reg_n_0_[8] ),
        .D2(din2[8]),
        .Q(DVI_DATA[8]),
        .R(\NLW_genblk1[8].od_i_R_UNCONNECTED ),
        .S(\NLW_genblk1[8].od_i_S_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* __SRVAL = "TRUE" *) 
  ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \genblk1[9].od_i 
       (.C(DCLK),
        .CE(1'b1),
        .D1(\rgb_reg_reg_n_0_[9] ),
        .D2(din2[9]),
        .Q(DVI_DATA[9]),
        .R(\NLW_genblk1[9].od_i_R_UNCONNECTED ),
        .S(\NLW_genblk1[9].od_i_S_UNCONNECTED ));
  FDRE hsync0_reg
       (.C(DCLK),
        .CE(1'b1),
        .D(DSP_HSYNC_X),
        .Q(hsync0),
        .R(DRST));
  FDRE \rgb_reg_reg[0] 
       (.C(DCLK),
        .CE(1'b1),
        .D(D[0]),
        .Q(\rgb_reg_reg_n_0_[0] ),
        .R(DRST));
  FDRE \rgb_reg_reg[10] 
       (.C(DCLK),
        .CE(1'b1),
        .D(D[10]),
        .Q(\rgb_reg_reg_n_0_[10] ),
        .R(DRST));
  FDRE \rgb_reg_reg[11] 
       (.C(DCLK),
        .CE(1'b1),
        .D(D[11]),
        .Q(\rgb_reg_reg_n_0_[11] ),
        .R(DRST));
  FDRE \rgb_reg_reg[12] 
       (.C(DCLK),
        .CE(1'b1),
        .D(D[12]),
        .Q(din2[0]),
        .R(DRST));
  FDRE \rgb_reg_reg[13] 
       (.C(DCLK),
        .CE(1'b1),
        .D(D[13]),
        .Q(din2[1]),
        .R(DRST));
  FDRE \rgb_reg_reg[14] 
       (.C(DCLK),
        .CE(1'b1),
        .D(D[14]),
        .Q(din2[2]),
        .R(DRST));
  FDRE \rgb_reg_reg[15] 
       (.C(DCLK),
        .CE(1'b1),
        .D(D[15]),
        .Q(din2[3]),
        .R(DRST));
  FDRE \rgb_reg_reg[16] 
       (.C(DCLK),
        .CE(1'b1),
        .D(D[16]),
        .Q(din2[4]),
        .R(DRST));
  FDRE \rgb_reg_reg[17] 
       (.C(DCLK),
        .CE(1'b1),
        .D(D[17]),
        .Q(din2[5]),
        .R(DRST));
  FDRE \rgb_reg_reg[18] 
       (.C(DCLK),
        .CE(1'b1),
        .D(D[18]),
        .Q(din2[6]),
        .R(DRST));
  FDRE \rgb_reg_reg[19] 
       (.C(DCLK),
        .CE(1'b1),
        .D(D[19]),
        .Q(din2[7]),
        .R(DRST));
  FDRE \rgb_reg_reg[1] 
       (.C(DCLK),
        .CE(1'b1),
        .D(D[1]),
        .Q(\rgb_reg_reg_n_0_[1] ),
        .R(DRST));
  FDRE \rgb_reg_reg[20] 
       (.C(DCLK),
        .CE(1'b1),
        .D(D[20]),
        .Q(din2[8]),
        .R(DRST));
  FDRE \rgb_reg_reg[21] 
       (.C(DCLK),
        .CE(1'b1),
        .D(D[21]),
        .Q(din2[9]),
        .R(DRST));
  FDRE \rgb_reg_reg[22] 
       (.C(DCLK),
        .CE(1'b1),
        .D(D[22]),
        .Q(din2[10]),
        .R(DRST));
  FDRE \rgb_reg_reg[23] 
       (.C(DCLK),
        .CE(1'b1),
        .D(D[23]),
        .Q(din2[11]),
        .R(DRST));
  FDRE \rgb_reg_reg[2] 
       (.C(DCLK),
        .CE(1'b1),
        .D(D[2]),
        .Q(\rgb_reg_reg_n_0_[2] ),
        .R(DRST));
  FDRE \rgb_reg_reg[3] 
       (.C(DCLK),
        .CE(1'b1),
        .D(D[3]),
        .Q(\rgb_reg_reg_n_0_[3] ),
        .R(DRST));
  FDRE \rgb_reg_reg[4] 
       (.C(DCLK),
        .CE(1'b1),
        .D(D[4]),
        .Q(\rgb_reg_reg_n_0_[4] ),
        .R(DRST));
  FDRE \rgb_reg_reg[5] 
       (.C(DCLK),
        .CE(1'b1),
        .D(D[5]),
        .Q(\rgb_reg_reg_n_0_[5] ),
        .R(DRST));
  FDRE \rgb_reg_reg[6] 
       (.C(DCLK),
        .CE(1'b1),
        .D(D[6]),
        .Q(\rgb_reg_reg_n_0_[6] ),
        .R(DRST));
  FDRE \rgb_reg_reg[7] 
       (.C(DCLK),
        .CE(1'b1),
        .D(D[7]),
        .Q(\rgb_reg_reg_n_0_[7] ),
        .R(DRST));
  FDRE \rgb_reg_reg[8] 
       (.C(DCLK),
        .CE(1'b1),
        .D(D[8]),
        .Q(\rgb_reg_reg_n_0_[8] ),
        .R(DRST));
  FDRE \rgb_reg_reg[9] 
       (.C(DCLK),
        .CE(1'b1),
        .D(D[9]),
        .Q(\rgb_reg_reg_n_0_[9] ),
        .R(DRST));
  FDRE vsync0_reg
       (.C(DCLK),
        .CE(1'b1),
        .D(DSP_VSYNC_X),
        .Q(vsync0),
        .R(DRST));
endmodule

(* ORIG_REF_NAME = "mmcme2_drp" *) 
module design_1_dispsub_0_0_mmcme2_drp
   (dwe,
    den,
    rst_mmcm,
    DI,
    DADDR,
    clkin_bufgout,
    DO,
    drdy,
    Q,
    \current_state_reg[0]_0 ,
    \rom_addr_reg_rep[5]_0 ,
    \current_state_reg[1]_0 );
  output dwe;
  output den;
  output rst_mmcm;
  output [15:0]DI;
  output [6:0]DADDR;
  input clkin_bufgout;
  input [14:0]DO;
  input drdy;
  input [0:0]Q;
  input \current_state_reg[0]_0 ;
  input [1:0]\rom_addr_reg_rep[5]_0 ;
  input [0:0]\current_state_reg[1]_0 ;

  wire [6:0]DADDR;
  wire \DADDR[6]_i_1_n_0 ;
  wire \DADDR[6]_i_2_n_0 ;
  wire [15:0]DI;
  wire \DI[0]_i_1_n_0 ;
  wire \DI[10]_i_1_n_0 ;
  wire \DI[11]_i_1_n_0 ;
  wire \DI[12]_i_1_n_0 ;
  wire \DI[13]_i_1_n_0 ;
  wire \DI[14]_i_1_n_0 ;
  wire \DI[15]_i_1_n_0 ;
  wire \DI[15]_i_2_n_0 ;
  wire \DI[15]_i_3_n_0 ;
  wire \DI[1]_i_1_n_0 ;
  wire \DI[2]_i_1_n_0 ;
  wire \DI[3]_i_1_n_0 ;
  wire \DI[4]_i_1_n_0 ;
  wire \DI[5]_i_1_n_0 ;
  wire \DI[6]_i_1_n_0 ;
  wire \DI[7]_i_1_n_0 ;
  wire \DI[8]_i_1_n_0 ;
  wire \DI[9]_i_1_n_0 ;
  wire [14:0]DO;
  wire [0:0]Q;
  wire RST_MMCM_i_1_n_0;
  wire clkin_bufgout;
  wire [3:0]current_state;
  wire \current_state[0]_i_2_n_0 ;
  wire \current_state[1]_i_2_n_0 ;
  wire \current_state[1]_i_3_n_0 ;
  wire \current_state[2]_i_2_n_0 ;
  wire \current_state_reg[0]_0 ;
  wire [0:0]\current_state_reg[1]_0 ;
  wire den;
  wire drdy;
  wire dwe;
  wire g0_b0_n_0;
  wire g0_b10_n_0;
  wire g0_b11_n_0;
  wire g0_b12_n_0;
  wire g0_b13_n_0;
  wire g0_b14_n_0;
  wire g0_b15_n_0;
  wire g0_b16_n_0;
  wire g0_b17_n_0;
  wire g0_b19_n_0;
  wire g0_b1_n_0;
  wire g0_b20_n_0;
  wire g0_b21_n_0;
  wire g0_b22_n_0;
  wire g0_b23_n_0;
  wire g0_b24_n_0;
  wire g0_b25_n_0;
  wire g0_b26_n_0;
  wire g0_b27_n_0;
  wire g0_b28_n_0;
  wire g0_b29_n_0;
  wire g0_b2_n_0;
  wire g0_b3_n_0;
  wire g0_b4_n_0;
  wire g0_b5_n_0;
  wire g0_b6_n_0;
  wire g0_b7_n_0;
  wire g0_b8_n_0;
  wire g0_b9_n_0;
  wire g1_b12_n_0;
  wire g1_b14_n_0;
  wire g1_b15_n_0;
  wire g1_b17_n_0;
  wire g1_b21_n_0;
  wire g1_b22_n_0;
  wire g1_b23_n_0;
  wire g1_b24_n_0;
  wire g1_b25_n_0;
  wire g1_b27_n_0;
  wire g1_b29_n_0;
  wire g1_b6_n_0;
  wire g1_b8_n_0;
  wire g1_b9_n_0;
  wire next_den;
  wire next_dwe;
  wire [3:0]next_state;
  wire [29:0]p_0_out;
  wire [6:0]rom_addr;
  wire \rom_addr[0]_i_1_n_0 ;
  wire \rom_addr[1]_i_1_n_0 ;
  wire \rom_addr[2]_i_1_n_0 ;
  wire \rom_addr[3]_i_1_n_0 ;
  wire \rom_addr[4]_i_1_n_0 ;
  wire \rom_addr[4]_i_2_n_0 ;
  wire \rom_addr[5]_i_1_n_0 ;
  wire \rom_addr[5]_i_2_n_0 ;
  wire \rom_addr[5]_i_3_n_0 ;
  wire \rom_addr[5]_i_4_n_0 ;
  wire \rom_addr[6]_i_1_n_0 ;
  wire [1:0]\rom_addr_reg_rep[5]_0 ;
  wire \rom_addr_reg_rep_n_0_[0] ;
  wire \rom_addr_reg_rep_n_0_[1] ;
  wire \rom_addr_reg_rep_n_0_[2] ;
  wire \rom_addr_reg_rep_n_0_[3] ;
  wire \rom_addr_reg_rep_n_0_[4] ;
  wire \rom_addr_reg_rep_n_0_[5] ;
  wire \rom_addr_reg_rep_n_0_[6] ;
  wire \rom_addr_rep[6]_i_1_n_0 ;
  wire [29:0]rom_do;
  wire rst_mmcm;
  wire [4:0]state_count;
  wire \state_count[0]_i_1_n_0 ;
  wire \state_count[1]_i_1_n_0 ;
  wire \state_count[2]_i_1_n_0 ;
  wire \state_count[3]_i_1_n_0 ;
  wire \state_count[4]_i_1_n_0 ;
  wire \state_count[4]_i_2_n_0 ;
  wire \state_count[4]_i_3_n_0 ;

  LUT4 #(
    .INIT(16'h0010)) 
    \DADDR[6]_i_1 
       (.I0(current_state[3]),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(current_state[2]),
        .O(\DADDR[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0006)) 
    \DADDR[6]_i_2 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(current_state[3]),
        .O(\DADDR[6]_i_2_n_0 ));
  FDRE \DADDR_reg[0] 
       (.C(clkin_bufgout),
        .CE(\DADDR[6]_i_2_n_0 ),
        .D(rom_do[24]),
        .Q(DADDR[0]),
        .R(\DADDR[6]_i_1_n_0 ));
  FDRE \DADDR_reg[1] 
       (.C(clkin_bufgout),
        .CE(\DADDR[6]_i_2_n_0 ),
        .D(rom_do[25]),
        .Q(DADDR[1]),
        .R(\DADDR[6]_i_1_n_0 ));
  FDRE \DADDR_reg[2] 
       (.C(clkin_bufgout),
        .CE(\DADDR[6]_i_2_n_0 ),
        .D(rom_do[26]),
        .Q(DADDR[2]),
        .R(\DADDR[6]_i_1_n_0 ));
  FDRE \DADDR_reg[3] 
       (.C(clkin_bufgout),
        .CE(\DADDR[6]_i_2_n_0 ),
        .D(rom_do[27]),
        .Q(DADDR[3]),
        .R(\DADDR[6]_i_1_n_0 ));
  FDRE \DADDR_reg[4] 
       (.C(clkin_bufgout),
        .CE(\DADDR[6]_i_2_n_0 ),
        .D(rom_do[28]),
        .Q(DADDR[4]),
        .R(\DADDR[6]_i_1_n_0 ));
  FDRE \DADDR_reg[5] 
       (.C(clkin_bufgout),
        .CE(\DADDR[6]_i_2_n_0 ),
        .D(rom_do[29]),
        .Q(DADDR[5]),
        .R(\DADDR[6]_i_1_n_0 ));
  FDRE \DADDR_reg[6] 
       (.C(clkin_bufgout),
        .CE(\DADDR[6]_i_2_n_0 ),
        .D(rom_do[16]),
        .Q(DADDR[6]),
        .R(\DADDR[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0006)) 
    DEN_i_1
       (.I0(current_state[3]),
        .I1(current_state[2]),
        .I2(current_state[0]),
        .I3(current_state[1]),
        .O(next_den));
  FDRE DEN_reg
       (.C(clkin_bufgout),
        .CE(1'b1),
        .D(next_den),
        .Q(den),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hF8F8F808)) 
    \DI[0]_i_1 
       (.I0(rom_do[16]),
        .I1(DO[0]),
        .I2(current_state[0]),
        .I3(rom_do[0]),
        .I4(DI[0]),
        .O(\DI[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF8F8F808)) 
    \DI[10]_i_1 
       (.I0(rom_do[19]),
        .I1(DO[9]),
        .I2(current_state[0]),
        .I3(rom_do[10]),
        .I4(DI[10]),
        .O(\DI[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF8F8F808)) 
    \DI[11]_i_1 
       (.I0(rom_do[20]),
        .I1(DO[10]),
        .I2(current_state[0]),
        .I3(rom_do[11]),
        .I4(DI[11]),
        .O(\DI[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF8F8F808)) 
    \DI[12]_i_1 
       (.I0(rom_do[21]),
        .I1(DO[11]),
        .I2(current_state[0]),
        .I3(rom_do[12]),
        .I4(DI[12]),
        .O(\DI[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF8F8F808)) 
    \DI[13]_i_1 
       (.I0(rom_do[19]),
        .I1(DO[12]),
        .I2(current_state[0]),
        .I3(rom_do[13]),
        .I4(DI[13]),
        .O(\DI[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF8F8F808)) 
    \DI[14]_i_1 
       (.I0(rom_do[22]),
        .I1(DO[13]),
        .I2(current_state[0]),
        .I3(rom_do[14]),
        .I4(DI[14]),
        .O(\DI[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \DI[15]_i_1 
       (.I0(current_state[3]),
        .I1(current_state[0]),
        .I2(current_state[2]),
        .I3(current_state[1]),
        .O(\DI[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00A4)) 
    \DI[15]_i_2 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(current_state[3]),
        .O(\DI[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF8F8F808)) 
    \DI[15]_i_3 
       (.I0(rom_do[23]),
        .I1(DO[14]),
        .I2(current_state[0]),
        .I3(rom_do[15]),
        .I4(DI[15]),
        .O(\DI[15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF8F8F808)) 
    \DI[1]_i_1 
       (.I0(rom_do[16]),
        .I1(DO[1]),
        .I2(current_state[0]),
        .I3(rom_do[1]),
        .I4(DI[1]),
        .O(\DI[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF8F8F808)) 
    \DI[2]_i_1 
       (.I0(rom_do[16]),
        .I1(DO[2]),
        .I2(current_state[0]),
        .I3(rom_do[2]),
        .I4(DI[2]),
        .O(\DI[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF8F8F808)) 
    \DI[3]_i_1 
       (.I0(rom_do[16]),
        .I1(DO[3]),
        .I2(current_state[0]),
        .I3(rom_do[3]),
        .I4(DI[3]),
        .O(\DI[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF8F8F808)) 
    \DI[4]_i_1 
       (.I0(rom_do[17]),
        .I1(DO[4]),
        .I2(current_state[0]),
        .I3(rom_do[4]),
        .I4(DI[4]),
        .O(\DI[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF8F8F808)) 
    \DI[5]_i_1 
       (.I0(rom_do[16]),
        .I1(DO[5]),
        .I2(current_state[0]),
        .I3(rom_do[5]),
        .I4(DI[5]),
        .O(\DI[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF8F8F808)) 
    \DI[6]_i_1 
       (.I0(rom_do[16]),
        .I1(DO[6]),
        .I2(current_state[0]),
        .I3(rom_do[6]),
        .I4(DI[6]),
        .O(\DI[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF8F8F808)) 
    \DI[7]_i_1 
       (.I0(rom_do[17]),
        .I1(DO[7]),
        .I2(current_state[0]),
        .I3(rom_do[7]),
        .I4(DI[7]),
        .O(\DI[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \DI[8]_i_1 
       (.I0(DI[8]),
        .I1(rom_do[8]),
        .I2(current_state[0]),
        .O(\DI[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF8F8F808)) 
    \DI[9]_i_1 
       (.I0(rom_do[16]),
        .I1(DO[8]),
        .I2(current_state[0]),
        .I3(rom_do[9]),
        .I4(DI[9]),
        .O(\DI[9]_i_1_n_0 ));
  FDRE \DI_reg[0] 
       (.C(clkin_bufgout),
        .CE(\DI[15]_i_2_n_0 ),
        .D(\DI[0]_i_1_n_0 ),
        .Q(DI[0]),
        .R(\DI[15]_i_1_n_0 ));
  FDRE \DI_reg[10] 
       (.C(clkin_bufgout),
        .CE(\DI[15]_i_2_n_0 ),
        .D(\DI[10]_i_1_n_0 ),
        .Q(DI[10]),
        .R(\DI[15]_i_1_n_0 ));
  FDRE \DI_reg[11] 
       (.C(clkin_bufgout),
        .CE(\DI[15]_i_2_n_0 ),
        .D(\DI[11]_i_1_n_0 ),
        .Q(DI[11]),
        .R(\DI[15]_i_1_n_0 ));
  FDRE \DI_reg[12] 
       (.C(clkin_bufgout),
        .CE(\DI[15]_i_2_n_0 ),
        .D(\DI[12]_i_1_n_0 ),
        .Q(DI[12]),
        .R(\DI[15]_i_1_n_0 ));
  FDRE \DI_reg[13] 
       (.C(clkin_bufgout),
        .CE(\DI[15]_i_2_n_0 ),
        .D(\DI[13]_i_1_n_0 ),
        .Q(DI[13]),
        .R(\DI[15]_i_1_n_0 ));
  FDRE \DI_reg[14] 
       (.C(clkin_bufgout),
        .CE(\DI[15]_i_2_n_0 ),
        .D(\DI[14]_i_1_n_0 ),
        .Q(DI[14]),
        .R(\DI[15]_i_1_n_0 ));
  FDRE \DI_reg[15] 
       (.C(clkin_bufgout),
        .CE(\DI[15]_i_2_n_0 ),
        .D(\DI[15]_i_3_n_0 ),
        .Q(DI[15]),
        .R(\DI[15]_i_1_n_0 ));
  FDRE \DI_reg[1] 
       (.C(clkin_bufgout),
        .CE(\DI[15]_i_2_n_0 ),
        .D(\DI[1]_i_1_n_0 ),
        .Q(DI[1]),
        .R(\DI[15]_i_1_n_0 ));
  FDRE \DI_reg[2] 
       (.C(clkin_bufgout),
        .CE(\DI[15]_i_2_n_0 ),
        .D(\DI[2]_i_1_n_0 ),
        .Q(DI[2]),
        .R(\DI[15]_i_1_n_0 ));
  FDRE \DI_reg[3] 
       (.C(clkin_bufgout),
        .CE(\DI[15]_i_2_n_0 ),
        .D(\DI[3]_i_1_n_0 ),
        .Q(DI[3]),
        .R(\DI[15]_i_1_n_0 ));
  FDRE \DI_reg[4] 
       (.C(clkin_bufgout),
        .CE(\DI[15]_i_2_n_0 ),
        .D(\DI[4]_i_1_n_0 ),
        .Q(DI[4]),
        .R(\DI[15]_i_1_n_0 ));
  FDRE \DI_reg[5] 
       (.C(clkin_bufgout),
        .CE(\DI[15]_i_2_n_0 ),
        .D(\DI[5]_i_1_n_0 ),
        .Q(DI[5]),
        .R(\DI[15]_i_1_n_0 ));
  FDRE \DI_reg[6] 
       (.C(clkin_bufgout),
        .CE(\DI[15]_i_2_n_0 ),
        .D(\DI[6]_i_1_n_0 ),
        .Q(DI[6]),
        .R(\DI[15]_i_1_n_0 ));
  FDRE \DI_reg[7] 
       (.C(clkin_bufgout),
        .CE(\DI[15]_i_2_n_0 ),
        .D(\DI[7]_i_1_n_0 ),
        .Q(DI[7]),
        .R(\DI[15]_i_1_n_0 ));
  FDRE \DI_reg[8] 
       (.C(clkin_bufgout),
        .CE(\DI[15]_i_2_n_0 ),
        .D(\DI[8]_i_1_n_0 ),
        .Q(DI[8]),
        .R(\DI[15]_i_1_n_0 ));
  FDRE \DI_reg[9] 
       (.C(clkin_bufgout),
        .CE(\DI[15]_i_2_n_0 ),
        .D(\DI[9]_i_1_n_0 ),
        .Q(DI[9]),
        .R(\DI[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    DWE_i_1
       (.I0(current_state[0]),
        .I1(current_state[2]),
        .I2(current_state[3]),
        .I3(current_state[1]),
        .O(next_dwe));
  FDRE DWE_reg
       (.C(clkin_bufgout),
        .CE(1'b1),
        .D(next_dwe),
        .Q(dwe),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFEF0006)) 
    RST_MMCM_i_1
       (.I0(current_state[0]),
        .I1(current_state[2]),
        .I2(current_state[1]),
        .I3(current_state[3]),
        .I4(rst_mmcm),
        .O(RST_MMCM_i_1_n_0));
  FDRE RST_MMCM_reg
       (.C(clkin_bufgout),
        .CE(1'b1),
        .D(RST_MMCM_i_1_n_0),
        .Q(rst_mmcm),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFDFFFFFFFDFF0000)) 
    \current_state[0]_i_1 
       (.I0(drdy),
        .I1(current_state[2]),
        .I2(current_state[1]),
        .I3(current_state[0]),
        .I4(current_state[3]),
        .I5(\current_state[0]_i_2_n_0 ),
        .O(next_state[0]));
  LUT6 #(
    .INIT(64'h03034444FFCCFFFF)) 
    \current_state[0]_i_2 
       (.I0(drdy),
        .I1(current_state[2]),
        .I2(Q),
        .I3(\current_state_reg[0]_0 ),
        .I4(current_state[1]),
        .I5(current_state[0]),
        .O(\current_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0008FFFF00080000)) 
    \current_state[1]_i_1 
       (.I0(\current_state[1]_i_2_n_0 ),
        .I1(current_state[0]),
        .I2(current_state[2]),
        .I3(current_state[1]),
        .I4(current_state[3]),
        .I5(\current_state[1]_i_3_n_0 ),
        .O(next_state[1]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \current_state[1]_i_2 
       (.I0(drdy),
        .I1(state_count[3]),
        .I2(state_count[2]),
        .I3(state_count[0]),
        .I4(state_count[4]),
        .I5(state_count[1]),
        .O(\current_state[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h03BBFF00)) 
    \current_state[1]_i_3 
       (.I0(drdy),
        .I1(current_state[2]),
        .I2(Q),
        .I3(current_state[1]),
        .I4(current_state[0]),
        .O(\current_state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0338303000383030)) 
    \current_state[2]_i_1 
       (.I0(\current_state[2]_i_2_n_0 ),
        .I1(current_state[3]),
        .I2(current_state[2]),
        .I3(current_state[1]),
        .I4(current_state[0]),
        .I5(Q),
        .O(next_state[2]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \current_state[2]_i_2 
       (.I0(drdy),
        .I1(state_count[3]),
        .I2(state_count[2]),
        .I3(state_count[0]),
        .I4(state_count[4]),
        .I5(state_count[1]),
        .O(\current_state[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h3000040C)) 
    \current_state[3]_i_1 
       (.I0(drdy),
        .I1(current_state[3]),
        .I2(current_state[2]),
        .I3(current_state[0]),
        .I4(current_state[1]),
        .O(next_state[3]));
  FDSE #(
    .INIT(1'b1)) 
    \current_state_reg[0] 
       (.C(clkin_bufgout),
        .CE(1'b1),
        .D(next_state[0]),
        .Q(current_state[0]),
        .S(\current_state_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[1] 
       (.C(clkin_bufgout),
        .CE(1'b1),
        .D(next_state[1]),
        .Q(current_state[1]),
        .R(\current_state_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[2] 
       (.C(clkin_bufgout),
        .CE(1'b1),
        .D(next_state[2]),
        .Q(current_state[2]),
        .R(\current_state_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[3] 
       (.C(clkin_bufgout),
        .CE(1'b1),
        .D(next_state[3]),
        .Q(current_state[3]),
        .R(\current_state_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h3A82CEF5089DAAB1)) 
    g0_b0
       (.I0(\rom_addr_reg_rep_n_0_[0] ),
        .I1(\rom_addr_reg_rep_n_0_[1] ),
        .I2(\rom_addr_reg_rep_n_0_[2] ),
        .I3(\rom_addr_reg_rep_n_0_[3] ),
        .I4(\rom_addr_reg_rep_n_0_[4] ),
        .I5(\rom_addr_reg_rep_n_0_[5] ),
        .O(g0_b0_n_0));
  LUT6 #(
    .INIT(64'h4AA8421550810001)) 
    g0_b1
       (.I0(\rom_addr_reg_rep_n_0_[0] ),
        .I1(\rom_addr_reg_rep_n_0_[1] ),
        .I2(\rom_addr_reg_rep_n_0_[2] ),
        .I3(\rom_addr_reg_rep_n_0_[3] ),
        .I4(\rom_addr_reg_rep_n_0_[4] ),
        .I5(\rom_addr_reg_rep_n_0_[5] ),
        .O(g0_b1_n_0));
  LUT6 #(
    .INIT(64'h00004C000098000B)) 
    g0_b10
       (.I0(\rom_addr_reg_rep_n_0_[0] ),
        .I1(\rom_addr_reg_rep_n_0_[1] ),
        .I2(\rom_addr_reg_rep_n_0_[2] ),
        .I3(\rom_addr_reg_rep_n_0_[3] ),
        .I4(\rom_addr_reg_rep_n_0_[4] ),
        .I5(\rom_addr_reg_rep_n_0_[5] ),
        .O(g0_b10_n_0));
  LUT6 #(
    .INIT(64'h00006C0000F80001)) 
    g0_b11
       (.I0(\rom_addr_reg_rep_n_0_[0] ),
        .I1(\rom_addr_reg_rep_n_0_[1] ),
        .I2(\rom_addr_reg_rep_n_0_[2] ),
        .I3(\rom_addr_reg_rep_n_0_[3] ),
        .I4(\rom_addr_reg_rep_n_0_[4] ),
        .I5(\rom_addr_reg_rep_n_0_[5] ),
        .O(g0_b11_n_0));
  LUT6 #(
    .INIT(64'h20005C4000B88001)) 
    g0_b12
       (.I0(\rom_addr_reg_rep_n_0_[0] ),
        .I1(\rom_addr_reg_rep_n_0_[1] ),
        .I2(\rom_addr_reg_rep_n_0_[2] ),
        .I3(\rom_addr_reg_rep_n_0_[3] ),
        .I4(\rom_addr_reg_rep_n_0_[4] ),
        .I5(\rom_addr_reg_rep_n_0_[5] ),
        .O(g0_b12_n_0));
  LUT6 #(
    .INIT(64'h00024C0000980001)) 
    g0_b13
       (.I0(\rom_addr_reg_rep_n_0_[0] ),
        .I1(\rom_addr_reg_rep_n_0_[1] ),
        .I2(\rom_addr_reg_rep_n_0_[2] ),
        .I3(\rom_addr_reg_rep_n_0_[3] ),
        .I4(\rom_addr_reg_rep_n_0_[4] ),
        .I5(\rom_addr_reg_rep_n_0_[5] ),
        .O(g0_b13_n_0));
  LUT6 #(
    .INIT(64'h00004C0000980001)) 
    g0_b14
       (.I0(\rom_addr_reg_rep_n_0_[0] ),
        .I1(\rom_addr_reg_rep_n_0_[1] ),
        .I2(\rom_addr_reg_rep_n_0_[2] ),
        .I3(\rom_addr_reg_rep_n_0_[3] ),
        .I4(\rom_addr_reg_rep_n_0_[4] ),
        .I5(\rom_addr_reg_rep_n_0_[5] ),
        .O(g0_b14_n_0));
  LUT6 #(
    .INIT(64'h0000500000E00001)) 
    g0_b15
       (.I0(\rom_addr_reg_rep_n_0_[0] ),
        .I1(\rom_addr_reg_rep_n_0_[1] ),
        .I2(\rom_addr_reg_rep_n_0_[2] ),
        .I3(\rom_addr_reg_rep_n_0_[3] ),
        .I4(\rom_addr_reg_rep_n_0_[4] ),
        .I5(\rom_addr_reg_rep_n_0_[5] ),
        .O(g0_b15_n_0));
  LUT6 #(
    .INIT(64'h0000300000600000)) 
    g0_b16
       (.I0(\rom_addr_reg_rep_n_0_[0] ),
        .I1(\rom_addr_reg_rep_n_0_[1] ),
        .I2(\rom_addr_reg_rep_n_0_[2] ),
        .I3(\rom_addr_reg_rep_n_0_[3] ),
        .I4(\rom_addr_reg_rep_n_0_[4] ),
        .I5(\rom_addr_reg_rep_n_0_[5] ),
        .O(g0_b16_n_0));
  LUT6 #(
    .INIT(64'h0000100000200000)) 
    g0_b17
       (.I0(\rom_addr_reg_rep_n_0_[0] ),
        .I1(\rom_addr_reg_rep_n_0_[1] ),
        .I2(\rom_addr_reg_rep_n_0_[2] ),
        .I3(\rom_addr_reg_rep_n_0_[3] ),
        .I4(\rom_addr_reg_rep_n_0_[4] ),
        .I5(\rom_addr_reg_rep_n_0_[5] ),
        .O(g0_b17_n_0));
  LUT6 #(
    .INIT(64'h01543202A8640550)) 
    g0_b19
       (.I0(\rom_addr_reg_rep_n_0_[0] ),
        .I1(\rom_addr_reg_rep_n_0_[1] ),
        .I2(\rom_addr_reg_rep_n_0_[2] ),
        .I3(\rom_addr_reg_rep_n_0_[3] ),
        .I4(\rom_addr_reg_rep_n_0_[4] ),
        .I5(\rom_addr_reg_rep_n_0_[5] ),
        .O(g0_b19_n_0));
  LUT6 #(
    .INIT(64'h5002C2A008850011)) 
    g0_b2
       (.I0(\rom_addr_reg_rep_n_0_[0] ),
        .I1(\rom_addr_reg_rep_n_0_[1] ),
        .I2(\rom_addr_reg_rep_n_0_[2] ),
        .I3(\rom_addr_reg_rep_n_0_[3] ),
        .I4(\rom_addr_reg_rep_n_0_[4] ),
        .I5(\rom_addr_reg_rep_n_0_[5] ),
        .O(g0_b2_n_0));
  LUT6 #(
    .INIT(64'h01540202A8040550)) 
    g0_b20
       (.I0(\rom_addr_reg_rep_n_0_[0] ),
        .I1(\rom_addr_reg_rep_n_0_[1] ),
        .I2(\rom_addr_reg_rep_n_0_[2] ),
        .I3(\rom_addr_reg_rep_n_0_[3] ),
        .I4(\rom_addr_reg_rep_n_0_[4] ),
        .I5(\rom_addr_reg_rep_n_0_[5] ),
        .O(g0_b20_n_0));
  LUT6 #(
    .INIT(64'h4BFE8297FD052FFA)) 
    g0_b21
       (.I0(\rom_addr_reg_rep_n_0_[0] ),
        .I1(\rom_addr_reg_rep_n_0_[1] ),
        .I2(\rom_addr_reg_rep_n_0_[2] ),
        .I3(\rom_addr_reg_rep_n_0_[3] ),
        .I4(\rom_addr_reg_rep_n_0_[4] ),
        .I5(\rom_addr_reg_rep_n_0_[5] ),
        .O(g0_b21_n_0));
  LUT6 #(
    .INIT(64'h3554326AA864D550)) 
    g0_b22
       (.I0(\rom_addr_reg_rep_n_0_[0] ),
        .I1(\rom_addr_reg_rep_n_0_[1] ),
        .I2(\rom_addr_reg_rep_n_0_[2] ),
        .I3(\rom_addr_reg_rep_n_0_[3] ),
        .I4(\rom_addr_reg_rep_n_0_[4] ),
        .I5(\rom_addr_reg_rep_n_0_[5] ),
        .O(g0_b22_n_0));
  LUT6 #(
    .INIT(64'hB5550F6AAA1ED554)) 
    g0_b23
       (.I0(\rom_addr_reg_rep_n_0_[0] ),
        .I1(\rom_addr_reg_rep_n_0_[1] ),
        .I2(\rom_addr_reg_rep_n_0_[2] ),
        .I3(\rom_addr_reg_rep_n_0_[3] ),
        .I4(\rom_addr_reg_rep_n_0_[4] ),
        .I5(\rom_addr_reg_rep_n_0_[5] ),
        .O(g0_b23_n_0));
  LUT6 #(
    .INIT(64'h9555252AAA4A5554)) 
    g0_b24
       (.I0(\rom_addr_reg_rep_n_0_[0] ),
        .I1(\rom_addr_reg_rep_n_0_[1] ),
        .I2(\rom_addr_reg_rep_n_0_[2] ),
        .I3(\rom_addr_reg_rep_n_0_[3] ),
        .I4(\rom_addr_reg_rep_n_0_[4] ),
        .I5(\rom_addr_reg_rep_n_0_[5] ),
        .O(g0_b24_n_0));
  LUT6 #(
    .INIT(64'h3E66387CCC70F998)) 
    g0_b25
       (.I0(\rom_addr_reg_rep_n_0_[0] ),
        .I1(\rom_addr_reg_rep_n_0_[1] ),
        .I2(\rom_addr_reg_rep_n_0_[2] ),
        .I3(\rom_addr_reg_rep_n_0_[3] ),
        .I4(\rom_addr_reg_rep_n_0_[4] ),
        .I5(\rom_addr_reg_rep_n_0_[5] ),
        .O(g0_b25_n_0));
  LUT6 #(
    .INIT(64'hE67831CCF06399E0)) 
    g0_b26
       (.I0(\rom_addr_reg_rep_n_0_[0] ),
        .I1(\rom_addr_reg_rep_n_0_[1] ),
        .I2(\rom_addr_reg_rep_n_0_[2] ),
        .I3(\rom_addr_reg_rep_n_0_[3] ),
        .I4(\rom_addr_reg_rep_n_0_[4] ),
        .I5(\rom_addr_reg_rep_n_0_[5] ),
        .O(g0_b26_n_0));
  LUT6 #(
    .INIT(64'h007FFE00FFFC01FF)) 
    g0_b27
       (.I0(\rom_addr_reg_rep_n_0_[0] ),
        .I1(\rom_addr_reg_rep_n_0_[1] ),
        .I2(\rom_addr_reg_rep_n_0_[2] ),
        .I3(\rom_addr_reg_rep_n_0_[3] ),
        .I4(\rom_addr_reg_rep_n_0_[4] ),
        .I5(\rom_addr_reg_rep_n_0_[5] ),
        .O(g0_b27_n_0));
  LUT6 #(
    .INIT(64'hF9800FF3001FE600)) 
    g0_b28
       (.I0(\rom_addr_reg_rep_n_0_[0] ),
        .I1(\rom_addr_reg_rep_n_0_[1] ),
        .I2(\rom_addr_reg_rep_n_0_[2] ),
        .I3(\rom_addr_reg_rep_n_0_[3] ),
        .I4(\rom_addr_reg_rep_n_0_[4] ),
        .I5(\rom_addr_reg_rep_n_0_[5] ),
        .O(g0_b28_n_0));
  LUT6 #(
    .INIT(64'h0000400000800001)) 
    g0_b29
       (.I0(\rom_addr_reg_rep_n_0_[0] ),
        .I1(\rom_addr_reg_rep_n_0_[1] ),
        .I2(\rom_addr_reg_rep_n_0_[2] ),
        .I3(\rom_addr_reg_rep_n_0_[3] ),
        .I4(\rom_addr_reg_rep_n_0_[4] ),
        .I5(\rom_addr_reg_rep_n_0_[5] ),
        .O(g0_b29_n_0));
  LUT6 #(
    .INIT(64'h400448800D91001B)) 
    g0_b3
       (.I0(\rom_addr_reg_rep_n_0_[0] ),
        .I1(\rom_addr_reg_rep_n_0_[1] ),
        .I2(\rom_addr_reg_rep_n_0_[2] ),
        .I3(\rom_addr_reg_rep_n_0_[3] ),
        .I4(\rom_addr_reg_rep_n_0_[4] ),
        .I5(\rom_addr_reg_rep_n_0_[5] ),
        .O(g0_b3_n_0));
  LUT6 #(
    .INIT(64'h000042000080000B)) 
    g0_b4
       (.I0(\rom_addr_reg_rep_n_0_[0] ),
        .I1(\rom_addr_reg_rep_n_0_[1] ),
        .I2(\rom_addr_reg_rep_n_0_[2] ),
        .I3(\rom_addr_reg_rep_n_0_[3] ),
        .I4(\rom_addr_reg_rep_n_0_[4] ),
        .I5(\rom_addr_reg_rep_n_0_[5] ),
        .O(g0_b4_n_0));
  LUT6 #(
    .INIT(64'h00004A0000900011)) 
    g0_b5
       (.I0(\rom_addr_reg_rep_n_0_[0] ),
        .I1(\rom_addr_reg_rep_n_0_[1] ),
        .I2(\rom_addr_reg_rep_n_0_[2] ),
        .I3(\rom_addr_reg_rep_n_0_[3] ),
        .I4(\rom_addr_reg_rep_n_0_[4] ),
        .I5(\rom_addr_reg_rep_n_0_[5] ),
        .O(g0_b5_n_0));
  LUT6 #(
    .INIT(64'h600ACAC01095FFE1)) 
    g0_b6
       (.I0(\rom_addr_reg_rep_n_0_[0] ),
        .I1(\rom_addr_reg_rep_n_0_[1] ),
        .I2(\rom_addr_reg_rep_n_0_[2] ),
        .I3(\rom_addr_reg_rep_n_0_[3] ),
        .I4(\rom_addr_reg_rep_n_0_[4] ),
        .I5(\rom_addr_reg_rep_n_0_[5] ),
        .O(g0_b6_n_0));
  LUT6 #(
    .INIT(64'h9FB0483F60910001)) 
    g0_b7
       (.I0(\rom_addr_reg_rep_n_0_[0] ),
        .I1(\rom_addr_reg_rep_n_0_[1] ),
        .I2(\rom_addr_reg_rep_n_0_[2] ),
        .I3(\rom_addr_reg_rep_n_0_[3] ),
        .I4(\rom_addr_reg_rep_n_0_[4] ),
        .I5(\rom_addr_reg_rep_n_0_[5] ),
        .O(g0_b7_n_0));
  LUT6 #(
    .INIT(64'h4002CA8000B50001)) 
    g0_b8
       (.I0(\rom_addr_reg_rep_n_0_[0] ),
        .I1(\rom_addr_reg_rep_n_0_[1] ),
        .I2(\rom_addr_reg_rep_n_0_[2] ),
        .I3(\rom_addr_reg_rep_n_0_[3] ),
        .I4(\rom_addr_reg_rep_n_0_[4] ),
        .I5(\rom_addr_reg_rep_n_0_[5] ),
        .O(g0_b8_n_0));
  LUT6 #(
    .INIT(64'h400048800591000B)) 
    g0_b9
       (.I0(\rom_addr_reg_rep_n_0_[0] ),
        .I1(\rom_addr_reg_rep_n_0_[1] ),
        .I2(\rom_addr_reg_rep_n_0_[2] ),
        .I3(\rom_addr_reg_rep_n_0_[3] ),
        .I4(\rom_addr_reg_rep_n_0_[4] ),
        .I5(\rom_addr_reg_rep_n_0_[5] ),
        .O(g0_b9_n_0));
  LUT6 #(
    .INIT(64'h000000000000001E)) 
    g1_b12
       (.I0(\rom_addr_reg_rep_n_0_[0] ),
        .I1(\rom_addr_reg_rep_n_0_[1] ),
        .I2(\rom_addr_reg_rep_n_0_[2] ),
        .I3(\rom_addr_reg_rep_n_0_[3] ),
        .I4(\rom_addr_reg_rep_n_0_[4] ),
        .I5(\rom_addr_reg_rep_n_0_[5] ),
        .O(g1_b12_n_0));
  LUT6 #(
    .INIT(64'h0000000000000006)) 
    g1_b14
       (.I0(\rom_addr_reg_rep_n_0_[0] ),
        .I1(\rom_addr_reg_rep_n_0_[1] ),
        .I2(\rom_addr_reg_rep_n_0_[2] ),
        .I3(\rom_addr_reg_rep_n_0_[3] ),
        .I4(\rom_addr_reg_rep_n_0_[4] ),
        .I5(\rom_addr_reg_rep_n_0_[5] ),
        .O(g1_b14_n_0));
  LUT6 #(
    .INIT(64'h0000000000000018)) 
    g1_b15
       (.I0(\rom_addr_reg_rep_n_0_[0] ),
        .I1(\rom_addr_reg_rep_n_0_[1] ),
        .I2(\rom_addr_reg_rep_n_0_[2] ),
        .I3(\rom_addr_reg_rep_n_0_[3] ),
        .I4(\rom_addr_reg_rep_n_0_[4] ),
        .I5(\rom_addr_reg_rep_n_0_[5] ),
        .O(g1_b15_n_0));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    g1_b17
       (.I0(\rom_addr_reg_rep_n_0_[0] ),
        .I1(\rom_addr_reg_rep_n_0_[1] ),
        .I2(\rom_addr_reg_rep_n_0_[2] ),
        .I3(\rom_addr_reg_rep_n_0_[3] ),
        .I4(\rom_addr_reg_rep_n_0_[4] ),
        .I5(\rom_addr_reg_rep_n_0_[5] ),
        .O(g1_b17_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    g1_b21
       (.I0(\rom_addr_reg_rep_n_0_[0] ),
        .I1(\rom_addr_reg_rep_n_0_[1] ),
        .I2(\rom_addr_reg_rep_n_0_[2] ),
        .I3(\rom_addr_reg_rep_n_0_[3] ),
        .I4(\rom_addr_reg_rep_n_0_[4] ),
        .I5(\rom_addr_reg_rep_n_0_[5] ),
        .O(g1_b21_n_0));
  LUT6 #(
    .INIT(64'h0000000000000019)) 
    g1_b22
       (.I0(\rom_addr_reg_rep_n_0_[0] ),
        .I1(\rom_addr_reg_rep_n_0_[1] ),
        .I2(\rom_addr_reg_rep_n_0_[2] ),
        .I3(\rom_addr_reg_rep_n_0_[3] ),
        .I4(\rom_addr_reg_rep_n_0_[4] ),
        .I5(\rom_addr_reg_rep_n_0_[5] ),
        .O(g1_b22_n_0));
  LUT6 #(
    .INIT(64'h0000000000000007)) 
    g1_b23
       (.I0(\rom_addr_reg_rep_n_0_[0] ),
        .I1(\rom_addr_reg_rep_n_0_[1] ),
        .I2(\rom_addr_reg_rep_n_0_[2] ),
        .I3(\rom_addr_reg_rep_n_0_[3] ),
        .I4(\rom_addr_reg_rep_n_0_[4] ),
        .I5(\rom_addr_reg_rep_n_0_[5] ),
        .O(g1_b23_n_0));
  LUT6 #(
    .INIT(64'h0000000000000012)) 
    g1_b24
       (.I0(\rom_addr_reg_rep_n_0_[0] ),
        .I1(\rom_addr_reg_rep_n_0_[1] ),
        .I2(\rom_addr_reg_rep_n_0_[2] ),
        .I3(\rom_addr_reg_rep_n_0_[3] ),
        .I4(\rom_addr_reg_rep_n_0_[4] ),
        .I5(\rom_addr_reg_rep_n_0_[5] ),
        .O(g1_b24_n_0));
  LUT6 #(
    .INIT(64'h000000000000001C)) 
    g1_b25
       (.I0(\rom_addr_reg_rep_n_0_[0] ),
        .I1(\rom_addr_reg_rep_n_0_[1] ),
        .I2(\rom_addr_reg_rep_n_0_[2] ),
        .I3(\rom_addr_reg_rep_n_0_[3] ),
        .I4(\rom_addr_reg_rep_n_0_[4] ),
        .I5(\rom_addr_reg_rep_n_0_[5] ),
        .O(g1_b25_n_0));
  LUT5 #(
    .INIT(32'h00000007)) 
    g1_b27
       (.I0(\rom_addr_reg_rep_n_0_[1] ),
        .I1(\rom_addr_reg_rep_n_0_[2] ),
        .I2(\rom_addr_reg_rep_n_0_[3] ),
        .I3(\rom_addr_reg_rep_n_0_[4] ),
        .I4(\rom_addr_reg_rep_n_0_[5] ),
        .O(g1_b27_n_0));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    g1_b29
       (.I0(\rom_addr_reg_rep_n_0_[0] ),
        .I1(\rom_addr_reg_rep_n_0_[1] ),
        .I2(\rom_addr_reg_rep_n_0_[2] ),
        .I3(\rom_addr_reg_rep_n_0_[3] ),
        .I4(\rom_addr_reg_rep_n_0_[4] ),
        .I5(\rom_addr_reg_rep_n_0_[5] ),
        .O(g1_b29_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    g1_b6
       (.I0(\rom_addr_reg_rep_n_0_[0] ),
        .I1(\rom_addr_reg_rep_n_0_[2] ),
        .I2(\rom_addr_reg_rep_n_0_[3] ),
        .I3(\rom_addr_reg_rep_n_0_[4] ),
        .I4(\rom_addr_reg_rep_n_0_[5] ),
        .O(g1_b6_n_0));
  LUT6 #(
    .INIT(64'h000000000000000D)) 
    g1_b8
       (.I0(\rom_addr_reg_rep_n_0_[0] ),
        .I1(\rom_addr_reg_rep_n_0_[1] ),
        .I2(\rom_addr_reg_rep_n_0_[2] ),
        .I3(\rom_addr_reg_rep_n_0_[3] ),
        .I4(\rom_addr_reg_rep_n_0_[4] ),
        .I5(\rom_addr_reg_rep_n_0_[5] ),
        .O(g1_b8_n_0));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    g1_b9
       (.I0(\rom_addr_reg_rep_n_0_[0] ),
        .I1(\rom_addr_reg_rep_n_0_[1] ),
        .I2(\rom_addr_reg_rep_n_0_[2] ),
        .I3(\rom_addr_reg_rep_n_0_[3] ),
        .I4(\rom_addr_reg_rep_n_0_[4] ),
        .I5(\rom_addr_reg_rep_n_0_[5] ),
        .O(g1_b9_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h4474)) 
    \rom_addr[0]_i_1 
       (.I0(rom_addr[0]),
        .I1(current_state[2]),
        .I2(\rom_addr_reg_rep[5]_0 [0]),
        .I3(\rom_addr_reg_rep[5]_0 [1]),
        .O(\rom_addr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h6F6F6F60)) 
    \rom_addr[1]_i_1 
       (.I0(rom_addr[0]),
        .I1(rom_addr[1]),
        .I2(current_state[2]),
        .I3(\rom_addr_reg_rep[5]_0 [1]),
        .I4(\rom_addr_reg_rep[5]_0 [0]),
        .O(\rom_addr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h78FF78FF78FF7800)) 
    \rom_addr[2]_i_1 
       (.I0(rom_addr[0]),
        .I1(rom_addr[1]),
        .I2(rom_addr[2]),
        .I3(current_state[2]),
        .I4(\rom_addr_reg_rep[5]_0 [1]),
        .I5(\rom_addr_reg_rep[5]_0 [0]),
        .O(\rom_addr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7F80FFFF7F800000)) 
    \rom_addr[3]_i_1 
       (.I0(rom_addr[1]),
        .I1(rom_addr[0]),
        .I2(rom_addr[2]),
        .I3(rom_addr[3]),
        .I4(current_state[2]),
        .I5(\rom_addr_reg_rep[5]_0 [1]),
        .O(\rom_addr[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h60606F60)) 
    \rom_addr[4]_i_1 
       (.I0(\rom_addr[4]_i_2_n_0 ),
        .I1(rom_addr[4]),
        .I2(current_state[2]),
        .I3(\rom_addr_reg_rep[5]_0 [0]),
        .I4(\rom_addr_reg_rep[5]_0 [1]),
        .O(\rom_addr[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \rom_addr[4]_i_2 
       (.I0(rom_addr[3]),
        .I1(rom_addr[1]),
        .I2(rom_addr[0]),
        .I3(rom_addr[2]),
        .O(\rom_addr[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \rom_addr[5]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[3]),
        .I3(current_state[1]),
        .O(\rom_addr[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40444004)) 
    \rom_addr[5]_i_2 
       (.I0(current_state[3]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(current_state[2]),
        .I4(Q),
        .O(\rom_addr[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \rom_addr[5]_i_3 
       (.I0(\rom_addr[5]_i_4_n_0 ),
        .I1(rom_addr[5]),
        .I2(current_state[2]),
        .I3(\rom_addr_reg_rep[5]_0 [1]),
        .O(\rom_addr[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \rom_addr[5]_i_4 
       (.I0(rom_addr[4]),
        .I1(rom_addr[2]),
        .I2(rom_addr[0]),
        .I3(rom_addr[1]),
        .I4(rom_addr[3]),
        .O(\rom_addr[5]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h2AFF8000)) 
    \rom_addr[6]_i_1 
       (.I0(current_state[2]),
        .I1(rom_addr[5]),
        .I2(\rom_addr[5]_i_4_n_0 ),
        .I3(\rom_addr[5]_i_2_n_0 ),
        .I4(rom_addr[6]),
        .O(\rom_addr[6]_i_1_n_0 ));
  FDRE \rom_addr_reg[0] 
       (.C(clkin_bufgout),
        .CE(\rom_addr[5]_i_2_n_0 ),
        .D(\rom_addr[0]_i_1_n_0 ),
        .Q(rom_addr[0]),
        .R(\rom_addr[5]_i_1_n_0 ));
  FDRE \rom_addr_reg[1] 
       (.C(clkin_bufgout),
        .CE(\rom_addr[5]_i_2_n_0 ),
        .D(\rom_addr[1]_i_1_n_0 ),
        .Q(rom_addr[1]),
        .R(\rom_addr[5]_i_1_n_0 ));
  FDRE \rom_addr_reg[2] 
       (.C(clkin_bufgout),
        .CE(\rom_addr[5]_i_2_n_0 ),
        .D(\rom_addr[2]_i_1_n_0 ),
        .Q(rom_addr[2]),
        .R(\rom_addr[5]_i_1_n_0 ));
  FDRE \rom_addr_reg[3] 
       (.C(clkin_bufgout),
        .CE(\rom_addr[5]_i_2_n_0 ),
        .D(\rom_addr[3]_i_1_n_0 ),
        .Q(rom_addr[3]),
        .R(\rom_addr[5]_i_1_n_0 ));
  FDRE \rom_addr_reg[4] 
       (.C(clkin_bufgout),
        .CE(\rom_addr[5]_i_2_n_0 ),
        .D(\rom_addr[4]_i_1_n_0 ),
        .Q(rom_addr[4]),
        .R(\rom_addr[5]_i_1_n_0 ));
  FDRE \rom_addr_reg[5] 
       (.C(clkin_bufgout),
        .CE(\rom_addr[5]_i_2_n_0 ),
        .D(\rom_addr[5]_i_3_n_0 ),
        .Q(rom_addr[5]),
        .R(\rom_addr[5]_i_1_n_0 ));
  FDRE \rom_addr_reg[6] 
       (.C(clkin_bufgout),
        .CE(1'b1),
        .D(\rom_addr[6]_i_1_n_0 ),
        .Q(rom_addr[6]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \rom_addr_reg_rep[0] 
       (.C(clkin_bufgout),
        .CE(\rom_addr[5]_i_2_n_0 ),
        .D(\rom_addr[0]_i_1_n_0 ),
        .Q(\rom_addr_reg_rep_n_0_[0] ),
        .R(\rom_addr[5]_i_1_n_0 ));
  (* equivalent_register_removal = "no" *) 
  FDRE \rom_addr_reg_rep[1] 
       (.C(clkin_bufgout),
        .CE(\rom_addr[5]_i_2_n_0 ),
        .D(\rom_addr[1]_i_1_n_0 ),
        .Q(\rom_addr_reg_rep_n_0_[1] ),
        .R(\rom_addr[5]_i_1_n_0 ));
  (* equivalent_register_removal = "no" *) 
  FDRE \rom_addr_reg_rep[2] 
       (.C(clkin_bufgout),
        .CE(\rom_addr[5]_i_2_n_0 ),
        .D(\rom_addr[2]_i_1_n_0 ),
        .Q(\rom_addr_reg_rep_n_0_[2] ),
        .R(\rom_addr[5]_i_1_n_0 ));
  (* equivalent_register_removal = "no" *) 
  FDRE \rom_addr_reg_rep[3] 
       (.C(clkin_bufgout),
        .CE(\rom_addr[5]_i_2_n_0 ),
        .D(\rom_addr[3]_i_1_n_0 ),
        .Q(\rom_addr_reg_rep_n_0_[3] ),
        .R(\rom_addr[5]_i_1_n_0 ));
  (* equivalent_register_removal = "no" *) 
  FDRE \rom_addr_reg_rep[4] 
       (.C(clkin_bufgout),
        .CE(\rom_addr[5]_i_2_n_0 ),
        .D(\rom_addr[4]_i_1_n_0 ),
        .Q(\rom_addr_reg_rep_n_0_[4] ),
        .R(\rom_addr[5]_i_1_n_0 ));
  (* equivalent_register_removal = "no" *) 
  FDRE \rom_addr_reg_rep[5] 
       (.C(clkin_bufgout),
        .CE(\rom_addr[5]_i_2_n_0 ),
        .D(\rom_addr[5]_i_3_n_0 ),
        .Q(\rom_addr_reg_rep_n_0_[5] ),
        .R(\rom_addr[5]_i_1_n_0 ));
  (* equivalent_register_removal = "no" *) 
  FDRE \rom_addr_reg_rep[6] 
       (.C(clkin_bufgout),
        .CE(1'b1),
        .D(\rom_addr_rep[6]_i_1_n_0 ),
        .Q(\rom_addr_reg_rep_n_0_[6] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h2888FFFF28880000)) 
    \rom_addr_rep[6]_i_1 
       (.I0(current_state[2]),
        .I1(rom_addr[6]),
        .I2(rom_addr[5]),
        .I3(\rom_addr[5]_i_4_n_0 ),
        .I4(\rom_addr[5]_i_2_n_0 ),
        .I5(\rom_addr_reg_rep_n_0_[6] ),
        .O(\rom_addr_rep[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rom_do[0]_i_1 
       (.I0(g1_b14_n_0),
        .I1(\rom_addr_reg_rep_n_0_[6] ),
        .I2(g0_b0_n_0),
        .O(p_0_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rom_do[10]_i_1 
       (.I0(g1_b14_n_0),
        .I1(\rom_addr_reg_rep_n_0_[6] ),
        .I2(g0_b10_n_0),
        .O(p_0_out[10]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rom_do[11]_i_1 
       (.I0(g1_b14_n_0),
        .I1(\rom_addr_reg_rep_n_0_[6] ),
        .I2(g0_b11_n_0),
        .O(p_0_out[11]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rom_do[13]_i_1 
       (.I0(g1_b14_n_0),
        .I1(\rom_addr_reg_rep_n_0_[6] ),
        .I2(g0_b13_n_0),
        .O(p_0_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rom_do[14]_i_1 
       (.I0(g1_b14_n_0),
        .I1(\rom_addr_reg_rep_n_0_[6] ),
        .I2(g0_b14_n_0),
        .O(p_0_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rom_do[15]_i_1 
       (.I0(g1_b15_n_0),
        .I1(\rom_addr_reg_rep_n_0_[6] ),
        .I2(g0_b15_n_0),
        .O(p_0_out[15]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rom_do[16]_i_1 
       (.I0(g1_b15_n_0),
        .I1(\rom_addr_reg_rep_n_0_[6] ),
        .I2(g0_b16_n_0),
        .O(p_0_out[16]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rom_do[19]_i_1 
       (.I0(g1_b22_n_0),
        .I1(\rom_addr_reg_rep_n_0_[6] ),
        .I2(g0_b19_n_0),
        .O(p_0_out[19]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rom_do[1]_i_1 
       (.I0(g1_b21_n_0),
        .I1(\rom_addr_reg_rep_n_0_[6] ),
        .I2(g0_b1_n_0),
        .O(p_0_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rom_do[20]_i_1 
       (.I0(g1_b21_n_0),
        .I1(\rom_addr_reg_rep_n_0_[6] ),
        .I2(g0_b20_n_0),
        .O(p_0_out[20]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rom_do[21]_i_1 
       (.I0(g1_b21_n_0),
        .I1(\rom_addr_reg_rep_n_0_[6] ),
        .I2(g0_b21_n_0),
        .O(p_0_out[21]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rom_do[22]_i_1 
       (.I0(g1_b22_n_0),
        .I1(\rom_addr_reg_rep_n_0_[6] ),
        .I2(g0_b22_n_0),
        .O(p_0_out[22]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rom_do[23]_i_1 
       (.I0(g1_b23_n_0),
        .I1(\rom_addr_reg_rep_n_0_[6] ),
        .I2(g0_b23_n_0),
        .O(p_0_out[23]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rom_do[26]_i_1 
       (.I0(g1_b15_n_0),
        .I1(\rom_addr_reg_rep_n_0_[6] ),
        .I2(g0_b26_n_0),
        .O(p_0_out[26]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rom_do[28]_i_1 
       (.I0(g1_b23_n_0),
        .I1(\rom_addr_reg_rep_n_0_[6] ),
        .I2(g0_b28_n_0),
        .O(p_0_out[28]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rom_do[2]_i_1 
       (.I0(g1_b21_n_0),
        .I1(\rom_addr_reg_rep_n_0_[6] ),
        .I2(g0_b2_n_0),
        .O(p_0_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rom_do[3]_i_1 
       (.I0(g1_b6_n_0),
        .I1(\rom_addr_reg_rep_n_0_[6] ),
        .I2(g0_b3_n_0),
        .O(p_0_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rom_do[4]_i_1 
       (.I0(g1_b21_n_0),
        .I1(\rom_addr_reg_rep_n_0_[6] ),
        .I2(g0_b4_n_0),
        .O(p_0_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rom_do[5]_i_1 
       (.I0(g1_b9_n_0),
        .I1(\rom_addr_reg_rep_n_0_[6] ),
        .I2(g0_b5_n_0),
        .O(p_0_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rom_do[6]_i_1 
       (.I0(g1_b6_n_0),
        .I1(\rom_addr_reg_rep_n_0_[6] ),
        .I2(g0_b6_n_0),
        .O(p_0_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rom_do[7]_i_1 
       (.I0(g1_b9_n_0),
        .I1(\rom_addr_reg_rep_n_0_[6] ),
        .I2(g0_b7_n_0),
        .O(p_0_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rom_do[9]_i_1 
       (.I0(g1_b9_n_0),
        .I1(\rom_addr_reg_rep_n_0_[6] ),
        .I2(g0_b9_n_0),
        .O(p_0_out[9]));
  FDRE \rom_do_reg[0] 
       (.C(clkin_bufgout),
        .CE(1'b1),
        .D(p_0_out[0]),
        .Q(rom_do[0]),
        .R(1'b0));
  FDRE \rom_do_reg[10] 
       (.C(clkin_bufgout),
        .CE(1'b1),
        .D(p_0_out[10]),
        .Q(rom_do[10]),
        .R(1'b0));
  FDRE \rom_do_reg[11] 
       (.C(clkin_bufgout),
        .CE(1'b1),
        .D(p_0_out[11]),
        .Q(rom_do[11]),
        .R(1'b0));
  FDRE \rom_do_reg[12] 
       (.C(clkin_bufgout),
        .CE(1'b1),
        .D(p_0_out[12]),
        .Q(rom_do[12]),
        .R(1'b0));
  MUXF7 \rom_do_reg[12]_i_1 
       (.I0(g0_b12_n_0),
        .I1(g1_b12_n_0),
        .O(p_0_out[12]),
        .S(\rom_addr_reg_rep_n_0_[6] ));
  FDRE \rom_do_reg[13] 
       (.C(clkin_bufgout),
        .CE(1'b1),
        .D(p_0_out[13]),
        .Q(rom_do[13]),
        .R(1'b0));
  FDRE \rom_do_reg[14] 
       (.C(clkin_bufgout),
        .CE(1'b1),
        .D(p_0_out[14]),
        .Q(rom_do[14]),
        .R(1'b0));
  FDRE \rom_do_reg[15] 
       (.C(clkin_bufgout),
        .CE(1'b1),
        .D(p_0_out[15]),
        .Q(rom_do[15]),
        .R(1'b0));
  FDRE \rom_do_reg[16] 
       (.C(clkin_bufgout),
        .CE(1'b1),
        .D(p_0_out[16]),
        .Q(rom_do[16]),
        .R(1'b0));
  FDRE \rom_do_reg[17] 
       (.C(clkin_bufgout),
        .CE(1'b1),
        .D(p_0_out[17]),
        .Q(rom_do[17]),
        .R(1'b0));
  MUXF7 \rom_do_reg[17]_i_1 
       (.I0(g0_b17_n_0),
        .I1(g1_b17_n_0),
        .O(p_0_out[17]),
        .S(\rom_addr_reg_rep_n_0_[6] ));
  FDRE \rom_do_reg[19] 
       (.C(clkin_bufgout),
        .CE(1'b1),
        .D(p_0_out[19]),
        .Q(rom_do[19]),
        .R(1'b0));
  FDRE \rom_do_reg[1] 
       (.C(clkin_bufgout),
        .CE(1'b1),
        .D(p_0_out[1]),
        .Q(rom_do[1]),
        .R(1'b0));
  FDRE \rom_do_reg[20] 
       (.C(clkin_bufgout),
        .CE(1'b1),
        .D(p_0_out[20]),
        .Q(rom_do[20]),
        .R(1'b0));
  FDRE \rom_do_reg[21] 
       (.C(clkin_bufgout),
        .CE(1'b1),
        .D(p_0_out[21]),
        .Q(rom_do[21]),
        .R(1'b0));
  FDRE \rom_do_reg[22] 
       (.C(clkin_bufgout),
        .CE(1'b1),
        .D(p_0_out[22]),
        .Q(rom_do[22]),
        .R(1'b0));
  FDRE \rom_do_reg[23] 
       (.C(clkin_bufgout),
        .CE(1'b1),
        .D(p_0_out[23]),
        .Q(rom_do[23]),
        .R(1'b0));
  FDRE \rom_do_reg[24] 
       (.C(clkin_bufgout),
        .CE(1'b1),
        .D(p_0_out[24]),
        .Q(rom_do[24]),
        .R(1'b0));
  MUXF7 \rom_do_reg[24]_i_1 
       (.I0(g0_b24_n_0),
        .I1(g1_b24_n_0),
        .O(p_0_out[24]),
        .S(\rom_addr_reg_rep_n_0_[6] ));
  FDRE \rom_do_reg[25] 
       (.C(clkin_bufgout),
        .CE(1'b1),
        .D(p_0_out[25]),
        .Q(rom_do[25]),
        .R(1'b0));
  MUXF7 \rom_do_reg[25]_i_1 
       (.I0(g0_b25_n_0),
        .I1(g1_b25_n_0),
        .O(p_0_out[25]),
        .S(\rom_addr_reg_rep_n_0_[6] ));
  FDRE \rom_do_reg[26] 
       (.C(clkin_bufgout),
        .CE(1'b1),
        .D(p_0_out[26]),
        .Q(rom_do[26]),
        .R(1'b0));
  FDRE \rom_do_reg[27] 
       (.C(clkin_bufgout),
        .CE(1'b1),
        .D(p_0_out[27]),
        .Q(rom_do[27]),
        .R(1'b0));
  MUXF7 \rom_do_reg[27]_i_1 
       (.I0(g0_b27_n_0),
        .I1(g1_b27_n_0),
        .O(p_0_out[27]),
        .S(\rom_addr_reg_rep_n_0_[6] ));
  FDRE \rom_do_reg[28] 
       (.C(clkin_bufgout),
        .CE(1'b1),
        .D(p_0_out[28]),
        .Q(rom_do[28]),
        .R(1'b0));
  FDRE \rom_do_reg[29] 
       (.C(clkin_bufgout),
        .CE(1'b1),
        .D(p_0_out[29]),
        .Q(rom_do[29]),
        .R(1'b0));
  MUXF7 \rom_do_reg[29]_i_1 
       (.I0(g0_b29_n_0),
        .I1(g1_b29_n_0),
        .O(p_0_out[29]),
        .S(\rom_addr_reg_rep_n_0_[6] ));
  FDRE \rom_do_reg[2] 
       (.C(clkin_bufgout),
        .CE(1'b1),
        .D(p_0_out[2]),
        .Q(rom_do[2]),
        .R(1'b0));
  FDRE \rom_do_reg[3] 
       (.C(clkin_bufgout),
        .CE(1'b1),
        .D(p_0_out[3]),
        .Q(rom_do[3]),
        .R(1'b0));
  FDRE \rom_do_reg[4] 
       (.C(clkin_bufgout),
        .CE(1'b1),
        .D(p_0_out[4]),
        .Q(rom_do[4]),
        .R(1'b0));
  FDRE \rom_do_reg[5] 
       (.C(clkin_bufgout),
        .CE(1'b1),
        .D(p_0_out[5]),
        .Q(rom_do[5]),
        .R(1'b0));
  FDRE \rom_do_reg[6] 
       (.C(clkin_bufgout),
        .CE(1'b1),
        .D(p_0_out[6]),
        .Q(rom_do[6]),
        .R(1'b0));
  FDRE \rom_do_reg[7] 
       (.C(clkin_bufgout),
        .CE(1'b1),
        .D(p_0_out[7]),
        .Q(rom_do[7]),
        .R(1'b0));
  FDRE \rom_do_reg[8] 
       (.C(clkin_bufgout),
        .CE(1'b1),
        .D(p_0_out[8]),
        .Q(rom_do[8]),
        .R(1'b0));
  MUXF7 \rom_do_reg[8]_i_1 
       (.I0(g0_b8_n_0),
        .I1(g1_b8_n_0),
        .O(p_0_out[8]),
        .S(\rom_addr_reg_rep_n_0_[6] ));
  FDRE \rom_do_reg[9] 
       (.C(clkin_bufgout),
        .CE(1'b1),
        .D(p_0_out[9]),
        .Q(rom_do[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \state_count[0]_i_1 
       (.I0(state_count[0]),
        .O(\state_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \state_count[1]_i_1 
       (.I0(state_count[0]),
        .I1(state_count[1]),
        .O(\state_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \state_count[2]_i_1 
       (.I0(state_count[1]),
        .I1(state_count[0]),
        .I2(state_count[2]),
        .O(\state_count[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8FFFF00020000)) 
    \state_count[3]_i_1 
       (.I0(current_state[3]),
        .I1(state_count[1]),
        .I2(state_count[0]),
        .I3(state_count[2]),
        .I4(\state_count[4]_i_2_n_0 ),
        .I5(state_count[3]),
        .O(\state_count[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \state_count[4]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(current_state[3]),
        .O(\state_count[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0006)) 
    \state_count[4]_i_2 
       (.I0(current_state[3]),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(current_state[2]),
        .O(\state_count[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    \state_count[4]_i_3 
       (.I0(state_count[3]),
        .I1(state_count[1]),
        .I2(state_count[0]),
        .I3(state_count[2]),
        .I4(state_count[4]),
        .O(\state_count[4]_i_3_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \state_count_reg[0] 
       (.C(clkin_bufgout),
        .CE(\state_count[4]_i_2_n_0 ),
        .D(\state_count[0]_i_1_n_0 ),
        .Q(state_count[0]),
        .S(\state_count[4]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \state_count_reg[1] 
       (.C(clkin_bufgout),
        .CE(\state_count[4]_i_2_n_0 ),
        .D(\state_count[1]_i_1_n_0 ),
        .Q(state_count[1]),
        .S(\state_count[4]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \state_count_reg[2] 
       (.C(clkin_bufgout),
        .CE(\state_count[4]_i_2_n_0 ),
        .D(\state_count[2]_i_1_n_0 ),
        .Q(state_count[2]),
        .S(\state_count[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_count_reg[3] 
       (.C(clkin_bufgout),
        .CE(1'b1),
        .D(\state_count[3]_i_1_n_0 ),
        .Q(state_count[3]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \state_count_reg[4] 
       (.C(clkin_bufgout),
        .CE(\state_count[4]_i_2_n_0 ),
        .D(\state_count[4]_i_3_n_0 ),
        .Q(state_count[4]),
        .S(\state_count[4]_i_1_n_0 ));
endmodule

(* ORIG_REF_NAME = "top_mmcme2" *) 
module design_1_dispsub_0_0_top_mmcme2
   (CLK,
    DVI_CLK,
    CLK40,
    Q,
    \rom_addr_reg_rep[5] ,
    \current_state_reg[1] );
  output CLK;
  output DVI_CLK;
  input CLK40;
  input [0:0]Q;
  input [1:0]\rom_addr_reg_rep[5] ;
  input [0:0]\current_state_reg[1] ;

  wire CLK;
  wire CLK40;
  wire DVI_CLK;
  wire [0:0]Q;
  wire clk0_bufgin;
  wire clk1_bufgin;
  wire clkfb_bufgin;
  wire clkfb_bufgout;
  wire clkin_bufgout;
  wire [0:0]\current_state_reg[1] ;
  wire [6:0]daddr;
  wire den;
  wire [15:0]di;
  wire [15:0]dout;
  wire drdy;
  wire dwe;
  wire mmcme2_test_inst_n_16;
  wire [1:0]\rom_addr_reg_rep[5] ;
  wire rst_mmcm;
  wire NLW_mmcme2_test_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_mmcme2_test_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_mmcme2_test_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_mmcme2_test_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_mmcme2_test_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_mmcme2_test_inst_CLKOUT2_UNCONNECTED;
  wire NLW_mmcme2_test_inst_CLKOUT2B_UNCONNECTED;
  wire NLW_mmcme2_test_inst_CLKOUT3_UNCONNECTED;
  wire NLW_mmcme2_test_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_mmcme2_test_inst_CLKOUT4_UNCONNECTED;
  wire NLW_mmcme2_test_inst_CLKOUT5_UNCONNECTED;
  wire NLW_mmcme2_test_inst_CLKOUT6_UNCONNECTED;
  wire NLW_mmcme2_test_inst_PSDONE_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG BUFG_CLK0
       (.I(clk0_bufgin),
        .O(CLK));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG BUFG_CLK1
       (.I(clk1_bufgin),
        .O(DVI_CLK));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG BUFG_FB
       (.I(clkfb_bufgin),
        .O(clkfb_bufgout));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG BUFG_IN
       (.I(CLK40),
        .O(clkin_bufgout));
  design_1_dispsub_0_0_mmcme2_drp mmcme2_drp_inst
       (.DADDR(daddr),
        .DI(di),
        .DO({dout[15:9],dout[7:0]}),
        .Q(Q),
        .clkin_bufgout(clkin_bufgout),
        .\current_state_reg[0]_0 (mmcme2_test_inst_n_16),
        .\current_state_reg[1]_0 (\current_state_reg[1] ),
        .den(den),
        .drdy(drdy),
        .dwe(dwe),
        .\rom_addr_reg_rep[5]_0 (\rom_addr_reg_rep[5] ),
        .rst_mmcm(rst_mmcm));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(30.000000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(25.000000),
    .CLKIN2_PERIOD(25.000000),
    .CLKOUT0_DIVIDE_F(48.000000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(48),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(-22.500000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("ZHOLD"),
    .DIVCLK_DIVIDE(1),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PSEN_INVERTED(1'b0),
    .IS_PSINCDEC_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    mmcme2_test_inst
       (.CLKFBIN(clkfb_bufgout),
        .CLKFBOUT(clkfb_bufgin),
        .CLKFBOUTB(NLW_mmcme2_test_inst_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_mmcme2_test_inst_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(CLK40),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_mmcme2_test_inst_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(clk0_bufgin),
        .CLKOUT0B(NLW_mmcme2_test_inst_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(clk1_bufgin),
        .CLKOUT1B(NLW_mmcme2_test_inst_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(NLW_mmcme2_test_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT2B(NLW_mmcme2_test_inst_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(NLW_mmcme2_test_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT3B(NLW_mmcme2_test_inst_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(NLW_mmcme2_test_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_mmcme2_test_inst_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_mmcme2_test_inst_CLKOUT6_UNCONNECTED),
        .DADDR(daddr),
        .DCLK(clkin_bufgout),
        .DEN(den),
        .DI(di),
        .DO(dout),
        .DRDY(drdy),
        .DWE(dwe),
        .LOCKED(mmcme2_test_inst_n_16),
        .PSCLK(1'b0),
        .PSDONE(NLW_mmcme2_test_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(rst_mmcm));
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
