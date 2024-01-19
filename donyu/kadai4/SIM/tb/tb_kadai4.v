`timescale 1ns / 1ps

module tb_kadai4;

task assert_eq (input [16: 0] left, input [16: 0] right) ;
    if (left !== right) begin
        $display("expected %d, got %d", right, left);
        $stop;
    end
endtask

parameter CYCLE = 100;

reg clk, rst, ack, start, halt;
reg[7: 0] a, b;
reg[15: 0] step;
reg[15: 0] idx;

wire valid, req_ab;
wire[0:15] dout;

kadai4 kadai4_impl(clk, rst, a, b, ack, start, halt, dout, valid, req_ab);

always #(CYCLE / 2) clk = ~clk;
initial step = 0;
always @(posedge clk) step = step + 1;

initial begin
    clk = 0;
    ack = 0;
    start = 0;
    halt = 0;
    a = 0;
    b = 2;

    @(negedge clk) rst = 1;
    @(negedge clk) rst = 0;

    // start cycle 1
    @(negedge clk) start = 1;
    @(negedge clk) start = 0;

    for (a = 0; a < 16; a = a + 1) begin
        @(negedge clk);
        if(req_ab) begin
            ack = 1;
            @(negedge clk);
            ack = 0;
            @(negedge clk);
        end else begin
            // a = 9 --> 15;
            // $display("req_ab down\n");
        end
    end

    @(posedge valid) ;
    @(negedge clk) ;

    for(idx = 1; idx <= 8; idx = idx + 1) begin
        // assert_eq(dout, idx * 2);
        @(negedge clk) ;
    end

    // IDLE
    // assert_eq(kadai4_impl.buffer_inst.u_fifo0.EMPTY, 1);
    // assert_eq(kadai4_impl.buffer_inst.u_fifo1.EMPTY, 1);

    // start cycle 2
    @(negedge clk) start = 1;
    @(negedge clk) start = 0;

    for (a = 0; a < 4; a = a + 1) begin
        @(negedge clk);
        ack = 1;
    end

    @(negedge clk) ack = 0;

    // IDLE
    // assert_eq(kadai4_impl.buffer_inst.u_fifo0.EMPTY, 0);
    // assert_eq(kadai4_impl.buffer_inst.u_fifo1.EMPTY, 1);

    // wait for a few clocks
    for (a = 0; a < 4; a = a + 1) begin
        @(negedge clk);
    end

    for (a = 4; a < 8; a = a + 1) begin
        @(negedge clk);
        ack <= 1;
    end

    @(negedge clk) ack = 0;

    @(posedge valid) ;
    @(negedge clk) ;

    for(idx = 1; idx <= 8; idx = idx + 1) begin
        // assert_eq(dout, idx * 2);
        @(negedge clk) ;
    end

    // IDLE
    // assert_eq(kadai4_impl.buffer_inst.u_fifo0.EMPTY, 1);
    // assert_eq(kadai4_impl.buffer_inst.u_fifo1.EMPTY, 1);

    // start cycle 3
    @(negedge clk) start = 1;
    @(negedge clk) start = 0;

    for (a = 0; a < 4; a = a + 1) begin
        @(negedge clk);
        ack = 1;
    end

    @(negedge clk) ack = 0;

    // IDLE
    // assert_eq(kadai4_impl.buffer_inst.u_fifo0.EMPTY, 0);
    // assert_eq(kadai4_impl.buffer_inst.u_fifo1.EMPTY, 1);

    // halt cycle 3
    halt = 1;
    @(negedge clk) halt = 0;

    // IDLE
    // assert_eq(kadai4_impl.buffer_inst.u_fifo0.EMPTY, 1);
    // assert_eq(kadai4_impl.buffer_inst.u_fifo1.EMPTY, 1);

    @(negedge clk) start = 1;
    @(negedge clk) start = 0;

    for (a = 0; a < 8; a = a + 1) begin
        @(negedge clk);
        ack = 1;
    end

    @(negedge clk) ack = 0;

    // wait for a few clocks
    for (a = 0; a < 5; a = a + 1) begin
        @(negedge clk);
    end

    // IDLE
    // assert_eq(kadai4_impl.buffer_inst.u_fifo0.EMPTY, 0);
    // assert_eq(kadai4_impl.buffer_inst.u_fifo1.EMPTY, 0);

    // halt cycle 4
    halt = 1;
    @(negedge clk) halt = 0;

    // IDLE
    // assert_eq(kadai4_impl.buffer_inst.u_fifo0.EMPTY, 1);
    // assert_eq(kadai4_impl.buffer_inst.u_fifo1.EMPTY, 1);

    // start cycle 5
    @(negedge clk) start = 1;
    @(negedge clk) start = 0;

    for (a = 0; a < 8; a = a + 1) begin
        @(negedge clk);
        ack = 1;
    end

    @(negedge clk) ack = 0;

    @(posedge valid) ;
    @(negedge clk) ;

    // IDLE
    // assert_eq(kadai4_impl.buffer_inst.u_fifo0.EMPTY, 1);
    // assert_eq(kadai4_impl.buffer_inst.u_fifo1.EMPTY, 0);

    for(idx = 1; idx <= 8; idx = idx + 1) begin
        // assert_eq(dout, idx * 2);
        @(negedge clk) ;
    end

    // insert 7 element and wait.
    halt = 1;
    @(negedge clk) halt = 0;

    @(negedge clk);
    @(negedge clk) start = 1;
    @(negedge clk) start = 0;
    @(posedge clk);

    for (a = 0; a < 7; a = a + 1) begin
        @(negedge clk);
        ack = 1;
    end

    @(negedge clk) begin
        ack = 0;
    end
    @(negedge clk);
    @(negedge clk);
    @(negedge clk) begin
        a = 8;
        ack = 1;
    end
    @(negedge clk) begin
        ack = 0;
    end

    @(posedge valid);
    @(negedge clk);
    for (a = 0; a < 8; a = a + 1) begin
        // $display("got %d", dout);
        assert_eq(dout, (a + 1) * 2);
        @(negedge clk) ;
    end


    $display("all tests are passed");
    $finish;
end

endmodule