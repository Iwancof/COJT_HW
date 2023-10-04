// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Fri May 26 16:56:09 2023
// Host        : COJTHW101 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/HW101.COJTHW/COJT/pattern/pattern/SIM/pattern.gen/sources_1/bd/design_1/ip/design_1_patgen_0_0/design_1_patgen_0_0_sim_netlist.v
// Design      : design_1_patgen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_patgen_0_0,patgen,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "patgen,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module design_1_patgen_0_0
   (DCLK,
    ARESETN,
    RESOL,
    DSP_HSYNC_X,
    DSP_VSYNC_X,
    DSP_DE,
    DSP_R,
    DSP_G,
    DSP_B);
  input DCLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ARESETN;
  input [1:0]RESOL;
  output DSP_HSYNC_X;
  output DSP_VSYNC_X;
  output DSP_DE;
  output [7:0]DSP_R;
  output [7:0]DSP_G;
  output [7:0]DSP_B;

  wire ARESETN;
  wire DCLK;
  wire [0:0]\^DSP_B ;
  wire DSP_DE;
  wire [0:0]\^DSP_G ;
  wire DSP_HSYNC_X;
  wire [0:0]\^DSP_R ;
  wire DSP_VSYNC_X;
  wire [1:0]RESOL;

  assign DSP_B[7] = \^DSP_B [0];
  assign DSP_B[6] = \^DSP_B [0];
  assign DSP_B[5] = \^DSP_B [0];
  assign DSP_B[4] = \^DSP_B [0];
  assign DSP_B[3] = \^DSP_B [0];
  assign DSP_B[2] = \^DSP_B [0];
  assign DSP_B[1] = \^DSP_B [0];
  assign DSP_B[0] = \^DSP_B [0];
  assign DSP_G[7] = \^DSP_G [0];
  assign DSP_G[6] = \^DSP_G [0];
  assign DSP_G[5] = \^DSP_G [0];
  assign DSP_G[4] = \^DSP_G [0];
  assign DSP_G[3] = \^DSP_G [0];
  assign DSP_G[2] = \^DSP_G [0];
  assign DSP_G[1] = \^DSP_G [0];
  assign DSP_G[0] = \^DSP_G [0];
  assign DSP_R[7] = \^DSP_R [0];
  assign DSP_R[6] = \^DSP_R [0];
  assign DSP_R[5] = \^DSP_R [0];
  assign DSP_R[4] = \^DSP_R [0];
  assign DSP_R[3] = \^DSP_R [0];
  assign DSP_R[2] = \^DSP_R [0];
  assign DSP_R[1] = \^DSP_R [0];
  assign DSP_R[0] = \^DSP_R [0];
  design_1_patgen_0_0_patgen inst
       (.ARESETN(ARESETN),
        .DCLK(DCLK),
        .DSP_B(\^DSP_B ),
        .DSP_DE(DSP_DE),
        .DSP_G(\^DSP_G ),
        .DSP_HSYNC_X(DSP_HSYNC_X),
        .DSP_R(\^DSP_R ),
        .DSP_VSYNC_X(DSP_VSYNC_X),
        .RESOL(RESOL));
endmodule

