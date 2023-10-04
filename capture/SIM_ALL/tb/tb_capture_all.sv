//-----------------------------------------------------------------------------
// Title       : キャプチャ回路全体検証テストベンチ
// Project     : capture
// Filename    : tb_capture_all.sv
//-----------------------------------------------------------------------------
// Description :
//
//-----------------------------------------------------------------------------
// Revisions   :
// Date        Version  Author        Description
// 2023/01/16  1.00     M.Kobayashi   VIP利用、各READYランダム化、SystemVerilog
//-----------------------------------------------------------------------------

`timescale 1ns/1ps

`define VIPINST  dut.design_1_i.axi_vip_0.inst

import axi_vip_pkg::*;
import design_1_axi_vip_0_0_pkg::*;

module tb_capture_all;

/* 各種定数 */
localparam integer STEP  = 8;
localparam integer DSTEP = 40;

localparam P_RESOL_VGA  = 2'b00;
localparam P_RESOL_XGA  = 2'b01;
localparam P_RESOL_SXGA = 2'b10;

/* シミュレーションする解像度の設定（ここを切り替えて再度シミュレーションする） */
localparam SIM_RESOL = P_RESOL_VGA;

/* 解像度に応じて総画素数やシミュレーションステップ数を切り替える */
localparam PIX_NUMBER = (SIM_RESOL == P_RESOL_VGA) ? 640*480: (SIM_RESOL == P_RESOL_XGA) ? 1024*768: 1280*1024;
localparam SIMSTEP    = (SIM_RESOL == P_RESOL_VGA) ? 4500000: 12000000;


/* システム系信号 */
logic           ACLK;
logic           ARESETN;
logic           CAP_IRQ;
logic   [1:0]   RESOL;
logic           CAP_FIFO_OVER, CAP_FIFO_UNDER;

/* 画像系信号 */
logic           DCLK;
logic           DSP_IRQ;
logic   [7:0]   DSP_R, DSP_G, DSP_B;
logic           DSP_DE, DSP_HSYNC_X, DSP_VSYNC_X;
logic           DSP_FIFO_OVER, DSP_FIFO_UNDER;

/* カメラ信号 */
logic           PCLK, HREF, VSYNC;
logic   [7:0]   CAMDATA;

/* レジスタバス */
logic   [15:0]  WRADDR;
logic   [3:0]   BYTEEN;
logic           WREN;
logic   [31:0]  WDATA;
logic   [15:0]  RDADDR;
logic           RDEN;
logic   [31:0]  RDATA_DISP;
logic   [31:0]  RDATA_CAPT;

/* DUTの接続 */
design_1_wrapper dut (.*);

/* 最初にマクロ定義を未定義にしておく */
`undef CAM_INCR
`undef CAM_PICT

/* ここのマクロ定義を変更してカメラモデルを切り替えてシミュレーションしてみる */
`define CAM_PICT  // CAM_INCR: インクリメントタイプ(camera.v)、CAM_PICT: 実写画像(camera2.v)

/* カメラモデル接続 */
logic CAM_ENABLE;
`ifdef CAM_INCR
  camera
`else
  camera2
`endif
    camera (
    .PCLK       (PCLK),
    .HREF       (HREF),
    .VSYNC      (VSYNC),
    .CAMDATA    (CAMDATA),
    .ENABLE     (CAM_ENABLE),
    .RESOL      (RESOL)
);

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
localparam CAPADDR = 16'h1000;
localparam CAPCTRL = 16'h1004;
localparam CAPINT  = 16'h1008;
localparam CAPFIFO = 16'h100c;
localparam CBLANK = 32'h2;

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


/* VIP Slave用のエージェントを宣言しスレーブを起動 */
design_1_axi_vip_0_0_slv_mem_t agent;

task init_system();
    agent = new("AXI Slave Agent", `VIPINST.IF);
    agent.start_slave();
endtask

/* VRAMのアドレス */
localparam MEMBASE = 32'h2000_0000;

/* テストベンチ本体 */
integer fd, vflag;

initial begin
    RESOL = SIM_RESOL;
    vflag = 0;
    fd = $fopen("imagedata.txt");
    ARESETN = 1; WRADDR = 0; BYTEEN = 0;
    WREN = 0; WDATA = 0; RDEN = 0; RDADDR = 0;
    CAM_ENABLE = 0;
    #STEP;
    ARESETN = 0;
    #(STEP*100);
    ARESETN = 1; CAM_ENABLE = 1;
    #(STEP*100);

    init_system();
    user_gen_arready();
    user_gen_awready();
    user_gen_wready();

    write_reg(DISPADDR, 4'hf, 32'h0);
    write_reg(DISPCTRL, 4'hf, 32'h1);
    write_reg(CAPADDR,  4'hf, 32'h0);
    write_reg(CAPCTRL,  4'hf, 32'h1);

    #(STEP*SIMSTEP);
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

/* AWREADYの挙動をランダム化 */
task user_gen_awready();
    axi_ready_gen awready_gen;
    awready_gen = agent.wr_driver.create_ready("awready");
    awready_gen.set_ready_policy(XIL_AXI_READY_GEN_RANDOM);
    agent.wr_driver.send_awready(awready_gen);
endtask

/* WREADYの挙動をランダム化 */
task user_gen_wready();
    axi_ready_gen wready_gen;
    wready_gen = agent.wr_driver.create_ready("wready");
    wready_gen.set_ready_policy(XIL_AXI_READY_GEN_RANDOM);
    agent.wr_driver.send_wready(wready_gen);
endtask

endmodule
