// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sat May 13 08:19:58 2023
// Host        : COJTHW101 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/HW101.COJTHW/COJT/donyu/kadai4/SIM/kadai4.sim/sim_1/synth/func/xsim/tb_kadai4_func_synth.v
// Design      : kadai4
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* S_EXEC = "2'b10" *) (* S_IDEL = "2'b00" *) (* S_INPUT = "2'b01" *) 
(* S_OUTPUT = "2'b11" *) 
(* NotValidForBitStream *)
module kadai4
   (CLK,
    RST,
    A,
    B,
    ACK,
    START,
    HALT,
    X,
    X_VALID,
    REQ_AB);
  input CLK;
  input RST;
  input [7:0]A;
  input [7:0]B;
  input ACK;
  input START;
  input HALT;
  output [15:0]X;
  output X_VALID;
  output REQ_AB;

  wire REQ_AB;
  wire [15:0]X;
  wire X_VALID;

  OBUF REQ_AB_OBUF_inst
       (.I(1'b0),
        .O(REQ_AB));
  OBUF \X_OBUF[0]_inst 
       (.I(1'b0),
        .O(X[0]));
  OBUF \X_OBUF[10]_inst 
       (.I(1'b0),
        .O(X[10]));
  OBUF \X_OBUF[11]_inst 
       (.I(1'b0),
        .O(X[11]));
  OBUF \X_OBUF[12]_inst 
       (.I(1'b0),
        .O(X[12]));
  OBUF \X_OBUF[13]_inst 
       (.I(1'b0),
        .O(X[13]));
  OBUF \X_OBUF[14]_inst 
       (.I(1'b0),
        .O(X[14]));
  OBUF \X_OBUF[15]_inst 
       (.I(1'b0),
        .O(X[15]));
  OBUF \X_OBUF[1]_inst 
       (.I(1'b0),
        .O(X[1]));
  OBUF \X_OBUF[2]_inst 
       (.I(1'b0),
        .O(X[2]));
  OBUF \X_OBUF[3]_inst 
       (.I(1'b0),
        .O(X[3]));
  OBUF \X_OBUF[4]_inst 
       (.I(1'b0),
        .O(X[4]));
  OBUF \X_OBUF[5]_inst 
       (.I(1'b0),
        .O(X[5]));
  OBUF \X_OBUF[6]_inst 
       (.I(1'b0),
        .O(X[6]));
  OBUF \X_OBUF[7]_inst 
       (.I(1'b0),
        .O(X[7]));
  OBUF \X_OBUF[8]_inst 
       (.I(1'b0),
        .O(X[8]));
  OBUF \X_OBUF[9]_inst 
       (.I(1'b0),
        .O(X[9]));
  OBUF X_VALID_OBUF_inst
       (.I(1'b0),
        .O(X_VALID));
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
