module clock_sync #(parameter WIDTH = 8) (
    input wire clk,
    input wire [WIDTH-1:0] foreign_signal,
    output wire [WIDTH-1:0] result
);

reg [WIDTH-1:0] buf1;
reg [WIDTH-1:0] buf2;

assign result = buf2;

always @(posedge clk) begin
    buf1 <= foreign_signal;
    buf2 <= buf1;
end

endmodule