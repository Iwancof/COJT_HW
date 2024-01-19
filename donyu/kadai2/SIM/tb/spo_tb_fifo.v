`timescale 1ns / 1ps

module spo_tb_fifo;

parameter CYCLE = 100;

reg  clk;
reg[63:0] step;

reg rst, we, re;
reg[15:0] din;

wire[15:0] dout;
wire almost_full, full, over, empty, under, valid;

reg [15: 0] idx;

fifo fifo_inst(clk, rst, we, re, din, dout, almost_full, full, over, empty, under, valid);

always #(CYCLE / 2) clk = ~clk;

always @(posedge clk) step = step + 1;

initial begin
  step <= 0;
  clk <= 0;
  we <= 0;
  re <= 0;
  rst <= 0;
  din <= 16'h0000;

  @(negedge clk) rst <= 1;
  @(negedge clk);

  rst <= 0;
  we <= 1;
  din <= 16'h0001;

  if (dout != 16'h0000 || almost_full != 1'b0 || full != 1'b0 || over != 1'b0 || empty != 1'b1 || under != 1'b0 || valid != 1'b0) begin
    $display("FAILURE at %d", 1);
    $stop;
  end
  @(negedge clk) din <= 16'h0002;

  if (dout != 16'h0000 || almost_full != 1'b0 || full != 1'b0 || over != 1'b0 || empty != 0'b0 || under != 1'b0 || valid != 1'b0) begin
    $display("FAILURE at %d", 2);
    $stop;
  end

  @(negedge clk) din <= 16'h0003;

  if (dout != 16'h0000 || almost_full != 1'b0 || full != 1'b0 || over != 1'b0 || empty != 1'b0 || under != 1'b0 || valid != 1'b0) begin
    $display("FAILURE at %d", 3);
    $stop;
  end

  @(negedge clk) din <= 16'h0004;

  if (dout != 16'h0000 || almost_full != 1'b0 || full != 1'b0 || over != 1'b0 || empty != 1'b0 || under != 1'b0 || valid != 1'b0) begin
    $display("FAILURE at %d", 4);
    $stop;
  end

  @(negedge clk) din <= 16'h0005;

  if (dout != 16'h0000 || almost_full != 1'b0 || full != 1'b0 || over != 1'b0 || empty != 1'b0 || under != 1'b0 || valid != 1'b0) begin
    $display("FAILURE at %d", 5);
    $stop;
  end

  @(negedge clk) din <= 16'h0006;

  if (dout != 16'h0000 || almost_full != 1'b0 || full != 1'b0 || over != 1'b0 || empty != 1'b0 || under != 1'b0 || valid != 1'b0) begin
    $display("FAILURE at %d", 6);
    $stop;
  end

  @(negedge clk) din <= 16'h0007;

  if (dout != 16'h0000 || almost_full != 1'b0 || full != 1'b0 || over != 1'b0 || empty != 1'b0 || under != 1'b0 || valid != 1'b0) begin
    $display("FAILURE at %d", 7);
    $stop;
  end

  @(negedge clk) din <= 16'h0008;
  if (dout != 16'h0000 || almost_full != 1'b1 || full != 1'b0 || over != 1'b0 || empty != 1'b0 || under != 1'b0 || valid != 1'b0) begin
    $display("FAILURE at %d", 8);
    $stop;
  end

  @(negedge clk) din <= 16'h0009;

  @(negedge clk) din <= 16'h000a;
  if (dout != 16'h0000 || almost_full != 1'b1 || full != 1'b1 || over != 1'b1 || empty != 1'b0 || under != 1'b0 || valid != 1'b0) begin
    $display("FAILURE at %d", 9);
    $stop;
  end

  @(negedge clk) we <= 0;
  if (dout != 16'h0000 || almost_full != 1'b1 || full != 1'b1 || over != 1'b1 || empty != 1'b0 || under != 1'b0 || valid != 1'b0) begin
    $display("FAILURE at %d", 10);
    $stop;
  end

  @(negedge clk) re <= 1;
  if (dout != 16'h0000 || almost_full != 1'b1 || full != 1'b1 || over != 1'b0 || empty != 1'b0 || under != 1'b0 || valid != 1'b0) begin
    $display("FAILURE at %d", 11);
    $stop;
  end

  @(negedge clk);
  if (dout != 16'h0001 || almost_full != 1'b1 || full != 1'b0 || over != 1'b0 || empty != 1'b0 || under != 1'b0 || valid != 1'b1) begin
    $display("FAILURE at %d", 12);
    $stop;
  end

  @(negedge clk);
  we <= 1;
  din <= 16'h000b;
  if (dout != 16'h0002 || almost_full != 1'b0 || full != 1'b0 || over != 1'b0 || empty != 1'b0 || under != 1'b0 || valid != 1'b1) begin
    $display("FAILURE at %d", 13);
    $stop;
  end

  @(negedge clk);
  re <= 0;
  din <= 16'h000c;
  if (dout != 16'h0003 || almost_full != 1'b0 || full != 1'b0 || over != 1'b0 || empty != 1'b0 || under != 1'b0 || valid != 1'b1) begin
    $display("FAILURE at %d", 14);
    $stop;
  end

  @(negedge clk);
  din <= 16'h000d;
  re <= 1;
  if (dout != 16'h0003 || almost_full != 1'b1 || full != 1'b0 || over != 1'b0 || empty != 1'b0 || under != 1'b0 || valid != 0'b0) begin
    $display("FAILURE at %d", 15);
    $stop;
  end

  @(negedge clk);
  din <= 16'h000e;
  if (dout != 16'h0004 || almost_full != 1'b1 || full != 1'b0 || over != 1'b0 || empty != 1'b0 || under != 1'b0 || valid != 0'b1) begin
    $display("FAILURE at %d", 16);
    $stop;
  end

  @(negedge clk);
  din <= 16'h000f;
  if (dout != 16'h0005 || almost_full != 1'b1 || full != 1'b0 || over != 1'b0 || empty != 1'b0 || under != 1'b0 || valid != 0'b1) begin
    $display("FAILURE at %d", 17);
    $stop;
  end

  @(negedge clk);
  din <= 16'h0010;
  if (dout != 16'h0006 || almost_full != 1'b1 || full != 1'b0 || over != 1'b0 || empty != 1'b0 || under != 1'b0 || valid != 0'b1) begin
    $display("FAILURE at %d", 18);
    $stop;
  end

  @(negedge clk) we <= 0;
  if (dout != 16'h0007 || almost_full != 1'b1 || full != 1'b0 || over != 1'b0 || empty != 1'b0 || under != 1'b0 || valid != 1'b1) begin
    $display("FAILURE at %d", 19);
    $stop;
  end

  @(negedge clk);
  if (dout != 16'h0008 || almost_full != 1'b0 || full != 1'b0 || over != 1'b0 || empty != 1'b0 || under != 1'b0 || valid != 1'b1) begin
    $display("FAILURE at %d", 20);
    $stop;
  end

  @(negedge clk);
  if (dout != 16'h000b || almost_full != 1'b0 || full != 1'b0 || over != 1'b0 || empty != 1'b0 || under != 1'b0 || valid != 1'b1) begin
    $display("FAILURE at %d", 21);
    $stop;
  end

  @(negedge clk);
  if (dout != 16'h000c || almost_full != 1'b0 || full != 1'b0 || over != 1'b0 || empty != 1'b0 || under != 1'b0 || valid != 1'b1) begin
    $display("FAILURE at %d", 22);
    $stop;
  end

  @(negedge clk);
  if (dout != 16'h000d || almost_full != 1'b0 || full != 1'b0 || over != 1'b0 || empty != 1'b0 || under != 1'b0 || valid != 1'b1) begin
    $display("FAILURE at %d", 23);
    $stop;
  end

  @(negedge clk);
  if (dout != 16'h000e || almost_full != 1'b0 || full != 1'b0 || over != 1'b0 || empty != 1'b0 || under != 1'b0 || valid != 1'b1) begin
    $display("FAILURE at %d", 24);
    $stop;
  end

  @(negedge clk);
  if (dout != 16'h000f || almost_full != 1'b0 || full != 1'b0 || over != 1'b0 || empty != 1'b0 || under != 1'b0 || valid != 1'b1) begin
    $display("FAILURE at %d", 25);
    $stop;
  end

  @(negedge clk);
  if (dout != 16'h0010 || almost_full != 1'b0 || full != 1'b0 || over != 1'b0 || empty != 1'b1 || under != 1'b0 || valid != 1'b1) begin
    $display("FAILURE at %d", 26);
    $stop;
  end

  @(negedge clk);
  re <= 0;
  if (dout != 16'h0010 || almost_full != 1'b0 || full != 1'b0 || over != 1'b0 || empty != 1'b1 || under != 1'b1 || valid != 1'b0) begin
    $display("FAILURE at %d", 27);
    $stop;
  end

  @(negedge clk);
  if (dout != 16'h0010 || almost_full != 1'b0 || full != 1'b0 || over != 1'b0 || empty != 1'b1 || under != 1'b0 || valid != 1'b0) begin
    $display("FAILURE at %d", 28);
    $stop;
  end

  $display("All tests are passwd");
  $finish;
end

endmodule
