//-----------------------------------------------------------------------------
// Title       : VRAM����i��u�Ґ݌v�Ώہj
// Project     : display
// Filename    : disp_vramctrl.v
//-----------------------------------------------------------------------------
// Description :
// 
//-----------------------------------------------------------------------------
// Revisions   :
// Date        Version  Author        Description
// 2014/04/06  1.00     M.Kobayashi   Created
// 2014/05/22  2.00     M.Kobayashi   �I�[�o�[���b�v�]������SXGA�ɑΉ�
// 2014/06/05  2.10     M.Kobayashi   VSYNC���͂�ǉ����A�Y���΍�
// 2015/12/08  2.20     M.Kobayashi   RLAST�̎�舵����BUG����C��
//-----------------------------------------------------------------------------

module disp_vramctrl #(
    parameter BURSTLEN = 9'd64 )
  (
    // System Signals
    input           ACLK,
    input           ARST,
    
    // Read Address
    output  [31:0]  ARADDR,
    output          ARVALID,
    input           ARREADY,
    // Read Data 
    input           RLAST,
    input           RVALID,
    output          RREADY,

    /* �𑜓x�؂�ւ� */
    input   [1:0]   RESOL,

    /* ���u���b�N����̐M�� */
    input           DSP_VSYNC_X,
    input           VRSTART,
    input           DISPON,
    input   [28:0]  DISPADDR,

    /* FIFO */
    input           BUF_GE_768,
    input           BUF_LT_512,
    output          FIFOWR
);

localparam P_RESOL_VGA  = 2'b00;
localparam P_RESOL_XGA  = 2'b01;
localparam P_RESOL_SXGA = 2'b10;

reg [28:0]  addrcnt, araddr_reg;
wire        dispend;

/* AR�`���l���X�e�[�g�}�V���i�錾���j */
localparam HALT = 2'b00, SETADDR = 2'b01, ARISSUE = 2'b10, CHKRLAST = 2'b11;
reg [1:0]   cur, nxt;

/* R�`���l���X�e�[�g�}�V���i�錾���j */
localparam READING = 1'b0, WAITFIFO = 1'b1;
reg     cur_r, nxt_r;

/* AXI�g�����U�N�V�����̃t���b�V��                     */
/* DSP_VSYNC_X���Ԃ�FIFO�ɏ�����RREADY���A�T�[�g������ */
reg [1:0]   vsync_ff; 

always @( posedge ACLK ) begin
    if ( ARST )
        vsync_ff <= 2'b00;
    else begin
        vsync_ff[0] <= ~DSP_VSYNC_X;
        vsync_ff[1] <= vsync_ff[0];
    end
end

wire flush = vsync_ff[1];

// Read Address (AR)
assign ARADDR[31:29] = 3'b001; /* 0x20000000�`0x3FFFFFFF�Ɍ��� */
assign ARADDR[28:0]  = araddr_reg;
assign ARVALID = (cur == ARISSUE);

always @( posedge ACLK ) begin
    if ( ARST )
        araddr_reg <= 29'b0;
    else if ( cur==SETADDR )
        araddr_reg <= addrcnt + DISPADDR;
end

// Read and Read Response (R)
assign RREADY = (cur_r==READING) | flush;

assign FIFOWR = (cur_r==READING) && RVALID && ~flush;


/* �𑜓x�ƃo�[�X�g������]��1�񂠂���̃I�[�o�[���b�v�������߂� */
reg [4:0] OVLAPNUM;

always @* begin
    OVLAPNUM = 5'hxx;
    case ( RESOL )
        P_RESOL_VGA :   case ( BURSTLEN )
                             32: OVLAPNUM = 5'd10;
                             64: OVLAPNUM = 5'd5;
                            128: OVLAPNUM = 5'd5;
                            256: OVLAPNUM = 5'd5;
                        endcase
        P_RESOL_XGA :   case ( BURSTLEN )
                             32: OVLAPNUM = 5'd16;
                             64: OVLAPNUM = 5'd8;
                            128: OVLAPNUM = 5'd4;
                            256: OVLAPNUM = 5'd2;
                        endcase
        P_RESOL_SXGA:   case ( BURSTLEN )
                             32: OVLAPNUM = 5'd20;
                             64: OVLAPNUM = 5'd10;
                            128: OVLAPNUM = 5'd5;
                            256: OVLAPNUM = 5'd5;
                        endcase
    endcase
