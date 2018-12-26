connect -url tcp:127.0.0.1:3121
source C:/Users/admin/Documents/OneDriveLocal/FPGA_Learning/ZYNQ_code/PYNQ_test/PYNQ_test.sdk/pynq_design_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Xilinx TUL 1234-tulA"} -index 0
loadhw -hw C:/Users/admin/Documents/OneDriveLocal/FPGA_Learning/ZYNQ_code/PYNQ_test/PYNQ_test.sdk/pynq_design_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Xilinx TUL 1234-tulA"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Xilinx TUL 1234-tulA"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Xilinx TUL 1234-tulA"} -index 0
dow C:/Users/admin/Documents/OneDriveLocal/FPGA_Learning/ZYNQ_code/PYNQ_test/PYNQ_test.sdk/part19_Triple_Timer/Debug/part19_Triple_Timer.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Xilinx TUL 1234-tulA"} -index 0
con
