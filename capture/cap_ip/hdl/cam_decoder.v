module cam_decoder (
    input   PRST,
    input   PCLK,
    input   CAPON,
    input   HREF,
    input   VSYNC,
    input   [7: 0] CAMDATA,
    input   [1: 0] RESOL,

    output  [47: 0] FIFOIN,
    output  FIFOWR,
    output  FIFORST, 
    output  FOUND_HREF
);

`include "syncgen_param.vh"

localparam WAIT_U   = 2'b00;
localparam WAIT_Y_0 = 2'b01;
localparam WAIT_V   = 2'b10;
localparam WAIT_Y_1 = 2'b11;

wire [11: 0] width = RESOL == P_RESOL_VGA ? 12'd640 : 12'd1280;
wire [11: 0] height = RESOL == P_RESOL_VGA ? 12'd480 : 12'd1024;

reg [1: 0] data_counter;
reg prev_href;
reg [7: 0] u, v, y1, y2;
reg [11: 0] x, y;
reg found_href;
wire [11: 0] trim_pixel = RESOL == P_RESOL_XGA ? 12'd128 : 12'd0; // XGA なら 128pixel 削る
wire x_valid = !((x < trim_pixel) || ((width - trim_pixel) <= x));
wire y_valid = !((y < trim_pixel) || ((height - trim_pixel) <= y));

assign FOUND_HREF = found_href;

cam_color_conv cam_color_conv(
    .U(u),
    .V(v),
    .Y1(y1),
    .Y2(y2),
    .RGB(FIFOIN)
);

wire inner_write = (data_counter == WAIT_U) && prev_href;
assign FIFOWR = inner_write && x_valid && y_valid;
assign FIFORST = VSYNC;

always @(posedge PCLK) begin
    if(PRST || VSYNC) begin
        found_href <= 0;
    end else if(HREF) begin
        found_href <= 1;
    end
end

always @(posedge PCLK) begin
    prev_href <= HREF;
end

always @(posedge PCLK) begin
    if(PRST || VSYNC) begin
        x <= 0;
        y <= 0;
    end else if(inner_write) begin
        if(x + 2 == width) begin
            y <= y + 1;
            x <= 0;
        end else begin
            x <= x + 2;
        end
    end
end

always @(posedge PCLK) begin
    if(PRST || !HREF) begin
        data_counter <= 0;
    end else begin
        data_counter <= data_counter + 1;
    end
end

always @(posedge PCLK) begin
    // u
    if(PRST || !HREF) begin
        // 何もしない
    end

    if (data_counter == WAIT_U) begin
        u <= CAMDATA;
    end
end

always @(posedge PCLK) begin
    // y_0
    if(PRST || !HREF) begin
        // 何もしない
    end

    if (data_counter == WAIT_Y_0) begin
        y1 <= CAMDATA;
    end
end

always @(posedge PCLK) begin
    // v
    if(PRST || !HREF) begin
        // 何もしない
    end

    if (data_counter == WAIT_V) begin
        v <= CAMDATA;
    end
end

always @(posedge PCLK) begin
    // y_1
    if(PRST || !HREF) begin
        // 何もしない
    end

    if (data_counter == WAIT_Y_1) begin
        y2 <= CAMDATA;
    end
end

endmodule