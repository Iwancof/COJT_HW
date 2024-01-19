//-----------------------------------------------------------------------------
// Title       : FIFO����щ摜�o�́i��u�Ґ݌v�Ώہj
// Project     : display
// Filename    : disp_buffer.v
//-----------------------------------------------------------------------------
// Description :
// 
//-----------------------------------------------------------------------------
// Revisions   :
// Date        Version  Author        Description
// 202?/??/??  1.00     ???????????   Created
//-----------------------------------------------------------------------------

module disp_buffer
  (
    // System Signals
    input               ACLK,
    input               ARST,

    /* �\���N���b�N�A���Z�b�g */
    input               DCLK,
    input               DRST,

    /* FIFO�֘A�M�� */
    input               DISPON,
    input               FIFORST,
    input   [63:0]      FIFOIN,
    input               FIFOWR,
    input               DSP_preDE,
    output              BUF_WREADY,
    output              BUF_OVER,
    output              BUF_UNDER,

    /* �摜�o�� */
    output  reg [7:0]   DSP_R, DSP_G, DSP_B,
    output  reg         DSP_DE
    ); 

reg DSP_hpreDE;

always @(posedge DCLK) begin
  DSP_hpreDE <= DSP_preDE;
  DSP_DE <= DSP_hpreDE;
end

wire[9: 0] write_counter;
assign BUF_WREADY = write_counter < 10'd300;

wire[23: 0] pixel_data;

always @(posedge DCLK) begin
  DSP_B <= pixel_data[7: 0];
  DSP_G <= pixel_data[15: 8];
  DSP_R <= pixel_data[23: 16];
end

/* FIFO */
fifo_48in24out_1024depth fifo_48in24out_1024depth(
  .rst          (FIFORST),
  .wr_clk       (ACLK),
  .rd_clk       (DCLK),
  // .din          ({FIFOIN[23:0], FIFOIN[55: 32]}),
  .din          ({FIFOIN[23:0], FIFOIN[55: 32]}),
  .wr_en        (FIFOWR),
  .rd_en        (DSP_preDE),
  .dout         (pixel_data),
  .full         (),
  .overflow     (BUF_OVER),
  .empty        (),
  .valid        (),
  .underflow    (BUF_UNDER),
  .wr_data_count(write_counter)
);

endmodule
