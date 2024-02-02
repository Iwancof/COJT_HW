#-----------------------------------------------------------------------------
# Filename    : pmod.xdc（Pmod端子およびボード上スイッチの制約ファイル）
# Project     : cojt_allin
#-----------------------------------------------------------------------------
# Revisions   :
# Date        Version  Author        Description
# 2016/1/13   1.00     M.Kobayashi   Created
#-----------------------------------------------------------------------------

## PMOD1

# LED[0], DS19, DSP_FIFO_UNDER
set_property PACKAGE_PIN E15 [get_ports {PMOD1_1}]
set_property IOSTANDARD LVCMOS25 [get_ports {PMOD1_1}]

# LED[1], DS20, DSP_FIFO_OVER
set_property PACKAGE_PIN D15 [get_ports {PMOD1_3}]
set_property IOSTANDARD LVCMOS25 [get_ports {PMOD1_3}]

# LED[2], DS21, CAP_FIFO_UNDER
set_property PACKAGE_PIN W17 [get_ports {PMOD1_5}]
set_property IOSTANDARD LVCMOS25 [get_ports {PMOD1_5}]

# LED[3], DS22, CAP_FIFO_OVER
set_property PACKAGE_PIN W5 [get_ports {PMOD1_7}]
set_property IOSTANDARD LVCMOS25 [get_ports {PMOD1_7}]

# PS2DATA
set_property PACKAGE_PIN V8 [get_ports {PMOD1_2}]
set_property IOSTANDARD LVCMOS25 [get_ports {PMOD1_2}]

#
set_property PACKAGE_PIN V9 [get_ports {PMOD1_4}]
set_property IOSTANDARD LVCMOS25 [get_ports {PMOD1_4}]

# PS2CLK
set_property PACKAGE_PIN V10 [get_ports {PMOD1_6}]
set_property IOSTANDARD LVCMOS25 [get_ports {PMOD1_6}]

#
set_property PACKAGE_PIN R7 [get_ports {PMOD1_8}]
set_property IOSTANDARD LVCMOS25 [get_ports {PMOD1_8}]


## PMOD2

# LED[4], DS18, SND_FIFO_UNDER
set_property PACKAGE_PIN V7 [get_ports {PMOD2_1}]
set_property IOSTANDARD LVCMOS25 [get_ports {PMOD2_1}]

# LED[5], DS17, SND_FIFO_OVER
set_property PACKAGE_PIN W10 [get_ports {PMOD2_2}]
set_property IOSTANDARD LVCMOS25 [get_ports {PMOD2_2}]

# LED[6], DS16
set_property PACKAGE_PIN P18 [get_ports {PMOD2_3}]
set_property IOSTANDARD LVCMOS25 [get_ports {PMOD2_3}]

# LED[7], DS15
set_property PACKAGE_PIN P17 [get_ports {PMOD2_4}]
set_property IOSTANDARD LVCMOS25 [get_ports {PMOD2_4}]


## GPIO（拡張ボード側のPmod）

# SND_MCLK
set_property PACKAGE_PIN D21 [get_ports {GPIO_1}]
set_property IOSTANDARD LVCMOS25 [get_ports {GPIO_1}]

# SND_LRCLK
set_property PACKAGE_PIN A18 [get_ports {GPIO_2}]
set_property IOSTANDARD LVCMOS25 [get_ports {GPIO_2}]

# SND_BCLK
set_property PACKAGE_PIN A19 [get_ports {GPIO_3}]
set_property IOSTANDARD LVCMOS25 [get_ports {GPIO_3}]

# SND_DOUT
set_property PACKAGE_PIN N20 [get_ports {GPIO_4}]
set_property IOSTANDARD LVCMOS25 [get_ports {GPIO_4}]


## プッシュSW
# SW5
set_property PACKAGE_PIN G19 [get_ports {SW5}]
set_property IOSTANDARD LVCMOS25 [get_ports {SW5}]

# SW7
set_property PACKAGE_PIN F19 [get_ports {SW7}]
set_property IOSTANDARD LVCMOS25 [get_ports {SW7}]

## DIP SW
# SW12_1
set_property PACKAGE_PIN W7 [get_ports {SW12_1}]
set_property IOSTANDARD LVCMOS25 [get_ports {SW12_1}]

# SW12_2
set_property PACKAGE_PIN W6 [get_ports {SW12_2}]
set_property IOSTANDARD LVCMOS25 [get_ports {SW12_2}]
