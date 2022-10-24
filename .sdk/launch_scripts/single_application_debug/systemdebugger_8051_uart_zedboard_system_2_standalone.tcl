connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zed 210248B4A80B" && level==0 && jtag_device_ctx=="jsn-Zed-210248B4A80B-23727093-0"}
fpga -file C:/Users/iankh/Documents/NTHU/8051/Project/8051_ZedBoard/8051_UART_Zedboard/_ide/bitstream/8051_UART.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw C:/Users/iankh/Documents/NTHU/8051/Project/8051_ZedBoard/8051_UART/export/8051_UART/hw/8051_UART.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source C:/Users/iankh/Documents/NTHU/8051/Project/8051_ZedBoard/8051_UART_Zedboard/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
configparams force-mem-access 0
