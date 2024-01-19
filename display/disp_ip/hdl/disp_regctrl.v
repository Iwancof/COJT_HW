//-----------------------------------------------------------------------------
// Title       : ???W?X?^????i??u???v???j
// Project     : display
// Filename    : disp_regctrl.v
//-----------------------------------------------------------------------------
// Description :
// 
//-----------------------------------------------------------------------------
// Revisions   :
// Date        Version  Author        Description
// 202?/??/??  1.00     ???????????   Created
//-----------------------------------------------------------------------------

module disp_regctrl
  (
    // System Signals
    input               ACLK,
    input               ARST,

    /* VSYNC */
    input               DSP_VSYNC_X,

    /* ???W?X?^?o?X */
    input       [15:0]  WRADDR,
    input       [3:0]   BYTEEN,
    input               WREN,
    input       [31:0]  WDATA,
    input       [15:0]  RDADDR,
    input               RDEN,
    output      [31:0]  RDATA,

    /* ???W?X?^?o?? */
    output              DISPON,
    output      [28:0]  DISPADDR,

    /* ??????AFIFO?t???O */
    output              DSP_IRQ,
    input               BUF_UNDER,
    input               BUF_OVER
    ); 


/* ?o??M??????i?\????H1?????A?\????H2???reg??????g???j */
// assign RDATA    = 32'b0;
// assign DISPADDR = 29'h0;
// assign DSP_IRQ  = 1'b0;

/* ?????L?q???????g?p?? */
wire    wr_display_reg  = WREN && WRADDR[15: 12] == 4'h0;
wire    wr_reg_dispaddr = wr_display_reg && WRADDR[11:2] == 10'h000;
wire    wr_reg_dispctrl = wr_display_reg && WRADDR[11:2] == 10'h001;
wire    wr_reg_dispint  = wr_display_reg && WRADDR[11:2] == 10'h002;
wire    wr_reg_dispfifo = wr_display_reg && WRADDR[11:2] == 10'h003;

wire    wr_disp_addr    = wr_reg_dispaddr && BYTEEN[0] && BYTEEN[1] && BYTEEN[2] && BYTEEN[3];
wire    wr_vblank       = wr_reg_dispctrl && BYTEEN[0];
wire    wr_dispon       = wr_reg_dispctrl && BYTEEN[0];
wire    wr_intclr       = wr_reg_dispint && BYTEEN[0];
wire    wr_intenbl      = wr_reg_dispint && BYTEEN[0];
wire    wr_fifoover     = wr_reg_dispfifo && BYTEEN[0];
wire    wr_fifounder    = wr_reg_dispfifo && BYTEEN[0];

wire    rd_display_reg  = RDEN && RDADDR[15: 12] == 4'h0;
wire    rd_reg_dispaddr = rd_display_reg && RDADDR[11:2] == 10'h000;
wire    rd_reg_dispctrl = rd_display_reg && RDADDR[11:2] == 10'h001;
wire    rd_reg_dispint  = rd_display_reg && RDADDR[11:2] == 10'h002;
wire    rd_reg_dispfifo = rd_display_reg && RDADDR[11:2] == 10'h003;

reg[31: 0] disp_addr, disp_ctrl, disp_int, disp_fifo, read_data;
reg prev_vsync, interrupted;

wire    vsync_negedge = DSP_VSYNC_X && !prev_vsync;

assign  DISPADDR    = disp_addr[27: 0];
assign  DISPON      = disp_ctrl[0];
assign  RDATA       = read_data;
assign  DSP_IRQ     = interrupted;

always @(posedge ACLK) begin
    if (ARST) begin
        prev_vsync <= 1'h1;
    end else begin
        prev_vsync <= DSP_VSYNC_X;
    end
end
always @(posedge ACLK) begin
    if (ARST) begin
        interrupted <= 0;
    end else begin
        if (disp_int[0] && vsync_negedge) begin
            interrupted <= 1;
        end
        if (wr_intclr && WDATA[1]) begin
            interrupted <= 0;
        end
    end
end

// write
always @(posedge ACLK) begin
    // DISPADDR
    if (ARST) begin
        disp_addr <= 32'h0;
    end else if (wr_disp_addr) begin
        disp_addr <= WDATA[27: 0];
    end
end
always @(posedge ACLK) begin
    // DISPCTRL
    if (ARST) begin
        disp_ctrl <= 32'h0;
    end else if (vsync_negedge) begin
        disp_ctrl[1] <= 1;
    end else if ( wr_vblank || wr_dispon ) begin
        if (WDATA[1]) begin
            disp_ctrl[1] <= 0;
        end
        disp_ctrl[0] <= WDATA[0];
    end
end
always @(posedge ACLK) begin
    // DISPINT
    if (ARST) begin
        disp_int <= 32'h0;
    end else if (wr_intenbl) begin
        disp_int[0] <= WDATA[0];
    end
end
always @(posedge ACLK) begin
    // DISPFIFO
    if (ARST) begin
        disp_fifo <= 32'h0;
    end else if (wr_fifoover || wr_fifounder) begin
        if (WDATA[0]) begin
            disp_fifo[0] <= 0;
        end
        if (WDATA[1]) begin
            disp_fifo[1] <= 0;
        end
    end else begin
        if (BUF_UNDER) begin
            disp_fifo[0] <= 1;
        end
        if (BUF_OVER) begin
            disp_fifo[1] <= 1;
        end
    end
end

always @(posedge ACLK) begin
    // read_data
    if (ARST) begin
        read_data <= 32'h0;
    end else if (rd_reg_dispaddr) begin
        read_data <= disp_addr;
    end else if (rd_reg_dispctrl) begin
        read_data <= disp_ctrl;
    end else if (rd_reg_dispint) begin
        read_data <= disp_int;
    end else if (rd_reg_dispfifo) begin
        read_data <= disp_fifo;
    end
end

endmodule
