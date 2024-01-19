`timescale 1ns / 1ps

module tb_fifo;

parameter CYCLE = 100;

reg clk;

reg reset, write, read;
reg [15:0] din;

wire [15:0] dout;
wire almost_full, full, over, empty, under, valid;

fifo fifo_inst(clk, reset, write, read, din, dout, almost_full, full, over, empty, under, valid);

always #(CYCLE / 2) clk = ~clk;

initial begin
  clk <= 0;
  write <= 0;
  read <= 0;
  reset <= 0;
  din <= 16'h0000;

  @(negedge clk) reset <= 1;
  @(negedge clk);

  reset <= 0;
  write <= 1;
  din <= 16'h0001;

  if (dout != 16'h0000 || almost_full != 1'b0 || full != 1'b0 || over != 1'b0 || empty != 1'b1 || under != 1'b0 || valid != 1'b0) begin
    $display("FAILED at %d", 1);
    $stop;
  end
  @(negedge clk) din <= 16'h0002;

  if (dout != 16'h0000 || almost_full != 1'b0 || full != 1'b0 || over != 1'b0 || empty != 0'b0 || under != 1'b0 || valid != 1'b0) begin
    $display("FAILED at %d", 2);
    $stop;
  end

  @(negedge clk) din <= 16'h0003;

  if (dout != 16'h0000 || almost_full != 1'b0 || full != 1'b0 || over != 1'b0 || empty != 1'b0 || under != 1'b0 || valid != 1'b0) begin
    $display("FAILED at %d", 3);
    $stop;
  end

  @(negedge clk) din <= 16'h0004;

  if (dout != 16'h0000 || almost_full != 1'b0 || full != 1'b0 || over != 1'b0 || empty != 1'b0 || under != 1'b0 || valid != 1'b0) begin
    $display("FAILED at %d", 4);
    $stop;
  end

  @(negedge clk) din <= 16'h0005;

  if (dout != 16'h0000 || almost_full != 1'b0 || full != 1'b0 || over != 1'b0 || empty != 1'b0 || under != 1'b0 || valid != 1'b0) begin
    $display("FAILED at %d", 5);
    $stop;
  end

  @(negedge clk) din <= 16'h0006;

  if (dout != 16'h0000 || almost_full != 1'b0 || full != 1'b0 || over != 1'b0 || empty != 1'b0 || under != 1'b0 || valid != 1'b0) begin
    $display("FAILED at %d", 6);
    $stop;
  end

  @(negedge clk) din <= 16'h0007;

  if (dout != 16'h0000 || almost_full != 1'b0 || full != 1'b0 || over != 1'b0 || empty != 1'b0 || under != 1'b0 || valid != 1'b0) begin
    $display("FAILED at %d", 7);
    $stop;
  end

  @(negedge clk) din <= 16'h0008;
  if (dout != 16'h0000 || almost_full != 1'b1 || full != 1'b0 || over != 1'b0 || empty != 1'b0 || under != 1'b0 || valid != 1'b0) begin
    $display("FAILED at %d", 8);
    $stop;
  end

  @(negedge clk) din <= 16'h0009;

  @(negedge clk) din <= 16'h000a;
  if (dout != 16'h0000 || almost_full != 1'b1 || full != 1'b1 || over != 1'b1 || empty != 1'b0 || under != 1'b0 || valid != 1'b0) begin
    $display("FAILED at %d", 9);
    $stop;
  end

  @(negedge clk) write <= 0;
  if (dout != 16'h0000 || almost_full != 1'b1 || full != 1'b1 || over != 1'b1 || empty != 1'b0 || under != 1'b0 || valid != 1'b0) begin
    $display("FAILED at %d", 10);
    $stop;
  end

  @(negedge clk) read <= 1;
  if (dout != 16'h0000 || almost_full != 1'b1 || full != 1'b1 || over != 1'b0 || empty != 1'b0 || under != 1'b0 || valid != 1'b0) begin
    $display("FAILED at %d", 11);
    $stop;
  end

  @(negedge clk);
  if (dout != 16'h0001 || almost_full != 1'b1 || full != 1'b0 || over != 1'b0 || empty != 1'b0 || under != 1'b0 || valid != 1'b1) begin
    $display("FAILED at %d", 12);
    $stop;
  end

  @(negedge clk);
  write <= 1;
  din <= 16'h000b;
  if (dout != 16'h0002 || almost_full != 1'b0 || full != 1'b0 || over != 1'b0 || empty != 1'b0 || under != 1'b0 || valid != 1'b1) begin
    $display("FAILED at %d", 13);
    $stop;
  end

  @(negedge clk);
  read <= 0;
  din <= 16'h000c;
  if (dout != 16'h0003 || almost_full != 1'b0 || full != 1'b0 || over != 1'b0 || empty != 1'b0 || under != 1'b0 || valid != 1'b1) begin
    $display("FAILED at %d", 14);
    $stop;
  end

  @(negedge clk);
  din <= 16'h000d;
  read <= 1;
  if (dout != 16'h0003 || almost_full != 1'b1 || full != 1'b0 || over != 1'b0 || empty != 1'b0 || under != 1'b0 || valid != 0'b0) begin
    $display("FAILED at %d", 15);
    $stop;
  end

  @(negedge clk);
  din <= 16'h000e;
  if (dout != 16'h0004 || almost_full != 1'b1 || full != 1'b0 || over != 1'b0 || empty != 1'b0 || under != 1'b0 || valid != 0'b1) begin
    $display("FAILED at %d", 16);
    $stop;
  end

  @(negedge clk);
  din <= 16'h000f;
  if (dout != 16'h0005 || almost_full != 1'b1 || full != 1'b0 || over != 1'b0 || empty != 1'b0 || under != 1'b0 || valid != 0'b1) begin
    $display("FAILED at %d", 17);
    $stop;
  end

  @(negedge clk);
  din <= 16'h0010;
  if (dout != 16'h0006 || almost_full != 1'b1 || full != 1'b0 || over != 1'b0 || empty != 1'b0 || under != 1'b0 || valid != 0'b1) begin
    $display("FAILED at %d", 18);
    $stop;
  end

  @(negedge clk) write <= 0;
  if (dout != 16'h0007 || almost_full != 1'b1 || full != 1'b0 || over != 1'b0 || empty != 1'b0 || under != 1'b0 || valid != 1'b1) begin
    $display("FAILED at %d", 19);
    $stop;
  end

  @(negedge clk);
  if (dout != 16'h0008 || almost_full != 1'b0 || full != 1'b0 || over != 1'b0 || empty != 1'b0 || under != 1'b0 || valid != 1'b1) begin
    $display("FAILED at %d", 20);
    $stop;
  end

  @(negedge clk);
  if (dout != 16'h000b || almost_full != 1'b0 || full != 1'b0 || over != 1'b0 || empty != 1'b0 || under != 1'b0 || valid != 1'b1) begin
    $display("FAILED at %d", 21);
    $stop;
  end

  @(negedge clk);
  if (dout != 16'h000c || almost_full != 1'b0 || full != 1'b0 || over != 1'b0 || empty != 1'b0 || under != 1'b0 || valid != 1'b1) begin
    $display("FAILED at %d", 22);
    $stop;
  end

  @(negedge clk);
  if (dout != 16'h000d || almost_full != 1'b0 || full != 1'b0 || over != 1'b0 || empty != 1'b0 || under != 1'b0 || valid != 1'b1) begin
    $display("FAILED at %d", 23);
    $stop;
  end

  @(negedge clk);
  if (dout != 16'h000e || almost_full != 1'b0 || full != 1'b0 || over != 1'b0 || empty != 1'b0 || under != 1'b0 || valid != 1'b1) begin
    $display("FAILED at %d", 24);
    $stop;
  end

  @(negedge clk);
  if (dout != 16'h000f || almost_full != 1'b0 || full != 1'b0 || over != 1'b0 || empty != 1'b0 || under != 1'b0 || valid != 1'b1) begin
    $display("FAILED at %d", 25);
    $stop;
  end

  @(negedge clk);
  if (dout != 16'h0010 || almost_full != 1'b0 || full != 1'b0 || over != 1'b0 || empty != 1'b1 || under != 1'b0 || valid != 1'b1) begin
    $display("FAILED at %d", 26);
    $stop;
  end

  @(negedge clk);
  read <= 0;
  if (dout != 16'h0010 || almost_full != 1'b0 || full != 1'b0 || over != 1'b0 || empty != 1'b1 || under != 1'b1 || valid != 1'b0) begin
    $display("FAILED at %d", 27);
    $stop;
  end

  @(negedge clk);
  if (dout != 16'h0010 || almost_full != 1'b0 || full != 1'b0 || over != 1'b0 || empty != 1'b1 || under != 1'b0 || valid != 1'b0) begin
    $display("FAILED at %d", 28);
    $stop;
  end

  @(negedge clk) reset <= 1;
  @(negedge clk) reset <= 0;

  if (dout != 16'h0000 || almost_full != 1'b0 || full != 1'b0 || over != 1'b0 || empty != 1'b1 || under != 1'b0 || valid != 1'b0) begin
    $display("FAILED at %d", 29);
    $stop;
  end

  @(negedge clk) begin
    din <= 16'h1234;
    write <= 1;
    read <= 1;
  end
  @(negedge clk) begin
    write <= 0;
    read <= 0;
  end

  if (dout != 16'h0000 || almost_full != 1'b0 || full != 1'b0 || over != 1'b0 || empty != 0'b0 || under != 1'b1 || valid != 1'b0) begin
    $display("FAILED at %d", 30);
    $stop;
  end

  // almostEMPTY

  @(negedge clk) begin
    write <= 1;
    read <= 1;
  end
  @(negedge clk) begin
    write <= 0;
    read <= 0;
  end

  if (dout != 16'h1234 || almost_full != 1'b0 || full != 1'b0 || over != 1'b0 || empty != 0'b0 || under != 1'b0 || valid != 1'b1) begin
    $display("FAILED at %d", 31);
    $stop;
  end

  @(negedge clk) reset <= 1;
  @(negedge clk) reset <= 0;

  @(negedge clk) begin
    write <= 1;
    din <= 16'h0001;
  end

  @(negedge clk) ;
  @(negedge clk) ;
  @(negedge clk) ;
  @(negedge clk) ;
  @(negedge clk) ;
  @(negedge clk) ;
  @(negedge clk) begin
    write <= 0;
  end 
  
  // almostFULL now

  @(negedge clk) begin
    write <= 1;
    read <= 1;

    din <= 16'h0a0a;
  end

  @(negedge clk) begin
    write <= 0;
    read <= 0;
  end

  if (dout != 16'h0001 || almost_full != 1'b1 || full != 1'b0 || over != 1'b0 || empty != 0'b0 || under != 1'b0 || valid != 1'b1) begin
    $display("FAILED at %d", 32);
    $stop;
  end

  @(negedge clk) begin
    write <= 1;

    din <= 16'h0b0b;
  end

  @(negedge clk) begin // FULL now.
    read <= 1; // R/W
  end

  @(negedge clk) begin
    write <= 0;
    read <= 0;
  end // FULL R/W

  if (dout != 16'h0001 || almost_full != 1'b1 || full != 1'b0 || over != 1'b1 || empty != 0'b0 || under != 1'b0 || valid != 1'b1) begin
    $display("FAILED at %d", 33);
    $stop;
  end


  $display("All tests are passed");
  $finish;
end

endmodule
