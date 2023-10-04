`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/28 17:49:23
// Design Name: 
// Module Name: tb_mult
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


module tb_mult;

   // パラメータ定義
   parameter CYCLE = 100000000;
   
   // 信号定義
   reg clk;
   reg [15:0] a;
   reg [15:0] b;
   reg [9: 0] i, j;
   wire [15: 0] result;
   reg [10: 0] index;

   // テスト対象回路 x = a + b(リップルキャリーアダー)
   mult target_mult(.a(a), .b(b), .x(result));

   // クロック定義(テストサイクル)
   always #(CYCLE/2)
      clk = ~clk;

   // 入力信号生成 ＆ 期待値比較
   initial begin
      clk = 1;

      for ( i = 0 ; i < 256 ; i = i+1 ) begin
         a = i;
         for ( j = 0 ; j < 256 ; j = j+1 ) begin
            b = j;
            // #CYCLE; // クロック1周期分の遅延
            #10;

            if ( result !== a * b ) begin
                $display("error! expval=%h result=%h\n", a * b, result); // 標準出力表示
                $stop;
            end
         end
         // force adder.B[3]=0;  /* 強制的にエラーを起こす */
      end

      $display("finish\n"); // 標準出力表示
      $stop;
   end
  
endmodule // tb_adder

