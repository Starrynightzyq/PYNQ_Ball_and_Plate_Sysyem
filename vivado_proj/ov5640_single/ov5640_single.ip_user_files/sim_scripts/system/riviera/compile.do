vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/lib_cdc_v1_0_2
vlib riviera/lib_pkg_v1_0_2
vlib riviera/fifo_generator_v13_2_1
vlib riviera/lib_fifo_v1_0_10
vlib riviera/blk_mem_gen_v8_4_1
vlib riviera/lib_bmg_v1_0_10
vlib riviera/lib_srl_fifo_v1_0_2
vlib riviera/axi_datamover_v5_1_17
vlib riviera/axi_vdma_v6_3_3
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/smartconnect_v1_0
vlib riviera/axi_protocol_checker_v2_0_1
vlib riviera/axi_vip_v1_1_1
vlib riviera/processing_system7_vip_v1_0_3
vlib riviera/proc_sys_reset_v5_0_12
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/v_tc_v6_1_12
vlib riviera/v_vid_in_axi4s_v4_0_7
vlib riviera/v_axi4s_vid_out_v4_0_8
vlib riviera/xlconcat_v2_1_1
vlib riviera/xlconstant_v1_1_3
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/axi_register_slice_v2_1_15
vlib riviera/axi_data_fifo_v2_1_14
vlib riviera/axi_crossbar_v2_1_16
vlib riviera/interrupt_control_v3_1_4
vlib riviera/axi_gpio_v2_0_17
vlib riviera/axis_infrastructure_v1_1_0
vlib riviera/axis_register_slice_v1_1_15
vlib riviera/axis_subset_converter_v1_1_15
vlib riviera/axi_protocol_converter_v2_1_15

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap lib_pkg_v1_0_2 riviera/lib_pkg_v1_0_2
vmap fifo_generator_v13_2_1 riviera/fifo_generator_v13_2_1
vmap lib_fifo_v1_0_10 riviera/lib_fifo_v1_0_10
vmap blk_mem_gen_v8_4_1 riviera/blk_mem_gen_v8_4_1
vmap lib_bmg_v1_0_10 riviera/lib_bmg_v1_0_10
vmap lib_srl_fifo_v1_0_2 riviera/lib_srl_fifo_v1_0_2
vmap axi_datamover_v5_1_17 riviera/axi_datamover_v5_1_17
vmap axi_vdma_v6_3_3 riviera/axi_vdma_v6_3_3
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap smartconnect_v1_0 riviera/smartconnect_v1_0
vmap axi_protocol_checker_v2_0_1 riviera/axi_protocol_checker_v2_0_1
vmap axi_vip_v1_1_1 riviera/axi_vip_v1_1_1
vmap processing_system7_vip_v1_0_3 riviera/processing_system7_vip_v1_0_3
vmap proc_sys_reset_v5_0_12 riviera/proc_sys_reset_v5_0_12
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap v_tc_v6_1_12 riviera/v_tc_v6_1_12
vmap v_vid_in_axi4s_v4_0_7 riviera/v_vid_in_axi4s_v4_0_7
vmap v_axi4s_vid_out_v4_0_8 riviera/v_axi4s_vid_out_v4_0_8
vmap xlconcat_v2_1_1 riviera/xlconcat_v2_1_1
vmap xlconstant_v1_1_3 riviera/xlconstant_v1_1_3
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_15 riviera/axi_register_slice_v2_1_15
vmap axi_data_fifo_v2_1_14 riviera/axi_data_fifo_v2_1_14
vmap axi_crossbar_v2_1_16 riviera/axi_crossbar_v2_1_16
vmap interrupt_control_v3_1_4 riviera/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_17 riviera/axi_gpio_v2_0_17
vmap axis_infrastructure_v1_1_0 riviera/axis_infrastructure_v1_1_0
vmap axis_register_slice_v1_1_15 riviera/axis_register_slice_v1_1_15
vmap axis_subset_converter_v1_1_15 riviera/axis_subset_converter_v1_1_15
vmap axi_protocol_converter_v2_1_15 riviera/axi_protocol_converter_v2_1_15

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ip/system_alinx_ov5640_0_0/src/ila_0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ip/system_alinx_ov5640_0_0/src/ila_0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ip/system_alinx_ov5640_0_0/src/ila_0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ip/system_alinx_ov5640_0_0/src/ila_0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/system/ip/system_alinx_ov5640_0_0/src/ila_0/sim/ila_0.v" \
"../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/564b/src/cmos_8_16bit.v" \
"../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/564b/src/alinx_ov5640.v" \
"../../../bd/system/ip/system_alinx_ov5640_0_0/sim/system_alinx_ov5640_0_0.v" \
"../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/9097/src/mmcme2_drp.v" \

