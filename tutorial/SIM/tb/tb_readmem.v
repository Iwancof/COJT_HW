`timescale 1ns/10ps

module tb_readmem;

   // パラメータ定義
   parameter CYCLE = 10;
   parameter filename = "data.txt";
   
   // 信号定義
   reg clk;
   reg [7:0] a;
   reg [7:0] mem[0:15];
   
   integer    i;
   
   // クロック定義(テストサイクル)
   always begin
      #(CYCLE/2) clk = ~clk;
   end

   // $readmemhのサンプル
   initial begin
      clk = 1;
      $readmemh(filename, mem);

      for ( i = 0 ; i < 16 ; i = i+1 ) begin
         $display("mem[%0d] = %0x", i, mem[i]);
         a = mem[i];
         #CYCLE;
      end

      $display("finish\n"); // 標準出力表示
      $stop;
   end
  
endmodule // tb_readmem
