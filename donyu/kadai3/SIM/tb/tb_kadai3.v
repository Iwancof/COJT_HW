`timescale 1ns / 1ps

module tb_kadai3;

parameter CYCLE = 100;

reg clk;

reg reset, write, read;
reg [15: 0] din;

reg [15: 0] idx;
reg [15: 0] answer_write_idx;
reg [15: 0] answer_read_idx;
reg [15: 0] answer [1000: 0];

wire [15: 0] dout;
wire full, valid, empty, reset;

task check(input internal_under, input internal_over); begin
    if (internal_under) begin
        $display("unexpected under");
        $stop;
    end
    if (internal_over) begin
        $display("unexpected over");
        $stop;
    end
end
endtask

kadai3 kadai3_instrance(clk, reset, write, read, din, dout, empty, full, valid);

always #(CYCLE / 2) clk = ~clk;

initial begin
    clk = 0;
    reset = 1;

    write = 0;
    read = 0;
    din = 16'h0;
    idx = 8'h2;
    answer_write_idx = 16'h0;
    answer_read_idx = 16'h0;

    @(negedge clk) ;
    @(negedge clk) ;
    @(negedge clk) ;
        
    @(negedge clk) reset = 1;
    @(negedge clk); 
    reset = 0;

    repeat(100) begin
        if ($urandom() % 2 == 0) begin
            if (!full) begin
                @(negedge clk) begin
                    din = (idx << 8) + idx;
                    answer[answer_write_idx] = idx * idx;
                    answer_write_idx = answer_write_idx + 1;
                    write = 1;
                end
                check(kadai3_instrance.u_fifo1.UNDER, kadai3_instrance.u_fifo2.OVER);
                @(negedge clk) begin
                    write = 0;
                end
                check(kadai3_instrance.u_fifo1.UNDER, kadai3_instrance.u_fifo2.OVER);

                idx = idx + 1;
            end
        end else begin
            // read
            check(kadai3_instrance.u_fifo1.UNDER, kadai3_instrance.u_fifo2.OVER);
            if (!empty) begin
                @(negedge clk) begin
                    read = 1;
                end

                check(kadai3_instrance.u_fifo1.UNDER, kadai3_instrance.u_fifo2.OVER);
                @(negedge clk) begin
                    read = 0;
                end

                check(kadai3_instrance.u_fifo1.UNDER, kadai3_instrance.u_fifo2.OVER);
                if (!valid) begin
                    $display("cannot read value");
                    $stop;
                end

                if (answer[answer_read_idx] !== dout) begin
                    $display("expected %d == %d", answer[answer_read_idx], dout);
                    $stop;
                end
                answer_read_idx = answer_read_idx + 1;
            end
        end
    end

    $finish;
end

endmodule