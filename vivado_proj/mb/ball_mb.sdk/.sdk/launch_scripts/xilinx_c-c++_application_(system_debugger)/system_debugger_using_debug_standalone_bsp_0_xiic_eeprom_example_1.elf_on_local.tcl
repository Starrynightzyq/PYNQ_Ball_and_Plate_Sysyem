connect -url tcp:127.0.0.1:3121
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent Basys3 210183713039A"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent Basys3 210183713039A"} -index 0
dow C:/Users/admin/Documents/OneDriveLocal/FPGA_Learning/Code/ImageProcess/BALL_mb_new/BALL_mb_new.sdk/standalone_bsp_0_xiic_eeprom_example_1/Debug/standalone_bsp_0_xiic_eeprom_example_1.elf
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent Basys3 210183713039A"} -index 0
con
