///////////////////////////////////////////////////////////////////////////////
//    
//    Company:          Xilinx
//    Engineer:         Jim Tatsukawa, Karl Kurbjun and Carl Ribbing
//    Date:             5/30/2013
//    Design Name:      MMCM DRP
//    Module Name:      top.v
//    Version:          1.03
//    Target Devices:   7 Series Family
//    Tool versions:    14.5
//    Description:      This is a basic demonstration of the MMCM_DRP 
//                      connectivity to the MMCM_ADV.
// 
//    Disclaimer:  XILINX IS PROVIDING THIS DESIGN, CODE, OR
//                 INFORMATION "AS IS" SOLELY FOR USE IN DEVELOPING
//                 PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY
//                 PROVIDING THIS DESIGN, CODE, OR INFORMATION AS
//                 ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE,
//                 APPLICATION OR STANDARD, XILINX IS MAKING NO
//                 REPRESENTATION THAT THIS IMPLEMENTATION IS FREE
//                 FROM ANY CLAIMS OF INFRINGEMENT, AND YOU ARE
//                 RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY
//                 REQUIRE FOR YOUR IMPLEMENTATION.  XILINX
//                 EXPRESSLY DISCLAIMS ANY WARRANTY WHATSOEVER WITH
//                 RESPECT TO THE ADEQUACY OF THE IMPLEMENTATION,
//                 INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR
//                 REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE
//                 FROM CLAIMS OF INFRINGEMENT, IMPLIED WARRANTIES
//                 OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
//                 PURPOSE.
// 
//                 (c) Copyright 2009-1010 Xilinx, Inc.
//                 All rights reserved.
// 
///////////////////////////////////////////////////////////////////////////////

//-----------------------------------------------------------------------------
// Description : COJTédólÇ…ïœçX
//
//-----------------------------------------------------------------------------
// Revisions   :
// Date        Version  Author        Description
// 2014/02/17  1.00     M.Kobayashi   Modified
//-----------------------------------------------------------------------------

