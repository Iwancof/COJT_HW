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

   // �p�����[�^��`
   parameter CYCLE = 100000000;
   
   // �M����`
   reg clk;
   reg [15:0] a;
   reg [15:0] b;
   reg [9: 0] i, j;
   wire [15: 0] result;
   reg [10: 0] index;

   // �e�X�g�Ώۉ�H x = a + b(���b�v���L�����[�A�_�[)
   mult target_mult(.a(a), .b(b), .x(result));

   // �N���b�N��`(�e�X�g�T�C�N��)
   always #(CYCLE/2)
      clk = ~clk;

   // ���͐M������ �� ���Ғl��r
   initial begin
      clk = 1;

      for ( i = 0 ; i < 256 ; i = i+1 ) begin
         a = i;
         for ( j = 0 ; j < 256 ; j = j+1 ) begin
            b = j;
            // #CYCLE; // �N���b�N1�������̒x��
            #10;

            if ( result !== a * b ) begin
                $display("error! expval=%h result=%h\n", a * b, result); // �W���o�͕\��
                $stop;
            end
         end
         // force adder.B[3]=0;  /* �����I�ɃG���[���N���� */
      end

      $display("finish\n"); // �W���o�͕\��
      $stop;
   end
  
endmodule // tb_adder

