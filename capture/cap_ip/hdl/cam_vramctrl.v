module cam_vramctrl (
        input           ACLK,
        input           ARST,
        input           AVSYNC,

        input           HASDATA,

        input           START_SCREEN,
        input  [31: 0]  CAPADDR, // 開始アドレス

        input  [1: 0]   RESOL,

        input           AWREADY,
        output [31: 0]  AWADDR,
        output          AWVALID,

        input           WREADY,
        output          WLAST,
        output          WVALID,
        output [63: 0]  WDATA,

        output          end_of_screen,

        input           FIFOVALID,
        input  [47: 0]  FIFODATA,
        output          FIFORD,

        input           BVALID,
        output          BREADY
);

`include "syncgen_param.vh"

localparam S_WAIT_START = 3'b000;
localparam S_IDLE = 3'b001;
localparam S_SETADDR = 3'b010;
localparam S_WRITE = 3'b011;
localparam S_B_WAIT = 3'b100;

// localparam burst_length = 32'd32;
// localparam bytesize_per_burst = burst_length * 32'd8;
localparam data_length = 32'd8;
localparam burst_length = 32'd8;
localparam bytesize_per_burst = burst_length * data_length;


reg[2: 0]   state, next;
reg[31: 0]  address_offset;
reg[7: 0]   write_remain;
reg         on_transaction;
reg[47: 0]  data_buffer;
reg         end_of_burst;
reg         wait_next_transaction;
reg         screen_started;
reg         prev_avsync;

wire transaction_done;
wire avsync_posedge;
// wire [31: 0] byte_per_screen = HDO * VDO * 32'd4;
wire [31: 0] byte_per_screen = (RESOL == P_RESOL_VGA) ? 1228800 : 5529600;

assign  AWVALID = (state == S_SETADDR) & ~on_transaction;
assign  AWADDR  = CAPADDR + address_offset;

assign  WLAST   = (write_remain == 1);
assign  FIFORD  = ((WVALID && WREADY) || (AWVALID && AWREADY)) && ~WLAST;
// WVALID && WREADY: 書き込みが成功したら次のデータを読み込む
// AWVALID && AWREADY: 書き込み状態の前に、一つ分データを読み込んでおく。

assign  BREADY  = (state == S_B_WAIT);

assign transaction_done = (write_remain == 1) && WVALID && WREADY;

assign WDATA = {8'd0, data_buffer[47: 24], 8'd0, data_buffer[23: 0]};
// assign WDATA = 64'd0;
// assign WDATA = {data_buffer[7: 0], data_buffer[15: 8], data_buffer[23: 16], 8'd0, data_buffer[31: 24], data_buffer[39: 32], data_buffer[47: 40], 8'd0};
assign WVALID = (state == S_WRITE) && ~end_of_burst && ~FIFOVALID;

assign end_of_screen = (address_offset == byte_per_screen);

assign avsync_posedge = AVSYNC && ~prev_avsync;

always @(posedge ACLK) begin
    // prev_avsync
    if (ARST) begin
        prev_avsync <= 0;
    end else begin
        prev_avsync <= AVSYNC;
    end
end

always @(posedge ACLK) begin
    // data_buffer
    if (ARST || avsync_posedge) begin
        data_buffer <= 0;
    end else if (FIFOVALID) begin
        data_buffer <= FIFODATA;
    end
end

always @(posedge ACLK) begin
    // on_transaction
    if (ARST || avsync_posedge) begin
        on_transaction <= 0;
    end else begin
        if (AWREADY && AWVALID) begin
            on_transaction <= 1;
        end else if (transaction_done) begin
            on_transaction <= 0;
        end
    end
end

always @(posedge ACLK) begin
    // end_of_burst
    if(ARST || avsync_posedge) begin
        end_of_burst <= 0;
    end else if (WLAST & WVALID & WREADY) begin
        end_of_burst <= 1;
    end else if (BVALID & BREADY) begin
        end_of_burst <= 0;
    end
end

always @(posedge ACLK) begin
    // wait_next_transaction
    if (ARST || avsync_posedge) begin
        wait_next_transaction <= 0;
    end else begin
        if (BVALID & BREADY) begin
            wait_next_transaction <= 1;
        end else if (next == S_WAIT_START) begin
            wait_next_transaction <= 0;
        end
    end
end

always @(posedge ACLK) begin
    // screen_started
    if (ARST || avsync_posedge) begin
        screen_started <= 0;
    end else begin
        if (START_SCREEN) begin
            screen_started <= 1;
        end else if (end_of_screen) begin
            screen_started <= 0;
        end
    end
end

always @(posedge ACLK) begin
    // state
    if(ARST || avsync_posedge) begin
        state <= S_WAIT_START;
    end else begin
        state <= next;
    end
end

// Memo: S_WRITE -> S_SETADDR という遷移が存在しているが、これはバグだと思う。なぜかはわからない。

always @(posedge ACLK) begin
    // next
    case (state)
        S_WAIT_START: begin
            if (screen_started) begin
                next <= S_IDLE;
            end else begin
                next <= S_WAIT_START;
            end
        end
        S_IDLE: begin
            if (HASDATA) begin
                next <= S_SETADDR;
            end else begin
                next <= S_IDLE;
            end
        end
        S_SETADDR: begin
            if (on_transaction) begin
                next <= S_WRITE;
            end else begin
                next <= S_SETADDR;
            end
        end
        S_WRITE: begin
            if (end_of_burst) begin
                next <= S_B_WAIT;
            end else begin
                next <= S_WRITE;
            end
        end
        S_B_WAIT: begin
            if (wait_next_transaction) begin
                next <= S_WAIT_START;
            end else begin
                next <= S_B_WAIT;
            end
        end
    endcase
end

always @(posedge ACLK) begin
    // address_offset
    if (ARST || avsync_posedge) begin
        address_offset <= 0;
    end else begin
        if (transaction_done) begin
            address_offset <= address_offset + bytesize_per_burst;
        end else if (end_of_screen) begin
            address_offset <= 0;
        end
    end
end

always @(posedge ACLK) begin
    // write_remain
    if (ARST || avsync_posedge) begin
        write_remain <= 0;
    end else begin
        if (state == S_SETADDR) begin
            write_remain <= burst_length;
        end else if (state == S_WRITE) begin
            if (WREADY && WVALID) begin
                write_remain <= write_remain - 1;
            end
        end
    end
end

endmodule