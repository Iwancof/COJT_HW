`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/28 19:36:49
// Design Name: 
// Module Name: fifo
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module fifo(
        input CLK,
        input RST,
        input WR,
        input RD,
        input [15: 0] DIN,

        output reg [15: 0] DOUT,
        output reg almostFULL,
        output reg FULL,
        output reg OVER,
        output reg EMPTY,
        output reg UNDER,
        output reg VALID
    );

    reg [15: 0] mem[0: 7];
    reg [2: 0] read_ptr, write_ptr;

    always @(posedge CLK) begin
        // OVER
        if (RST) begin
            OVER <= 0;
        end else if (FULL && WR) begin
            OVER <= 1;
        end else begin
            OVER <= 0;
        end
    end

    always @(posedge CLK) begin
        // UNDER
        if (RST) begin
            UNDER <= 0;
        end else if (EMPTY && RD) begin
            UNDER <= 1;
        end else begin
            UNDER <= 0;
        end
    end

    always @(posedge CLK) begin
        // write_ptr
        if (RST) begin
            write_ptr <= 0;
        end else if (FULL) begin
            // nothing
        end else if (WR) begin
            write_ptr <= (write_ptr + 1) & 3'b111;
        end
    end

    always @(posedge CLK) begin
        // read_ptr
        if (RST) begin
            read_ptr <= 0;
        end else if (EMPTY) begin
            // nothing
        end else if (RD) begin
            read_ptr <= (read_ptr + 1) & 3'b111;
        end
    end

    always @ (posedge CLK) begin
        // FULL
        if(RST) begin
            FULL <= 0;
        end else if (RD) begin
            FULL <= 0; // FULL && RD && WR --> read only
        end else if (WR) begin
            if (((write_ptr + 1) & 3'b111) == read_ptr) begin
                FULL <= 1;
            end
        end
    end

    always @(posedge CLK) begin
        // almostFULL
        if (RST) begin
            almostFULL <= 0;
        end else if ((WR && RD) || (!WR && !RD)) begin
            if (EMPTY) begin
                almostFULL <= 0;
            end else if (write_ptr == read_ptr) begin
                almostFULL <= 1; // almostFULL && FULL
            end else if (((write_ptr + 1) & 3'b111) == read_ptr) begin
                almostFULL <= 1; // almostFULL
            end
        end else if (WR) begin
            if (almostFULL && write_ptr == read_ptr) begin
                almostFULL <= 1; // almostFULL && FULL && OVER
            end else if (((write_ptr + 1) & 3'b111) == read_ptr) begin
                almostFULL <= 1; // almostFULL && FULL
            end else if (((write_ptr + 2) & 3'b111) == read_ptr) begin
                almostFULL <= 1; // almostFULL
            end else begin
                almostFULL <= 0;
            end
        end else if (RD) begin
            if (EMPTY) begin
                almostFULL <= 0;
            end else if (write_ptr == read_ptr ) begin
                almostFULL <= 1;
            end else begin
                almostFULL <= 0;
            end
        end else begin
            almostFULL <= 0;
        end
    end

    always @ (posedge CLK) begin
        // VALID
        if (RST) begin
            VALID <= 0;
        end else if (RD) begin
            if (!EMPTY) begin
                VALID <= 1;
            end else begin
                VALID <= 0;
            end
        end else begin
            VALID <= 0;
        end
    end

    always @(posedge CLK) begin
        // mem
        if (RST) begin
            // memory initialization is not needed.
        end else if (WR) begin
            if(!FULL) begin
                mem[write_ptr] <= DIN;
            end
        end
    end

    always @(posedge CLK) begin
        // DOUT
        if (RST) begin
            // initialization is not needed.
            DOUT <= 16'h0000;
        end else if (RD) begin
            if(!EMPTY) begin
                DOUT <= mem[read_ptr];
            end
        end
    end

    always @(posedge CLK) begin
        // EMPTY
        if (RST) begin
            EMPTY <= 1;
        end else if (WR) begin
            EMPTY <= 0;
        end else if (RD) begin
            if (FULL) begin
                EMPTY <= 0;
            end else if (write_ptr == read_ptr) begin
                EMPTY <= 1;
            end else if(write_ptr == ((read_ptr + 1) & 3'b111)) begin
                EMPTY <= 1;
            end else begin
                EMPTY <= 0;
            end
        end else if (FULL) begin
            EMPTY <= 0;
        end else if(write_ptr == read_ptr) begin
            EMPTY <= 1;
        end else begin
            EMPTY <= 0;
        end
    end
endmodule
