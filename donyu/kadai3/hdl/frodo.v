module frodo(
    input CLK,
    input RST,
    input WR,
    input RD,
    input [15:0] DIN,
    output [15:0] DOUT,
    output EMPTY,
    output FULL,
    output VALID
);

wire em1, af2, rd1;
wire[7:0] xl, xh;
wire[15:0] x;

wire wr2;

fifo u_fifo_1(.CLK(CLK), .RST(RST), .WR(WR), .RD(rd1), .DIN(DIN), .DOUT({xl, xh}), .FULL(FULL), .EMPTY(em1), .VALID(wr2));
fifo u_fifo_2(.CLK(CLK), .RST(RST), .WR(wr2), .RD(RD), .DIN(x),   .DOUT(DOUT), .almostFULL(af2), .EMPTY(EMPTY), .VALID(VALID));
mult m_inst(xl, xh, x);

assign rd1 = ~em1 && ~FULL; // && ~(af2 && wr2);
endmodule