(* ORIG_REF_NAME = "patgen" *) 
module design_1_patgen_0_0_patgen
   (DSP_DE,
    DSP_R,
    DSP_G,
    DSP_B,
    DSP_HSYNC_X,
    DSP_VSYNC_X,
    RESOL,
    DCLK,
    ARESETN);
  output DSP_DE;
  output [0:0]DSP_R;
  output [0:0]DSP_G;
  output [0:0]DSP_B;
  output DSP_HSYNC_X;
  output DSP_VSYNC_X;
  input [1:0]RESOL;
  input DCLK;
  input ARESETN;

  wire ARESETN;
  wire DCLK;
  wire DRST;
  wire [0:0]DSP_B;
  wire DSP_B0;
  wire \DSP_B[0]_i_2_n_0 ;
  wire \DSP_B[0]_i_3_n_0 ;
  wire \DSP_B[0]_i_4_n_0 ;
  wire \DSP_B[0]_i_5_n_0 ;
  wire \DSP_B[0]_i_6_n_0 ;
  wire DSP_DE;
  wire [0:0]DSP_G;
  wire DSP_G0;
  wire \DSP_G[0]_i_2_n_0 ;
  wire \DSP_G[0]_i_3_n_0 ;
  wire \DSP_G[0]_i_4_n_0 ;
  wire \DSP_G[0]_i_5_n_0 ;
  wire \DSP_G[0]_i_6_n_0 ;
  wire \DSP_G[0]_i_7_n_0 ;
  wire \DSP_G[0]_i_8_n_0 ;
  wire DSP_HSYNC_X;
  wire [0:0]DSP_R;
  wire DSP_R0;
  wire \DSP_R[0]_i_10_n_0 ;
  wire \DSP_R[0]_i_11_n_0 ;
  wire \DSP_R[0]_i_2_n_0 ;
  wire \DSP_R[0]_i_3_n_0 ;
  wire \DSP_R[0]_i_4_n_0 ;
  wire \DSP_R[0]_i_5_n_0 ;
  wire \DSP_R[0]_i_6_n_0 ;
  wire \DSP_R[0]_i_7_n_0 ;
  wire \DSP_R[0]_i_8_n_0 ;
  wire \DSP_R[0]_i_9_n_0 ;
  wire DSP_VSYNC_X;
  wire DSP_preDE;
  wire [9:0]HCNT_reg;
  wire [1:0]RESOL;
  wire [9:6]VCNT_reg;
  wire \drst_ff_reg_n_0_[0] ;
  wire h00;
  wire h00_carry_i_1_n_0;
  wire h00_carry_i_2_n_0;
  wire h00_carry_i_3_n_0;
  wire h00_carry_i_4_n_0;
  wire h00_carry_i_5_n_0;
  wire h00_carry_i_6_n_0;
  wire h00_carry_n_1;
  wire h00_carry_n_2;
  wire h00_carry_n_3;
  wire h10;
  wire h1011_in;
  wire h10_carry_i_1_n_0;
  wire h10_carry_i_2_n_0;
  wire h10_carry_i_3_n_0;
  wire h10_carry_i_4_n_0;
  wire h10_carry_i_5_n_0;
  wire h10_carry_i_6_n_0;
  wire h10_carry_i_7_n_0;
  wire h10_carry_n_1;
  wire h10_carry_n_2;
  wire h10_carry_n_3;
  wire \h10_inferred__0/i__carry__0_n_3 ;
  wire \h10_inferred__0/i__carry_n_0 ;
  wire \h10_inferred__0/i__carry_n_1 ;
  wire \h10_inferred__0/i__carry_n_2 ;
  wire \h10_inferred__0/i__carry_n_3 ;
  wire h2012_in;
  wire h20_carry_i_1_n_0;
  wire h20_carry_i_2_n_0;
  wire h20_carry_i_3_n_0;
  wire h20_carry_i_4_n_0;
  wire h20_carry_i_5_n_0;
  wire h20_carry_i_6_n_0;
  wire h20_carry_i_7_n_0;
  wire h20_carry_n_0;
  wire h20_carry_n_1;
  wire h20_carry_n_2;
  wire h20_carry_n_3;
  wire \h20_inferred__0/i__carry__0_n_3 ;
  wire \h20_inferred__0/i__carry_n_0 ;
  wire \h20_inferred__0/i__carry_n_1 ;
  wire \h20_inferred__0/i__carry_n_2 ;
  wire \h20_inferred__0/i__carry_n_3 ;
  wire h30;
  wire h30_carry_i_1_n_0;
  wire h30_carry_i_2_n_0;
  wire h30_carry_i_3_n_0;
  wire h30_carry_i_4_n_0;
  wire h30_carry_i_5_n_0;
  wire h30_carry_n_2;
  wire h30_carry_n_3;
  wire \h30_inferred__0/i__carry__0_n_2 ;
  wire \h30_inferred__0/i__carry__0_n_3 ;
  wire \h30_inferred__0/i__carry_n_0 ;
  wire \h30_inferred__0/i__carry_n_1 ;
  wire \h30_inferred__0/i__carry_n_2 ;
  wire \h30_inferred__0/i__carry_n_3 ;
  wire h40;
  wire h4014_in;
  wire h40_carry_i_1_n_0;
  wire h40_carry_i_2_n_0;
  wire h40_carry_i_3_n_0;
  wire h40_carry_i_4_n_0;
  wire h40_carry_i_5_n_0;
  wire h40_carry_i_6_n_0;
  wire h40_carry_i_7_n_0;
  wire h40_carry_n_1;
  wire h40_carry_n_2;
  wire h40_carry_n_3;
  wire \h40_inferred__0/i__carry__0_n_3 ;
  wire \h40_inferred__0/i__carry_n_0 ;
  wire \h40_inferred__0/i__carry_n_1 ;
  wire \h40_inferred__0/i__carry_n_2 ;
  wire \h40_inferred__0/i__carry_n_3 ;
  wire h5015_in;
  wire h50_carry_i_1_n_0;
  wire h50_carry_i_2_n_0;
  wire h50_carry_i_3_n_0;
  wire h50_carry_i_4_n_0;
  wire h50_carry_i_5_n_0;
  wire h50_carry_i_6_n_0;
  wire h50_carry_i_7_n_0;
  wire h50_carry_n_0;
  wire h50_carry_n_1;
  wire h50_carry_n_2;
  wire h50_carry_n_3;
  wire \h50_inferred__0/i__carry__0_n_3 ;
  wire \h50_inferred__0/i__carry_n_0 ;
  wire \h50_inferred__0/i__carry_n_1 ;
  wire \h50_inferred__0/i__carry_n_2 ;
  wire \h50_inferred__0/i__carry_n_3 ;
  wire h60_carry_i_1_n_0;
  wire h60_carry_i_2_n_0;
  wire h60_carry_i_3_n_0;
  wire h60_carry_i_4_n_0;
  wire h60_carry_i_5_n_0;
  wire h60_carry_i_6_n_0;
  wire h60_carry_i_7_n_0;
  wire h60_carry_i_8_n_0;
  wire h60_carry_n_0;
  wire h60_carry_n_1;
  wire h60_carry_n_2;
  wire h60_carry_n_3;
  wire \h60_inferred__0/i__carry__0_n_2 ;
  wire \h60_inferred__0/i__carry__0_n_3 ;
  wire \h60_inferred__0/i__carry_n_0 ;
  wire \h60_inferred__0/i__carry_n_1 ;
  wire \h60_inferred__0/i__carry_n_2 ;
  wire \h60_inferred__0/i__carry_n_3 ;
  wire h70;
  wire h70_carry_i_1_n_0;
  wire h70_carry_i_2_n_0;
  wire h70_carry_i_3_n_0;
  wire h70_carry_i_4_n_0;
  wire h70_carry_i_5_n_0;
  wire h70_carry_i_6_n_0;
  wire h70_carry_n_2;
  wire h70_carry_n_3;
  wire \h70_inferred__0/i__carry__0_n_2 ;
  wire \h70_inferred__0/i__carry__0_n_3 ;
  wire \h70_inferred__0/i__carry_n_0 ;
  wire \h70_inferred__0/i__carry_n_1 ;
  wire \h70_inferred__0/i__carry_n_2 ;
  wire \h70_inferred__0/i__carry_n_3 ;
  wire i__carry__0_i_1__0_n_0;
  wire i__carry__0_i_1__1_n_0;
  wire i__carry__0_i_1__2_n_0;
  wire i__carry__0_i_1__3_n_0;
  wire i__carry__0_i_1__4_n_0;
  wire i__carry__0_i_1__5_n_0;
  wire i__carry__0_i_1__6_n_0;
  wire i__carry__0_i_1__7_n_0;
  wire i__carry__0_i_1__8_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2__0_n_0;
  wire i__carry__0_i_2__1_n_0;
  wire i__carry__0_i_2__2_n_0;
  wire i__carry__0_i_2__3_n_0;
  wire i__carry__0_i_2__4_n_0;
  wire i__carry__0_i_2__5_n_0;
  wire i__carry__0_i_2__6_n_0;
  wire i__carry__0_i_2__7_n_0;
  wire i__carry__0_i_2__8_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3__0_n_0;
  wire i__carry__0_i_3__1_n_0;
  wire i__carry__0_i_3__2_n_0;
  wire i__carry__0_i_3__3_n_0;
  wire i__carry__0_i_3__4_n_0;
  wire i__carry__0_i_3__5_n_0;
  wire i__carry__0_i_3__6_n_0;
  wire i__carry__0_i_3__7_n_0;
  wire i__carry__0_i_3__8_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4__0_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry_i_1__10_n_0;
  wire i__carry_i_1__11_n_0;
  wire i__carry_i_1__1_n_0;
  wire i__carry_i_1__2_n_0;
  wire i__carry_i_1__3_n_0;
  wire i__carry_i_1__4_n_0;
  wire i__carry_i_1__6_n_0;
  wire i__carry_i_1__7_n_0;
  wire i__carry_i_1__8_n_0;
  wire i__carry_i_1__9_n_0;
  wire i__carry_i_2__10_n_0;
  wire i__carry_i_2__11_n_0;
  wire i__carry_i_2__1_n_0;
  wire i__carry_i_2__2_n_0;
  wire i__carry_i_2__4_n_0;
  wire i__carry_i_2__5_n_0;
  wire i__carry_i_2__6_n_0;
  wire i__carry_i_2__7_n_0;
  wire i__carry_i_2__8_n_0;
  wire i__carry_i_2__9_n_0;
  wire i__carry_i_3__10_n_0;
  wire i__carry_i_3__11_n_0;
  wire i__carry_i_3__2_n_0;
  wire i__carry_i_3__3_n_0;
  wire i__carry_i_3__4_n_0;
  wire i__carry_i_3__5_n_0;
  wire i__carry_i_3__6_n_0;
  wire i__carry_i_3__7_n_0;
  wire i__carry_i_3__8_n_0;
  wire i__carry_i_3__9_n_0;
  wire i__carry_i_4__10_n_0;
  wire i__carry_i_4__11_n_0;
  wire i__carry_i_4__2_n_0;
  wire i__carry_i_5__10_n_0;
  wire i__carry_i_5__11_n_0;
  wire i__carry_i_5__1_n_0;
  wire i__carry_i_5__2_n_0;
  wire i__carry_i_5__3_n_0;
  wire i__carry_i_5__4_n_0;
  wire i__carry_i_5__5_n_0;
  wire i__carry_i_5__6_n_0;
  wire i__carry_i_5__7_n_0;
  wire i__carry_i_5__8_n_0;
  wire i__carry_i_6__0_n_0;
  wire i__carry_i_6__2_n_0;
  wire i__carry_i_6__3_n_0;
  wire i__carry_i_6__4_n_0;
  wire i__carry_i_6__5_n_0;
  wire i__carry_i_6__6_n_0;
  wire i__carry_i_6__7_n_0;
  wire i__carry_i_6__8_n_0;
  wire i__carry_i_6__9_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7__0_n_0;
  wire i__carry_i_7__1_n_0;
  wire i__carry_i_7__2_n_0;
  wire i__carry_i_7__3_n_0;
  wire i__carry_i_7__4_n_0;
  wire i__carry_i_7__5_n_0;
  wire i__carry_i_7__6_n_0;
  wire i__carry_i_7__7_n_0;
  wire i__carry_i_7__8_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8__0_n_0;
  wire i__carry_i_8__7_n_0;
  wire i__carry_i_8__8_n_0;
  wire [0:0]p_1_out;
  wire [10:1]raw_horizontal_offset;
  wire raw_horizontal_offset__1_carry__0_i_1_n_0;
  wire raw_horizontal_offset__1_carry__0_n_0;
  wire raw_horizontal_offset__1_carry__0_n_1;
  wire raw_horizontal_offset__1_carry__0_n_2;
  wire raw_horizontal_offset__1_carry__0_n_3;
  wire raw_horizontal_offset__1_carry__1_n_3;
  wire raw_horizontal_offset__1_carry_i_1_n_0;
  wire raw_horizontal_offset__1_carry_n_0;
  wire raw_horizontal_offset__1_carry_n_1;
  wire raw_horizontal_offset__1_carry_n_2;
  wire raw_horizontal_offset__1_carry_n_3;
  wire [10:0]raw_vertical_offset;
  wire raw_vertical_offset__0_carry__0_n_0;
  wire raw_vertical_offset__0_carry__0_n_1;
  wire raw_vertical_offset__0_carry__0_n_2;
  wire raw_vertical_offset__0_carry__0_n_3;
  wire raw_vertical_offset__0_carry__1_n_2;
  wire raw_vertical_offset__0_carry__1_n_3;
  wire raw_vertical_offset__0_carry_i_3_n_0;
  wire raw_vertical_offset__0_carry_i_4_n_0;
  wire raw_vertical_offset__0_carry_n_0;
  wire raw_vertical_offset__0_carry_n_1;
  wire raw_vertical_offset__0_carry_n_2;
  wire raw_vertical_offset__0_carry_n_3;
  wire syncgen_n_10;
  wire syncgen_n_11;
  wire syncgen_n_17;
  wire syncgen_n_18;
  wire syncgen_n_19;
  wire syncgen_n_20;
  wire syncgen_n_21;
  wire syncgen_n_22;
  wire syncgen_n_23;
  wire syncgen_n_24;
  wire syncgen_n_25;
  wire syncgen_n_26;
  wire syncgen_n_27;
  wire syncgen_n_28;
  wire syncgen_n_29;
  wire syncgen_n_30;
  wire syncgen_n_31;
  wire syncgen_n_32;
  wire syncgen_n_33;
  wire syncgen_n_34;
  wire syncgen_n_35;
  wire syncgen_n_36;
  wire syncgen_n_37;
  wire syncgen_n_38;
  wire syncgen_n_39;
  wire syncgen_n_40;
  wire syncgen_n_41;
  wire syncgen_n_42;
  wire syncgen_n_43;
  wire syncgen_n_44;
  wire syncgen_n_45;
  wire syncgen_n_46;
  wire syncgen_n_47;
  wire syncgen_n_48;
  wire syncgen_n_49;
  wire syncgen_n_50;
  wire syncgen_n_7;
  wire syncgen_n_8;
  wire syncgen_n_9;
  wire v00;
  wire v00_carry__0_i_1_n_0;
  wire v00_carry_i_1_n_0;
  wire v00_carry_i_2_n_0;
  wire v00_carry_i_3_n_0;
  wire v00_carry_i_4_n_0;
  wire v00_carry_i_5_n_0;
  wire v00_carry_i_6_n_0;
  wire v00_carry_i_7_n_0;
  wire v00_carry_i_8_n_0;
  wire v00_carry_n_0;
  wire v00_carry_n_1;
  wire v00_carry_n_2;
  wire v00_carry_n_3;
  wire v10;
  wire v1019_in;
  wire v10_carry_i_1_n_0;
  wire v10_carry_i_2_n_0;
  wire v10_carry_i_3_n_0;
  wire v10_carry_i_4_n_0;
  wire v10_carry_i_5_n_0;
  wire v10_carry_i_6_n_0;
  wire v10_carry_i_7_n_0;
  wire v10_carry_n_1;
  wire v10_carry_n_2;
  wire v10_carry_n_3;
  wire \v10_inferred__0/i__carry__0_n_3 ;
  wire \v10_inferred__0/i__carry_n_0 ;
  wire \v10_inferred__0/i__carry_n_1 ;
  wire \v10_inferred__0/i__carry_n_2 ;
  wire \v10_inferred__0/i__carry_n_3 ;
  wire v20;
  wire v2020_in;
  wire v20_carry__0_i_2_n_0;
  wire v20_carry__0_i_3_n_0;
  wire v20_carry__0_n_3;
  wire v20_carry_i_10_n_0;
  wire v20_carry_i_11_n_0;
  wire v20_carry_i_12_n_0;
  wire v20_carry_i_13_n_0;
  wire v20_carry_i_1_n_0;
  wire v20_carry_i_2_n_0;
  wire v20_carry_i_3_n_0;
  wire v20_carry_i_4_n_0;
  wire v20_carry_i_5_n_0;
  wire v20_carry_i_6_n_0;
  wire v20_carry_i_7_n_0;
  wire v20_carry_i_8_n_0;
  wire v20_carry_i_9_n_2;
  wire v20_carry_i_9_n_3;
  wire v20_carry_n_0;
  wire v20_carry_n_1;
  wire v20_carry_n_2;
  wire v20_carry_n_3;
  wire \v20_inferred__0/i__carry__0_n_3 ;
  wire \v20_inferred__0/i__carry_n_0 ;
  wire \v20_inferred__0/i__carry_n_1 ;
  wire \v20_inferred__0/i__carry_n_2 ;
  wire \v20_inferred__0/i__carry_n_3 ;
  wire v30;
  wire v3021_in;
  wire v30_carry_i_1_n_0;
  wire v30_carry_i_2_n_0;
  wire v30_carry_i_3_n_0;
  wire v30_carry_i_4_n_0;
  wire v30_carry_i_5_n_0;
  wire v30_carry_i_6_n_0;
  wire v30_carry_i_7_n_0;
  wire v30_carry_i_8_n_0;
  wire v30_carry_n_1;
  wire v30_carry_n_2;
  wire v30_carry_n_3;
  wire \v30_inferred__0/i__carry__0_n_2 ;
  wire \v30_inferred__0/i__carry__0_n_3 ;
  wire \v30_inferred__0/i__carry_n_0 ;
  wire \v30_inferred__0/i__carry_n_1 ;
  wire \v30_inferred__0/i__carry_n_2 ;
  wire \v30_inferred__0/i__carry_n_3 ;
  wire [12:3]v31;
  wire v31__9_carry_i_1_n_0;
  wire v31__9_carry_i_2_n_0;
  wire v31__9_carry_i_3_n_0;
  wire v31__9_carry_i_4_n_0;
  wire v31__9_carry_i_5_n_0;
  wire v31__9_carry_n_1;
  wire v31__9_carry_n_3;
  wire v31_carry_i_1_n_0;
  wire v31_carry_i_2_n_0;
  wire v31_carry_n_1;
  wire v31_carry_n_3;
  wire [3:0]NLW_h00_carry_O_UNCONNECTED;
  wire [3:0]NLW_h10_carry_O_UNCONNECTED;
  wire [3:0]\NLW_h10_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:2]\NLW_h10_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_h10_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]NLW_h20_carry_O_UNCONNECTED;
  wire [3:0]\NLW_h20_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:2]\NLW_h20_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_h20_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:3]NLW_h30_carry_CO_UNCONNECTED;
  wire [3:0]NLW_h30_carry_O_UNCONNECTED;
  wire [3:0]\NLW_h30_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:2]\NLW_h30_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_h30_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]NLW_h40_carry_O_UNCONNECTED;
  wire [3:0]\NLW_h40_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:2]\NLW_h40_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_h40_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]NLW_h50_carry_O_UNCONNECTED;
  wire [3:0]\NLW_h50_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:2]\NLW_h50_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_h50_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]NLW_h60_carry_O_UNCONNECTED;
  wire [3:0]\NLW_h60_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:2]\NLW_h60_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_h60_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:3]NLW_h70_carry_CO_UNCONNECTED;
  wire [3:0]NLW_h70_carry_O_UNCONNECTED;
  wire [3:0]\NLW_h70_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:2]\NLW_h70_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_h70_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:1]NLW_raw_horizontal_offset__1_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_raw_horizontal_offset__1_carry__1_O_UNCONNECTED;
  wire [3:2]NLW_raw_vertical_offset__0_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_raw_vertical_offset__0_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_v00_carry_O_UNCONNECTED;
  wire [3:1]NLW_v00_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_v00_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_v10_carry_O_UNCONNECTED;
  wire [3:0]\NLW_v10_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:2]\NLW_v10_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_v10_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]NLW_v20_carry_O_UNCONNECTED;
  wire [3:2]NLW_v20_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_v20_carry__0_O_UNCONNECTED;
  wire [2:2]NLW_v20_carry_i_9_CO_UNCONNECTED;
  wire [3:0]NLW_v20_carry_i_9_O_UNCONNECTED;
  wire [3:0]\NLW_v20_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:2]\NLW_v20_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_v20_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]NLW_v30_carry_O_UNCONNECTED;
  wire [3:0]\NLW_v30_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:3]\NLW_v30_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_v30_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:1]NLW_v31__9_carry_CO_UNCONNECTED;
  wire [3:2]NLW_v31__9_carry_O_UNCONNECTED;
  wire [3:1]NLW_v31_carry_CO_UNCONNECTED;
  wire [3:2]NLW_v31_carry_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \DSP_B[0]_i_1 
       (.I0(\DSP_B[0]_i_2_n_0 ),
        .I1(\DSP_B[0]_i_3_n_0 ),
        .I2(\DSP_B[0]_i_4_n_0 ),
        .I3(\DSP_G[0]_i_3_n_0 ),
        .I4(\DSP_B[0]_i_5_n_0 ),
        .I5(\DSP_B[0]_i_6_n_0 ),
        .O(DSP_B0));
  LUT2 #(
    .INIT(4'h8)) 
    \DSP_B[0]_i_2 
       (.I0(h5015_in),
        .I1(h50_carry_n_0),
        .O(\DSP_B[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \DSP_B[0]_i_3 
       (.I0(v30),
        .I1(v3021_in),
        .I2(v00),
        .O(\DSP_B[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF80808080808080)) 
    \DSP_B[0]_i_4 
       (.I0(\DSP_R[0]_i_5_n_0 ),
        .I1(\h30_inferred__0/i__carry__0_n_2 ),
        .I2(h30),
        .I3(\DSP_B[0]_i_3_n_0 ),
        .I4(h2012_in),
        .I5(h20_carry_n_0),
        .O(\DSP_B[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF80808080808080)) 
    \DSP_B[0]_i_5 
       (.I0(h5015_in),
        .I1(h50_carry_n_0),
        .I2(\DSP_R[0]_i_10_n_0 ),
        .I3(\DSP_G[0]_i_8_n_0 ),
        .I4(h4014_in),
        .I5(h40),
        .O(\DSP_B[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFF80808080808080)) 
    \DSP_B[0]_i_6 
       (.I0(v00),
        .I1(\h70_inferred__0/i__carry__0_n_2 ),
        .I2(h70),
        .I3(\DSP_G[0]_i_7_n_0 ),
        .I4(\h60_inferred__0/i__carry__0_n_2 ),
        .I5(h60_carry_n_0),
        .O(\DSP_B[0]_i_6_n_0 ));
  FDRE \DSP_B_reg[0] 
       (.C(DCLK),
        .CE(1'b1),
        .D(DSP_B0),
        .Q(DSP_B),
        .R(DRST));
  FDRE DSP_DE_reg
       (.C(DCLK),
        .CE(1'b1),
        .D(DSP_preDE),
        .Q(DSP_DE),
        .R(DRST));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \DSP_G[0]_i_1 
       (.I0(\DSP_G[0]_i_2_n_0 ),
        .I1(\DSP_G[0]_i_3_n_0 ),
        .I2(\DSP_R[0]_i_6_n_0 ),
        .I3(\DSP_G[0]_i_4_n_0 ),
        .I4(\DSP_G[0]_i_5_n_0 ),
        .O(DSP_G0));
  LUT6 #(
    .INIT(64'hFF80808080808080)) 
    \DSP_G[0]_i_2 
       (.I0(\DSP_R[0]_i_5_n_0 ),
        .I1(h5015_in),
        .I2(h50_carry_n_0),
        .I3(\h30_inferred__0/i__carry__0_n_2 ),
        .I4(h30),
        .I5(\DSP_R[0]_i_10_n_0 ),
        .O(\DSP_G[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF800F800F800)) 
    \DSP_G[0]_i_3 
       (.I0(h70),
        .I1(\h70_inferred__0/i__carry__0_n_2 ),
        .I2(\DSP_G[0]_i_6_n_0 ),
        .I3(\DSP_R[0]_i_10_n_0 ),
        .I4(h00),
        .I5(\DSP_G[0]_i_7_n_0 ),
        .O(\DSP_G[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF80808080808080)) 
    \DSP_G[0]_i_4 
       (.I0(\DSP_G[0]_i_7_n_0 ),
        .I1(h2012_in),
        .I2(h20_carry_n_0),
        .I3(v00),
        .I4(h1011_in),
        .I5(h10),
        .O(\DSP_G[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF80808080808080)) 
    \DSP_G[0]_i_5 
       (.I0(\DSP_G[0]_i_8_n_0 ),
        .I1(\h60_inferred__0/i__carry__0_n_2 ),
        .I2(h60_carry_n_0),
        .I3(\DSP_B[0]_i_3_n_0 ),
        .I4(h4014_in),
        .I5(h40),
        .O(\DSP_G[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \DSP_G[0]_i_6 
       (.I0(h1011_in),
        .I1(h10),
        .O(\DSP_G[0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \DSP_G[0]_i_7 
       (.I0(v30),
        .I1(v3021_in),
        .I2(v10),
        .I3(v1019_in),
        .O(\DSP_G[0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \DSP_G[0]_i_8 
       (.I0(v20),
        .I1(v2020_in),
        .I2(v10),
        .I3(v1019_in),
        .O(\DSP_G[0]_i_8_n_0 ));
  FDRE \DSP_G_reg[0] 
       (.C(DCLK),
        .CE(1'b1),
        .D(DSP_G0),
        .Q(DSP_G),
        .R(DRST));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFAFA)) 
    \DSP_R[0]_i_1 
       (.I0(\DSP_R[0]_i_2_n_0 ),
        .I1(h00),
        .I2(\DSP_R[0]_i_3_n_0 ),
        .I3(\DSP_R[0]_i_4_n_0 ),
        .I4(\DSP_R[0]_i_5_n_0 ),
        .I5(\DSP_R[0]_i_6_n_0 ),
        .O(DSP_R0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \DSP_R[0]_i_10 
       (.I0(v2020_in),
        .I1(v20),
        .O(\DSP_R[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \DSP_R[0]_i_11 
       (.I0(h60_carry_n_0),
        .I1(\h60_inferred__0/i__carry__0_n_2 ),
        .I2(h20_carry_n_0),
        .I3(h2012_in),
        .O(\DSP_R[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAFFC8FFC8)) 
    \DSP_R[0]_i_2 
       (.I0(\DSP_R[0]_i_7_n_0 ),
        .I1(\DSP_R[0]_i_8_n_0 ),
        .I2(v00),
        .I3(\DSP_R[0]_i_9_n_0 ),
        .I4(\DSP_R[0]_i_10_n_0 ),
        .I5(\DSP_R[0]_i_11_n_0 ),
        .O(\DSP_R[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8888800080008000)) 
    \DSP_R[0]_i_3 
       (.I0(h50_carry_n_0),
        .I1(h5015_in),
        .I2(v1019_in),
        .I3(v10),
        .I4(v2020_in),
        .I5(v20),
        .O(\DSP_R[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \DSP_R[0]_i_4 
       (.I0(h4014_in),
        .I1(h40),
        .O(\DSP_R[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hF8)) 
    \DSP_R[0]_i_5 
       (.I0(v10),
        .I1(v1019_in),
        .I2(v00),
        .O(\DSP_R[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h88808080)) 
    \DSP_R[0]_i_6 
       (.I0(h70),
        .I1(\h70_inferred__0/i__carry__0_n_2 ),
        .I2(v00),
        .I3(v3021_in),
        .I4(v30),
        .O(\DSP_R[0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \DSP_R[0]_i_7 
       (.I0(v3021_in),
        .I1(v30),
        .O(\DSP_R[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \DSP_R[0]_i_8 
       (.I0(\h30_inferred__0/i__carry__0_n_2 ),
        .I1(h30),
        .O(\DSP_R[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h8888800080008000)) 
    \DSP_R[0]_i_9 
       (.I0(h10),
        .I1(h1011_in),
        .I2(v1019_in),
        .I3(v10),
        .I4(v2020_in),
        .I5(v20),
        .O(\DSP_R[0]_i_9_n_0 ));
  FDRE \DSP_R_reg[0] 
       (.C(DCLK),
        .CE(1'b1),
        .D(DSP_R0),
        .Q(DSP_R),
        .R(DRST));
  LUT1 #(
    .INIT(2'h1)) 
    \drst_ff[0]_i_1 
       (.I0(ARESETN),
        .O(p_1_out));
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
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 h00_carry
       (.CI(1'b0),
        .CO({h00,h00_carry_n_1,h00_carry_n_2,h00_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,h00_carry_i_1_n_0,h00_carry_i_2_n_0}),
        .O(NLW_h00_carry_O_UNCONNECTED[3:0]),
        .S({h00_carry_i_3_n_0,h00_carry_i_4_n_0,h00_carry_i_5_n_0,h00_carry_i_6_n_0}));
  LUT4 #(
    .INIT(16'h1331)) 
    h00_carry_i_1
       (.I0(raw_horizontal_offset[6]),
        .I1(raw_horizontal_offset[7]),
        .I2(RESOL[0]),
        .I3(RESOL[1]),
        .O(h00_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h1051)) 
    h00_carry_i_2
       (.I0(raw_horizontal_offset[5]),
        .I1(raw_horizontal_offset[4]),
        .I2(RESOL[1]),
        .I3(RESOL[0]),
        .O(h00_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    h00_carry_i_3
       (.I0(raw_horizontal_offset[10]),
        .O(h00_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    h00_carry_i_4
       (.I0(raw_horizontal_offset[9]),
        .I1(raw_horizontal_offset[8]),
        .O(h00_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h4128)) 
    h00_carry_i_5
       (.I0(raw_horizontal_offset[7]),
        .I1(RESOL[0]),
        .I2(RESOL[1]),
        .I3(raw_horizontal_offset[6]),
        .O(h00_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h2412)) 
    h00_carry_i_6
       (.I0(raw_horizontal_offset[4]),
        .I1(raw_horizontal_offset[5]),
        .I2(RESOL[0]),
        .I3(RESOL[1]),
        .O(h00_carry_i_6_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 h10_carry
       (.CI(1'b0),
        .CO({h10,h10_carry_n_1,h10_carry_n_2,h10_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,h10_carry_i_1_n_0,h10_carry_i_2_n_0,h10_carry_i_3_n_0}),
        .O(NLW_h10_carry_O_UNCONNECTED[3:0]),
        .S({h10_carry_i_4_n_0,h10_carry_i_5_n_0,h10_carry_i_6_n_0,h10_carry_i_7_n_0}));
  LUT4 #(
    .INIT(16'h0110)) 
    h10_carry_i_1
       (.I0(raw_horizontal_offset[9]),
        .I1(raw_horizontal_offset[8]),
        .I2(RESOL[1]),
        .I3(RESOL[0]),
        .O(h10_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h5015)) 
    h10_carry_i_2
       (.I0(raw_horizontal_offset[7]),
        .I1(raw_horizontal_offset[6]),
        .I2(RESOL[1]),
        .I3(RESOL[0]),
        .O(h10_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h09)) 
    h10_carry_i_3
       (.I0(RESOL[1]),
        .I1(RESOL[0]),
        .I2(raw_horizontal_offset[5]),
        .O(h10_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    h10_carry_i_4
       (.I0(raw_horizontal_offset[10]),
        .O(h10_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h1221)) 
    h10_carry_i_5
       (.I0(raw_horizontal_offset[8]),
        .I1(raw_horizontal_offset[9]),
        .I2(RESOL[0]),
        .I3(RESOL[1]),
        .O(h10_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h0492)) 
    h10_carry_i_6
       (.I0(RESOL[0]),
        .I1(RESOL[1]),
        .I2(raw_horizontal_offset[7]),
        .I3(raw_horizontal_offset[6]),
        .O(h10_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h0906)) 
    h10_carry_i_7
       (.I0(RESOL[0]),
        .I1(RESOL[1]),
        .I2(raw_horizontal_offset[4]),
        .I3(raw_horizontal_offset[5]),
        .O(h10_carry_i_7_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \h10_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\h10_inferred__0/i__carry_n_0 ,\h10_inferred__0/i__carry_n_1 ,\h10_inferred__0/i__carry_n_2 ,\h10_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({i__carry_i_1__10_n_0,i__carry_i_2__8_n_0,i__carry_i_3__6_n_0,syncgen_n_41}),
        .O(\NLW_h10_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__10_n_0,i__carry_i_6__6_n_0,i__carry_i_7__3_n_0,syncgen_n_17}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \h10_inferred__0/i__carry__0 
       (.CI(\h10_inferred__0/i__carry_n_0 ),
        .CO({\NLW_h10_inferred__0/i__carry__0_CO_UNCONNECTED [3:2],h1011_in,\h10_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,raw_horizontal_offset[10],i__carry__0_i_1__2_n_0}),
        .O(\NLW_h10_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,i__carry__0_i_2__4_n_0,i__carry__0_i_3__6_n_0}));
  CARRY4 h20_carry
       (.CI(1'b0),
        .CO({h20_carry_n_0,h20_carry_n_1,h20_carry_n_2,h20_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,h20_carry_i_1_n_0,h20_carry_i_2_n_0,h20_carry_i_3_n_0}),
        .O(NLW_h20_carry_O_UNCONNECTED[3:0]),
        .S({h20_carry_i_4_n_0,h20_carry_i_5_n_0,h20_carry_i_6_n_0,h20_carry_i_7_n_0}));
  LUT4 #(
    .INIT(16'h0110)) 
    h20_carry_i_1
       (.I0(raw_horizontal_offset[9]),
        .I1(raw_horizontal_offset[8]),
        .I2(RESOL[1]),
        .I3(RESOL[0]),
        .O(h20_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h7757)) 
    h20_carry_i_2
       (.I0(raw_horizontal_offset[7]),
        .I1(raw_horizontal_offset[6]),
        .I2(RESOL[0]),
        .I3(RESOL[1]),
        .O(h20_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h09DD)) 
    h20_carry_i_3
       (.I0(RESOL[0]),
        .I1(RESOL[1]),
        .I2(raw_horizontal_offset[4]),
        .I3(raw_horizontal_offset[5]),
        .O(h20_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    h20_carry_i_4
       (.I0(raw_horizontal_offset[10]),
        .O(h20_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h1221)) 
    h20_carry_i_5
       (.I0(raw_horizontal_offset[8]),
        .I1(raw_horizontal_offset[9]),
        .I2(RESOL[0]),
        .I3(RESOL[1]),
        .O(h20_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h8288)) 
    h20_carry_i_6
       (.I0(raw_horizontal_offset[7]),
        .I1(raw_horizontal_offset[6]),
        .I2(RESOL[1]),
        .I3(RESOL[0]),
        .O(h20_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9024)) 
    h20_carry_i_7
       (.I0(RESOL[1]),
        .I1(RESOL[0]),
        .I2(raw_horizontal_offset[5]),
        .I3(raw_horizontal_offset[4]),
        .O(h20_carry_i_7_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \h20_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\h20_inferred__0/i__carry_n_0 ,\h20_inferred__0/i__carry_n_1 ,\h20_inferred__0/i__carry_n_2 ,\h20_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({i__carry_i_1__3_n_0,i__carry_i_2__9_n_0,i__carry_i_3__7_n_0,syncgen_n_42}),
        .O(\NLW_h20_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__1_n_0,i__carry_i_6__7_n_0,i__carry_i_7__4_n_0,syncgen_n_18}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \h20_inferred__0/i__carry__0 
       (.CI(\h20_inferred__0/i__carry_n_0 ),
        .CO({\NLW_h20_inferred__0/i__carry__0_CO_UNCONNECTED [3:2],h2012_in,\h20_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,raw_horizontal_offset[10],i__carry__0_i_1__3_n_0}),
        .O(\NLW_h20_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,i__carry__0_i_2__5_n_0,i__carry__0_i_3__8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 h30_carry
       (.CI(1'b0),
        .CO({NLW_h30_carry_CO_UNCONNECTED[3],h30,h30_carry_n_2,h30_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,h30_carry_i_1_n_0,h30_carry_i_2_n_0}),
        .O(NLW_h30_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,h30_carry_i_3_n_0,h30_carry_i_4_n_0,h30_carry_i_5_n_0}));
  LUT4 #(
    .INIT(16'h1331)) 
    h30_carry_i_1
       (.I0(raw_horizontal_offset[8]),
        .I1(raw_horizontal_offset[9]),
        .I2(RESOL[0]),
        .I3(RESOL[1]),
        .O(h30_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h1051)) 
    h30_carry_i_2
       (.I0(raw_horizontal_offset[7]),
        .I1(raw_horizontal_offset[6]),
        .I2(RESOL[1]),
        .I3(RESOL[0]),
        .O(h30_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    h30_carry_i_3
       (.I0(raw_horizontal_offset[10]),
        .O(h30_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h0690)) 
    h30_carry_i_4
       (.I0(RESOL[0]),
        .I1(RESOL[1]),
        .I2(raw_horizontal_offset[8]),
        .I3(raw_horizontal_offset[9]),
        .O(h30_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h4124)) 
    h30_carry_i_5
       (.I0(raw_horizontal_offset[7]),
        .I1(RESOL[0]),
        .I2(RESOL[1]),
        .I3(raw_horizontal_offset[6]),
        .O(h30_carry_i_5_n_0));
  CARRY4 \h30_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\h30_inferred__0/i__carry_n_0 ,\h30_inferred__0/i__carry_n_1 ,\h30_inferred__0/i__carry_n_2 ,\h30_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({i__carry_i_1__7_n_0,i__carry_i_2__10_n_0,i__carry_i_3__8_n_0,syncgen_n_43}),
        .O(\NLW_h30_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__4_n_0,i__carry_i_6__8_n_0,i__carry_i_7__5_n_0,syncgen_n_19}));
  CARRY4 \h30_inferred__0/i__carry__0 
       (.CI(\h30_inferred__0/i__carry_n_0 ),
        .CO({\NLW_h30_inferred__0/i__carry__0_CO_UNCONNECTED [3:2],\h30_inferred__0/i__carry__0_n_2 ,\h30_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,raw_horizontal_offset[10],i__carry__0_i_1__1_n_0}),
        .O(\NLW_h30_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,i__carry__0_i_2__6_n_0,i__carry__0_i_3__4_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 h40_carry
       (.CI(1'b0),
        .CO({h40,h40_carry_n_1,h40_carry_n_2,h40_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,h40_carry_i_1_n_0,h40_carry_i_2_n_0,h40_carry_i_3_n_0}),
        .O(NLW_h40_carry_O_UNCONNECTED[3:0]),
        .S({h40_carry_i_4_n_0,h40_carry_i_5_n_0,h40_carry_i_6_n_0,h40_carry_i_7_n_0}));
  LUT4 #(
    .INIT(16'h064F)) 
    h40_carry_i_1
       (.I0(RESOL[0]),
        .I1(RESOL[1]),
        .I2(raw_horizontal_offset[9]),
        .I3(raw_horizontal_offset[8]),
        .O(h40_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h0B)) 
    h40_carry_i_2
       (.I0(RESOL[0]),
        .I1(RESOL[1]),
        .I2(raw_horizontal_offset[7]),
        .O(h40_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h1051)) 
    h40_carry_i_3
       (.I0(raw_horizontal_offset[5]),
        .I1(raw_horizontal_offset[4]),
        .I2(RESOL[1]),
        .I3(RESOL[0]),
        .O(h40_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    h40_carry_i_4
       (.I0(raw_horizontal_offset[10]),
        .O(h40_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h4290)) 
    h40_carry_i_5
       (.I0(RESOL[0]),
        .I1(RESOL[1]),
        .I2(raw_horizontal_offset[8]),
        .I3(raw_horizontal_offset[9]),
        .O(h40_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h00D2)) 
    h40_carry_i_6
       (.I0(RESOL[1]),
        .I1(RESOL[0]),
        .I2(raw_horizontal_offset[7]),
        .I3(raw_horizontal_offset[6]),
        .O(h40_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h2412)) 
    h40_carry_i_7
       (.I0(raw_horizontal_offset[4]),
        .I1(raw_horizontal_offset[5]),
        .I2(RESOL[0]),
        .I3(RESOL[1]),
        .O(h40_carry_i_7_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \h40_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\h40_inferred__0/i__carry_n_0 ,\h40_inferred__0/i__carry_n_1 ,\h40_inferred__0/i__carry_n_2 ,\h40_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({i__carry_i_1__4_n_0,i__carry_i_2__5_n_0,i__carry_i_3__9_n_0,syncgen_n_44}),
        .O(\NLW_h40_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__5_n_0,i__carry_i_6__2_n_0,i__carry_i_7__6_n_0,syncgen_n_20}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \h40_inferred__0/i__carry__0 
       (.CI(\h40_inferred__0/i__carry_n_0 ),
        .CO({\NLW_h40_inferred__0/i__carry__0_CO_UNCONNECTED [3:2],h4014_in,\h40_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,raw_horizontal_offset[10],i__carry__0_i_1__5_n_0}),
        .O(\NLW_h40_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,i__carry__0_i_2__7_n_0,i__carry__0_i_3__5_n_0}));
  CARRY4 h50_carry
       (.CI(1'b0),
        .CO({h50_carry_n_0,h50_carry_n_1,h50_carry_n_2,h50_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,h50_carry_i_1_n_0,h50_carry_i_2_n_0,h50_carry_i_3_n_0}),
        .O(NLW_h50_carry_O_UNCONNECTED[3:0]),
        .S({h50_carry_i_4_n_0,h50_carry_i_5_n_0,h50_carry_i_6_n_0,h50_carry_i_7_n_0}));
  LUT4 #(
    .INIT(16'h066F)) 
    h50_carry_i_1
       (.I0(RESOL[0]),
        .I1(RESOL[1]),
        .I2(raw_horizontal_offset[8]),
        .I3(raw_horizontal_offset[9]),
        .O(h50_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h7077)) 
    h50_carry_i_2
       (.I0(raw_horizontal_offset[7]),
        .I1(raw_horizontal_offset[6]),
        .I2(RESOL[1]),
        .I3(RESOL[0]),
        .O(h50_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h09)) 
    h50_carry_i_3
       (.I0(RESOL[1]),
        .I1(RESOL[0]),
        .I2(raw_horizontal_offset[5]),
        .O(h50_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    h50_carry_i_4
       (.I0(raw_horizontal_offset[10]),
        .O(h50_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h6900)) 
    h50_carry_i_5
       (.I0(RESOL[1]),
        .I1(RESOL[0]),
        .I2(raw_horizontal_offset[9]),
        .I3(raw_horizontal_offset[8]),
        .O(h50_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'hD002)) 
    h50_carry_i_6
       (.I0(RESOL[0]),
        .I1(RESOL[1]),
        .I2(raw_horizontal_offset[7]),
        .I3(raw_horizontal_offset[6]),
        .O(h50_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h0906)) 
    h50_carry_i_7
       (.I0(RESOL[0]),
        .I1(RESOL[1]),
        .I2(raw_horizontal_offset[4]),
        .I3(raw_horizontal_offset[5]),
        .O(h50_carry_i_7_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \h50_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\h50_inferred__0/i__carry_n_0 ,\h50_inferred__0/i__carry_n_1 ,\h50_inferred__0/i__carry_n_2 ,\h50_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({i__carry_i_1__8_n_0,i__carry_i_2__2_n_0,i__carry_i_3__10_n_0,syncgen_n_45}),
        .O(\NLW_h50_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__8_n_0,i__carry_i_6_n_0,i__carry_i_7__7_n_0,syncgen_n_21}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \h50_inferred__0/i__carry__0 
       (.CI(\h50_inferred__0/i__carry_n_0 ),
        .CO({\NLW_h50_inferred__0/i__carry__0_CO_UNCONNECTED [3:2],h5015_in,\h50_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,raw_horizontal_offset[10],i__carry__0_i_1__4_n_0}),
        .O(\NLW_h50_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,i__carry__0_i_2__8_n_0,i__carry__0_i_3_n_0}));
  CARRY4 h60_carry
       (.CI(1'b0),
        .CO({h60_carry_n_0,h60_carry_n_1,h60_carry_n_2,h60_carry_n_3}),
        .CYINIT(1'b0),
        .DI({h60_carry_i_1_n_0,h60_carry_i_2_n_0,h60_carry_i_3_n_0,h60_carry_i_4_n_0}),
        .O(NLW_h60_carry_O_UNCONNECTED[3:0]),
        .S({h60_carry_i_5_n_0,h60_carry_i_6_n_0,h60_carry_i_7_n_0,h60_carry_i_8_n_0}));
  LUT3 #(
    .INIT(8'h04)) 
    h60_carry_i_1
       (.I0(RESOL[0]),
        .I1(RESOL[1]),
        .I2(raw_horizontal_offset[10]),
        .O(h60_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h04DD)) 
    h60_carry_i_2
       (.I0(RESOL[1]),
        .I1(RESOL[0]),
        .I2(raw_horizontal_offset[8]),
        .I3(raw_horizontal_offset[9]),
        .O(h60_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h0310)) 
    h60_carry_i_3
       (.I0(raw_horizontal_offset[6]),
        .I1(raw_horizontal_offset[7]),
        .I2(RESOL[1]),
        .I3(RESOL[0]),
        .O(h60_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h09DD)) 
    h60_carry_i_4
       (.I0(RESOL[0]),
        .I1(RESOL[1]),
        .I2(raw_horizontal_offset[4]),
        .I3(raw_horizontal_offset[5]),
        .O(h60_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h59)) 
    h60_carry_i_5
       (.I0(raw_horizontal_offset[10]),
        .I1(RESOL[1]),
        .I2(RESOL[0]),
        .O(h60_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h2094)) 
    h60_carry_i_6
       (.I0(RESOL[0]),
        .I1(RESOL[1]),
        .I2(raw_horizontal_offset[9]),
        .I3(raw_horizontal_offset[8]),
        .O(h60_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h0249)) 
    h60_carry_i_7
       (.I0(RESOL[1]),
        .I1(RESOL[0]),
        .I2(raw_horizontal_offset[7]),
        .I3(raw_horizontal_offset[6]),
        .O(h60_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9024)) 
    h60_carry_i_8
       (.I0(RESOL[1]),
        .I1(RESOL[0]),
        .I2(raw_horizontal_offset[5]),
        .I3(raw_horizontal_offset[4]),
        .O(h60_carry_i_8_n_0));
  CARRY4 \h60_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\h60_inferred__0/i__carry_n_0 ,\h60_inferred__0/i__carry_n_1 ,\h60_inferred__0/i__carry_n_2 ,\h60_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({i__carry_i_1__2_n_0,i__carry_i_2__4_n_0,i__carry_i_3__11_n_0,syncgen_n_46}),
        .O(\NLW_h60_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__3_n_0,i__carry_i_6__3_n_0,i__carry_i_7__8_n_0,syncgen_n_22}));
  CARRY4 \h60_inferred__0/i__carry__0 
       (.CI(\h60_inferred__0/i__carry_n_0 ),
        .CO({\NLW_h60_inferred__0/i__carry__0_CO_UNCONNECTED [3:2],\h60_inferred__0/i__carry__0_n_2 ,\h60_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,raw_horizontal_offset[10],i__carry__0_i_1__8_n_0}),
        .O(\NLW_h60_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,i__carry__0_i_2__3_n_0,i__carry__0_i_3__3_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 h70_carry
       (.CI(1'b0),
        .CO({NLW_h70_carry_CO_UNCONNECTED[3],h70,h70_carry_n_2,h70_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,h70_carry_i_1_n_0,h70_carry_i_2_n_0,h70_carry_i_3_n_0}),
        .O(NLW_h70_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,h70_carry_i_4_n_0,h70_carry_i_5_n_0,h70_carry_i_6_n_0}));
  LUT3 #(
    .INIT(8'h06)) 
    h70_carry_i_1
       (.I0(RESOL[1]),
        .I1(RESOL[0]),
        .I2(raw_horizontal_offset[10]),
        .O(h70_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h5015)) 
    h70_carry_i_2
       (.I0(raw_horizontal_offset[9]),
        .I1(raw_horizontal_offset[8]),
        .I2(RESOL[1]),
        .I3(RESOL[0]),
        .O(h70_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h09)) 
    h70_carry_i_3
       (.I0(RESOL[1]),
        .I1(RESOL[0]),
        .I2(raw_horizontal_offset[7]),
        .O(h70_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    h70_carry_i_4
       (.I0(raw_horizontal_offset[10]),
        .I1(RESOL[1]),
        .I2(RESOL[0]),
        .O(h70_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h4214)) 
    h70_carry_i_5
       (.I0(raw_horizontal_offset[8]),
        .I1(raw_horizontal_offset[9]),
        .I2(RESOL[0]),
        .I3(RESOL[1]),
        .O(h70_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h0096)) 
    h70_carry_i_6
       (.I0(RESOL[0]),
        .I1(RESOL[1]),
        .I2(raw_horizontal_offset[7]),
        .I3(raw_horizontal_offset[6]),
        .O(h70_carry_i_6_n_0));
  CARRY4 \h70_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\h70_inferred__0/i__carry_n_0 ,\h70_inferred__0/i__carry_n_1 ,\h70_inferred__0/i__carry_n_2 ,\h70_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({i__carry_i_1__9_n_0,i__carry_i_2__1_n_0,i__carry_i_3__5_n_0,syncgen_n_40}),
        .O(\NLW_h70_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__2_n_0,i__carry_i_6__0_n_0,i__carry_i_7__2_n_0,syncgen_n_11}));
  CARRY4 \h70_inferred__0/i__carry__0 
       (.CI(\h70_inferred__0/i__carry_n_0 ),
        .CO({\NLW_h70_inferred__0/i__carry__0_CO_UNCONNECTED [3:2],\h70_inferred__0/i__carry__0_n_2 ,\h70_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,i__carry__0_i_1__6_n_0,i__carry__0_i_2_n_0}),
        .O(\NLW_h70_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,i__carry__0_i_3__0_n_0,i__carry__0_i_4_n_0}));
  LUT4 #(
    .INIT(16'hFF8A)) 
    i__carry__0_i_1
       (.I0(raw_vertical_offset[8]),
        .I1(RESOL[0]),
        .I2(RESOL[1]),
        .I3(raw_vertical_offset[9]),
        .O(i__carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'hE8AE)) 
    i__carry__0_i_1__0
       (.I0(raw_vertical_offset[9]),
        .I1(raw_vertical_offset[8]),
        .I2(RESOL[0]),
        .I3(RESOL[1]),
        .O(i__carry__0_i_1__0_n_0));
  LUT4 #(
    .INIT(16'hFF90)) 
    i__carry__0_i_1__1
       (.I0(RESOL[0]),
        .I1(RESOL[1]),
        .I2(raw_horizontal_offset[8]),
        .I3(raw_horizontal_offset[9]),
        .O(i__carry__0_i_1__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_1__2
       (.I0(raw_horizontal_offset[8]),
        .I1(raw_horizontal_offset[9]),
        .O(i__carry__0_i_1__2_n_0));
  LUT4 #(
    .INIT(16'hFF82)) 
    i__carry__0_i_1__3
       (.I0(raw_horizontal_offset[8]),
        .I1(RESOL[0]),
        .I2(RESOL[1]),
        .I3(raw_horizontal_offset[9]),
        .O(i__carry__0_i_1__3_n_0));
  LUT4 #(
    .INIT(16'hC08C)) 
    i__carry__0_i_1__4
       (.I0(raw_horizontal_offset[8]),
        .I1(raw_horizontal_offset[9]),
        .I2(RESOL[0]),
        .I3(RESOL[1]),
        .O(i__carry__0_i_1__4_n_0));
  LUT4 #(
    .INIT(16'hF900)) 
    i__carry__0_i_1__5
       (.I0(RESOL[0]),
        .I1(RESOL[1]),
        .I2(raw_horizontal_offset[8]),
        .I3(raw_horizontal_offset[9]),
        .O(i__carry__0_i_1__5_n_0));
  LUT3 #(
    .INIT(8'hB0)) 
    i__carry__0_i_1__6
       (.I0(RESOL[0]),
        .I1(RESOL[1]),
        .I2(raw_horizontal_offset[10]),
        .O(i__carry__0_i_1__6_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    i__carry__0_i_1__7
       (.I0(raw_vertical_offset[10]),
        .I1(v31__9_carry_n_1),
        .I2(v31[10]),
        .O(i__carry__0_i_1__7_n_0));
  LUT3 #(
    .INIT(8'h82)) 
    i__carry__0_i_1__8
       (.I0(raw_horizontal_offset[9]),
        .I1(RESOL[0]),
        .I2(RESOL[1]),
        .O(i__carry__0_i_1__8_n_0));
  LUT4 #(
    .INIT(16'h80E8)) 
    i__carry__0_i_2
       (.I0(raw_horizontal_offset[8]),
        .I1(raw_horizontal_offset[9]),
        .I2(RESOL[1]),
        .I3(RESOL[0]),
        .O(i__carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_2__0
       (.I0(raw_vertical_offset[10]),
        .O(i__carry__0_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h20BA)) 
    i__carry__0_i_2__1
       (.I0(raw_vertical_offset[9]),
        .I1(v31[8]),
        .I2(raw_vertical_offset[8]),
        .I3(v31[9]),
        .O(i__carry__0_i_2__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_2__2
       (.I0(raw_vertical_offset[10]),
        .O(i__carry__0_i_2__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_2__3
       (.I0(raw_horizontal_offset[10]),
        .O(i__carry__0_i_2__3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_2__4
       (.I0(raw_horizontal_offset[10]),
        .O(i__carry__0_i_2__4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_2__5
       (.I0(raw_horizontal_offset[10]),
        .O(i__carry__0_i_2__5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_2__6
       (.I0(raw_horizontal_offset[10]),
        .O(i__carry__0_i_2__6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_2__7
       (.I0(raw_horizontal_offset[10]),
        .O(i__carry__0_i_2__7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_2__8
       (.I0(raw_horizontal_offset[10]),
        .O(i__carry__0_i_2__8_n_0));
  LUT4 #(
    .INIT(16'h4290)) 
    i__carry__0_i_3
       (.I0(RESOL[0]),
        .I1(RESOL[1]),
        .I2(raw_horizontal_offset[8]),
        .I3(raw_horizontal_offset[9]),
        .O(i__carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h59)) 
    i__carry__0_i_3__0
       (.I0(raw_horizontal_offset[10]),
        .I1(RESOL[1]),
        .I2(RESOL[0]),
        .O(i__carry__0_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h004B)) 
    i__carry__0_i_3__1
       (.I0(RESOL[0]),
        .I1(RESOL[1]),
        .I2(raw_vertical_offset[8]),
        .I3(raw_vertical_offset[9]),
        .O(i__carry__0_i_3__1_n_0));
  LUT4 #(
    .INIT(16'h1241)) 
    i__carry__0_i_3__2
       (.I0(raw_vertical_offset[9]),
        .I1(raw_vertical_offset[8]),
        .I2(RESOL[0]),
        .I3(RESOL[1]),
        .O(i__carry__0_i_3__2_n_0));
  LUT4 #(
    .INIT(16'h6900)) 
    i__carry__0_i_3__3
       (.I0(RESOL[1]),
        .I1(RESOL[0]),
        .I2(raw_horizontal_offset[9]),
        .I3(raw_horizontal_offset[8]),
        .O(i__carry__0_i_3__3_n_0));
  LUT4 #(
    .INIT(16'h1221)) 
    i__carry__0_i_3__4
       (.I0(raw_horizontal_offset[8]),
        .I1(raw_horizontal_offset[9]),
        .I2(RESOL[0]),
        .I3(RESOL[1]),
        .O(i__carry__0_i_3__4_n_0));
  LUT4 #(
    .INIT(16'h0690)) 
    i__carry__0_i_3__5
       (.I0(RESOL[0]),
        .I1(RESOL[1]),
        .I2(raw_horizontal_offset[8]),
        .I3(raw_horizontal_offset[9]),
        .O(i__carry__0_i_3__5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_3__6
       (.I0(raw_horizontal_offset[9]),
        .I1(raw_horizontal_offset[8]),
        .O(i__carry__0_i_3__6_n_0));
  LUT3 #(
    .INIT(8'h90)) 
    i__carry__0_i_3__7
       (.I0(raw_vertical_offset[10]),
        .I1(v31[10]),
        .I2(v31__9_carry_n_1),
        .O(i__carry__0_i_3__7_n_0));
  LUT4 #(
    .INIT(16'h1221)) 
    i__carry__0_i_3__8
       (.I0(raw_horizontal_offset[8]),
        .I1(raw_horizontal_offset[9]),
        .I2(RESOL[0]),
        .I3(RESOL[1]),
        .O(i__carry__0_i_3__8_n_0));
  LUT4 #(
    .INIT(16'h2094)) 
    i__carry__0_i_4
       (.I0(RESOL[0]),
        .I1(RESOL[1]),
        .I2(raw_horizontal_offset[9]),
        .I3(raw_horizontal_offset[8]),
        .O(i__carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_4__0
       (.I0(raw_vertical_offset[8]),
        .I1(v31[8]),
        .I2(raw_vertical_offset[9]),
        .I3(v31[9]),
        .O(i__carry__0_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h08E0)) 
    i__carry_i_1__1
       (.I0(raw_vertical_offset[7]),
        .I1(raw_vertical_offset[6]),
        .I2(RESOL[1]),
        .I3(RESOL[0]),
        .O(i__carry_i_1__1_n_0));
  LUT4 #(
    .INIT(16'hF900)) 
    i__carry_i_1__10
       (.I0(RESOL[0]),
        .I1(RESOL[1]),
        .I2(raw_horizontal_offset[6]),
        .I3(raw_horizontal_offset[7]),
        .O(i__carry_i_1__10_n_0));
  LUT4 #(
    .INIT(16'h20BA)) 
    i__carry_i_1__11
       (.I0(raw_vertical_offset[7]),
        .I1(v31[6]),
        .I2(raw_vertical_offset[6]),
        .I3(v31[7]),
        .O(i__carry_i_1__11_n_0));
  LUT4 #(
    .INIT(16'h4440)) 
    i__carry_i_1__2
       (.I0(RESOL[1]),
        .I1(RESOL[0]),
        .I2(raw_horizontal_offset[6]),
        .I3(raw_horizontal_offset[7]),
        .O(i__carry_i_1__2_n_0));
  LUT4 #(
    .INIT(16'hBA28)) 
    i__carry_i_1__3
       (.I0(raw_horizontal_offset[7]),
        .I1(RESOL[1]),
        .I2(RESOL[0]),
        .I3(raw_horizontal_offset[6]),
        .O(i__carry_i_1__3_n_0));
  LUT4 #(
    .INIT(16'hBAA2)) 
    i__carry_i_1__4
       (.I0(raw_horizontal_offset[7]),
        .I1(RESOL[1]),
        .I2(RESOL[0]),
        .I3(raw_horizontal_offset[6]),
        .O(i__carry_i_1__4_n_0));
  LUT4 #(
    .INIT(16'hC0EC)) 
    i__carry_i_1__6
       (.I0(raw_vertical_offset[6]),
        .I1(raw_vertical_offset[7]),
        .I2(RESOL[1]),
        .I3(RESOL[0]),
        .O(i__carry_i_1__6_n_0));
  LUT4 #(
    .INIT(16'h4000)) 
    i__carry_i_1__7
       (.I0(RESOL[1]),
        .I1(RESOL[0]),
        .I2(raw_horizontal_offset[6]),
        .I3(raw_horizontal_offset[7]),
        .O(i__carry_i_1__7_n_0));
  LUT4 #(
    .INIT(16'hF220)) 
    i__carry_i_1__8
       (.I0(RESOL[1]),
        .I1(RESOL[0]),
        .I2(raw_horizontal_offset[7]),
        .I3(raw_horizontal_offset[6]),
        .O(i__carry_i_1__8_n_0));
  LUT4 #(
    .INIT(16'hFD90)) 
    i__carry_i_1__9
       (.I0(RESOL[0]),
        .I1(RESOL[1]),
        .I2(raw_horizontal_offset[6]),
        .I3(raw_horizontal_offset[7]),
        .O(i__carry_i_1__9_n_0));
  LUT4 #(
    .INIT(16'h6220)) 
    i__carry_i_2__1
       (.I0(RESOL[0]),
        .I1(RESOL[1]),
        .I2(raw_horizontal_offset[4]),
        .I3(raw_horizontal_offset[5]),
        .O(i__carry_i_2__1_n_0));
  LUT4 #(
    .INIT(16'h6220)) 
    i__carry_i_2__10
       (.I0(RESOL[0]),
        .I1(RESOL[1]),
        .I2(raw_horizontal_offset[4]),
        .I3(raw_horizontal_offset[5]),
        .O(i__carry_i_2__10_n_0));
  LUT4 #(
    .INIT(16'h0EE0)) 
    i__carry_i_2__11
       (.I0(raw_vertical_offset[5]),
        .I1(raw_vertical_offset[4]),
        .I2(RESOL[1]),
        .I3(RESOL[0]),
        .O(i__carry_i_2__11_n_0));
  LUT4 #(
    .INIT(16'hBAA2)) 
    i__carry_i_2__2
       (.I0(raw_horizontal_offset[5]),
        .I1(RESOL[1]),
        .I2(RESOL[0]),
        .I3(raw_horizontal_offset[4]),
        .O(i__carry_i_2__2_n_0));
  LUT4 #(
    .INIT(16'hF660)) 
    i__carry_i_2__4
       (.I0(RESOL[0]),
        .I1(RESOL[1]),
        .I2(raw_horizontal_offset[5]),
        .I3(raw_horizontal_offset[4]),
        .O(i__carry_i_2__4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_2__5
       (.I0(raw_horizontal_offset[4]),
        .I1(raw_horizontal_offset[5]),
        .O(i__carry_i_2__5_n_0));
  LUT4 #(
    .INIT(16'h0EE0)) 
    i__carry_i_2__6
       (.I0(raw_vertical_offset[5]),
        .I1(raw_vertical_offset[4]),
        .I2(RESOL[1]),
        .I3(RESOL[0]),
        .O(i__carry_i_2__6_n_0));
  LUT4 #(
    .INIT(16'hB2A0)) 
    i__carry_i_2__7
       (.I0(raw_vertical_offset[5]),
        .I1(v31[4]),
        .I2(v31_carry_n_1),
        .I3(raw_vertical_offset[4]),
        .O(i__carry_i_2__7_n_0));
  LUT4 #(
    .INIT(16'hBAA2)) 
    i__carry_i_2__8
       (.I0(raw_horizontal_offset[5]),
        .I1(RESOL[1]),
        .I2(RESOL[0]),
        .I3(raw_horizontal_offset[4]),
        .O(i__carry_i_2__8_n_0));
  LUT4 #(
    .INIT(16'hF660)) 
    i__carry_i_2__9
       (.I0(RESOL[0]),
        .I1(RESOL[1]),
        .I2(raw_horizontal_offset[5]),
        .I3(raw_horizontal_offset[4]),
        .O(i__carry_i_2__9_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_3__10
       (.I0(raw_horizontal_offset[2]),
        .I1(raw_horizontal_offset[3]),
        .O(i__carry_i_3__10_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_3__11
       (.I0(raw_horizontal_offset[2]),
        .I1(raw_horizontal_offset[3]),
        .O(i__carry_i_3__11_n_0));
  LUT4 #(
    .INIT(16'hF660)) 
    i__carry_i_3__2
       (.I0(RESOL[0]),
        .I1(RESOL[1]),
        .I2(raw_vertical_offset[2]),
        .I3(raw_vertical_offset[3]),
        .O(i__carry_i_3__2_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    i__carry_i_3__3
       (.I0(v31[3]),
        .I1(raw_vertical_offset[3]),
        .I2(raw_vertical_offset[2]),
        .O(i__carry_i_3__3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_3__4
       (.I0(raw_vertical_offset[2]),
        .I1(raw_vertical_offset[3]),
        .O(i__carry_i_3__4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_3__5
       (.I0(raw_horizontal_offset[2]),
        .I1(raw_horizontal_offset[3]),
        .O(i__carry_i_3__5_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_3__6
       (.I0(raw_horizontal_offset[2]),
        .I1(raw_horizontal_offset[3]),
        .O(i__carry_i_3__6_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_3__7
       (.I0(raw_horizontal_offset[2]),
        .I1(raw_horizontal_offset[3]),
        .O(i__carry_i_3__7_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_3__8
       (.I0(raw_horizontal_offset[2]),
        .I1(raw_horizontal_offset[3]),
        .O(i__carry_i_3__8_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_3__9
       (.I0(raw_horizontal_offset[2]),
        .I1(raw_horizontal_offset[3]),
        .O(i__carry_i_3__9_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_4__10
       (.I0(raw_vertical_offset[0]),
        .I1(raw_vertical_offset[1]),
        .O(i__carry_i_4__10_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_4__11
       (.I0(raw_vertical_offset[0]),
        .I1(raw_vertical_offset[1]),
        .O(i__carry_i_4__11_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_4__2
       (.I0(raw_vertical_offset[0]),
        .I1(raw_vertical_offset[1]),
        .O(i__carry_i_4__2_n_0));
  LUT4 #(
    .INIT(16'h0492)) 
    i__carry_i_5__1
       (.I0(RESOL[0]),
        .I1(RESOL[1]),
        .I2(raw_horizontal_offset[7]),
        .I3(raw_horizontal_offset[6]),
        .O(i__carry_i_5__1_n_0));
  LUT4 #(
    .INIT(16'h4128)) 
    i__carry_i_5__10
       (.I0(raw_horizontal_offset[7]),
        .I1(RESOL[0]),
        .I2(RESOL[1]),
        .I3(raw_horizontal_offset[6]),
        .O(i__carry_i_5__10_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5__11
       (.I0(raw_vertical_offset[6]),
        .I1(v31[6]),
        .I2(raw_vertical_offset[7]),
        .I3(v31[7]),
        .O(i__carry_i_5__11_n_0));
  LUT4 #(
    .INIT(16'h0249)) 
    i__carry_i_5__2
       (.I0(RESOL[1]),
        .I1(RESOL[0]),
        .I2(raw_horizontal_offset[7]),
        .I3(raw_horizontal_offset[6]),
        .O(i__carry_i_5__2_n_0));
  LUT4 #(
    .INIT(16'hD002)) 
    i__carry_i_5__3
       (.I0(RESOL[0]),
        .I1(RESOL[1]),
        .I2(raw_horizontal_offset[7]),
        .I3(raw_horizontal_offset[6]),
        .O(i__carry_i_5__3_n_0));
  LUT4 #(
    .INIT(16'h8288)) 
    i__carry_i_5__4
       (.I0(raw_horizontal_offset[7]),
        .I1(raw_horizontal_offset[6]),
        .I2(RESOL[1]),
        .I3(RESOL[0]),
        .O(i__carry_i_5__4_n_0));
  LUT4 #(
    .INIT(16'h4124)) 
    i__carry_i_5__5
       (.I0(raw_horizontal_offset[7]),
        .I1(RESOL[0]),
        .I2(RESOL[1]),
        .I3(raw_horizontal_offset[6]),
        .O(i__carry_i_5__5_n_0));
  LUT4 #(
    .INIT(16'h4814)) 
    i__carry_i_5__6
       (.I0(raw_vertical_offset[7]),
        .I1(raw_vertical_offset[6]),
        .I2(RESOL[1]),
        .I3(RESOL[0]),
        .O(i__carry_i_5__6_n_0));
  LUT4 #(
    .INIT(16'h8218)) 
    i__carry_i_5__7
       (.I0(raw_vertical_offset[7]),
        .I1(RESOL[0]),
        .I2(RESOL[1]),
        .I3(raw_vertical_offset[6]),
        .O(i__carry_i_5__7_n_0));
  LUT4 #(
    .INIT(16'h00D2)) 
    i__carry_i_5__8
       (.I0(RESOL[1]),
        .I1(RESOL[0]),
        .I2(raw_horizontal_offset[7]),
        .I3(raw_horizontal_offset[6]),
        .O(i__carry_i_5__8_n_0));
  LUT4 #(
    .INIT(16'h2412)) 
    i__carry_i_6
       (.I0(raw_horizontal_offset[4]),
        .I1(raw_horizontal_offset[5]),
        .I2(RESOL[0]),
        .I3(RESOL[1]),
        .O(i__carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9024)) 
    i__carry_i_6__0
       (.I0(RESOL[1]),
        .I1(RESOL[0]),
        .I2(raw_horizontal_offset[5]),
        .I3(raw_horizontal_offset[4]),
        .O(i__carry_i_6__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_6__2
       (.I0(raw_horizontal_offset[5]),
        .I1(raw_horizontal_offset[4]),
        .O(i__carry_i_6__2_n_0));
  LUT4 #(
    .INIT(16'h0906)) 
    i__carry_i_6__3
       (.I0(RESOL[0]),
        .I1(RESOL[1]),
        .I2(raw_horizontal_offset[4]),
        .I3(raw_horizontal_offset[5]),
        .O(i__carry_i_6__3_n_0));
  LUT4 #(
    .INIT(16'h9006)) 
    i__carry_i_6__4
       (.I0(RESOL[0]),
        .I1(RESOL[1]),
        .I2(raw_vertical_offset[5]),
        .I3(raw_vertical_offset[4]),
        .O(i__carry_i_6__4_n_0));
  LUT4 #(
    .INIT(16'h0990)) 
    i__carry_i_6__5
       (.I0(raw_vertical_offset[4]),
        .I1(v31[4]),
        .I2(raw_vertical_offset[5]),
        .I3(v31_carry_n_1),
        .O(i__carry_i_6__5_n_0));
  LUT4 #(
    .INIT(16'h2412)) 
    i__carry_i_6__6
       (.I0(raw_horizontal_offset[4]),
        .I1(raw_horizontal_offset[5]),
        .I2(RESOL[0]),
        .I3(RESOL[1]),
        .O(i__carry_i_6__6_n_0));
  LUT4 #(
    .INIT(16'h0906)) 
    i__carry_i_6__7
       (.I0(RESOL[0]),
        .I1(RESOL[1]),
        .I2(raw_horizontal_offset[4]),
        .I3(raw_horizontal_offset[5]),
        .O(i__carry_i_6__7_n_0));
  LUT4 #(
    .INIT(16'h9024)) 
    i__carry_i_6__8
       (.I0(RESOL[1]),
        .I1(RESOL[0]),
        .I2(raw_horizontal_offset[5]),
        .I3(raw_horizontal_offset[4]),
        .O(i__carry_i_6__8_n_0));
  LUT4 #(
    .INIT(16'h9006)) 
    i__carry_i_6__9
       (.I0(RESOL[0]),
        .I1(RESOL[1]),
        .I2(raw_vertical_offset[5]),
        .I3(raw_vertical_offset[4]),
        .O(i__carry_i_6__9_n_0));
  LUT4 #(
    .INIT(16'h0906)) 
    i__carry_i_7
       (.I0(RESOL[0]),
        .I1(RESOL[1]),
        .I2(raw_vertical_offset[2]),
        .I3(raw_vertical_offset[3]),
        .O(i__carry_i_7_n_0));
  LUT3 #(
    .INIT(8'h21)) 
    i__carry_i_7__0
       (.I0(v31[3]),
        .I1(raw_vertical_offset[2]),
        .I2(raw_vertical_offset[3]),
        .O(i__carry_i_7__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_7__1
       (.I0(raw_vertical_offset[3]),
        .I1(raw_vertical_offset[2]),
        .O(i__carry_i_7__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_7__2
       (.I0(raw_horizontal_offset[2]),
        .I1(raw_horizontal_offset[3]),
        .O(i__carry_i_7__2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_7__3
       (.I0(raw_horizontal_offset[2]),
        .I1(raw_horizontal_offset[3]),
        .O(i__carry_i_7__3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_7__4
       (.I0(raw_horizontal_offset[2]),
        .I1(raw_horizontal_offset[3]),
        .O(i__carry_i_7__4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_7__5
       (.I0(raw_horizontal_offset[2]),
        .I1(raw_horizontal_offset[3]),
        .O(i__carry_i_7__5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_7__6
       (.I0(raw_horizontal_offset[2]),
        .I1(raw_horizontal_offset[3]),
        .O(i__carry_i_7__6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_7__7
       (.I0(raw_horizontal_offset[2]),
        .I1(raw_horizontal_offset[3]),
        .O(i__carry_i_7__7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_7__8
       (.I0(raw_horizontal_offset[2]),
        .I1(raw_horizontal_offset[3]),
        .O(i__carry_i_7__8_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_8__0
       (.I0(raw_vertical_offset[0]),
        .I1(raw_vertical_offset[1]),
        .O(i__carry_i_8__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_8__7
       (.I0(raw_vertical_offset[0]),
        .I1(raw_vertical_offset[1]),
        .O(i__carry_i_8__7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_8__8
       (.I0(raw_vertical_offset[0]),
        .I1(raw_vertical_offset[1]),
        .O(i__carry_i_8__8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 raw_horizontal_offset__1_carry
       (.CI(1'b0),
        .CO({raw_horizontal_offset__1_carry_n_0,raw_horizontal_offset__1_carry_n_1,raw_horizontal_offset__1_carry_n_2,raw_horizontal_offset__1_carry_n_3}),
        .CYINIT(HCNT_reg[0]),
        .DI({raw_horizontal_offset__1_carry_i_1_n_0,1'b1,1'b0,1'b0}),
        .O(raw_horizontal_offset[4:1]),
        .S({syncgen_n_27,syncgen_n_28,HCNT_reg[2:1]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 raw_horizontal_offset__1_carry__0
       (.CI(raw_horizontal_offset__1_carry_n_0),
        .CO({raw_horizontal_offset__1_carry__0_n_0,raw_horizontal_offset__1_carry__0_n_1,raw_horizontal_offset__1_carry__0_n_2,raw_horizontal_offset__1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({raw_horizontal_offset__1_carry__0_i_1_n_0,HCNT_reg[7],syncgen_n_23,syncgen_n_24}),
        .O(raw_horizontal_offset[8:5]),
        .S({syncgen_n_47,syncgen_n_48,syncgen_n_49,syncgen_n_50}));
  LUT2 #(
    .INIT(4'hB)) 
    raw_horizontal_offset__1_carry__0_i_1
       (.I0(RESOL[0]),
        .I1(RESOL[1]),
        .O(raw_horizontal_offset__1_carry__0_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 raw_horizontal_offset__1_carry__1
       (.CI(raw_horizontal_offset__1_carry__0_n_0),
        .CO({NLW_raw_horizontal_offset__1_carry__1_CO_UNCONNECTED[3:1],raw_horizontal_offset__1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,HCNT_reg[9]}),
        .O({NLW_raw_horizontal_offset__1_carry__1_O_UNCONNECTED[3:2],raw_horizontal_offset[10:9]}),
        .S({1'b0,1'b0,syncgen_n_31,syncgen_n_32}));
  LUT2 #(
    .INIT(4'hB)) 
    raw_horizontal_offset__1_carry_i_1
       (.I0(RESOL[1]),
        .I1(RESOL[0]),
        .O(raw_horizontal_offset__1_carry_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 raw_vertical_offset__0_carry
       (.CI(1'b0),
        .CO({raw_vertical_offset__0_carry_n_0,raw_vertical_offset__0_carry_n_1,raw_vertical_offset__0_carry_n_2,raw_vertical_offset__0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({syncgen_n_25,syncgen_n_26,raw_vertical_offset__0_carry_i_3_n_0,raw_vertical_offset__0_carry_i_4_n_0}),
        .O(raw_vertical_offset[3:0]),
        .S({syncgen_n_7,syncgen_n_8,syncgen_n_9,syncgen_n_10}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 raw_vertical_offset__0_carry__0
       (.CI(raw_vertical_offset__0_carry_n_0),
        .CO({raw_vertical_offset__0_carry__0_n_0,raw_vertical_offset__0_carry__0_n_1,raw_vertical_offset__0_carry__0_n_2,raw_vertical_offset__0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({VCNT_reg[7:6],syncgen_n_29,syncgen_n_30}),
        .O(raw_vertical_offset[7:4]),
        .S({syncgen_n_36,syncgen_n_37,syncgen_n_38,syncgen_n_39}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 raw_vertical_offset__0_carry__1
       (.CI(raw_vertical_offset__0_carry__0_n_0),
        .CO({NLW_raw_vertical_offset__0_carry__1_CO_UNCONNECTED[3:2],raw_vertical_offset__0_carry__1_n_2,raw_vertical_offset__0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,VCNT_reg[9:8]}),
        .O({NLW_raw_vertical_offset__0_carry__1_O_UNCONNECTED[3],raw_vertical_offset[10:8]}),
        .S({1'b0,syncgen_n_33,syncgen_n_34,syncgen_n_35}));
  LUT2 #(
    .INIT(4'hB)) 
    raw_vertical_offset__0_carry_i_3
       (.I0(RESOL[0]),
        .I1(RESOL[1]),
        .O(raw_vertical_offset__0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    raw_vertical_offset__0_carry_i_4
       (.I0(RESOL[1]),
        .I1(RESOL[0]),
        .O(raw_vertical_offset__0_carry_i_4_n_0));
  design_1_patgen_0_0_syncgen syncgen
       (.DCLK(DCLK),
        .DI({syncgen_n_23,syncgen_n_24}),
        .DSP_HSYNC_X(DSP_HSYNC_X),
        .DSP_HSYNC_X_reg_0(DRST),
        .DSP_VSYNC_X(DSP_VSYNC_X),
        .DSP_preDE(DSP_preDE),
        .\HCNT_reg[0]_0 (syncgen_n_11),
        .\HCNT_reg[0]_1 (syncgen_n_17),
        .\HCNT_reg[0]_10 (syncgen_n_43),
        .\HCNT_reg[0]_11 (syncgen_n_44),
        .\HCNT_reg[0]_12 (syncgen_n_45),
        .\HCNT_reg[0]_13 (syncgen_n_46),
        .\HCNT_reg[0]_2 (syncgen_n_18),
        .\HCNT_reg[0]_3 (syncgen_n_19),
        .\HCNT_reg[0]_4 (syncgen_n_20),
        .\HCNT_reg[0]_5 (syncgen_n_21),
        .\HCNT_reg[0]_6 (syncgen_n_22),
        .\HCNT_reg[0]_7 (syncgen_n_40),
        .\HCNT_reg[0]_8 (syncgen_n_41),
        .\HCNT_reg[0]_9 (syncgen_n_42),
        .\HCNT_reg[10]_0 ({syncgen_n_31,syncgen_n_32}),
        .\HCNT_reg[3]_0 ({syncgen_n_27,syncgen_n_28}),
        .\HCNT_reg[8]_0 ({syncgen_n_47,syncgen_n_48,syncgen_n_49,syncgen_n_50}),
        .\HCNT_reg[9]_0 ({HCNT_reg[9],HCNT_reg[7],HCNT_reg[2:0]}),
        .O(raw_horizontal_offset[1]),
        .Q(VCNT_reg),
        .RESOL(RESOL),
        .S({syncgen_n_7,syncgen_n_8,syncgen_n_9,syncgen_n_10}),
        .\VCNT_reg[10]_0 ({syncgen_n_33,syncgen_n_34,syncgen_n_35}),
        .\VCNT_reg[2]_0 ({syncgen_n_25,syncgen_n_26}),
        .\VCNT_reg[4]_0 ({syncgen_n_29,syncgen_n_30}),
        .\VCNT_reg[7]_0 ({syncgen_n_36,syncgen_n_37,syncgen_n_38,syncgen_n_39}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 v00_carry
       (.CI(1'b0),
        .CO({v00_carry_n_0,v00_carry_n_1,v00_carry_n_2,v00_carry_n_3}),
        .CYINIT(1'b0),
        .DI({v00_carry_i_1_n_0,v00_carry_i_2_n_0,v00_carry_i_3_n_0,v00_carry_i_4_n_0}),
        .O(NLW_v00_carry_O_UNCONNECTED[3:0]),
        .S({v00_carry_i_5_n_0,v00_carry_i_6_n_0,v00_carry_i_7_n_0,v00_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 v00_carry__0
       (.CI(v00_carry_n_0),
        .CO({NLW_v00_carry__0_CO_UNCONNECTED[3:1],v00}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_v00_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,v00_carry__0_i_1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    v00_carry__0_i_1
       (.I0(raw_vertical_offset[10]),
        .O(v00_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h0010)) 
    v00_carry_i_1
       (.I0(raw_vertical_offset[9]),
        .I1(raw_vertical_offset[8]),
        .I2(RESOL[1]),
        .I3(RESOL[0]),
        .O(v00_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h022B)) 
    v00_carry_i_2
       (.I0(RESOL[0]),
        .I1(RESOL[1]),
        .I2(raw_vertical_offset[6]),
        .I3(raw_vertical_offset[7]),
        .O(v00_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h7007)) 
    v00_carry_i_3
       (.I0(raw_vertical_offset[5]),
        .I1(raw_vertical_offset[4]),
        .I2(RESOL[1]),
        .I3(RESOL[0]),
        .O(v00_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h09)) 
    v00_carry_i_4
       (.I0(RESOL[1]),
        .I1(RESOL[0]),
        .I2(raw_vertical_offset[3]),
        .O(v00_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h004B)) 
    v00_carry_i_5
       (.I0(RESOL[0]),
        .I1(RESOL[1]),
        .I2(raw_vertical_offset[8]),
        .I3(raw_vertical_offset[9]),
        .O(v00_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h4814)) 
    v00_carry_i_6
       (.I0(raw_vertical_offset[7]),
        .I1(raw_vertical_offset[6]),
        .I2(RESOL[1]),
        .I3(RESOL[0]),
        .O(v00_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9006)) 
    v00_carry_i_7
       (.I0(RESOL[0]),
        .I1(RESOL[1]),
        .I2(raw_vertical_offset[5]),
        .I3(raw_vertical_offset[4]),
        .O(v00_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h0906)) 
    v00_carry_i_8
       (.I0(RESOL[0]),
        .I1(RESOL[1]),
        .I2(raw_vertical_offset[2]),
        .I3(raw_vertical_offset[3]),
        .O(v00_carry_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 v10_carry
       (.CI(1'b0),
        .CO({v10,v10_carry_n_1,v10_carry_n_2,v10_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,v10_carry_i_1_n_0,v10_carry_i_2_n_0,v10_carry_i_3_n_0}),
        .O(NLW_v10_carry_O_UNCONNECTED[3:0]),
        .S({v10_carry_i_4_n_0,v10_carry_i_5_n_0,v10_carry_i_6_n_0,v10_carry_i_7_n_0}));
  LUT4 #(
    .INIT(16'h0026)) 
    v10_carry_i_1
       (.I0(RESOL[1]),
        .I1(RESOL[0]),
        .I2(raw_vertical_offset[8]),
        .I3(raw_vertical_offset[9]),
        .O(v10_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h7507)) 
    v10_carry_i_2
       (.I0(raw_vertical_offset[7]),
        .I1(raw_vertical_offset[6]),
        .I2(RESOL[1]),
        .I3(RESOL[0]),
        .O(v10_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h7007)) 
    v10_carry_i_3
       (.I0(raw_vertical_offset[5]),
        .I1(raw_vertical_offset[4]),
        .I2(RESOL[1]),
        .I3(RESOL[0]),
        .O(v10_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    v10_carry_i_4
       (.I0(raw_vertical_offset[10]),
        .O(v10_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h1241)) 
    v10_carry_i_5
       (.I0(raw_vertical_offset[9]),
        .I1(raw_vertical_offset[8]),
        .I2(RESOL[0]),
        .I3(RESOL[1]),
        .O(v10_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h8218)) 
    v10_carry_i_6
       (.I0(raw_vertical_offset[7]),
        .I1(RESOL[0]),
        .I2(RESOL[1]),
        .I3(raw_vertical_offset[6]),
        .O(v10_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9006)) 
    v10_carry_i_7
       (.I0(RESOL[0]),
        .I1(RESOL[1]),
        .I2(raw_vertical_offset[5]),
        .I3(raw_vertical_offset[4]),
        .O(v10_carry_i_7_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \v10_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\v10_inferred__0/i__carry_n_0 ,\v10_inferred__0/i__carry_n_1 ,\v10_inferred__0/i__carry_n_2 ,\v10_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({i__carry_i_1__6_n_0,i__carry_i_2__11_n_0,i__carry_i_3__2_n_0,i__carry_i_4__10_n_0}),
        .O(\NLW_v10_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__6_n_0,i__carry_i_6__9_n_0,i__carry_i_7_n_0,i__carry_i_8__7_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \v10_inferred__0/i__carry__0 
       (.CI(\v10_inferred__0/i__carry_n_0 ),
        .CO({\NLW_v10_inferred__0/i__carry__0_CO_UNCONNECTED [3:2],v1019_in,\v10_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,raw_vertical_offset[10],i__carry__0_i_1_n_0}),
        .O(\NLW_v10_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,i__carry__0_i_2__2_n_0,i__carry__0_i_3__1_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 v20_carry
       (.CI(1'b0),
        .CO({v20_carry_n_0,v20_carry_n_1,v20_carry_n_2,v20_carry_n_3}),
        .CYINIT(1'b0),
        .DI({v20_carry_i_1_n_0,v20_carry_i_2_n_0,v20_carry_i_3_n_0,v20_carry_i_4_n_0}),
        .O(NLW_v20_carry_O_UNCONNECTED[3:0]),
        .S({v20_carry_i_5_n_0,v20_carry_i_6_n_0,v20_carry_i_7_n_0,v20_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 v20_carry__0
       (.CI(v20_carry_n_0),
        .CO({NLW_v20_carry__0_CO_UNCONNECTED[3:2],v20,v20_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,v31[12],v20_carry__0_i_2_n_0}),
        .O(NLW_v20_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,v31__9_carry_n_1,v20_carry__0_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    v20_carry__0_i_1
       (.I0(v31__9_carry_n_1),
        .O(v31[12]));
  LUT3 #(
    .INIT(8'h4F)) 
    v20_carry__0_i_2
       (.I0(raw_vertical_offset[10]),
        .I1(v31[10]),
        .I2(v31__9_carry_n_1),
        .O(v20_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h90)) 
    v20_carry__0_i_3
       (.I0(raw_vertical_offset[10]),
        .I1(v31[10]),
        .I2(v31__9_carry_n_1),
        .O(v20_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h50D4)) 
    v20_carry_i_1
       (.I0(raw_vertical_offset[9]),
        .I1(v31[8]),
        .I2(v31[9]),
        .I3(raw_vertical_offset[8]),
        .O(v20_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    v20_carry_i_10
       (.I0(RESOL[1]),
        .I1(RESOL[0]),
        .O(v20_carry_i_10_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    v20_carry_i_11
       (.I0(RESOL[0]),
        .I1(RESOL[1]),
        .O(v20_carry_i_11_n_0));
  LUT2 #(
    .INIT(4'h4)) 
    v20_carry_i_12
       (.I0(RESOL[0]),
        .I1(RESOL[1]),
        .O(v20_carry_i_12_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    v20_carry_i_13
       (.I0(RESOL[1]),
        .I1(RESOL[0]),
        .O(v20_carry_i_13_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    v20_carry_i_2
       (.I0(v31[7]),
        .I1(raw_vertical_offset[7]),
        .I2(v31[6]),
        .I3(raw_vertical_offset[6]),
        .O(v20_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h054D)) 
    v20_carry_i_3
       (.I0(raw_vertical_offset[5]),
        .I1(v31[4]),
        .I2(v31_carry_n_1),
        .I3(raw_vertical_offset[4]),
        .O(v20_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    v20_carry_i_4
       (.I0(v31[3]),
        .I1(raw_vertical_offset[3]),
        .O(v20_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    v20_carry_i_5
       (.I0(raw_vertical_offset[8]),
        .I1(v31[8]),
        .I2(raw_vertical_offset[9]),
        .I3(v31[9]),
        .O(v20_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    v20_carry_i_6
       (.I0(raw_vertical_offset[6]),
        .I1(v31[6]),
        .I2(raw_vertical_offset[7]),
        .I3(v31[7]),
        .O(v20_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h0990)) 
    v20_carry_i_7
       (.I0(raw_vertical_offset[4]),
        .I1(v31[4]),
        .I2(raw_vertical_offset[5]),
        .I3(v31_carry_n_1),
        .O(v20_carry_i_7_n_0));
  LUT3 #(
    .INIT(8'h21)) 
    v20_carry_i_8
       (.I0(v31[3]),
        .I1(raw_vertical_offset[2]),
        .I2(raw_vertical_offset[3]),
        .O(v20_carry_i_8_n_0));
  CARRY4 v20_carry_i_9
       (.CI(1'b0),
        .CO({v31[8],NLW_v20_carry_i_9_CO_UNCONNECTED[2],v20_carry_i_9_n_2,v20_carry_i_9_n_3}),
        .CYINIT(v31_carry_n_1),
        .DI({1'b0,v20_carry_i_10_n_0,v20_carry_i_11_n_0,1'b0}),
        .O({NLW_v20_carry_i_9_O_UNCONNECTED[3],v31[7:5]}),
        .S({1'b1,v20_carry_i_12_n_0,v20_carry_i_13_n_0,1'b1}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \v20_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\v20_inferred__0/i__carry_n_0 ,\v20_inferred__0/i__carry_n_1 ,\v20_inferred__0/i__carry_n_2 ,\v20_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({i__carry_i_1__1_n_0,i__carry_i_2__6_n_0,i__carry_i_3__4_n_0,i__carry_i_4__11_n_0}),
        .O(\NLW_v20_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__7_n_0,i__carry_i_6__4_n_0,i__carry_i_7__1_n_0,i__carry_i_8__8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \v20_inferred__0/i__carry__0 
       (.CI(\v20_inferred__0/i__carry_n_0 ),
        .CO({\NLW_v20_inferred__0/i__carry__0_CO_UNCONNECTED [3:2],v2020_in,\v20_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,raw_vertical_offset[10],i__carry__0_i_1__0_n_0}),
        .O(\NLW_v20_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,i__carry__0_i_2__0_n_0,i__carry__0_i_3__2_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 v30_carry
       (.CI(1'b0),
        .CO({v30,v30_carry_n_1,v30_carry_n_2,v30_carry_n_3}),
        .CYINIT(1'b0),
        .DI({v30_carry_i_1_n_0,v30_carry_i_2_n_0,v30_carry_i_3_n_0,v30_carry_i_4_n_0}),
        .O(NLW_v30_carry_O_UNCONNECTED[3:0]),
        .S({v30_carry_i_5_n_0,v30_carry_i_6_n_0,v30_carry_i_7_n_0,v30_carry_i_8_n_0}));
  LUT3 #(
    .INIT(8'h02)) 
    v30_carry_i_1
       (.I0(RESOL[1]),
        .I1(RESOL[0]),
        .I2(raw_vertical_offset[10]),
        .O(v30_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h022B)) 
    v30_carry_i_2
       (.I0(RESOL[0]),
        .I1(RESOL[1]),
        .I2(raw_vertical_offset[8]),
        .I3(raw_vertical_offset[9]),
        .O(v30_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h7007)) 
    v30_carry_i_3
       (.I0(raw_vertical_offset[7]),
        .I1(raw_vertical_offset[6]),
        .I2(RESOL[1]),
        .I3(RESOL[0]),
        .O(v30_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h09)) 
    v30_carry_i_4
       (.I0(RESOL[1]),
        .I1(RESOL[0]),
        .I2(raw_vertical_offset[5]),
        .O(v30_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h59)) 
    v30_carry_i_5
       (.I0(raw_vertical_offset[10]),
        .I1(RESOL[1]),
        .I2(RESOL[0]),
        .O(v30_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h4814)) 
    v30_carry_i_6
       (.I0(raw_vertical_offset[9]),
        .I1(raw_vertical_offset[8]),
        .I2(RESOL[1]),
        .I3(RESOL[0]),
        .O(v30_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9006)) 
    v30_carry_i_7
       (.I0(RESOL[0]),
        .I1(RESOL[1]),
        .I2(raw_vertical_offset[6]),
        .I3(raw_vertical_offset[7]),
        .O(v30_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h0906)) 
    v30_carry_i_8
       (.I0(RESOL[0]),
        .I1(RESOL[1]),
        .I2(raw_vertical_offset[4]),
        .I3(raw_vertical_offset[5]),
        .O(v30_carry_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \v30_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\v30_inferred__0/i__carry_n_0 ,\v30_inferred__0/i__carry_n_1 ,\v30_inferred__0/i__carry_n_2 ,\v30_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({i__carry_i_1__11_n_0,i__carry_i_2__7_n_0,i__carry_i_3__3_n_0,i__carry_i_4__2_n_0}),
        .O(\NLW_v30_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__11_n_0,i__carry_i_6__5_n_0,i__carry_i_7__0_n_0,i__carry_i_8__0_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \v30_inferred__0/i__carry__0 
       (.CI(\v30_inferred__0/i__carry_n_0 ),
        .CO({\NLW_v30_inferred__0/i__carry__0_CO_UNCONNECTED [3],v3021_in,\v30_inferred__0/i__carry__0_n_2 ,\v30_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,i__carry__0_i_1__7_n_0,i__carry__0_i_2__1_n_0}),
        .O(\NLW_v30_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,v31__9_carry_n_1,i__carry__0_i_3__7_n_0,i__carry__0_i_4__0_n_0}));
  CARRY4 v31__9_carry
       (.CI(1'b0),
        .CO({NLW_v31__9_carry_CO_UNCONNECTED[3],v31__9_carry_n_1,NLW_v31__9_carry_CO_UNCONNECTED[1],v31__9_carry_n_3}),
        .CYINIT(v31__9_carry_i_1_n_0),
        .DI({1'b0,1'b0,v31__9_carry_i_2_n_0,v31__9_carry_i_3_n_0}),
        .O({NLW_v31__9_carry_O_UNCONNECTED[3:2],v31[10:9]}),
        .S({1'b0,1'b1,v31__9_carry_i_4_n_0,v31__9_carry_i_5_n_0}));
  LUT2 #(
    .INIT(4'hB)) 
    v31__9_carry_i_1
       (.I0(RESOL[0]),
        .I1(RESOL[1]),
        .O(v31__9_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    v31__9_carry_i_2
       (.I0(RESOL[1]),
        .I1(RESOL[0]),
        .O(v31__9_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    v31__9_carry_i_3
       (.I0(RESOL[0]),
        .I1(RESOL[1]),
        .O(v31__9_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    v31__9_carry_i_4
       (.I0(RESOL[0]),
        .I1(RESOL[1]),
        .O(v31__9_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    v31__9_carry_i_5
       (.I0(RESOL[1]),
        .I1(RESOL[0]),
        .O(v31__9_carry_i_5_n_0));
  CARRY4 v31_carry
       (.CI(1'b0),
        .CO({NLW_v31_carry_CO_UNCONNECTED[3],v31_carry_n_1,NLW_v31_carry_CO_UNCONNECTED[1],v31_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({NLW_v31_carry_O_UNCONNECTED[3:2],v31[4:3]}),
        .S({1'b0,1'b1,v31_carry_i_1_n_0,v31_carry_i_2_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    v31_carry_i_1
       (.I0(RESOL[1]),
        .I1(RESOL[0]),
        .O(v31_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    v31_carry_i_2
       (.I0(RESOL[0]),
        .I1(RESOL[1]),
        .O(v31_carry_i_2_n_0));
endmodule

(* ORIG_REF_NAME = "syncgen" *) 
module design_1_patgen_0_0_syncgen
   (Q,
    DSP_HSYNC_X,
    DSP_VSYNC_X,
    DSP_preDE,
    S,
    \HCNT_reg[0]_0 ,
    \HCNT_reg[9]_0 ,
    \HCNT_reg[0]_1 ,
    \HCNT_reg[0]_2 ,
    \HCNT_reg[0]_3 ,
    \HCNT_reg[0]_4 ,
    \HCNT_reg[0]_5 ,
    \HCNT_reg[0]_6 ,
    DI,
    \VCNT_reg[2]_0 ,
    \HCNT_reg[3]_0 ,
    \VCNT_reg[4]_0 ,
    \HCNT_reg[10]_0 ,
    \VCNT_reg[10]_0 ,
    \VCNT_reg[7]_0 ,
    \HCNT_reg[0]_7 ,
    \HCNT_reg[0]_8 ,
    \HCNT_reg[0]_9 ,
    \HCNT_reg[0]_10 ,
    \HCNT_reg[0]_11 ,
    \HCNT_reg[0]_12 ,
    \HCNT_reg[0]_13 ,
    \HCNT_reg[8]_0 ,
    DSP_HSYNC_X_reg_0,
    DCLK,
    RESOL,
    O);
  output [3:0]Q;
  output DSP_HSYNC_X;
  output DSP_VSYNC_X;
  output DSP_preDE;
  output [3:0]S;
  output [0:0]\HCNT_reg[0]_0 ;
  output [4:0]\HCNT_reg[9]_0 ;
  output [0:0]\HCNT_reg[0]_1 ;
  output [0:0]\HCNT_reg[0]_2 ;
  output [0:0]\HCNT_reg[0]_3 ;
  output [0:0]\HCNT_reg[0]_4 ;
  output [0:0]\HCNT_reg[0]_5 ;
  output [0:0]\HCNT_reg[0]_6 ;
  output [1:0]DI;
  output [1:0]\VCNT_reg[2]_0 ;
  output [1:0]\HCNT_reg[3]_0 ;
  output [1:0]\VCNT_reg[4]_0 ;
  output [1:0]\HCNT_reg[10]_0 ;
  output [2:0]\VCNT_reg[10]_0 ;
  output [3:0]\VCNT_reg[7]_0 ;
  output [0:0]\HCNT_reg[0]_7 ;
  output [0:0]\HCNT_reg[0]_8 ;
  output [0:0]\HCNT_reg[0]_9 ;
  output [0:0]\HCNT_reg[0]_10 ;
  output [0:0]\HCNT_reg[0]_11 ;
  output [0:0]\HCNT_reg[0]_12 ;
  output [0:0]\HCNT_reg[0]_13 ;
  output [3:0]\HCNT_reg[8]_0 ;
  input [0:0]DSP_HSYNC_X_reg_0;
  input DCLK;
  input [1:0]RESOL;
  input [0:0]O;

  wire DCLK;
  wire [1:0]DI;
  wire DSP_HSYNC_X;
  wire DSP_HSYNC_X0;
  wire DSP_HSYNC_X0_carry_i_1_n_0;
  wire DSP_HSYNC_X0_carry_i_2_n_0;
  wire DSP_HSYNC_X0_carry_i_3_n_0;
  wire DSP_HSYNC_X0_carry_i_4_n_0;
  wire DSP_HSYNC_X0_carry_n_1;
  wire DSP_HSYNC_X0_carry_n_2;
  wire DSP_HSYNC_X0_carry_n_3;
  wire DSP_HSYNC_X1;
  wire DSP_HSYNC_X1_carry_i_1_n_0;
  wire DSP_HSYNC_X1_carry_i_2_n_0;
  wire DSP_HSYNC_X1_carry_i_3_n_0;
  wire DSP_HSYNC_X1_carry_i_4_n_0;
  wire DSP_HSYNC_X1_carry_n_1;
  wire DSP_HSYNC_X1_carry_n_2;
  wire DSP_HSYNC_X1_carry_n_3;
  wire DSP_HSYNC_X_i_1_n_0;
  wire [0:0]DSP_HSYNC_X_reg_0;
  wire DSP_VSYNC_X;
  wire DSP_VSYNC_X0;
  wire DSP_VSYNC_X0_carry_i_1_n_0;
  wire DSP_VSYNC_X0_carry_i_2_n_0;
  wire DSP_VSYNC_X0_carry_i_3_n_0;
  wire DSP_VSYNC_X0_carry_i_4_n_0;
  wire DSP_VSYNC_X0_carry_n_1;
  wire DSP_VSYNC_X0_carry_n_2;
  wire DSP_VSYNC_X0_carry_n_3;
  wire DSP_VSYNC_X1;
  wire DSP_VSYNC_X1_carry_i_1_n_0;
  wire DSP_VSYNC_X1_carry_i_2_n_0;
  wire DSP_VSYNC_X1_carry_i_3_n_0;
  wire DSP_VSYNC_X1_carry_i_4_n_0;
  wire DSP_VSYNC_X1_carry_n_1;
  wire DSP_VSYNC_X1_carry_n_2;
  wire DSP_VSYNC_X1_carry_n_3;
  wire DSP_VSYNC_X_i_1_n_0;
  wire DSP_preDE;
  wire DSP_preDE0;
  wire DSP_preDE01_out;
  wire DSP_preDE0_carry_i_1_n_0;
  wire DSP_preDE0_carry_i_2_n_0;
  wire DSP_preDE0_carry_i_3_n_0;
  wire DSP_preDE0_carry_i_4_n_0;
  wire DSP_preDE0_carry_i_5_n_0;
  wire DSP_preDE0_carry_i_6_n_0;
  wire DSP_preDE0_carry_n_1;
  wire DSP_preDE0_carry_n_2;
  wire DSP_preDE0_carry_n_3;
  wire \DSP_preDE0_inferred__0/i__carry_n_1 ;
  wire \DSP_preDE0_inferred__0/i__carry_n_2 ;
  wire \DSP_preDE0_inferred__0/i__carry_n_3 ;
  wire DSP_preDE_i_1_n_0;
  wire HCNT0;
  wire \HCNT0_inferred__0/i__carry_n_1 ;
  wire \HCNT0_inferred__0/i__carry_n_2 ;
  wire \HCNT0_inferred__0/i__carry_n_3 ;
  wire [10:0]HCNT1;
  wire \HCNT[10]_i_1_n_0 ;
  wire \HCNT[10]_i_3_n_0 ;
  wire \HCNT[7]_i_2_n_0 ;
  wire [10:3]HCNT_reg;
  wire [0:0]\HCNT_reg[0]_0 ;
  wire [0:0]\HCNT_reg[0]_1 ;
  wire [0:0]\HCNT_reg[0]_10 ;
  wire [0:0]\HCNT_reg[0]_11 ;
  wire [0:0]\HCNT_reg[0]_12 ;
  wire [0:0]\HCNT_reg[0]_13 ;
  wire [0:0]\HCNT_reg[0]_2 ;
  wire [0:0]\HCNT_reg[0]_3 ;
  wire [0:0]\HCNT_reg[0]_4 ;
  wire [0:0]\HCNT_reg[0]_5 ;
  wire [0:0]\HCNT_reg[0]_6 ;
  wire [0:0]\HCNT_reg[0]_7 ;
  wire [0:0]\HCNT_reg[0]_8 ;
  wire [0:0]\HCNT_reg[0]_9 ;
  wire [1:0]\HCNT_reg[10]_0 ;
  wire [1:0]\HCNT_reg[3]_0 ;
  wire [3:0]\HCNT_reg[8]_0 ;
  wire [4:0]\HCNT_reg[9]_0 ;
  wire [0:0]O;
  wire [3:0]Q;
  wire [1:0]RESOL;
  wire [3:0]S;
  wire VCNT0;
  wire \VCNT0_inferred__0/i__carry_n_1 ;
  wire \VCNT0_inferred__0/i__carry_n_2 ;
  wire \VCNT0_inferred__0/i__carry_n_3 ;
  wire [10:1]VCNT1;
  wire \VCNT[0]_i_1_n_0 ;
  wire \VCNT[10]_i_1_n_0 ;
  wire \VCNT[10]_i_3_n_0 ;
  wire \VCNT[6]_i_2_n_0 ;
  wire [10:0]VCNT_reg;
  wire [2:0]\VCNT_reg[10]_0 ;
  wire [1:0]\VCNT_reg[2]_0 ;
  wire [1:0]\VCNT_reg[4]_0 ;
  wire [3:0]\VCNT_reg[7]_0 ;
  wire \_inferred__6/i___0_carry__0_n_0 ;
  wire \_inferred__6/i___0_carry__0_n_1 ;
  wire \_inferred__6/i___0_carry__0_n_2 ;
  wire \_inferred__6/i___0_carry__0_n_3 ;
  wire \_inferred__6/i___0_carry__1_n_1 ;
  wire \_inferred__6/i___0_carry__1_n_2 ;
  wire \_inferred__6/i___0_carry__1_n_3 ;
  wire \_inferred__6/i___0_carry_n_0 ;
  wire \_inferred__6/i___0_carry_n_1 ;
  wire \_inferred__6/i___0_carry_n_2 ;
  wire \_inferred__6/i___0_carry_n_3 ;
  wire i___0_carry__0_i_1_n_0;
  wire i___0_carry__0_i_2_n_0;
  wire i___0_carry__0_i_3_n_0;
  wire i___0_carry__0_i_4_n_0;
  wire i___0_carry__0_i_5_n_0;
  wire i___0_carry__0_i_6_n_0;
  wire i___0_carry__1_i_1_n_0;
  wire i___0_carry__1_i_2_n_0;
  wire i___0_carry__1_i_3_n_0;
  wire i___0_carry_i_1_n_0;
  wire i___0_carry_i_2_n_0;
  wire i___0_carry_i_3_n_0;
  wire i___0_carry_i_4_n_0;
  wire i___0_carry_i_5_n_0;
  wire i___0_carry_i_6_n_0;
  wire i___0_carry_i_7_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1__5_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2__3_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3__1_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_4__3_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5__0_n_0;
  wire i__carry_i_5__9_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6__1_n_0;
  wire [3:0]NLW_DSP_HSYNC_X0_carry_O_UNCONNECTED;
  wire [3:0]NLW_DSP_HSYNC_X1_carry_O_UNCONNECTED;
  wire [3:0]NLW_DSP_VSYNC_X0_carry_O_UNCONNECTED;
  wire [3:0]NLW_DSP_VSYNC_X1_carry_O_UNCONNECTED;
  wire [3:0]NLW_DSP_preDE0_carry_O_UNCONNECTED;
  wire [3:0]\NLW_DSP_preDE0_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_HCNT0_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_VCNT0_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW__inferred__6/i___0_carry_O_UNCONNECTED ;
  wire [3:0]\NLW__inferred__6/i___0_carry__0_O_UNCONNECTED ;
  wire [3:3]\NLW__inferred__6/i___0_carry__1_CO_UNCONNECTED ;
  wire [3:0]\NLW__inferred__6/i___0_carry__1_O_UNCONNECTED ;

  CARRY4 DSP_HSYNC_X0_carry
       (.CI(1'b0),
        .CO({DSP_HSYNC_X0,DSP_HSYNC_X0_carry_n_1,DSP_HSYNC_X0_carry_n_2,DSP_HSYNC_X0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_DSP_HSYNC_X0_carry_O_UNCONNECTED[3:0]),
        .S({DSP_HSYNC_X0_carry_i_1_n_0,DSP_HSYNC_X0_carry_i_2_n_0,DSP_HSYNC_X0_carry_i_3_n_0,DSP_HSYNC_X0_carry_i_4_n_0}));
  LUT6 #(
    .INIT(64'h1011111111111111)) 
    DSP_HSYNC_X0_carry_i_1
       (.I0(HCNT_reg[10]),
        .I1(\HCNT_reg[9]_0 [4]),
        .I2(\HCNT[10]_i_3_n_0 ),
        .I3(\HCNT_reg[9]_0 [3]),
        .I4(HCNT_reg[6]),
        .I5(HCNT_reg[8]),
        .O(DSP_HSYNC_X0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h0002020009040409)) 
    DSP_HSYNC_X0_carry_i_2
       (.I0(\HCNT[10]_i_3_n_0 ),
        .I1(HCNT_reg[6]),
        .I2(HCNT_reg[8]),
        .I3(RESOL[0]),
        .I4(RESOL[1]),
        .I5(\HCNT_reg[9]_0 [3]),
        .O(DSP_HSYNC_X0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000960009600000)) 
    DSP_HSYNC_X0_carry_i_3
       (.I0(RESOL[0]),
        .I1(RESOL[1]),
        .I2(HCNT_reg[4]),
        .I3(HCNT_reg[5]),
        .I4(HCNT_reg[3]),
        .I5(\HCNT[7]_i_2_n_0 ),
        .O(DSP_HSYNC_X0_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    DSP_HSYNC_X0_carry_i_4
       (.I0(\HCNT_reg[9]_0 [0]),
        .I1(\HCNT_reg[9]_0 [1]),
        .I2(\HCNT_reg[9]_0 [2]),
        .O(DSP_HSYNC_X0_carry_i_4_n_0));
  CARRY4 DSP_HSYNC_X1_carry
       (.CI(1'b0),
        .CO({DSP_HSYNC_X1,DSP_HSYNC_X1_carry_n_1,DSP_HSYNC_X1_carry_n_2,DSP_HSYNC_X1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_DSP_HSYNC_X1_carry_O_UNCONNECTED[3:0]),
        .S({DSP_HSYNC_X1_carry_i_1_n_0,DSP_HSYNC_X1_carry_i_2_n_0,DSP_HSYNC_X1_carry_i_3_n_0,DSP_HSYNC_X1_carry_i_4_n_0}));
  LUT6 #(
    .INIT(64'h1011111111111111)) 
    DSP_HSYNC_X1_carry_i_1
       (.I0(HCNT_reg[10]),
        .I1(\HCNT_reg[9]_0 [4]),
        .I2(\HCNT[10]_i_3_n_0 ),
        .I3(\HCNT_reg[9]_0 [3]),
        .I4(HCNT_reg[6]),
        .I5(HCNT_reg[8]),
        .O(DSP_HSYNC_X1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h4002)) 
    DSP_HSYNC_X1_carry_i_2
       (.I0(\HCNT[10]_i_3_n_0 ),
        .I1(\HCNT_reg[9]_0 [3]),
        .I2(HCNT_reg[6]),
        .I3(HCNT_reg[8]),
        .O(DSP_HSYNC_X1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h0024009024000024)) 
    DSP_HSYNC_X1_carry_i_3
       (.I0(\HCNT[7]_i_2_n_0 ),
        .I1(HCNT_reg[3]),
        .I2(HCNT_reg[4]),
        .I3(HCNT_reg[5]),
        .I4(RESOL[1]),
        .I5(RESOL[0]),
        .O(DSP_HSYNC_X1_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    DSP_HSYNC_X1_carry_i_4
       (.I0(\HCNT_reg[9]_0 [0]),
        .I1(\HCNT_reg[9]_0 [1]),
        .I2(\HCNT_reg[9]_0 [2]),
        .O(DSP_HSYNC_X1_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h54)) 
    DSP_HSYNC_X_i_1
       (.I0(DSP_HSYNC_X1),
        .I1(DSP_HSYNC_X0),
        .I2(DSP_HSYNC_X),
        .O(DSP_HSYNC_X_i_1_n_0));
  FDSE DSP_HSYNC_X_reg
       (.C(DCLK),
        .CE(1'b1),
        .D(DSP_HSYNC_X_i_1_n_0),
        .Q(DSP_HSYNC_X),
        .S(DSP_HSYNC_X_reg_0));
  CARRY4 DSP_VSYNC_X0_carry
       (.CI(1'b0),
        .CO({DSP_VSYNC_X0,DSP_VSYNC_X0_carry_n_1,DSP_VSYNC_X0_carry_n_2,DSP_VSYNC_X0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_DSP_VSYNC_X0_carry_O_UNCONNECTED[3:0]),
        .S({DSP_VSYNC_X0_carry_i_1_n_0,DSP_VSYNC_X0_carry_i_2_n_0,DSP_VSYNC_X0_carry_i_3_n_0,DSP_VSYNC_X0_carry_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    DSP_VSYNC_X0_carry_i_1
       (.I0(Q[3]),
        .I1(VCNT_reg[10]),
        .O(DSP_VSYNC_X0_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    DSP_VSYNC_X0_carry_i_2
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(DSP_VSYNC_X0_carry_i_2_n_0));
  LUT5 #(
    .INIT(32'h02020102)) 
    DSP_VSYNC_X0_carry_i_3
       (.I0(VCNT_reg[3]),
        .I1(VCNT_reg[4]),
        .I2(VCNT_reg[5]),
        .I3(RESOL[1]),
        .I4(RESOL[0]),
        .O(DSP_VSYNC_X0_carry_i_3_n_0));
  LUT5 #(
    .INIT(32'h000B0400)) 
    DSP_VSYNC_X0_carry_i_4
       (.I0(RESOL[1]),
        .I1(RESOL[0]),
        .I2(VCNT_reg[1]),
        .I3(VCNT_reg[0]),
        .I4(VCNT_reg[2]),
        .O(DSP_VSYNC_X0_carry_i_4_n_0));
  CARRY4 DSP_VSYNC_X1_carry
       (.CI(1'b0),
        .CO({DSP_VSYNC_X1,DSP_VSYNC_X1_carry_n_1,DSP_VSYNC_X1_carry_n_2,DSP_VSYNC_X1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_DSP_VSYNC_X1_carry_O_UNCONNECTED[3:0]),
        .S({DSP_VSYNC_X1_carry_i_1_n_0,DSP_VSYNC_X1_carry_i_2_n_0,DSP_VSYNC_X1_carry_i_3_n_0,DSP_VSYNC_X1_carry_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    DSP_VSYNC_X1_carry_i_1
       (.I0(Q[3]),
        .I1(VCNT_reg[10]),
        .O(DSP_VSYNC_X1_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    DSP_VSYNC_X1_carry_i_2
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(DSP_VSYNC_X1_carry_i_2_n_0));
  LUT5 #(
    .INIT(32'h10010110)) 
    DSP_VSYNC_X1_carry_i_3
       (.I0(VCNT_reg[5]),
        .I1(VCNT_reg[4]),
        .I2(RESOL[0]),
        .I3(RESOL[1]),
        .I4(VCNT_reg[3]),
        .O(DSP_VSYNC_X1_carry_i_3_n_0));
  LUT5 #(
    .INIT(32'h04104100)) 
    DSP_VSYNC_X1_carry_i_4
       (.I0(VCNT_reg[2]),
        .I1(RESOL[0]),
        .I2(RESOL[1]),
        .I3(VCNT_reg[1]),
        .I4(VCNT_reg[0]),
        .O(DSP_VSYNC_X1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h7740)) 
    DSP_VSYNC_X_i_1
       (.I0(DSP_VSYNC_X1),
        .I1(DSP_HSYNC_X1),
        .I2(DSP_VSYNC_X0),
        .I3(DSP_VSYNC_X),
        .O(DSP_VSYNC_X_i_1_n_0));
  FDSE DSP_VSYNC_X_reg
       (.C(DCLK),
        .CE(1'b1),
        .D(DSP_VSYNC_X_i_1_n_0),
        .Q(DSP_VSYNC_X),
        .S(DSP_HSYNC_X_reg_0));
  CARRY4 DSP_preDE0_carry
       (.CI(1'b0),
        .CO({DSP_preDE01_out,DSP_preDE0_carry_n_1,DSP_preDE0_carry_n_2,DSP_preDE0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_DSP_preDE0_carry_O_UNCONNECTED[3:0]),
        .S({DSP_preDE0_carry_i_1_n_0,DSP_preDE0_carry_i_2_n_0,DSP_preDE0_carry_i_3_n_0,DSP_preDE0_carry_i_4_n_0}));
  LUT6 #(
    .INIT(64'h1011111111111111)) 
    DSP_preDE0_carry_i_1
       (.I0(HCNT_reg[10]),
        .I1(\HCNT_reg[9]_0 [4]),
        .I2(DSP_preDE0_carry_i_5_n_0),
        .I3(\HCNT_reg[9]_0 [3]),
        .I4(HCNT_reg[6]),
        .I5(HCNT_reg[8]),
        .O(DSP_preDE0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h0040290000290040)) 
    DSP_preDE0_carry_i_2
       (.I0(RESOL[1]),
        .I1(RESOL[0]),
        .I2(HCNT_reg[8]),
        .I3(\HCNT_reg[9]_0 [3]),
        .I4(HCNT_reg[6]),
        .I5(DSP_preDE0_carry_i_5_n_0),
        .O(DSP_preDE0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h0200009049040020)) 
    DSP_preDE0_carry_i_3
       (.I0(RESOL[0]),
        .I1(RESOL[1]),
        .I2(DSP_preDE0_carry_i_6_n_0),
        .I3(HCNT_reg[3]),
        .I4(HCNT_reg[4]),
        .I5(HCNT_reg[5]),
        .O(DSP_preDE0_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    DSP_preDE0_carry_i_4
       (.I0(\HCNT_reg[9]_0 [2]),
        .I1(\HCNT_reg[9]_0 [1]),
        .I2(\HCNT_reg[9]_0 [0]),
        .O(DSP_preDE0_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    DSP_preDE0_carry_i_5
       (.I0(HCNT_reg[5]),
        .I1(HCNT_reg[3]),
        .I2(HCNT_reg[4]),
        .I3(\HCNT_reg[9]_0 [2]),
        .I4(\HCNT_reg[9]_0 [1]),
        .O(DSP_preDE0_carry_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h7)) 
    DSP_preDE0_carry_i_6
       (.I0(\HCNT_reg[9]_0 [1]),
        .I1(\HCNT_reg[9]_0 [2]),
        .O(DSP_preDE0_carry_i_6_n_0));
  CARRY4 \DSP_preDE0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({DSP_preDE0,\DSP_preDE0_inferred__0/i__carry_n_1 ,\DSP_preDE0_inferred__0/i__carry_n_2 ,\DSP_preDE0_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_DSP_preDE0_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  LUT5 #(
    .INIT(32'h44440040)) 
    DSP_preDE_i_1
       (.I0(DSP_HSYNC_X_reg_0),
        .I1(\_inferred__6/i___0_carry__1_n_1 ),
        .I2(DSP_preDE),
        .I3(DSP_preDE0),
        .I4(DSP_preDE01_out),
        .O(DSP_preDE_i_1_n_0));
  FDRE DSP_preDE_reg
       (.C(DCLK),
        .CE(1'b1),
        .D(DSP_preDE_i_1_n_0),
        .Q(DSP_preDE),
        .R(1'b0));
  CARRY4 \HCNT0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({HCNT0,\HCNT0_inferred__0/i__carry_n_1 ,\HCNT0_inferred__0/i__carry_n_2 ,\HCNT0_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_HCNT0_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1__0_n_0,i__carry_i_2__0_n_0,i__carry_i_3__0_n_0,i__carry_i_4__3_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \HCNT[0]_i_1 
       (.I0(\HCNT_reg[9]_0 [0]),
        .O(HCNT1[0]));
  LUT2 #(
    .INIT(4'hE)) 
    \HCNT[10]_i_1 
       (.I0(DSP_HSYNC_X_reg_0),
        .I1(HCNT0),
        .O(\HCNT[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7FFF00008000)) 
    \HCNT[10]_i_2 
       (.I0(\HCNT_reg[9]_0 [4]),
        .I1(HCNT_reg[8]),
        .I2(HCNT_reg[6]),
        .I3(\HCNT_reg[9]_0 [3]),
        .I4(\HCNT[10]_i_3_n_0 ),
        .I5(HCNT_reg[10]),
        .O(HCNT1[10]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \HCNT[10]_i_3 
       (.I0(HCNT_reg[5]),
        .I1(HCNT_reg[3]),
        .I2(HCNT_reg[4]),
        .I3(\HCNT_reg[9]_0 [0]),
        .I4(\HCNT_reg[9]_0 [1]),
        .I5(\HCNT_reg[9]_0 [2]),
        .O(\HCNT[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \HCNT[1]_i_1 
       (.I0(\HCNT_reg[9]_0 [0]),
        .I1(\HCNT_reg[9]_0 [1]),
        .O(HCNT1[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \HCNT[2]_i_1 
       (.I0(\HCNT_reg[9]_0 [1]),
        .I1(\HCNT_reg[9]_0 [0]),
        .I2(\HCNT_reg[9]_0 [2]),
        .O(HCNT1[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \HCNT[3]_i_1 
       (.I0(\HCNT_reg[9]_0 [0]),
        .I1(\HCNT_reg[9]_0 [1]),
        .I2(\HCNT_reg[9]_0 [2]),
        .I3(HCNT_reg[3]),
        .O(HCNT1[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \HCNT[4]_i_1 
       (.I0(HCNT_reg[3]),
        .I1(\HCNT_reg[9]_0 [2]),
        .I2(\HCNT_reg[9]_0 [1]),
        .I3(\HCNT_reg[9]_0 [0]),
        .I4(HCNT_reg[4]),
        .O(HCNT1[4]));
  LUT6 #(
    .INIT(64'h78F0F0F0F0F0F0F0)) 
    \HCNT[5]_i_1 
       (.I0(HCNT_reg[3]),
        .I1(HCNT_reg[4]),
        .I2(HCNT_reg[5]),
        .I3(\HCNT_reg[9]_0 [2]),
        .I4(\HCNT_reg[9]_0 [1]),
        .I5(\HCNT_reg[9]_0 [0]),
        .O(HCNT1[5]));
  LUT5 #(
    .INIT(32'hBFFF4000)) 
    \HCNT[6]_i_1 
       (.I0(\HCNT[7]_i_2_n_0 ),
        .I1(HCNT_reg[4]),
        .I2(HCNT_reg[3]),
        .I3(HCNT_reg[5]),
        .I4(HCNT_reg[6]),
        .O(HCNT1[6]));
  LUT6 #(
    .INIT(64'hFFFF7FFF00008000)) 
    \HCNT[7]_i_1 
       (.I0(HCNT_reg[6]),
        .I1(HCNT_reg[5]),
        .I2(HCNT_reg[3]),
        .I3(HCNT_reg[4]),
        .I4(\HCNT[7]_i_2_n_0 ),
        .I5(\HCNT_reg[9]_0 [3]),
        .O(HCNT1[7]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \HCNT[7]_i_2 
       (.I0(\HCNT_reg[9]_0 [2]),
        .I1(\HCNT_reg[9]_0 [1]),
        .I2(\HCNT_reg[9]_0 [0]),
        .O(\HCNT[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hBF40)) 
    \HCNT[8]_i_1 
       (.I0(\HCNT[10]_i_3_n_0 ),
        .I1(HCNT_reg[6]),
        .I2(\HCNT_reg[9]_0 [3]),
        .I3(HCNT_reg[8]),
        .O(HCNT1[8]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hBFFF4000)) 
    \HCNT[9]_i_1 
       (.I0(\HCNT[10]_i_3_n_0 ),
        .I1(\HCNT_reg[9]_0 [3]),
        .I2(HCNT_reg[6]),
        .I3(HCNT_reg[8]),
        .I4(\HCNT_reg[9]_0 [4]),
        .O(HCNT1[9]));
  FDRE \HCNT_reg[0] 
       (.C(DCLK),
        .CE(1'b1),
        .D(HCNT1[0]),
        .Q(\HCNT_reg[9]_0 [0]),
        .R(\HCNT[10]_i_1_n_0 ));
  FDRE \HCNT_reg[10] 
       (.C(DCLK),
        .CE(1'b1),
        .D(HCNT1[10]),
        .Q(HCNT_reg[10]),
        .R(\HCNT[10]_i_1_n_0 ));
  FDRE \HCNT_reg[1] 
       (.C(DCLK),
        .CE(1'b1),
        .D(HCNT1[1]),
        .Q(\HCNT_reg[9]_0 [1]),
        .R(\HCNT[10]_i_1_n_0 ));
  FDRE \HCNT_reg[2] 
       (.C(DCLK),
        .CE(1'b1),
        .D(HCNT1[2]),
        .Q(\HCNT_reg[9]_0 [2]),
        .R(\HCNT[10]_i_1_n_0 ));
  FDRE \HCNT_reg[3] 
       (.C(DCLK),
        .CE(1'b1),
        .D(HCNT1[3]),
        .Q(HCNT_reg[3]),
        .R(\HCNT[10]_i_1_n_0 ));
  FDRE \HCNT_reg[4] 
       (.C(DCLK),
        .CE(1'b1),
        .D(HCNT1[4]),
        .Q(HCNT_reg[4]),
        .R(\HCNT[10]_i_1_n_0 ));
  FDRE \HCNT_reg[5] 
       (.C(DCLK),
        .CE(1'b1),
        .D(HCNT1[5]),
        .Q(HCNT_reg[5]),
        .R(\HCNT[10]_i_1_n_0 ));
  FDRE \HCNT_reg[6] 
       (.C(DCLK),
        .CE(1'b1),
        .D(HCNT1[6]),
        .Q(HCNT_reg[6]),
        .R(\HCNT[10]_i_1_n_0 ));
  FDRE \HCNT_reg[7] 
       (.C(DCLK),
        .CE(1'b1),
        .D(HCNT1[7]),
        .Q(\HCNT_reg[9]_0 [3]),
        .R(\HCNT[10]_i_1_n_0 ));
  FDRE \HCNT_reg[8] 
       (.C(DCLK),
        .CE(1'b1),
        .D(HCNT1[8]),
        .Q(HCNT_reg[8]),
        .R(\HCNT[10]_i_1_n_0 ));
  FDRE \HCNT_reg[9] 
       (.C(DCLK),
        .CE(1'b1),
        .D(HCNT1[9]),
        .Q(\HCNT_reg[9]_0 [4]),
        .R(\HCNT[10]_i_1_n_0 ));
  CARRY4 \VCNT0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({VCNT0,\VCNT0_inferred__0/i__carry_n_1 ,\VCNT0_inferred__0/i__carry_n_2 ,\VCNT0_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_VCNT0_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1__5_n_0,i__carry_i_2__3_n_0,i__carry_i_3__1_n_0,i__carry_i_4__0_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    \VCNT[0]_i_1 
       (.I0(VCNT_reg[0]),
        .O(\VCNT[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hF8)) 
    \VCNT[10]_i_1 
       (.I0(HCNT0),
        .I1(VCNT0),
        .I2(DSP_HSYNC_X_reg_0),
        .O(\VCNT[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \VCNT[10]_i_2 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(\VCNT[10]_i_3_n_0 ),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(VCNT_reg[10]),
        .O(VCNT1[10]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \VCNT[10]_i_3 
       (.I0(VCNT_reg[4]),
        .I1(VCNT_reg[2]),
        .I2(VCNT_reg[0]),
        .I3(VCNT_reg[1]),
        .I4(VCNT_reg[3]),
        .I5(VCNT_reg[5]),
        .O(\VCNT[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \VCNT[1]_i_1 
       (.I0(VCNT_reg[1]),
        .I1(VCNT_reg[0]),
        .O(VCNT1[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \VCNT[2]_i_1 
       (.I0(VCNT_reg[1]),
        .I1(VCNT_reg[0]),
        .I2(VCNT_reg[2]),
        .O(VCNT1[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \VCNT[3]_i_1 
       (.I0(VCNT_reg[2]),
        .I1(VCNT_reg[0]),
        .I2(VCNT_reg[1]),
        .I3(VCNT_reg[3]),
        .O(VCNT1[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \VCNT[4]_i_1 
       (.I0(VCNT_reg[3]),
        .I1(VCNT_reg[1]),
        .I2(VCNT_reg[0]),
        .I3(VCNT_reg[2]),
        .I4(VCNT_reg[4]),
        .O(VCNT1[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \VCNT[5]_i_1 
       (.I0(VCNT_reg[4]),
        .I1(VCNT_reg[2]),
        .I2(VCNT_reg[0]),
        .I3(VCNT_reg[1]),
        .I4(VCNT_reg[3]),
        .I5(VCNT_reg[5]),
        .O(VCNT1[5]));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \VCNT[6]_i_1 
       (.I0(VCNT_reg[5]),
        .I1(VCNT_reg[3]),
        .I2(\VCNT[6]_i_2_n_0 ),
        .I3(VCNT_reg[2]),
        .I4(VCNT_reg[4]),
        .I5(Q[0]),
        .O(VCNT1[6]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \VCNT[6]_i_2 
       (.I0(VCNT_reg[0]),
        .I1(VCNT_reg[1]),
        .O(\VCNT[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \VCNT[7]_i_1 
       (.I0(Q[0]),
        .I1(\VCNT[10]_i_3_n_0 ),
        .I2(Q[1]),
        .O(VCNT1[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \VCNT[8]_i_1 
       (.I0(Q[1]),
        .I1(\VCNT[10]_i_3_n_0 ),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(VCNT1[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \VCNT[9]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\VCNT[10]_i_3_n_0 ),
        .I3(Q[1]),
        .I4(Q[3]),
        .O(VCNT1[9]));
  FDRE \VCNT_reg[0] 
       (.C(DCLK),
        .CE(HCNT0),
        .D(\VCNT[0]_i_1_n_0 ),
        .Q(VCNT_reg[0]),
        .R(\VCNT[10]_i_1_n_0 ));
  FDRE \VCNT_reg[10] 
       (.C(DCLK),
        .CE(HCNT0),
        .D(VCNT1[10]),
        .Q(VCNT_reg[10]),
        .R(\VCNT[10]_i_1_n_0 ));
  FDRE \VCNT_reg[1] 
       (.C(DCLK),
        .CE(HCNT0),
        .D(VCNT1[1]),
        .Q(VCNT_reg[1]),
        .R(\VCNT[10]_i_1_n_0 ));
  FDRE \VCNT_reg[2] 
       (.C(DCLK),
        .CE(HCNT0),
        .D(VCNT1[2]),
        .Q(VCNT_reg[2]),
        .R(\VCNT[10]_i_1_n_0 ));
  FDRE \VCNT_reg[3] 
       (.C(DCLK),
        .CE(HCNT0),
        .D(VCNT1[3]),
        .Q(VCNT_reg[3]),
        .R(\VCNT[10]_i_1_n_0 ));
  FDRE \VCNT_reg[4] 
       (.C(DCLK),
        .CE(HCNT0),
        .D(VCNT1[4]),
        .Q(VCNT_reg[4]),
        .R(\VCNT[10]_i_1_n_0 ));
  FDRE \VCNT_reg[5] 
       (.C(DCLK),
        .CE(HCNT0),
        .D(VCNT1[5]),
        .Q(VCNT_reg[5]),
        .R(\VCNT[10]_i_1_n_0 ));
  FDRE \VCNT_reg[6] 
       (.C(DCLK),
        .CE(HCNT0),
        .D(VCNT1[6]),
        .Q(Q[0]),
        .R(\VCNT[10]_i_1_n_0 ));
  FDRE \VCNT_reg[7] 
       (.C(DCLK),
        .CE(HCNT0),
        .D(VCNT1[7]),
        .Q(Q[1]),
        .R(\VCNT[10]_i_1_n_0 ));
  FDRE \VCNT_reg[8] 
       (.C(DCLK),
        .CE(HCNT0),
        .D(VCNT1[8]),
        .Q(Q[2]),
        .R(\VCNT[10]_i_1_n_0 ));
  FDRE \VCNT_reg[9] 
       (.C(DCLK),
        .CE(HCNT0),
        .D(VCNT1[9]),
        .Q(Q[3]),
        .R(\VCNT[10]_i_1_n_0 ));
  CARRY4 \_inferred__6/i___0_carry 
       (.CI(1'b0),
        .CO({\_inferred__6/i___0_carry_n_0 ,\_inferred__6/i___0_carry_n_1 ,\_inferred__6/i___0_carry_n_2 ,\_inferred__6/i___0_carry_n_3 }),
        .CYINIT(1'b1),
        .DI({i___0_carry_i_1_n_0,i___0_carry_i_2_n_0,i___0_carry_i_3_n_0,1'b1}),
        .O(\NLW__inferred__6/i___0_carry_O_UNCONNECTED [3:0]),
        .S({i___0_carry_i_4_n_0,i___0_carry_i_5_n_0,i___0_carry_i_6_n_0,i___0_carry_i_7_n_0}));
  CARRY4 \_inferred__6/i___0_carry__0 
       (.CI(\_inferred__6/i___0_carry_n_0 ),
        .CO({\_inferred__6/i___0_carry__0_n_0 ,\_inferred__6/i___0_carry__0_n_1 ,\_inferred__6/i___0_carry__0_n_2 ,\_inferred__6/i___0_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({Q[1:0],i___0_carry__0_i_1_n_0,i___0_carry__0_i_2_n_0}),
        .O(\NLW__inferred__6/i___0_carry__0_O_UNCONNECTED [3:0]),
        .S({i___0_carry__0_i_3_n_0,i___0_carry__0_i_4_n_0,i___0_carry__0_i_5_n_0,i___0_carry__0_i_6_n_0}));
  CARRY4 \_inferred__6/i___0_carry__1 
       (.CI(\_inferred__6/i___0_carry__0_n_0 ),
        .CO({\NLW__inferred__6/i___0_carry__1_CO_UNCONNECTED [3],\_inferred__6/i___0_carry__1_n_1 ,\_inferred__6/i___0_carry__1_n_2 ,\_inferred__6/i___0_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,VCNT_reg[10],Q[3:2]}),
        .O(\NLW__inferred__6/i___0_carry__1_O_UNCONNECTED [3:0]),
        .S({1'b0,i___0_carry__1_i_1_n_0,i___0_carry__1_i_2_n_0,i___0_carry__1_i_3_n_0}));
  LUT3 #(
    .INIT(8'hFB)) 
    i___0_carry__0_i_1
       (.I0(VCNT_reg[4]),
        .I1(RESOL[0]),
        .I2(RESOL[1]),
        .O(i___0_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    i___0_carry__0_i_2
       (.I0(VCNT_reg[3]),
        .I1(RESOL[0]),
        .I2(RESOL[1]),
        .O(i___0_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i___0_carry__0_i_3
       (.I0(Q[1]),
        .O(i___0_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h0BF4)) 
    i___0_carry__0_i_4
       (.I0(RESOL[1]),
        .I1(RESOL[0]),
        .I2(VCNT_reg[5]),
        .I3(Q[0]),
        .O(i___0_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'hC6CC)) 
    i___0_carry__0_i_5
       (.I0(VCNT_reg[4]),
        .I1(VCNT_reg[5]),
        .I2(RESOL[1]),
        .I3(RESOL[0]),
        .O(i___0_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h6336)) 
    i___0_carry__0_i_6
       (.I0(VCNT_reg[3]),
        .I1(VCNT_reg[4]),
        .I2(RESOL[1]),
        .I3(RESOL[0]),
        .O(i___0_carry__0_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i___0_carry__1_i_1
       (.I0(VCNT_reg[10]),
        .O(i___0_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i___0_carry__1_i_2
       (.I0(Q[3]),
        .O(i___0_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i___0_carry__1_i_3
       (.I0(Q[2]),
        .O(i___0_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'hD0)) 
    i___0_carry_i_1
       (.I0(RESOL[1]),
        .I1(RESOL[0]),
        .I2(VCNT_reg[2]),
        .O(i___0_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h2D)) 
    i___0_carry_i_2
       (.I0(RESOL[1]),
        .I1(RESOL[0]),
        .I2(VCNT_reg[2]),
        .O(i___0_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    i___0_carry_i_3
       (.I0(VCNT_reg[0]),
        .I1(RESOL[1]),
        .I2(RESOL[0]),
        .O(i___0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'hB649)) 
    i___0_carry_i_4
       (.I0(VCNT_reg[2]),
        .I1(RESOL[0]),
        .I2(RESOL[1]),
        .I3(VCNT_reg[3]),
        .O(i___0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'hC6CC)) 
    i___0_carry_i_5
       (.I0(VCNT_reg[1]),
        .I1(VCNT_reg[2]),
        .I2(RESOL[0]),
        .I3(RESOL[1]),
        .O(i___0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h6CC6)) 
    i___0_carry_i_6
       (.I0(VCNT_reg[0]),
        .I1(VCNT_reg[1]),
        .I2(RESOL[0]),
        .I3(RESOL[1]),
        .O(i___0_carry_i_6_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___0_carry_i_7
       (.I0(VCNT_reg[0]),
        .I1(RESOL[1]),
        .I2(RESOL[0]),
        .O(i___0_carry_i_7_n_0));
  LUT5 #(
    .INIT(32'h09902409)) 
    i__carry_i_1
       (.I0(i__carry_i_5_n_0),
        .I1(\HCNT_reg[9]_0 [4]),
        .I2(HCNT_reg[10]),
        .I3(RESOL[0]),
        .I4(RESOL[1]),
        .O(i__carry_i_1_n_0));
  LUT5 #(
    .INIT(32'h09902409)) 
    i__carry_i_1__0
       (.I0(i__carry_i_5__0_n_0),
        .I1(\HCNT_reg[9]_0 [4]),
        .I2(HCNT_reg[10]),
        .I3(RESOL[0]),
        .I4(RESOL[1]),
        .O(i__carry_i_1__0_n_0));
  LUT5 #(
    .INIT(32'h09092409)) 
    i__carry_i_1__5
       (.I0(i__carry_i_5__9_n_0),
        .I1(Q[3]),
        .I2(VCNT_reg[10]),
        .I3(RESOL[1]),
        .I4(RESOL[0]),
        .O(i__carry_i_1__5_n_0));
  LUT6 #(
    .INIT(64'h0200204240140200)) 
    i__carry_i_2
       (.I0(HCNT_reg[8]),
        .I1(\HCNT_reg[9]_0 [3]),
        .I2(RESOL[1]),
        .I3(RESOL[0]),
        .I4(HCNT_reg[6]),
        .I5(DSP_preDE0_carry_i_5_n_0),
        .O(i__carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h1041001008002408)) 
    i__carry_i_2__0
       (.I0(\HCNT_reg[9]_0 [3]),
        .I1(HCNT_reg[6]),
        .I2(\HCNT[10]_i_3_n_0 ),
        .I3(RESOL[1]),
        .I4(RESOL[0]),
        .I5(HCNT_reg[8]),
        .O(i__carry_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h0000002DD2000000)) 
    i__carry_i_2__3
       (.I0(RESOL[0]),
        .I1(RESOL[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(\VCNT[10]_i_3_n_0 ),
        .O(i__carry_i_2__3_n_0));
  LUT6 #(
    .INIT(64'h1008210040021008)) 
    i__carry_i_3
       (.I0(DSP_preDE0_carry_i_6_n_0),
        .I1(HCNT_reg[5]),
        .I2(HCNT_reg[3]),
        .I3(HCNT_reg[4]),
        .I4(RESOL[0]),
        .I5(RESOL[1]),
        .O(i__carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h1008210040021008)) 
    i__carry_i_3__0
       (.I0(\HCNT[7]_i_2_n_0 ),
        .I1(HCNT_reg[5]),
        .I2(HCNT_reg[3]),
        .I3(HCNT_reg[4]),
        .I4(RESOL[0]),
        .I5(RESOL[1]),
        .O(i__carry_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h0409020000200409)) 
    i__carry_i_3__1
       (.I0(RESOL[0]),
        .I1(RESOL[1]),
        .I2(VCNT_reg[4]),
        .I3(VCNT_reg[5]),
        .I4(VCNT_reg[3]),
        .I5(i__carry_i_6__1_n_0),
        .O(i__carry_i_3__1_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    i__carry_i_4
       (.I0(\HCNT_reg[9]_0 [2]),
        .I1(\HCNT_reg[9]_0 [1]),
        .I2(\HCNT_reg[9]_0 [0]),
        .O(i__carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h02080402)) 
    i__carry_i_4__0
       (.I0(VCNT_reg[2]),
        .I1(VCNT_reg[0]),
        .I2(VCNT_reg[1]),
        .I3(RESOL[1]),
        .I4(RESOL[0]),
        .O(i__carry_i_4__0_n_0));
  LUT2 #(
    .INIT(4'hD)) 
    i__carry_i_4__1
       (.I0(\HCNT_reg[9]_0 [0]),
        .I1(O),
        .O(\HCNT_reg[0]_7 ));
  LUT3 #(
    .INIT(8'h80)) 
    i__carry_i_4__3
       (.I0(\HCNT_reg[9]_0 [0]),
        .I1(\HCNT_reg[9]_0 [1]),
        .I2(\HCNT_reg[9]_0 [2]),
        .O(i__carry_i_4__3_n_0));
  LUT2 #(
    .INIT(4'hD)) 
    i__carry_i_4__4
       (.I0(\HCNT_reg[9]_0 [0]),
        .I1(O),
        .O(\HCNT_reg[0]_8 ));
  LUT2 #(
    .INIT(4'hD)) 
    i__carry_i_4__5
       (.I0(\HCNT_reg[9]_0 [0]),
        .I1(O),
        .O(\HCNT_reg[0]_9 ));
  LUT2 #(
    .INIT(4'hD)) 
    i__carry_i_4__6
       (.I0(\HCNT_reg[9]_0 [0]),
        .I1(O),
        .O(\HCNT_reg[0]_10 ));
  LUT2 #(
    .INIT(4'hD)) 
    i__carry_i_4__7
       (.I0(\HCNT_reg[9]_0 [0]),
        .I1(O),
        .O(\HCNT_reg[0]_11 ));
  LUT2 #(
    .INIT(4'hD)) 
    i__carry_i_4__8
       (.I0(\HCNT_reg[9]_0 [0]),
        .I1(O),
        .O(\HCNT_reg[0]_12 ));
  LUT2 #(
    .INIT(4'hD)) 
    i__carry_i_4__9
       (.I0(\HCNT_reg[9]_0 [0]),
        .I1(O),
        .O(\HCNT_reg[0]_13 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFF7F)) 
    i__carry_i_5
       (.I0(HCNT_reg[8]),
        .I1(HCNT_reg[6]),
        .I2(\HCNT_reg[9]_0 [3]),
        .I3(DSP_preDE0_carry_i_5_n_0),
        .O(i__carry_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFF7F)) 
    i__carry_i_5__0
       (.I0(HCNT_reg[8]),
        .I1(HCNT_reg[6]),
        .I2(\HCNT_reg[9]_0 [3]),
        .I3(\HCNT[10]_i_3_n_0 ),
        .O(i__carry_i_5__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    i__carry_i_5__9
       (.I0(Q[1]),
        .I1(\VCNT[10]_i_3_n_0 ),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(i__carry_i_5__9_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    i__carry_i_6__1
       (.I0(VCNT_reg[1]),
        .I1(VCNT_reg[0]),
        .I2(VCNT_reg[2]),
        .O(i__carry_i_6__1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_8
       (.I0(\HCNT_reg[9]_0 [0]),
        .I1(O),
        .O(\HCNT_reg[0]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_8__1
       (.I0(\HCNT_reg[9]_0 [0]),
        .I1(O),
        .O(\HCNT_reg[0]_1 ));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_8__2
       (.I0(\HCNT_reg[9]_0 [0]),
        .I1(O),
        .O(\HCNT_reg[0]_2 ));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_8__3
       (.I0(\HCNT_reg[9]_0 [0]),
        .I1(O),
        .O(\HCNT_reg[0]_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_8__4
       (.I0(\HCNT_reg[9]_0 [0]),
        .I1(O),
        .O(\HCNT_reg[0]_4 ));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_8__5
       (.I0(\HCNT_reg[9]_0 [0]),
        .I1(O),
        .O(\HCNT_reg[0]_5 ));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_8__6
       (.I0(\HCNT_reg[9]_0 [0]),
        .I1(O),
        .O(\HCNT_reg[0]_6 ));
  LUT4 #(
    .INIT(16'h63C6)) 
    raw_horizontal_offset__1_carry__0_i_2
       (.I0(HCNT_reg[5]),
        .I1(HCNT_reg[6]),
        .I2(RESOL[0]),
        .I3(RESOL[1]),
        .O(DI[1]));
  LUT4 #(
    .INIT(16'hBA28)) 
    raw_horizontal_offset__1_carry__0_i_3
       (.I0(HCNT_reg[4]),
        .I1(RESOL[1]),
        .I2(RESOL[0]),
        .I3(HCNT_reg[3]),
        .O(DI[0]));
  LUT3 #(
    .INIT(8'h69)) 
    raw_horizontal_offset__1_carry__0_i_4
       (.I0(HCNT_reg[8]),
        .I1(RESOL[1]),
        .I2(RESOL[0]),
        .O(\HCNT_reg[8]_0 [3]));
  LUT5 #(
    .INIT(32'h45C7BA38)) 
    raw_horizontal_offset__1_carry__0_i_5
       (.I0(HCNT_reg[6]),
        .I1(RESOL[1]),
        .I2(RESOL[0]),
        .I3(HCNT_reg[5]),
        .I4(\HCNT_reg[9]_0 [3]),
        .O(\HCNT_reg[8]_0 [2]));
  LUT4 #(
    .INIT(16'h5565)) 
    raw_horizontal_offset__1_carry__0_i_6
       (.I0(HCNT_reg[6]),
        .I1(RESOL[1]),
        .I2(RESOL[0]),
        .I3(HCNT_reg[5]),
        .O(\HCNT_reg[8]_0 [1]));
  LUT5 #(
    .INIT(32'h78E13C78)) 
    raw_horizontal_offset__1_carry__0_i_7
       (.I0(HCNT_reg[3]),
        .I1(HCNT_reg[4]),
        .I2(HCNT_reg[5]),
        .I3(RESOL[1]),
        .I4(RESOL[0]),
        .O(\HCNT_reg[8]_0 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    raw_horizontal_offset__1_carry__1_i_1
       (.I0(HCNT_reg[10]),
        .O(\HCNT_reg[10]_0 [1]));
  LUT4 #(
    .INIT(16'h10EF)) 
    raw_horizontal_offset__1_carry__1_i_2
       (.I0(HCNT_reg[8]),
        .I1(RESOL[1]),
        .I2(RESOL[0]),
        .I3(\HCNT_reg[9]_0 [4]),
        .O(\HCNT_reg[10]_0 [0]));
  LUT4 #(
    .INIT(16'h9C99)) 
    raw_horizontal_offset__1_carry_i_2
       (.I0(HCNT_reg[3]),
        .I1(HCNT_reg[4]),
        .I2(RESOL[0]),
        .I3(RESOL[1]),
        .O(\HCNT_reg[3]_0 [1]));
  LUT3 #(
    .INIT(8'h9A)) 
    raw_horizontal_offset__1_carry_i_3
       (.I0(HCNT_reg[3]),
        .I1(RESOL[0]),
        .I2(RESOL[1]),
        .O(\HCNT_reg[3]_0 [0]));
  LUT3 #(
    .INIT(8'hFB)) 
    raw_vertical_offset__0_carry__0_i_1
       (.I0(VCNT_reg[4]),
        .I1(RESOL[0]),
        .I2(RESOL[1]),
        .O(\VCNT_reg[4]_0 [1]));
  LUT3 #(
    .INIT(8'hB2)) 
    raw_vertical_offset__0_carry__0_i_2
       (.I0(VCNT_reg[3]),
        .I1(RESOL[0]),
        .I2(RESOL[1]),
        .O(\VCNT_reg[4]_0 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    raw_vertical_offset__0_carry__0_i_3
       (.I0(Q[1]),
        .O(\VCNT_reg[7]_0 [3]));
  LUT4 #(
    .INIT(16'h0BF4)) 
    raw_vertical_offset__0_carry__0_i_4
       (.I0(RESOL[1]),
        .I1(RESOL[0]),
        .I2(VCNT_reg[5]),
        .I3(Q[0]),
        .O(\VCNT_reg[7]_0 [2]));
  LUT4 #(
    .INIT(16'hC6CC)) 
    raw_vertical_offset__0_carry__0_i_5
       (.I0(VCNT_reg[4]),
        .I1(VCNT_reg[5]),
        .I2(RESOL[1]),
        .I3(RESOL[0]),
        .O(\VCNT_reg[7]_0 [1]));
  LUT4 #(
    .INIT(16'h6336)) 
    raw_vertical_offset__0_carry__0_i_6
       (.I0(VCNT_reg[3]),
        .I1(VCNT_reg[4]),
        .I2(RESOL[1]),
        .I3(RESOL[0]),
        .O(\VCNT_reg[7]_0 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    raw_vertical_offset__0_carry__1_i_1
       (.I0(VCNT_reg[10]),
        .O(\VCNT_reg[10]_0 [2]));
  LUT1 #(
    .INIT(2'h1)) 
    raw_vertical_offset__0_carry__1_i_2
       (.I0(Q[3]),
        .O(\VCNT_reg[10]_0 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    raw_vertical_offset__0_carry__1_i_3
       (.I0(Q[2]),
        .O(\VCNT_reg[10]_0 [0]));
  LUT3 #(
    .INIT(8'hEF)) 
    raw_vertical_offset__0_carry_i_1
       (.I0(VCNT_reg[2]),
        .I1(RESOL[0]),
        .I2(RESOL[1]),
        .O(\VCNT_reg[2]_0 [1]));
  LUT4 #(
    .INIT(16'h0080)) 
    raw_vertical_offset__0_carry_i_2
       (.I0(VCNT_reg[1]),
        .I1(VCNT_reg[0]),
        .I2(RESOL[1]),
        .I3(RESOL[0]),
        .O(\VCNT_reg[2]_0 [0]));
  LUT4 #(
    .INIT(16'hD32C)) 
    raw_vertical_offset__0_carry_i_5
       (.I0(VCNT_reg[2]),
        .I1(RESOL[0]),
        .I2(RESOL[1]),
        .I3(VCNT_reg[3]),
        .O(S[3]));
  LUT5 #(
    .INIT(32'hF087F0F0)) 
    raw_vertical_offset__0_carry_i_6
       (.I0(VCNT_reg[0]),
        .I1(VCNT_reg[1]),
        .I2(VCNT_reg[2]),
        .I3(RESOL[0]),
        .I4(RESOL[1]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h5565)) 
    raw_vertical_offset__0_carry_i_7
       (.I0(VCNT_reg[1]),
        .I1(VCNT_reg[0]),
        .I2(RESOL[1]),
        .I3(RESOL[0]),
        .O(S[1]));
  LUT3 #(
    .INIT(8'h69)) 
    raw_vertical_offset__0_carry_i_8
       (.I0(VCNT_reg[0]),
        .I1(RESOL[0]),
        .I2(RESOL[1]),
        .O(S[0]));
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
