//-----------------------------------------------------------------------------
// Title       : decoderのテストベンチ
// Project     : capture
// Filename    : tb_decoder.v
//-----------------------------------------------------------------------------
// Description :
//
//-----------------------------------------------------------------------------
// Revisions   :
// Date        Version  Author        Description
// 2014/04/17  1.00     M.Kobayashi   Created
// 2015/03/12  1.10     M.Kobayashi   カメラモデル切り替えに対応
// 2023/02/15  1.20     M.Kobayashi   解像度切り替えに対応
//-----------------------------------------------------------------------------


`timescale 1ns/1ps

module tb_decoder;

reg             PRST, CAPON;
wire            PCLK, HREF, VSYNC;
wire    [7:0]   CAMDATA;
reg     [1:0]   RESOL;

wire            FIFOWR, FIFORST;
wire    [47:0]  FIFOIN;

/* 各種定数 */
localparam integer STEP = 30;

localparam P_RESOL_VGA  = 2'b00;
localparam P_RESOL_XGA  = 2'b01;
localparam P_RESOL_SXGA = 2'b10;

/* シミュレーションする解像度の設定（ここを切り替えて再度シミュレーションする） */
localparam SIM_RESOL = P_RESOL_VGA;

/* 最初にマクロ定義を未定義にしておく */
`undef CAM_INCR
`undef CAM_PICT

/* ここのマクロ定義を変更してカメラモデルを切り替えてシミュレーションしてみる */
`define CAM_INCR  // CAM_INCR: インクリメントタイプ(camera.v)、CAM_PICT: 実写画像(camera2.v)

/* カメラモデル接続 */
reg CAM_ENABLE;
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

/* デコーダ接続 */
cap_decoder cap_decoder (
    .PRST       (PRST),
    .CAPON      (CAPON),
    .PCLK       (PCLK),
    .HREF       (HREF),
    .VSYNC      (VSYNC),
    .CAMDATA    (CAMDATA),
    .RESOL      (RESOL),
    .FIFOIN     (FIFOIN),
    .FIFOWR     (FIFOWR),
    .FIFORST    (FIFORST)
);

integer fd, vflag;

initial begin
    vflag = 0;
    fd = $fopen("imagedata.txt");
    RESOL = SIM_RESOL; CAM_ENABLE = 0; CAPON = 0;
    #STEP;
    PRST = 1;
    #(STEP*10);
    PRST = 0; CAM_ENABLE = 1; CAPON = 1;
    @(negedge VSYNC);
    @(negedge VSYNC);
    $fclose(fd);
    $stop;
end


always @(posedge PCLK) begin
    if ( FIFOWR ) begin
        $fdisplay(fd, "%06x", FIFOIN[23:0] );
        $fdisplay(fd, "%06x", FIFOIN[47:24]);
        vflag = 1;
    end
    else if ( VSYNC && vflag==1 ) begin
        $fdisplay(fd, "vsync");
        vflag = 0;
    end
end

endmodule
