//-----------------------------------------------------------------------------
// Title       : �\����H�̕t����H
// Project     : display
// Filename    : dispsub.v
//-----------------------------------------------------------------------------
// Description : DVI�o�͂�DDR������уN���b�N������
// 
//-----------------------------------------------------------------------------
// Revisions   :
// Date        Version  Author        Description
// 2015/12/23  1.00     M.Kobayashi   Created
//-----------------------------------------------------------------------------

module dispsub (
    /* �V�X�e�����Z�b�g */
    input           ARESETN,

    /* �\���n�N���b�N */
    input           CLK40,
    output          DCLK,

    /* �𑜓x�؂�ւ� */
    input   [1:0]   RESOL,

    /* �\����H������� */
    input   [7:0]   DSP_R, DSP_G, DSP_B,
    input           DSP_DE, DSP_HSYNC_X, DSP_VSYNC_X,

    /* DVI�`�b�v�����M�����o�� */
    output          DVI_CLK,
    output  reg     DVI_HSYNC, DVI_VSYNC, DVI_DE,
    output  [11:0]  DVI_DATA
    );

/* �N���b�N������H�ڑ� */
dclkgen dclkgen(
    .CLK40      (CLK40),
    .ARESETN    (ARESETN),
    .RESOL      (RESOL),
    .DCLK       (DCLK),
    .DVI_CLK    (DVI_CLK)
);

/* DCLK�œ������������Z�b�g�M��DRST�̍쐬 */
reg [1:0]   drst_ff;

always @( posedge DCLK ) begin
    drst_ff <= { drst_ff[0], ~ARESETN };
end

wire DRST = drst_ff[1];

/* DVI�o�́i�摜�f�[�^�j */
reg [23:0] rgb_reg;

always @( posedge DCLK ) begin
    if ( DRST )
        rgb_reg <= 24'b0;
    else
        rgb_reg <= {DSP_R, DSP_G, DSP_B};
end

wire [11:0] din1 = rgb_reg[11:0];
wire [11:0] din2 = rgb_reg[23:12];

generate
genvar i;
for ( i=0; i<12; i=i+1 )
    ODDR #(
        .DDR_CLK_EDGE("SAME_EDGE"),
        .INIT(1'b0),
        .SRTYPE("SYNC")
    ) od_i (
        .R  (1'b0),
        .S  (1'b0),
        .CE (1'b1),
        .D1 (din1[i]),
        .D2 (din2[i]),
        .C  (DCLK),
        .Q  (DVI_DATA[i])
    );
endgenerate

/* DVI�o�́i�����M���Ȃǁj */
reg hsync0, vsync0, de0;

always @( posedge DCLK ) begin
    if ( DRST ) begin
        {hsync0, vsync0, de0}          <= 3'b000;
        {DVI_HSYNC, DVI_VSYNC, DVI_DE} <= 3'b000;
    end
    else begin
        {hsync0, vsync0, de0}          <= {DSP_HSYNC_X, DSP_VSYNC_X, DSP_DE};
        {DVI_HSYNC, DVI_VSYNC, DVI_DE} <= {hsync0, vsync0, de0};
    end
end

endmodule
