//-----------------------------------------------------------------------------
// Title       : FIFOおよび画像出力（受講者設計対象）
// Project     : display
// Filename    : disp_buffer.v
//-----------------------------------------------------------------------------
// Description :
// 
//-----------------------------------------------------------------------------
// Revisions   :
// Date        Version  Author        Description
// 2014/04/10  1.00     M.Kobayashi   Created
// 2014/05/21  2.00     M.Kobayashi   Modified
//-----------------------------------------------------------------------------

module disp_buffer
  (
    // System Signals
    input               ACLK,
    input               ARST,

    /* 表示クロック、リセット */
    input               DCLK,
    input               DRST,

    /* FIFO関連信号 */
    input               DISPON,
    input               FIFORST,
    input   [63:0]      FIFOIN,
    input               FIFOWR,
    input               DSP_preDE,
    output              BUF_GE_768,
    output              BUF_LT_512,
    output              BUF_OVER,
    output              BUF_UNDER,

    /* 画像出力 */
    output  reg [7:0]   DSP_R, DSP_G, DSP_B,
    output  reg         DSP_DE
    ); 

/* FIFO接続 */
wire    [23:0]  fifoout;
wire    [9:0]   wrcnt;
wire            fifovalid;
wire            fiford = DSP_preDE & DISPON;

fifo_48in24out_1024depth i_fifo_48in24out_1024depth(
  .rst          (FIFORST),
  .wr_clk       (ACLK),
  .rd_clk       (DCLK),
  .din          ({FIFOIN[23:0], FIFOIN[55:32]}),
  .wr_en        (FIFOWR),
  .rd_en        (fiford),
  .dout         (fifoout),
  .full         (),
  .overflow     (BUF_OVER),
  .empty        (),
  .valid        (fifovalid),
  .underflow    (BUF_UNDER),
  .wr_data_count(wrcnt)
);

assign BUF_GE_768 = (wrcnt >=10'd768);
assign BUF_LT_512 = (wrcnt < 10'd512);

always @( posedge DCLK ) begin
    if ( DRST )
        {DSP_R, DSP_G, DSP_B} <= 24'h0;
    else if ( fifovalid )
        {DSP_R, DSP_G, DSP_B} <= fifoout;
    else
        {DSP_R, DSP_G, DSP_B} <= 24'h0;
end

/* DSP_preDEを2クロック遅らせてDSP_DEを作成 */
reg prede_ff;

always @( posedge DCLK ) begin
    if ( DRST ) begin
        DSP_DE    <= 1'b0;
        prede_ff  <= 1'b0;
    end
    else begin
        DSP_DE    <= prede_ff;
        prede_ff  <= DSP_preDE;
    end
end

endmodule