end


/* VRAM�ǂݏo���J�n�iVRSTART��ACLK�œ������������オ������o�j */
reg [2:0]   vstart_ff; 

always @( posedge ACLK ) begin
    if ( ARST )
        vstart_ff <= 3'b000;
    else begin
        vstart_ff[0] <= VRSTART;
        vstart_ff[1] <= vstart_ff[0];
        vstart_ff[2] <= vstart_ff[1];
    end
end

wire dispstart = DISPON & (vstart_ff[2:1] == 2'b01);

/* �A�h���X�J�E���^ */
always @( posedge ACLK ) begin
    if ( ARST )
        addrcnt <= 29'b0;
    else if ( cur==HALT && dispstart )
        addrcnt <= 29'b0;
    else if ( cur==SETADDR )
        addrcnt <= addrcnt + BURSTLEN*29'd8; 
end

/* �I�[�o�[���b�v�J�E���^ */
reg [4:0] ovlapcnt;

always @( posedge ACLK ) begin
    if ( ARST )
        ovlapcnt <= 5'd0;
    else if ( cur==CHKRLAST || dispstart )
        ovlapcnt <= 5'd0;
    else if ( cur==ARISSUE && ARVALID && ARREADY )
        ovlapcnt <= ovlapcnt + 5'd1;
end

/* RLAST�J�E���^ */
reg [4:0] rlastcnt;

always @( posedge ACLK ) begin
    if ( ARST )
        rlastcnt <= 5'd0;
    else if ( dispstart )
        rlastcnt <= 5'd0;
    else if ( RLAST & RREADY & RVALID )
        if ( rlastcnt==OVLAPNUM-5'd1 )
            rlastcnt <= 5'd0;
        else
            rlastcnt <= rlastcnt + 5'd1;
end

/* �\���I�� */
localparam integer P_VGA_MAX  =  29'd640 *  29'd480 * 29'd4;
localparam integer P_XGA_MAX  = 29'd1024 *  29'd768 * 29'd4;
localparam integer P_SXGA_MAX = 29'd1280 * 29'd1024 * 29'd4;

assign dispend = (addrcnt >= ( (RESOL==P_RESOL_SXGA) ? P_SXGA_MAX:
                               (RESOL==P_RESOL_XGA)  ? P_XGA_MAX : P_VGA_MAX) );

/* AR�`���l���X�e�[�g�}�V�� */
always @( posedge ACLK ) begin
    if ( ARST )
        cur <= HALT;
    else if ( flush )
        cur <= HALT;
    else
        cur <= nxt;
end

always @* begin
    case ( cur )
        HALT:       if ( dispstart )
                        nxt = SETADDR;
                    else
                        nxt = HALT;
        SETADDR:    nxt = ARISSUE;
        ARISSUE:    if ( ARREADY ) begin
                        if ( ovlapcnt==OVLAPNUM-5'd1 )
                            nxt = CHKRLAST;
                        else
                            nxt = SETADDR;
                    end
                    else
                        nxt = ARISSUE;
        CHKRLAST:   if ( RLAST && RREADY && RVALID && rlastcnt==OVLAPNUM-5'd1 )
                        if ( dispend )
                            nxt = HALT;
                        else
                            nxt = SETADDR;
                    else
                        nxt = CHKRLAST;
        default:    nxt = HALT;
    endcase
end


/* R�`���l���X�e�[�g�}�V�� */
always @( posedge ACLK ) begin
    if ( ARST )
        cur_r <= READING;
    else if ( flush )
        cur_r <= READING;
    else
        cur_r <= nxt_r;
end

always @* begin
    case ( cur_r )
        READING:    if ( BUF_GE_768 )
                        nxt_r = WAITFIFO;
                    else
                        nxt_r = READING;
        WAITFIFO:   if ( BUF_LT_512 )
                        nxt_r = READING;
                    else
                        nxt_r = WAITFIFO;
        default:    nxt_r = READING;
    endcase
end

endmodule
