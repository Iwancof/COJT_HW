module cam_vramctrl (
        input         ACLK,
    
        output [31: 0]  AWADDR,
        output          AWVALID,
        input           AWREADY,

        output          WVALID,
        input           WREADY,
        output          WLAST
);

`include "syscgen_param.vh"

localparam S_IDLE = 2'b00;
localparam S_SETADDR = 2'b01;
localparam S_WRITE = 2'b10;
localparam S_WAIT = 2'b11;

localparam bytesize_per_burst = 32'd32 * 32'd8;

reg[1: 0] state, next;
reg[10: 0] address_offset;

wire cam_vsync;

clock_sync #(.WIDTH(1)) clock_conv_vsync(
    .clk(ACLK),
    .foreign_signal(CAM_VSYNC),
    .result(cam_vsync)
);

always @(posedge ACLK) begin
    // state
    if(ARST) begin
        state <= S_IDEL;
    end else begin
        state <= next;
    end
end

assign  AWVALID = (state == S_SETADDR);
wire    address_write_done = AWVALID && AWREADY;

always @(posedge ACLK) begin
    // next
    // case (state)
        // S_IDEL:         if ()
end

endmodule