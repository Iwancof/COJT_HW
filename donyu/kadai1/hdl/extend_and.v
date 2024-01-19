`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/28 18:05:24
// Design Name: 
// Module Name: extend_and
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module extend_and
    (
        input [7: 0] a,
        input enable,
        output reg [7: 0] x
    );

    always @* begin 
        if (enable) begin
            x <= a;
        end else begin
            x <= 8'h00;
        end
    end

endmodule
