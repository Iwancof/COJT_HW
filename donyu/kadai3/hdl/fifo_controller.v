`timescale 1ns / 1ps

module fifo_controller (
        input clk,
        input reset,
        input first_empty,
        input first_valid,
        input second_almost_full,
        input second_full,
        
        output rd,
        output wr
    );

    assign first_available = !first_empty;
    assign wr = first_valid;
    assign rd = (!second_full && !(second_almost_full && first_valid)) && first_available;
endmodule