vcom -work xil_defaultlib -93 \
"../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/9097/src/axi_dynclk_S00_AXI.vhd" \
"../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/9097/src/axi_dynclk.vhd" \
"../../../bd/system/ip/system_axi_dynclk_0_0/sim/system_axi_dynclk_0_0.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_1  -v2k5 "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ip/system_alinx_ov5640_0_0/src/ila_0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ip/system_alinx_ov5640_0_0/src/ila_0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/5c35/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_1 -93 \
"../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/5c35/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_1  -v2k5 "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ip/system_alinx_ov5640_0_0/src/ila_0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ip/system_alinx_ov5640_0_0/src/ila_0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/5c35/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_10 -93 \
"../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/f10a/hdl/lib_fifo_v1_0_rfs.vhd" \

vlog -work blk_mem_gen_v8_4_1  -v2k5 "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ip/system_alinx_ov5640_0_0/src/ila_0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ip/system_alinx_ov5640_0_0/src/ila_0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/67d8/simulation/blk_mem_gen_v8_4.v" \

vcom -work lib_bmg_v1_0_10 -93 \
"../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/9340/hdl/lib_bmg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_17 -93 \
"../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/71f3/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vlog -work axi_vdma_v6_3_3  -v2k5 "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ip/system_alinx_ov5640_0_0/src/ila_0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ip/system_alinx_ov5640_0_0/src/ila_0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/f8d8/hdl/axi_vdma_v6_3_rfs.v" \

vcom -work axi_vdma_v6_3_3 -93 \
"../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/f8d8/hdl/axi_vdma_v6_3_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_axi_vdma_0_0/sim/system_axi_vdma_0_0.vhd" \
"../../../bd/system/ip/system_axi_vdma_1_0/sim/system_axi_vdma_1_0.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ip/system_alinx_ov5640_0_0/src/ila_0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ip/system_alinx_ov5640_0_0/src/ila_0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ip/system_alinx_ov5640_0_0/src/ila_0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ip/system_alinx_ov5640_0_0/src/ila_0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/02c8/hdl/sc_util_v1_0_vl_rfs.sv" \

vlog -work axi_protocol_checker_v2_0_1  -sv2k12 "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ip/system_alinx_ov5640_0_0/src/ila_0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ip/system_alinx_ov5640_0_0/src/ila_0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/3b24/hdl/axi_protocol_checker_v2_0_vl_rfs.sv" \

vlog -work axi_vip_v1_1_1  -sv2k12 "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ip/system_alinx_ov5640_0_0/src/ila_0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ip/system_alinx_ov5640_0_0/src/ila_0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/a16a/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_3  -sv2k12 "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ip/system_alinx_ov5640_0_0/src/ila_0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ip/system_alinx_ov5640_0_0/src/ila_0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/1313/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ip/system_alinx_ov5640_0_0/src/ila_0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ip/system_alinx_ov5640_0_0/src/ila_0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/system/ip/system_processing_system7_0_0/sim/system_processing_system7_0_0.v" \

vcom -work proc_sys_reset_v5_0_12 -93 \
"../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_rst_processing_system7_0_100M_0/sim/system_rst_processing_system7_0_100M_0.vhd" \
"../../../bd/system/ip/system_rst_processing_system7_0_150M_0/sim/system_rst_processing_system7_0_150M_0.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/cced/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work v_tc_v6_1_12 -93 \
"../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/6694/hdl/v_tc_v6_1_vh_rfs.vhd" \

vlog -work v_vid_in_axi4s_v4_0_7  -v2k5 "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ip/system_alinx_ov5640_0_0/src/ila_0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ip/system_alinx_ov5640_0_0/src/ila_0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/f931/hdl/v_vid_in_axi4s_v4_0_vl_rfs.v" \

vlog -work v_axi4s_vid_out_v4_0_8  -v2k5 "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ip/system_alinx_ov5640_0_0/src/ila_0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ip/system_alinx_ov5640_0_0/src/ila_0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/fc47/hdl/v_axi4s_vid_out_v4_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ip/system_alinx_ov5640_0_0/src/ila_0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ip/system_alinx_ov5640_0_0/src/ila_0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/system/ip/system_v_axi4s_vid_out_0_0/sim/system_v_axi4s_vid_out_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_v_tc_0_0/sim/system_v_tc_0_0.vhd" \

vlog -work xlconcat_v2_1_1  -v2k5 "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ip/system_alinx_ov5640_0_0/src/ila_0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ip/system_alinx_ov5640_0_0/src/ila_0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ip/system_alinx_ov5640_0_0/src/ila_0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ip/system_alinx_ov5640_0_0/src/ila_0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/system/ip/system_xlconcat_0_0/sim/system_xlconcat_0_0.v" \

