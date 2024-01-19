`timescale 1ns / 1ps

module kadai3(
        input CLK,
        input RST,
        input WR,
        input RD,
        input [15: 0] DIN,

        output [15: 0] DOUT,
        output EMPTY,
        output FULL,
        output VALID
    );

    wire first_read, first_empty, first_valid;
    wire second_write, second_almost_full, second_full;
    wire [15: 0] first_to_mult;
    wire [15: 0] mult_to_second;

    fifo u_fifo1(CLK, RST, WR, first_read, DIN, first_to_mult, , FULL, , first_empty, , first_valid);
    fifo u_fifo2(CLK, RST, second_write, RD, mult_to_second, DOUT, second_almost_full, second_full, , EMPTY, , VALID);
    fifo_controller controller(CLK, RST, first_empty, first_valid, second_almost_full, second_full, first_read, second_write);
    mult mult_inst(first_to_mult[15: 8], first_to_mult[7: 0], mult_to_second);

endmodule