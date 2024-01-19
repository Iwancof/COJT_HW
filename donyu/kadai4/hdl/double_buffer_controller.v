`timescale 1ns / 1ps

module double_buffer_controller (
        input clk,
        input reset,
        input first_empty,
        input first_valid,
        input second_almost_full,
        input second_full,
        input stop,
        
        output rd,
        output wr
    );

    assign first_available = !first_empty;
    assign wr = first_valid;
    assign rd = !stop && (!second_full && !(second_almost_full && first_valid)) && first_available;

endmodule