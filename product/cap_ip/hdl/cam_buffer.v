module cam_buffer (
    // Clocks
    input               ACLK,
    input               ARST,

    input               PCLK,

    input               FIFORST,

    input   [47: 0]     RGB,        // P
    input               FIFOWR,     // P

    input               FIFORD,     // A
    output              FIFOVALID,  // A
    output              HASDATA,    // A
    output  [47: 0]     READDATA,   // A

    output              BUF_OVER,   // A?
    output              BUF_UNDER   // A?
);

wire [9: 0] counter;

assign HASDATA = 10'd8 <= counter;

fifo_48in48out_1024depth fifo_48in48out_1024depth(
  .rst          (FIFORST),
  .wr_clk       (PCLK),
  .rd_clk       (ACLK),
  .din          (RGB),
  .wr_en        (FIFOWR),
  .rd_en        (FIFORD),
  .dout         (READDATA),
  .full         (),
  .overflow     (BUF_OVER),
  .empty        (),
  .valid        (FIFOVALID),
  .underflow    (BUF_UNDER),
  .rd_data_count(counter)
);

endmodule