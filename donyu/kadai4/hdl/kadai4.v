`timescale 1ns / 1ps

module kadai4 (
        input CLK,
        input RST,
        input [7: 0] A, B,
        input ACK,
        input START,
        input HALT,

        output [15: 0] X,
        output X_VALID,
        output REQ_AB
    );

    localparam S_IDEL = 2'b00;
    localparam S_INPUT = 2'b01;
    localparam S_EXEC = 2'b10;
    localparam S_OUTPUT = 2'b11;

    wire write, empty, first_full, second_full, valid, whole_reset, read, stop;
    reg idle_reset;

    assign read = (state == S_OUTPUT) && !empty;
    assign stop = !(state == S_EXEC);

    assign whole_reset = RST || HALT || idle_reset;
    assign REQ_AB = (state == S_INPUT) & ~first_full;

    assign write = ACK;
    assign X_VALID = valid;

    reg [1: 0] state, next;
    // 00: S_IDLE
    // 01: S_INPUT
    // 10: S_EXEC
    // 11: S_OUTPUT

    always @(posedge CLK) begin
        // state
        if (whole_reset) begin
            state <= S_IDEL;
        end else begin
            state <= next;
        end
    end

    always @(posedge CLK) begin
        // idle_reset
        if (whole_reset) begin
            idle_reset <= 0;
        end else begin
            if (state != S_IDEL && next == S_IDEL) begin
                idle_reset <= 1;
            end
        end
    end
    always @(*) begin
        case (state)
            S_IDEL:     if (START) next <= S_INPUT;
                        else next <= S_IDEL;
            S_INPUT:    if (first_full) next <= S_EXEC;
                        else next <= S_INPUT;
            S_EXEC:     if (second_full) next <= S_OUTPUT;
                        else next <= S_EXEC;
            S_OUTPUT:   if (empty) next <= S_IDEL;
                        else next <= S_OUTPUT;
            default:    next <= S_IDEL;
        endcase
    end

    double_buffer buffer_inst(CLK, whole_reset, write, read, {A, B}, stop, X, empty, first_full, second_full, valid);
endmodule