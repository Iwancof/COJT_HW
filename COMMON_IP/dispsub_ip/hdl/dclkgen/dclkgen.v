//-----------------------------------------------------------------------------
// Title       : DCLK生成回路
// Project     : pattern, display
// Filename    : dclkgen.v
//-----------------------------------------------------------------------------
// Description :
// 
//-----------------------------------------------------------------------------
// Revisions   :
// Date        Version  Author        Description
// 2014/02/17  1.00     M.Kobayashi   Created
// 2015/10/19  1.10     M.Kobayashi   リセットおよびRESOLをCLK40で同期化
//-----------------------------------------------------------------------------


module dclkgen(
    input           CLK40,
    input           ARESETN,
    input   [1:0]   RESOL,
    output          DCLK,
    output          DVI_CLK
);

/* CLK40で同期化したリセット信号CRSTの作成 */
reg [1:0]   crst_ff;

always @( posedge CLK40 ) begin
    crst_ff <= { crst_ff[0], ~ARESETN };
end

wire CRST = crst_ff[1];

/* RESOLを3段のFFで受ける */
reg [1:0] resol_ff0, resol_ff1, resol_ff2;

always @( posedge CLK40 ) begin
    if ( CRST ) begin
        resol_ff0 <= 2'b00;
        resol_ff1 <= 2'b00;
        resol_ff2 <= 2'b00;
    end
    else begin
        resol_ff2 <= resol_ff1;
        resol_ff1 <= resol_ff0;
        resol_ff0 <= RESOL;
    end
end

/* RESOLの変化を検出 */
wire change = (resol_ff2[0] ^ resol_ff1[0]) | (resol_ff2[1] ^ resol_ff1[1]);

/* スタートパルス・・changeを8クロック遅らして作成 */
reg [7:0] start;

always @( posedge CLK40 ) begin
    if ( CRST )
        start <= 8'h00;
    else
        start <= {start[6:0], change};
end

/* MMCMダイナミック・リコンフィグレーション回路接続 */
top_mmcme2 top_mmcme2 (
      .SSTEP    (start[7]),
      .STATE    (resol_ff1),  /* CLK40で同期化したRESOL */
      .RST      (CRST),
      .CLKIN    (CLK40), 
      .SRDY     ( ),
      .LOCKED   ( ),
      .CLK0OUT  (DCLK),
      .CLK1OUT  (DVI_CLK)
);

endmodule
