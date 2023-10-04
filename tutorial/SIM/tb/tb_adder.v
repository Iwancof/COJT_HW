`timescale 1ns/10ps

module tb_adder;

   // パラメータ定義
   parameter CYCLE = 100;
   
   // 信号定義
   reg  clk;
   reg  [3:0] a;
   reg  [4:0] b;
   reg  [4:0] i, j;
   wire [4:0] x;

   // テスト対象回路 x = a + b(リップルキャリーアダー)
   ripple_adder adder (.A(a), .B(b), .X(x));

   // クロック定義(テストサイクル)
   always #(CYCLE/2)
      clk = ~clk;

   // 入力信号生成 ＆ 期待値比較
   initial begin
      clk = 1;

      for ( i = 0 ; i < 16 ; i = i+1 ) begin
         a = i;
         for ( j = 0 ; j < 16 ; j = j+1 ) begin
            b = j;
            #CYCLE; // クロック1周期分の遅延

            if ( x !== a+b ) begin
               $display("error! expval=%h result=%h\n", a+b, x); // 標準出力表示
               $stop;
            end
         end
         // force adder.B[3]=0;  /* 強制的にエラーを起こす */
      end

      $display("finish\n"); // 標準出力表示
      $stop;
   end
  
endmodule // tb_adder
