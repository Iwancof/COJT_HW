//-----------------------------------------------------------------------------
// Title       : syncgen用パラメータ
// Project     : pattern, display
// Filename    : syncgen_param.vh
//-----------------------------------------------------------------------------
// Description :
// 
//-----------------------------------------------------------------------------
// Revisions  :
// Date        Version  Author        Description
// 2014/04/08  1.00     M.Kobayashi   Created
//-----------------------------------------------------------------------------


/* VGA  640×480 */
localparam P_VGA_WIDTH  = 640;
localparam P_VGA_HEIGHT = 480;

localparam P_VGA_HSC = 800;
localparam P_VGA_HFP =  16;
localparam P_VGA_HPW =  96;
localparam P_VGA_HBP =  48;

localparam P_VGA_VSC = 525;
localparam P_VGA_VFP =  10;
localparam P_VGA_VPW =   2;
localparam P_VGA_VBP =  33;

localparam P_VGA_HDO = P_VGA_WIDTH;
localparam P_VGA_VDO = P_VGA_HEIGHT;

/* XGA  1024×768 */
localparam P_XGA_WIDTH  = 1024;
localparam P_XGA_HEIGHT =  768;

localparam P_XGA_HSC = 1344;
localparam P_XGA_HFP =   24;
localparam P_XGA_HPW =  136;
localparam P_XGA_HBP =  160;

localparam P_XGA_VSC = 806;
localparam P_XGA_VFP =   3;
localparam P_XGA_VPW =   6;
localparam P_XGA_VBP =  29;

localparam P_XGA_HDO = P_XGA_WIDTH;
localparam P_XGA_VDO = P_XGA_HEIGHT;

/* SXGA  1280×1024 */
localparam P_SXGA_WIDTH  = 1280;
localparam P_SXGA_HEIGHT = 1024;

localparam P_SXGA_HSC = 1688;
localparam P_SXGA_HFP =   48;
localparam P_SXGA_HPW =  112;
localparam P_SXGA_HBP =  248;

localparam P_SXGA_VSC = 1066;
localparam P_SXGA_VFP =    1;
localparam P_SXGA_VPW =    3;
localparam P_SXGA_VBP =   38;

localparam P_SXGA_HDO = P_SXGA_WIDTH;
localparam P_SXGA_VDO = P_SXGA_HEIGHT;


/* 解像度に対応してパラメータを切り替え */
wire [10:0] HSC;    /* Horizontal SynC width       */
wire  [5:0] HFP;    /* Horizontal Front Porch      */
wire  [7:0] HPW;    /* Horizontal sync Pulse Width */
wire  [7:0] HBP;    /* Horizontal Back Porch       */
wire [10:0] HDO;    /* Horizontal Data Out         */
wire [10:0] VSC;    /* Vertical SynC width         */
wire  [3:0] VFP;    /* Vertical Front Porch        */
wire  [2:0] VPW;    /* Vertical sync Pulse Width   */
wire  [5:0] VBP;    /* Vertical Back Porch         */
wire [10:0] VDO;    /* Vertical Data Out           */


localparam P_RESOL_VGA  = 2'b00;
localparam P_RESOL_XGA  = 2'b01;
localparam P_RESOL_SXGA = 2'b10;

assign HSC = (RESOL==P_RESOL_SXGA) ? P_SXGA_HSC:
             (RESOL==P_RESOL_XGA)  ? P_XGA_HSC: P_VGA_HSC;

assign HFP = (RESOL==P_RESOL_SXGA) ? P_SXGA_HFP:
             (RESOL==P_RESOL_XGA)  ? P_XGA_HFP: P_VGA_HFP;

assign HPW = (RESOL==P_RESOL_SXGA) ? P_SXGA_HPW:
             (RESOL==P_RESOL_XGA)  ? P_XGA_HPW: P_VGA_HPW;

assign HBP = (RESOL==P_RESOL_SXGA) ? P_SXGA_HBP:
             (RESOL==P_RESOL_XGA)  ? P_XGA_HBP: P_VGA_HBP;

assign HDO = (RESOL==P_RESOL_SXGA) ? P_SXGA_HDO:
             (RESOL==P_RESOL_XGA)  ? P_XGA_HDO: P_VGA_HDO;

assign VSC = (RESOL==P_RESOL_SXGA) ? P_SXGA_VSC:
             (RESOL==P_RESOL_XGA)  ? P_XGA_VSC: P_VGA_VSC;

assign VFP = (RESOL==P_RESOL_SXGA) ? P_SXGA_VFP:
             (RESOL==P_RESOL_XGA)  ? P_XGA_VFP: P_VGA_VFP;

assign VPW = (RESOL==P_RESOL_SXGA) ? P_SXGA_VPW:
             (RESOL==P_RESOL_XGA)  ? P_XGA_VPW: P_VGA_VPW;

assign VBP = (RESOL==P_RESOL_SXGA) ? P_SXGA_VBP:
             (RESOL==P_RESOL_XGA)  ? P_XGA_VBP: P_VGA_VBP;

assign VDO = (RESOL==P_RESOL_SXGA) ? P_SXGA_VDO:
             (RESOL==P_RESOL_XGA)  ? P_XGA_VDO: P_VGA_VDO;
