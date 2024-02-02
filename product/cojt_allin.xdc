#-----------------------------------------------------------------------------
# Filename    : cojt_allin.xdc
# Project     : cojt_allin
#-----------------------------------------------------------------------------
# Revisions   :
# Date        Version  Author        Description
# 2016/02/09  1.00     M.Kobayashi   Created
# 2020/03/02  1.01     M.Kobayashi   �ꕔ�M�����̑啶����
#-----------------------------------------------------------------------------

# Display

set_property PACKAGE_PIN G15 [get_ports {DVI_DATA[11]}]
set_property IOSTANDARD LVCMOS25 [get_ports {DVI_DATA[11]}]

set_property PACKAGE_PIN G16 [get_ports {DVI_DATA[10]}]
set_property IOSTANDARD LVCMOS25 [get_ports {DVI_DATA[10]}]

set_property PACKAGE_PIN C17 [get_ports {DVI_DATA[9]}]
set_property IOSTANDARD LVCMOS25 [get_ports {DVI_DATA[9]}]

set_property PACKAGE_PIN C18 [get_ports {DVI_DATA[8]}]
set_property IOSTANDARD LVCMOS25 [get_ports {DVI_DATA[8]}]

set_property PACKAGE_PIN F18 [get_ports {DVI_DATA[7]}]
set_property IOSTANDARD LVCMOS25 [get_ports {DVI_DATA[7]}]

set_property PACKAGE_PIN E18 [get_ports {DVI_DATA[6]}]
set_property IOSTANDARD LVCMOS25 [get_ports {DVI_DATA[6]}]

set_property PACKAGE_PIN C15 [get_ports {DVI_DATA[5]}]
set_property IOSTANDARD LVCMOS25 [get_ports {DVI_DATA[5]}]

set_property PACKAGE_PIN B15 [get_ports {DVI_DATA[4]}]
set_property IOSTANDARD LVCMOS25 [get_ports {DVI_DATA[4]}]

set_property PACKAGE_PIN A21 [get_ports {DVI_DATA[3]}]
set_property IOSTANDARD LVCMOS25 [get_ports {DVI_DATA[3]}]

set_property PACKAGE_PIN A22 [get_ports {DVI_DATA[2]}]
set_property IOSTANDARD LVCMOS25 [get_ports {DVI_DATA[2]}]

set_property PACKAGE_PIN B16 [get_ports {DVI_DATA[1]}]
set_property IOSTANDARD LVCMOS25 [get_ports {DVI_DATA[1]}]

set_property PACKAGE_PIN B17 [get_ports {DVI_DATA[0]}]
set_property IOSTANDARD LVCMOS25 [get_ports {DVI_DATA[0]}]


set_property PACKAGE_PIN D22 [get_ports DVI_HSYNC]
set_property IOSTANDARD LVCMOS25 [get_ports DVI_HSYNC]

set_property PACKAGE_PIN C22 [get_ports DVI_VSYNC]
set_property IOSTANDARD LVCMOS25 [get_ports DVI_VSYNC]

set_property PACKAGE_PIN A16 [get_ports DVI_DE]
set_property IOSTANDARD LVCMOS25 [get_ports DVI_DE]

set_property PACKAGE_PIN A17 [get_ports DVI_RST]
set_property IOSTANDARD LVCMOS25 [get_ports DVI_RST]

set_property PACKAGE_PIN D20 [get_ports DVI_CLK]
set_property IOSTANDARD LVCMOS25 [get_ports DVI_CLK]

set_property PACKAGE_PIN B21 [get_ports DVI_sda_io]
set_property IOSTANDARD LVCMOS25 [get_ports DVI_sda_io]

set_property PACKAGE_PIN B22 [get_ports DVI_scl_io]
set_property IOSTANDARD LVCMOS25 [get_ports DVI_scl_io]


# CAMERA

set_property PACKAGE_PIN L18 [get_ports CAM_PCLK]
set_property IOSTANDARD LVCMOS25 [get_ports CAM_PCLK]

set_property PACKAGE_PIN N17 [get_ports {CAM_DATA[7]}]
set_property IOSTANDARD LVCMOS25 [get_ports {CAM_DATA[7]}]

set_property PACKAGE_PIN N18 [get_ports {CAM_DATA[6]}]
set_property IOSTANDARD LVCMOS25 [get_ports {CAM_DATA[6]}]

set_property PACKAGE_PIN J21 [get_ports {CAM_DATA[5]}]
set_property IOSTANDARD LVCMOS25 [get_ports {CAM_DATA[5]}]

set_property PACKAGE_PIN J22 [get_ports {CAM_DATA[4]}]
set_property IOSTANDARD LVCMOS25 [get_ports {CAM_DATA[4]}]

set_property PACKAGE_PIN J15 [get_ports {CAM_DATA[3]}]
set_property IOSTANDARD LVCMOS25 [get_ports {CAM_DATA[3]}]

