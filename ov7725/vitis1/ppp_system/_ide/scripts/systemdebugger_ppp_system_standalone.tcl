# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\Users\SUXP\Desktop\ov7725\vitis1\ppp_system\_ide\scripts\systemdebugger_ppp_system_standalone.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\Users\SUXP\Desktop\ov7725\vitis1\ppp_system\_ide\scripts\systemdebugger_ppp_system_standalone.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-SMT2 210251A08870" && level==0 && jtag_device_ctx=="jsn-JTAG-SMT2-210251A08870-13722093-0"}
fpga -file C:/Users/SUXP/Desktop/ov7725/vitis1/ppp/_ide/bitstream/design_1_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw C:/Users/SUXP/Desktop/ov7725/vitis1/design_1_wrapper/export/design_1_wrapper/hw/design_1_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source C:/Users/SUXP/Desktop/ov7725/vitis1/ppp/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow C:/Users/SUXP/Desktop/ov7725/vitis1/ppp/Debug/ppp.elf
configparams force-mem-access 0
bpadd -addr &main
