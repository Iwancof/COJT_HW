#-----------------------------------------------------------------------------
# Filename    : blink.xdc
# Project     : blink
#-----------------------------------------------------------------------------
# Revisions   :
# Date        Version  Author        Description
# 2016/1/6    1.00     M.Kobayashi   Created
# 2020/2/18   1.01     M.Kobayashi   プロジェクト名簡略化に伴うファイル名変更
#-----------------------------------------------------------------------------

# LEDs

set_property PACKAGE_PIN E15 [get_ports LED[0]]
set_property IOSTANDARD LVCMOS25 [get_ports LED[0]]

set_property PACKAGE_PIN D15 [get_ports LED[1]]
set_property IOSTANDARD LVCMOS25 [get_ports LED[1]]

set_property PACKAGE_PIN W17 [get_ports LED[2]]
set_property IOSTANDARD LVCMOS25 [get_ports LED[2]]

set_property PACKAGE_PIN W5 [get_ports LED[3]]
set_property IOSTANDARD LVCMOS25 [get_ports LED[3]]

set_property PACKAGE_PIN V7 [get_ports LED[4]]
set_property IOSTANDARD LVCMOS25 [get_ports LED[4]]

set_property PACKAGE_PIN W10 [get_ports LED[5]]
set_property IOSTANDARD LVCMOS25 [get_ports LED[5]]

set_property PACKAGE_PIN P18 [get_ports LED[6]]
set_property IOSTANDARD LVCMOS25 [get_ports LED[6]]

set_property PACKAGE_PIN P17 [get_ports LED[7]]
set_property IOSTANDARD LVCMOS25 [get_ports LED[7]]