`timescale 1ps/1ps

module top_mmcme2 (
    input           SSTEP,
    input   [1:0]   STATE,
    input           RST,
    input           CLKIN, 
    output          SRDY,
    output          LOCKED,
    output          CLK0OUT,
    output          CLK1OUT
);
   
   // These signals are used as direct connections between the MMCM_ADV and the
   // MMCM_DRP.
   wire [15:0]    di;
   wire [6:0]     daddr;
   wire [15:0]    dout;
   wire           den;
   wire           dwe;
   wire           dclk;
   wire           rst_mmcm;
   wire           drdy;
   
   // These signals are used for the BUFG's necessary for the design.
   wire           clkin_bufgout;
   
   wire           clkfb_bufgout;
   wire           clkfb_bufgin;
   
   wire           clk0_bufgin;
   wire           clk1_bufgin;

   BUFG BUFG_IN (
      .O(clkin_bufgout),
      .I(CLKIN) 
   );

   BUFG BUFG_FB (
      .O(clkfb_bufgout),
      .I(clkfb_bufgin) 
   );

   BUFG BUFG_CLK0 (
      .O(CLK0OUT),
      .I(clk0_bufgin) 
   );

   BUFG BUFG_CLK1 (
      .O(CLK1OUT),
      .I(clk1_bufgin) 
   );

   // MMCM_ADV that reconfiguration will take place on
   MMCME2_ADV #(
      // "HIGH", "LOW" or "OPTIMIZED"
      .BANDWIDTH("OPTIMIZED"), 
      .DIVCLK_DIVIDE(1), // (1 to 106)
      
      .CLKFBOUT_MULT_F(30), // (2 to 64)
      .CLKFBOUT_PHASE(0.0),
      .CLKFBOUT_USE_FINE_PS("FALSE"),

      // Set the clock period (ns) of input clocks
      .CLKIN1_PERIOD(25.000), 
      .REF_JITTER1(0.010),
      
      .CLKIN2_PERIOD(25.000),
      .REF_JITTER2(0.010),

      // CLKOUT parameters:
      // DIVIDE: (1 to 128)
      // DUTY_CYCLE: (0.01 to 0.99) - This is dependent on the divide value.
      // PHASE: (0.0 to 360.0) - This is dependent on the divide value.
      // USE_FINE_PS: (TRUE or FALSE)

      .CLKOUT0_DIVIDE_F(48), 
      .CLKOUT0_DUTY_CYCLE(0.5), 
      .CLKOUT0_PHASE(0.0), 
      .CLKOUT0_USE_FINE_PS("FALSE"),

      .CLKOUT1_DIVIDE(48), 
      .CLKOUT1_DUTY_CYCLE(0.5), 
      .CLKOUT1_PHASE(-22.5), 

      // Misc parameters
      .COMPENSATION("ZHOLD"),
      .STARTUP_WAIT("FALSE")
   ) mmcme2_test_inst (
      .CLKFBOUT(clkfb_bufgin),
      .CLKFBOUTB(),
      
      .CLKFBSTOPPED(),
      .CLKINSTOPPED(),

      // Clock outputs
      .CLKOUT0(clk0_bufgin), 
      .CLKOUT0B(),
      .CLKOUT1(clk1_bufgin),
      .CLKOUT1B(),
      .CLKOUT2(),
      .CLKOUT2B(),
      .CLKOUT3(),
      .CLKOUT3B(),
      .CLKOUT4(), 
      .CLKOUT5(), 
      .CLKOUT6(),

      // DRP Ports
      .DO(dout), // (16-bits)
      .DRDY(drdy), 
      .DADDR(daddr), // 5 bits
      .DCLK(dclk), 
      .DEN(den), 
      .DI(di), // 16 bits
      .DWE(dwe), 

      .LOCKED(LOCKED), 
      .CLKFBIN(clkfb_bufgout), 

      // Clock inputs
      .CLKIN1(CLKIN),
      .CLKIN2(),
      .CLKINSEL(1'b1), 

      // Fine phase shifting
      .PSDONE(),
      .PSCLK(1'b0),
      .PSEN(1'b0),
      .PSINCDEC(1'b0),
 
      .PWRDWN(1'b0),
      .RST(rst_mmcm)
   );
   
   // MMCM_DRP instance that will perform the reconfiguration operations
   mmcme2_drp #(
      //***********************************************************************
      // State 1 Parameters - These are for the first reconfiguration state.
      //***********************************************************************
      // Set the multiply to 6.0 with 0 deg phase offset, optimal bandwidth, input divide of 1
      .S1_CLKFBOUT_MULT(30),
      .S1_CLKFBOUT_PHASE(000_000),
      .S1_CLKFBOUT_FRAC(000), 
      .S1_CLKFBOUT_FRAC_EN(0), 

      .S1_BANDWIDTH("OPTIMAL"),
      .S1_DIVCLK_DIVIDE(1),
      
      // Set clockout0 to a divide of 6.0 (unity gain), 0 deg phase offset, 50/50 duty cycle
      .S1_CLKOUT0_DIVIDE(48),
      .S1_CLKOUT0_PHASE(000_000),
      .S1_CLKOUT0_DUTY(50000),
      .S1_CLKOUT0_FRAC(000), 
      .S1_CLKOUT0_FRAC_EN(0), 

      .S1_CLKOUT1_DIVIDE(48),
      .S1_CLKOUT1_PHASE(-22500),
      .S1_CLKOUT1_DUTY(50000),
      
      //***********************************************************************
      // State 2 Parameters - These are for the second reconfiguration state.
      //***********************************************************************
      .S2_CLKFBOUT_MULT(26),
      .S2_CLKFBOUT_PHASE(000_000),
      .S2_CLKFBOUT_FRAC(000), 
      .S2_CLKFBOUT_FRAC_EN(0), 

      .S2_BANDWIDTH("OPTIMAL"),
      .S2_DIVCLK_DIVIDE(1),

      // Set clockout 0 to a divide of 4.750, 0 deg phase offset, 50/50 duty cycle
      .S2_CLKOUT0_DIVIDE(16),
      .S2_CLKOUT0_PHASE(000_000),
      .S2_CLKOUT0_DUTY(50000),
      .S2_CLKOUT0_FRAC(000), 
      .S2_CLKOUT0_FRAC_EN(0), 

      .S2_CLKOUT1_DIVIDE(16),
      .S2_CLKOUT1_PHASE(-67500),
      .S2_CLKOUT1_DUTY(50000),
      
      //***********************************************************************
      // State 3 Parameters - These are for the second reconfiguration state.
      //***********************************************************************
      .S3_CLKFBOUT_MULT(27),
      .S3_CLKFBOUT_PHASE(000_000),
      .S3_CLKFBOUT_FRAC(000), 
      .S3_CLKFBOUT_FRAC_EN(0), 

      .S3_BANDWIDTH("OPTIMAL"),
      .S3_DIVCLK_DIVIDE(1),

      // Set clockout 0 to a divide of 4.750, 0 deg phase offset, 50/50 duty cycle
      .S3_CLKOUT0_DIVIDE(10),
      .S3_CLKOUT0_PHASE(000_000),
      .S3_CLKOUT0_DUTY(50000),
      .S3_CLKOUT0_FRAC(000), 
      .S3_CLKOUT0_FRAC_EN(0),

      .S3_CLKOUT1_DIVIDE(10),
      .S3_CLKOUT1_PHASE(-67500),
      .S3_CLKOUT1_DUTY(50000)

   ) mmcme2_drp_inst (
      // Top port connections
      .SADDR(STATE),
      .SEN(SSTEP),
      .RST(RST),
      .SRDY(SRDY),
      
      // Input from IBUFG
      .SCLK(clkin_bufgout),
      
      // Direct connections to the MMCM_ADV
      .DO(dout),
      .DRDY(drdy),
      .LOCKED(LOCKED),
      .DWE(dwe),
      .DEN(den),
      .DADDR(daddr),
      .DI(di),
      .DCLK(dclk),
      .RST_MMCM(rst_mmcm)
   );


endmodule
