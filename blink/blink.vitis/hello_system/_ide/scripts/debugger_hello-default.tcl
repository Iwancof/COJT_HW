# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\Users\HW101.COJTHW\COJT\blink\blink.vitis\hello_system\_ide\scripts\debugger_hello-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\Users\HW101.COJTHW\COJT\blink\blink.vitis\hello_system\_ide\scripts\debugger_hello-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-SMT1 210203344929A" && level==0 && jtag_device_ctx=="jsn-JTAG-SMT1-210203344929A-23727093-0"}
fpga -file C:/Users/HW101.COJTHW/COJT/blink/blink.vitis/hello/_ide/bitstream/design_1_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw C:/Users/HW101.COJTHW/COJT/blink/blink.vitis/design_1_wrapper/export/design_1_wrapper/hw/design_1_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source C:/Users/HW101.COJTHW/COJT/blink/blink.vitis/hello/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow C:/Users/HW101.COJTHW/COJT/blink/blink.vitis/hello/Debug/hello.elf
configparams force-mem-access 0
bpadd -addr &main
