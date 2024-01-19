`timescale 1ns / 1ps

module double_buffer(
        input CLK,
        input RST,
        input WR,
        input RD,
        input [15: 0] DIN,
        input STOP,

        output [15: 0] DOUT,
        output EMPTY,
        output FIRST_FULL,
        output SECOND_FULL,
        output VALID
    );

    wire first_read, first_empty, first_valid;
    wire second_write, second_almost_full;
    wire [15: 0] first_to_mult;
    wire [15: 0] mult_to_second;

    fifo u_fifo0(CLK, RST, WR, first_read, DIN, first_to_mult, , FIRST_FULL, , first_empty, , first_valid);
    fifo u_fifo1(CLK, RST, second_write, RD, mult_to_second, DOUT, second_almost_full, SECOND_FULL, , EMPTY, , VALID);
    double_buffer_controller controller(CLK, RST, first_empty, first_valid, second_almost_full, SECOND_FULL, STOP, first_read, second_write);
    mult mult_inst(first_to_mult[15: 8], first_to_mult[7: 0], mult_to_second);

endmodule