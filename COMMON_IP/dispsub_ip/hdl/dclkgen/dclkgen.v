//-----------------------------------------------------------------------------
// Title       : DCLK������H
// Project     : pattern, display
// Filename    : dclkgen.v
//-----------------------------------------------------------------------------
// Description :
// 
//-----------------------------------------------------------------------------
// Revisions   :
// Date        Version  Author        Description
// 2014/02/17  1.00     M.Kobayashi   Created
// 2015/10/19  1.10     M.Kobayashi   ���Z�b�g�����RESOL��CLK40�œ�����
//-----------------------------------------------------------------------------


module dclkgen(
    input           CLK40,
    input           ARESETN,
    input   [1:0]   RESOL,
    output          DCLK,
    output          DVI_CLK
);

/* CLK40�œ������������Z�b�g�M��CRST�̍쐬 */
reg [1:0]   crst_ff;

always @( posedge CLK40 ) begin
    crst_ff <= { crst_ff[0], ~ARESETN };
end

wire CRST = crst_ff[1];

/* RESOL��3�i��FF�Ŏ󂯂� */
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

/* RESOL�̕ω������o */
wire change = (resol_ff2[0] ^ resol_ff1[0]) | (resol_ff2[1] ^ resol_ff1[1]);

/* �X�^�[�g�p���X�E�Echange��8�N���b�N�x�炵�č쐬 */
reg [7:0] start;

always @( posedge CLK40 ) begin
    if ( CRST )
        start <= 8'h00;
    else
        start <= {start[6:0], change};
end

/* MMCM�_�C�i�~�b�N�E���R���t�B�O���[�V������H�ڑ� */
top_mmcme2 top_mmcme2 (
      .SSTEP    (start[7]),
      .STATE    (resol_ff1),  /* CLK40�œ���������RESOL */
      .RST      (CRST),
      .CLKIN    (CLK40), 
      .SRDY     ( ),
      .LOCKED   ( ),
      .CLK0OUT  (DCLK),
      .CLK1OUT  (DVI_CLK)
);

endmodule
