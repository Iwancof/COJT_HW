/* ZC702�p�@CMOS�J�������W���[��SCCB�R���g���[��    */
/* Copyright(C) 2013 Cobac.Net All rights reserved. */

module SCCB(
    input           CLK, RST,
    /* BUS I/F */
    input   [23:0]  IIC_WDATA,
    input           IIC_WENBL,
    output          BUSY,
    /* SCCB out */
    output          SCL,
    output          SDA
);

/* �X�e�[�g�}�V���i�錾���j */
parameter HALT=2'h0, STBIT=2'h1, SEND=2'h2, POSDLY=2'h3;
reg [1:0]   cur, nxt;

/* �e��C�l�[�u���M���쐬�p�J�E���^�i100MHz to 100kHz�j */
parameter CNTMAX=10'd1000;
reg [9:0]   cnt10;

always @( posedge CLK ) begin
    if ( RST )
        cnt10 <= 10'h0;
    else if ( cnt10==CNTMAX-1 )
        cnt10 <= 10'h0;
    else
        cnt10 <= cnt10 + 10'h1;
end

/* �e��C�l�[�u���M�� */
wire state_en = (cnt10==CNTMAX-1);
wire sclset0  = (cnt10==2);
wire sclset1  = (cnt10==CNTMAX/2+2);
wire sft_en   = (cnt10==CNTMAX/4-1) && (cur!=HALT);

/* ���W�X�^�������ݐM�� */
wire sccbtrig = IIC_WENBL;

/* SDA�o�͍쐬 */
reg [29:0] dsft = 30'h3fff_ffff;

always @( posedge CLK ) begin
    if ( RST )
        dsft <= 30'h3fff_ffff;
    else if ( sccbtrig )
        dsft <= { 2'b10, IIC_WDATA[23:16], 1'b1, IIC_WDATA[15:8], 1'b1,
                                      IIC_WDATA[7:0], 1'b1, 1'b0};
    else if ( sft_en )
        dsft <= {dsft[28:0], 1'b1};
end

// assign SDA = (dsft[29]==1'b0) ? 1'b0: 1'bz;
// OBUFT U_SDA (.I(1'b0), .T(~dsft[29]), .O(SDA));
assign SDA = dsft[29];

/* SCL�o�͍쐬 */
reg iSCL = 1'b1;
always @( posedge CLK ) begin
    if ( RST )
        iSCL <= 1'b1;
    else if ( cur==SEND ) begin
        if ( sclset0 )
            iSCL <= 1'b0;
        else if ( sclset1 )
            iSCL <= 1'b1;
    end
    else
        iSCL <= 1'b1;
end

// assign SCL = (iSCL==1'b0) ? 1'b0: 1'bz;
// OBUFT U_SCL (.I(1'b0), .T(~iSCL), .O(SCL));
assign SCL = iSCL;


/* �f�[�^���o�J�E���^ */
reg [4:0] sendcnt;

always @( posedge CLK ) begin
    if ( RST )
        sendcnt <= 5'h00;
    else if ( cur==HALT )
        sendcnt <= 5'h00;
    else if ( cur==SEND && state_en )
        sendcnt <= sendcnt + 5'h01;
end

wire sendend = (sendcnt==5'd27);

/* sccbbusy�x���p�J�E���^   */
/* 1�J�E���g������10��s�x�� */
reg [7:0] busycnt;
parameter BUSYCNTMAX = 20;

always @( posedge CLK ) begin
    if ( RST )
        busycnt <= 8'h00;
    else if ( cur==HALT )
            busycnt <= 8'h00;
    else if ( state_en && cur==POSDLY )
        if ( busycnt==BUSYCNTMAX )
            busycnt <= 8'h00;
        else
            busycnt <= busycnt + 8'h01;
end

/* sccbbusy�M�� */
reg     sccbbusy;

always @( posedge CLK ) begin
    if ( RST )
        sccbbusy <= 1'b0;
    else if ( sccbtrig )
        sccbbusy <= 1'b1;
    else if ( state_en && cur==POSDLY && busycnt==BUSYCNTMAX )
        sccbbusy <= 1'b0;
end

assign  BUSY = sccbbusy;

/* ��ԑJ�ڂ̊J�n�M��                     */
/* sccbtrig������state_en�܂ŐL�΂��č쐬 */
/* sccbtrig��state_en�������ł��L�т�     */
reg     regwrite;

always @(  posedge CLK ) begin
    if ( RST )
        regwrite <= 1'b0;
    else if ( sccbtrig )
        regwrite <= 1'b1;
    else if ( state_en )
        regwrite <= 1'b0;
end

/* �X�e�[�g�}�V�� */
always @( posedge CLK ) begin
    if ( RST )
        cur <= HALT;
    else if ( state_en )
        cur <= nxt;
end

always @* begin
    case ( cur )
        HALT:   if ( regwrite )
                    nxt = STBIT;
                else
                    nxt = HALT;
        STBIT: nxt = SEND;
        SEND:   if ( sendend )
                    nxt = POSDLY;
                else
                    nxt = SEND;
        POSDLY: if ( busycnt==BUSYCNTMAX )
                    nxt = HALT;
                else
                    nxt = POSDLY;
        default:nxt = HALT;
    endcase
end

endmodule
