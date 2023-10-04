//-----------------------------------------------------------------------------
// Title       : 表示回路2のテストベンチ（レジスタと解像度切り替えのテスト）
// Project     : display
// Filename    : tb_disp2.sv
//-----------------------------------------------------------------------------
// Description :
//
//-----------------------------------------------------------------------------
// Revisions   :
// Date        Version  Author        Description
// 2023/01/20  1.00     M.Kobayashi   VIP利用、ARREADYランダム化、SystemVerilog
//-----------------------------------------------------------------------------

`timescale 1ns/1ps

`define VIPINST dut.design_1_i.axi_vip_0.inst

import axi_vip_pkg::*;
import design_1_axi_vip_0_0_pkg::*;

module tb_disp2;

/* 各種定数 */
localparam integer STEP  = 8;
localparam integer DSTEP = 40;

localparam P_RESOL_VGA  = 2'b00;
localparam P_RESOL_XGA  = 2'b01;
localparam P_RESOL_SXGA = 2'b10;

/* シミュレーションする解像度の設定（ここを切り替えて再度シミュレーションする） */
localparam SIM_RESOL = P_RESOL_VGA;

/* 解像度に応じて総画素数や画像ファイルを切り替える */
localparam PIX_NUMBER   = (SIM_RESOL == P_RESOL_VGA) ? 640*480: (SIM_RESOL == P_RESOL_XGA) ? 1024*768: 1280*1024;
localparam PIC_FILENAME = (SIM_RESOL == P_RESOL_VGA) ? "wcup2002_VGA.raw":
                          (SIM_RESOL == P_RESOL_XGA) ? "wcup2002_XGA.raw": "wcup2002_SXGA.raw";

/* 画像系信号 */
logic           ACLK;
logic           ARESETN;
logic           DCLK;
logic           DSP_IRQ;
logic   [1:0]   RESOL;
logic   [7:0]   DSP_R, DSP_G, DSP_B;
logic           DSP_DE, DSP_HSYNC_X, DSP_VSYNC_X;
logic           DSP_FIFO_OVER, DSP_FIFO_UNDER;

/* レジスタバス */
logic   [15:0]  WRADDR;
logic   [3:0]   BYTEEN;
logic           WREN;
logic   [31:0]  WDATA;
logic   [15:0]  RDADDR;
logic           RDEN;
logic   [31:0]  RDATA;

/* DUTの接続 */
design_1_wrapper dut (.*);

/* 各種クロック */
always begin
    ACLK = 0; #(STEP/2);
    ACLK = 1; #(STEP/2);
end

always begin
    DCLK = 0; #(DSTEP/2);
    DCLK = 1; #(DSTEP/2);
end

/* レジスタアドレス */
localparam DISPADDR = 16'h0000;
localparam DISPCTRL = 16'h0004;
localparam DISPINT  = 16'h0008;
localparam DISPFIFO = 16'h000c;
localparam VBLANK = 32'h2;

/* レジスタ書き込み */
task write_reg(
input [15:0] addr,
input [3:0]  byteen,
input [31:0] wdata );
begin
    WRADDR = addr;
    BYTEEN = byteen;
    WDATA = wdata;
    @(negedge ACLK);
    WREN = 1;
    @(negedge ACLK);
    WREN = 0;
end
endtask

/* レジスタ読み出し（2クロック）*/
task read_reg;
input  [15:0] addr;
output [31:0] rdata;
begin
    RDADDR = addr;
    @(negedge ACLK);
    RDEN = 1;
    @(negedge ACLK);
    @(negedge ACLK);
    rdata = RDATA;
    RDEN = 0;
    @(negedge ACLK);
end
endtask


/* VIP Slave用のエージェントを宣言しスレーブを起動 */
design_1_axi_vip_0_0_slv_mem_t agent;

