//-----------------------------------------------------------------------------
// Title       : ???W?X?^????i??u???v???j
// Project     : capture
// Filename    : cam_regctrl.v
//-----------------------------------------------------------------------------
// Description :
// 
//-----------------------------------------------------------------------------
// Revisions   :
// Date        Version  Author        Description
// 202?/??/??  1.00     ???????????   Created
//-----------------------------------------------------------------------------

module cam_regctrl
  (
    // System Signals
    input               ACLK,
    input               ARST,

    /* CAMERA */
    input               CAM_VSYNC,
    input               FOUND_HREF,

    /* 制御信号 */
    input       [15:0]  WRADDR,
    input       [3:0]   BYTEEN,
    input               WREN,
    input       [31:0]  WDATA,
    input       [15:0]  RDADDR,
    input               RDEN,
    output      [31:0]  RDATA,

    output      [31: 0] CAPADDR,
    output              CAPON,
    output              CAP_IRQ,
    
    // VRAM
    input               end_of_screen,

    // FIFO
    input               FIFOOVER,
    input               FIFOUNDER
);

wire    wr_cam_reg  = WREN && WRADDR[15: 12] == 4'h1;
wire    wr_reg_capaddr = wr_cam_reg && WRADDR[11:2] == 10'h000;
wire    wr_reg_capctrl = wr_cam_reg && WRADDR[11:2] == 10'h001;
wire    wr_reg_capint  = wr_cam_reg && WRADDR[11:2] == 10'h002;
wire    wr_reg_capfifo = wr_cam_reg && WRADDR[11:2] == 10'h003;

wire    wr_cap_addr     = wr_reg_capaddr && BYTEEN[0] && BYTEEN[1] && BYTEEN[2] && BYTEEN[3];
wire    wr_cblank       = wr_reg_capctrl && BYTEEN[0];
wire    wr_capon        = wr_reg_capctrl && BYTEEN[0];
wire    wr_intclr       = wr_reg_capint && BYTEEN[0];
wire    wr_intenbl      = wr_reg_capint && BYTEEN[0];
wire    wr_fifoover     = wr_reg_capfifo && BYTEEN[0];
wire    wr_fifounder    = wr_reg_capfifo && BYTEEN[0];

wire    rd_cap_reg      = RDEN && RDADDR[15: 12] == 4'h1;
wire    rd_reg_capaddr  = rd_cap_reg && RDADDR[11:2] == 10'h000;
wire    rd_reg_capctrl  = rd_cap_reg && RDADDR[11:2] == 10'h001;
wire    rd_reg_capint   = rd_cap_reg && RDADDR[11:2] == 10'h002;
wire    rd_reg_capfifo  = rd_cap_reg && RDADDR[11:2] == 10'h003;

reg[31: 0] cap_addr, cap_ctrl, cap_int, cap_fifo, read_data;
reg prev_vsync, interrupted;

wire    vsync_posedge   = !prev_vsync && CAM_VSYNC;

assign  CAPADDR     = cap_addr[31: 0];
assign  CAPON       = cap_ctrl[0];
assign  RDATA       = read_data;
assign  CAP_IRQ     = interrupted;

always @(posedge ACLK) begin
    if (ARST) begin
        prev_vsync <= 0'h1;
    end else begin
        prev_vsync <= CAM_VSYNC;
    end
end
always @(posedge ACLK) begin
    if (ARST) begin
        interrupted <= 0;
    end else begin
        if (cap_int[0] && vsync_posedge && FOUND_HREF) begin
            interrupted <= 1;
        end
        if (wr_intclr && WDATA[1]) begin // CAPINTのINTCLRへのToWはここで処理される。
            interrupted <= 0;
        end
    end
end

// write
always @(posedge ACLK) begin
    // CAPADDR
    if (ARST) begin
        cap_addr <= 32'h0;
    end else if (wr_cap_addr) begin
        cap_addr <= WDATA[27: 0];
    end
end
always @(posedge ACLK) begin
    // CAPCTRL
    if (ARST) begin
        cap_ctrl <= 32'h0;
    end else begin
        // CBLANK
        if (vsync_posedge && FOUND_HREF) begin
            cap_ctrl[1] <= 1;
        end else if (wr_cblank & WDATA[1]) begin
            cap_ctrl[1] <= 0;
        end

        // CAPON
        if(wr_capon) begin
            cap_ctrl[0] = WDATA[0];
        end
    end
end

always @(posedge ACLK) begin
    // CAPINT
    if (ARST) begin
        cap_int <= 32'h0;
    end else if (wr_intenbl) begin
        cap_int[0] <= WDATA[0];
    end
end

always @(posedge ACLK) begin
    // CAPFIFO
    if (ARST) begin
        cap_fifo <= 32'h0;
    end else begin
        // FIFOUNDER
        if (FIFOUNDER) begin
            cap_fifo[0] <= 1;
        end else if (wr_fifounder) begin
            cap_fifo[0] <= 0;
        end

        // FIFOOVER
        if (FIFOOVER) begin
            cap_fifo[1] <= 1;
        end else if (wr_fifoover) begin
            cap_fifo[1] <= 0;
        end
    end
end

always @(posedge ACLK) begin
    // read_data
    if (ARST) begin
        read_data <= 32'h0;
    end else if (rd_reg_capaddr) begin
        read_data <= cap_addr;
    end else if (rd_reg_capctrl) begin
        read_data <= cap_ctrl;
    end else if (rd_reg_capint) begin
        read_data <= cap_int;
    end else if (rd_reg_capfifo) begin
        read_data <= cap_fifo;
    end
end

endmodule