set_property PACKAGE_PIN K15 [get_ports {CAM_DATA[2]}]
set_property IOSTANDARD LVCMOS25 [get_ports {CAM_DATA[2]}]

set_property PACKAGE_PIN L17 [get_ports {CAM_DATA[1]}]
set_property IOSTANDARD LVCMOS25 [get_ports {CAM_DATA[1]}]

set_property PACKAGE_PIN M17 [get_ports {CAM_DATA[0]}]
set_property IOSTANDARD LVCMOS25 [get_ports {CAM_DATA[0]}]

set_property PACKAGE_PIN J18 [get_ports CAM_VSYNC]
set_property IOSTANDARD LVCMOS25 [get_ports CAM_VSYNC]

set_property PACKAGE_PIN K18 [get_ports CAM_HREF]
set_property IOSTANDARD LVCMOS25 [get_ports CAM_HREF]

set_property PACKAGE_PIN N19 [get_ports CAM_SDA]
set_property IOSTANDARD LVCMOS25 [get_ports CAM_SDA]

set_property PACKAGE_PIN C20 [get_ports CAM_SCL]
set_property IOSTANDARD LVCMOS25 [get_ports CAM_SCL]


# Sound
set_property PACKAGE_PIN N20 [get_ports SND_DOUT]
set_property IOSTANDARD LVCMOS25 [get_ports SND_DOUT]

set_property PACKAGE_PIN A19 [get_ports SND_BCLK]
set_property IOSTANDARD LVCMOS25 [get_ports SND_BCLK]

set_property PACKAGE_PIN A18 [get_ports SND_LRCLK]
set_property IOSTANDARD LVCMOS25 [get_ports SND_LRCLK]

set_property PACKAGE_PIN D21 [get_ports SND_MCLK]
set_property IOSTANDARD LVCMOS25 [get_ports SND_MCLK]


# MOUSE

# Pmod1 N0.6
set_property PACKAGE_PIN V10 [get_ports {PS2CLK}]
set_property IOSTANDARD LVCMOS25 [get_ports {PS2CLK}]

# Pmod1 N0.2
set_property PACKAGE_PIN V8 [get_ports {PS2DATA}]
set_property IOSTANDARD LVCMOS25 [get_ports {PS2DATA}]


# LEDs

# DSP_FIFO_UNDER
set_property PACKAGE_PIN E15 [get_ports LED[0]]
set_property IOSTANDARD LVCMOS25 [get_ports LED[0]]

# DSP_FIFO_OVER
set_property PACKAGE_PIN D15 [get_ports LED[1]]
set_property IOSTANDARD LVCMOS25 [get_ports LED[1]]

# CAP_FIFO_UNDER
set_property PACKAGE_PIN W17 [get_ports LED[2]]
set_property IOSTANDARD LVCMOS25 [get_ports LED[2]]

# CAP_FIFO_OVER
set_property PACKAGE_PIN W5 [get_ports LED[3]]
set_property IOSTANDARD LVCMOS25 [get_ports LED[3]]

# SND_FIFO_UNDER
set_property PACKAGE_PIN V7 [get_ports LED[4]]
set_property IOSTANDARD LVCMOS25 [get_ports LED[4]]

# SND_FIFO_OVER
set_property PACKAGE_PIN W10 [get_ports LED[5]]
set_property IOSTANDARD LVCMOS25 [get_ports LED[5]]

# �ȉ��͏���
set_property PACKAGE_PIN P18 [get_ports LED[6]]
set_property IOSTANDARD LVCMOS25 [get_ports LED[6]]

set_property PACKAGE_PIN P17 [get_ports LED[7]]
set_property IOSTANDARD LVCMOS25 [get_ports LED[7]]


# �J�����N���b�N�̒�`�@36MHz max.
create_clock -period 27.700 -name CAM_PCLK [get_ports CAM_PCLK]

# �^�C�~���O����
set_clock_groups -asynchronous -group [get_clocks clk_fpga_0] -group [get_clocks clk_fpga_1]
set_clock_groups -asynchronous -group [get_clocks CAM_PCLK] -group [get_clocks clk_fpga_0]


# �T�E���h��H�̃N���b�N��`

# BCLK
create_clock -period 354.3 -name invBCLK \
               [get_nets design_1_i/sound_0/inst/snd_buffer/invBCLK]

# MCLK
create_clock -period 88.6 -name MCLK [get_nets design_1_i/sound_0/SND_MCLK]

# �^�C�~���O����
set_clock_groups -asynchronous -group [get_clocks clk_fpga_0] -group [get_clocks invBCLK]
set_clock_groups -asynchronous -group [get_clocks clk_fpga_0] -group [get_clocks MCLK]
set_clock_groups -asynchronous -group [get_clocks invBCLK]    -group [get_clocks MCLK]
