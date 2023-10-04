//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Wed Jul 12 14:57:37 2023
//Host        : COJTHW101 running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
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
  input ACLK;
  input ARESETN;
  input [3:0]BYTEEN;
  input DCLK;
  output [7:0]DSP_B;
  output DSP_DE;
  output DSP_FIFO_OVER;
  output DSP_FIFO_UNDER;
  output [7:0]DSP_G;
  output DSP_HSYNC_X;
  output DSP_IRQ;
  output [7:0]DSP_R;
  output DSP_VSYNC_X;
  input [15:0]RDADDR;
  output [31:0]RDATA;
  input RDEN;
  input [1:0]RESOL;
  input [31:0]WDATA;
  input [15:0]WRADDR;
  input WREN;

  wire ACLK;
  wire ARESETN;
  wire [3:0]BYTEEN;
  wire DCLK;
  wire [7:0]DSP_B;
  wire DSP_DE;
  wire DSP_FIFO_OVER;
  wire DSP_FIFO_UNDER;
  wire [7:0]DSP_G;
  wire DSP_HSYNC_X;
  wire DSP_IRQ;
  wire [7:0]DSP_R;
  wire DSP_VSYNC_X;
  wire [15:0]RDADDR;
  wire [31:0]RDATA;
  wire RDEN;
  wire [1:0]RESOL;
  wire [31:0]WDATA;
  wire [15:0]WRADDR;
  wire WREN;

  design_1 design_1_i
       (.ACLK(ACLK),
        .ARESETN(ARESETN),
        .BYTEEN(BYTEEN),
        .DCLK(DCLK),
        .DSP_B(DSP_B),
        .DSP_DE(DSP_DE),
        .DSP_FIFO_OVER(DSP_FIFO_OVER),
        .DSP_FIFO_UNDER(DSP_FIFO_UNDER),
        .DSP_G(DSP_G),
        .DSP_HSYNC_X(DSP_HSYNC_X),
        .DSP_IRQ(DSP_IRQ),
        .DSP_R(DSP_R),
        .DSP_VSYNC_X(DSP_VSYNC_X),
        .RDADDR(RDADDR),
        .RDATA(RDATA),
        .RDEN(RDEN),
        .RESOL(RESOL),
        .WDATA(WDATA),
        .WRADDR(WRADDR),
        .WREN(WREN));
endmodule