task init_system();
    agent = new("AXI Slave Agent", `VIPINST.IF);
    agent.start_slave();
    meminit_pic();
endtask

/* VRAMのアドレス（ページ#1に設定）*/
localparam MEMBASE = 32'h20000000 + PIX_NUMBER * 4;

/* 画像ファイル読み込み */
task meminit_pic();
reg [7:0] r, g, b;
integer fd, i;
begin
    fd = $fopen(PIC_FILENAME, "rb");
    for( i=0; i<PIX_NUMBER; i=i+1 ) begin
        r = $fgetc(fd);
        g = $fgetc(fd);
        b = $fgetc(fd);
        agent.mem_model.backdoor_memory_write_4byte( MEMBASE+i*4, {8'h00, r, g, b}, 4'hf );
    end
    $fclose(fd);
end
endtask

/* レジスタの読み出しと表示 */
task read_disp;
input  [15:0] addr;
reg [31:0] readdata;
begin
    #(STEP*2);
    read_reg(addr, readdata);
    $display( "ADDR=%h DATA=%h", addr, readdata);
end
endtask

/* VBLANK待ち */
task wait_vblank;
reg [31:0] readdata;
begin
    read_reg(DISPCTRL, readdata);
    write_reg(DISPCTRL, 4'b0001, readdata | 32'h00000002); // VBLANKクリア
    read_reg(DISPCTRL, readdata);
    while ((readdata & VBLANK)==0) begin
        read_reg(DISPCTRL, readdata);
    end
    $display("VBLANK");
end
endtask

/* テストベンチ本体 */
integer fd, vflag;

initial begin
    RESOL = SIM_RESOL;
    vflag = 0;
    fd = $fopen("imagedata.txt");
    ARESETN = 1; WRADDR = 0; BYTEEN = 0; WREN = 0; WDATA = 0; RDEN = 0; RDADDR = 0;
    #STEP;
    ARESETN = 0;
    #(STEP*100);
    ARESETN = 1;
    #(STEP*100);

    init_system();
    user_gen_arready();

    $display("-- DISPADDR write/read --");
    write_reg(DISPADDR, 4'b0001, 32'h12345678); // [7:0]に書き込み
    read_disp(DISPADDR);
    write_reg(DISPADDR, 4'b0010, 32'h00005600); // [15:8]に書き込み
    read_disp(DISPADDR);
    write_reg(DISPADDR, 4'b0100, 32'h00340000); // [23:16]に書き込み
    read_disp(DISPADDR);
    write_reg(DISPADDR, 4'b1000, 32'h12000000); // [31:24]に書き込み
    read_disp(DISPADDR);

    $display("-- Waiting VBLANK --");
    wait_vblank;
    write_reg(DISPADDR, 4'b1111, MEMBASE); // ページ#1のアドレスを設定
    read_disp(DISPADDR);

    $display("DISPON");
    write_reg(DISPCTRL, 4'b0001, 32'h00000001); // DISPON
    write_reg(DISPINT,  4'b0001, 32'h00000003); // INTCLR, INTENBL
    write_reg(DISPFIFO, 4'b0001, 32'h00000003); // FIFOフラグをクリア

    read_disp(DISPCTRL);
    read_disp(DISPINT);
    read_disp(DISPFIFO);

    $display("-- Waiting VBLANK --");
    wait_vblank;
    #(STEP*100);
    write_reg(DISPINT,  4'b0001, 32'h00000003); // DSP_IRQをクリア
    #(STEP*100);
    $display("-- All Registers --");
    read_disp(DISPADDR);
    read_disp(DISPCTRL);
    read_disp(DISPINT);
    read_disp(DISPFIFO);
    #(STEP*10000);

    $fclose(fd);
    $stop;
end

/* シミュレーン結果画像を文字ファイルで出力 */
always @(posedge DCLK) begin
    if ( DSP_DE ) begin
        $fdisplay(fd, "%06x", {DSP_R, DSP_G, DSP_B});
        vflag = 1;
    end
    else if ( DSP_VSYNC_X==0 && vflag==1 ) begin
        $fdisplay(fd, "vsync");
        vflag = 0;
    end
end

/* ARREADYの挙動をランダム化 */
task user_gen_arready();
    axi_ready_gen arready_gen;
    arready_gen = agent.wr_driver.create_ready("arready");
    arready_gen.set_ready_policy(XIL_AXI_READY_GEN_RANDOM);
    agent.rd_driver.send_arready(arready_gen);
endtask

endmodule