vlog -work xlconstant_v1_1_3  -v2k5 "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ip/system_alinx_ov5640_0_0/src/ila_0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ip/system_alinx_ov5640_0_0/src/ila_0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/0750/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ip/system_alinx_ov5640_0_0/src/ila_0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ip/system_alinx_ov5640_0_0/src/ila_0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/system/ip/system_xlconstant_1_0/sim/system_xlconstant_1_0.v" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ip/system_alinx_ov5640_0_0/src/ila_0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ip/system_alinx_ov5640_0_0/src/ila_0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_15  -v2k5 "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ip/system_alinx_ov5640_0_0/src/ila_0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ip/system_alinx_ov5640_0_0/src/ila_0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/3ed1/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_14  -v2k5 "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ip/system_alinx_ov5640_0_0/src/ila_0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ip/system_alinx_ov5640_0_0/src/ila_0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/9909/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_16  -v2k5 "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ip/system_alinx_ov5640_0_0/src/ila_0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ip/system_alinx_ov5640_0_0/src/ila_0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/c631/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ip/system_alinx_ov5640_0_0/src/ila_0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ip/system_alinx_ov5640_0_0/src/ila_0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/system/ip/system_xbar_1/sim/system_xbar_1.v" \
"../../../bd/system/ip/system_xbar_0/sim/system_xbar_0.v" \
"../../../bd/system/sim/system.v" \

vcom -work interrupt_control_v3_1_4 -93 \
"../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/8e66/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_17 -93 \
"../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/c450/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_axi_gpio_0_1/sim/system_axi_gpio_0_1.vhd" \

vlog -work axis_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ip/system_alinx_ov5640_0_0/src/ila_0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ip/system_alinx_ov5640_0_0/src/ila_0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/0ab1/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work axis_register_slice_v1_1_15  -v2k5 "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ip/system_alinx_ov5640_0_0/src/ila_0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ip/system_alinx_ov5640_0_0/src/ila_0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/cd45/hdl/axis_register_slice_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ip/system_alinx_ov5640_0_0/src/ila_0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ip/system_alinx_ov5640_0_0/src/ila_0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axis_subset_converter_0_1/hdl/tdata_system_axis_subset_converter_0_1.v" \
"../../../bd/system/ip/system_axis_subset_converter_0_1/hdl/tuser_system_axis_subset_converter_0_1.v" \
"../../../bd/system/ip/system_axis_subset_converter_0_1/hdl/tstrb_system_axis_subset_converter_0_1.v" \
"../../../bd/system/ip/system_axis_subset_converter_0_1/hdl/tkeep_system_axis_subset_converter_0_1.v" \
"../../../bd/system/ip/system_axis_subset_converter_0_1/hdl/tid_system_axis_subset_converter_0_1.v" \
"../../../bd/system/ip/system_axis_subset_converter_0_1/hdl/tdest_system_axis_subset_converter_0_1.v" \
"../../../bd/system/ip/system_axis_subset_converter_0_1/hdl/tlast_system_axis_subset_converter_0_1.v" \

vlog -work axis_subset_converter_v1_1_15  -v2k5 "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ip/system_alinx_ov5640_0_0/src/ila_0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ip/system_alinx_ov5640_0_0/src/ila_0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/6ad2/hdl/axis_subset_converter_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ip/system_alinx_ov5640_0_0/src/ila_0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ip/system_alinx_ov5640_0_0/src/ila_0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axis_subset_converter_0_1/hdl/top_system_axis_subset_converter_0_1.v" \
"../../../bd/system/ip/system_axis_subset_converter_0_1/sim/system_axis_subset_converter_0_1.v" \
"../../../bd/system/ipshared/051a/src/i2c_extender.v" \
"../../../bd/system/ip/system_i2c_extender_0_0/sim/system_i2c_extender_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_axi_gpio_0_0/sim/system_axi_gpio_0_0.vhd" \

vlog -work axi_protocol_converter_v2_1_15  -v2k5 "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ip/system_alinx_ov5640_0_0/src/ila_0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ip/system_alinx_ov5640_0_0/src/ila_0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/ff69/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ip/system_alinx_ov5640_0_0/src/ila_0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../ov5640_single.srcs/sources_1/bd/system/ip/system_alinx_ov5640_0_0/src/ila_0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/system/ip/system_auto_pc_1/sim/system_auto_pc_1.v" \
"../../../bd/system/ip/system_auto_pc_0/sim/system_auto_pc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

