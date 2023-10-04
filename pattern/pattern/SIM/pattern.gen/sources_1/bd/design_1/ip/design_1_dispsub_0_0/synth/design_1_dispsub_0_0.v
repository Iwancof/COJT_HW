// (c) Copyright 1995-2023 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:user:dispsub:1.0
// IP Revision: 2

(* X_CORE_INFO = "dispsub,Vivado 2022.2" *)
(* CHECK_LICENSE_TYPE = "design_1_dispsub_0_0,dispsub,{}" *)
(* CORE_GENERATION_INFO = "design_1_dispsub_0_0,dispsub,{x_ipProduct=Vivado 2022.2,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=dispsub,x_ipVersion=1.0,x_ipCoreRevision=2,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_dispsub_0_0 (
  ARESETN,
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
  DVI_DATA
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ARESETN RST" *)
input wire ARESETN;
input wire CLK40;
output wire DCLK;
input wire [1 : 0] RESOL;
input wire [7 : 0] DSP_R;
input wire [7 : 0] DSP_G;
input wire [7 : 0] DSP_B;
input wire DSP_DE;
input wire DSP_HSYNC_X;
input wire DSP_VSYNC_X;
output wire DVI_CLK;
output wire DVI_HSYNC;
output wire DVI_VSYNC;
output wire DVI_DE;
output wire [11 : 0] DVI_DATA;

  dispsub inst (
    .ARESETN(ARESETN),
    .CLK40(CLK40),
    .DCLK(DCLK),
    .RESOL(RESOL),
    .DSP_R(DSP_R),
    .DSP_G(DSP_G),
    .DSP_B(DSP_B),
    .DSP_DE(DSP_DE),
    .DSP_HSYNC_X(DSP_HSYNC_X),
    .DSP_VSYNC_X(DSP_VSYNC_X),
    .DVI_CLK(DVI_CLK),
    .DVI_HSYNC(DVI_HSYNC),
    .DVI_VSYNC(DVI_VSYNC),
    .DVI_DE(DVI_DE),
    .DVI_DATA(DVI_DATA)
  );
endmodule
