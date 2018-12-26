//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Tue Dec 25 12:41:10 2018
//Host        : ZYQ-Mac-Win running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=47,numReposBlks=35,numNonXlnxBlks=1,numHierBlks=12,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=8,da_board_cnt=3,da_clkrst_cnt=4,da_ps7_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    cmos_data_0,
    cmos_href_0,
    cmos_iic_0_scl_i,
    cmos_iic_0_scl_o,
    cmos_iic_0_scl_t,
    cmos_iic_0_sda_i,
    cmos_iic_0_sda_o,
    cmos_iic_0_sda_t,
    cmos_pclk_0,
    cmos_reset,
    cmos_vsync_0,
    cmos_xclk_0,
    coms_pwdn,
    hdmi_in_hpd,
    hdmi_out_clk_n,
    hdmi_out_clk_p,
    hdmi_out_data_n,
    hdmi_out_data_p);
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) inout [14:0]DDR_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR BA" *) inout [2:0]DDR_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CAS_N" *) inout DDR_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_N" *) inout DDR_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_P" *) inout DDR_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CKE" *) inout DDR_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CS_N" *) inout DDR_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DM" *) inout [3:0]DDR_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQ" *) inout [31:0]DDR_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_N" *) inout [3:0]DDR_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_P" *) inout [3:0]DDR_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ODT" *) inout DDR_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RAS_N" *) inout DDR_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RESET_N" *) inout DDR_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR WE_N" *) inout DDR_we_n;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false" *) inout FIXED_IO_ddr_vrn;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP" *) inout FIXED_IO_ddr_vrp;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO" *) inout [53:0]FIXED_IO_mio;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK" *) inout FIXED_IO_ps_clk;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB" *) inout FIXED_IO_ps_porb;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB" *) inout FIXED_IO_ps_srstb;
  input [7:0]cmos_data_0;
  input cmos_href_0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 cmos_iic_0 SCL_I" *) input cmos_iic_0_scl_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 cmos_iic_0 SCL_O" *) output cmos_iic_0_scl_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 cmos_iic_0 SCL_T" *) output cmos_iic_0_scl_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 cmos_iic_0 SDA_I" *) input cmos_iic_0_sda_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 cmos_iic_0 SDA_O" *) output cmos_iic_0_sda_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 cmos_iic_0 SDA_T" *) output cmos_iic_0_sda_t;
  input cmos_pclk_0;
  output [0:0]cmos_reset;
  input cmos_vsync_0;
  output cmos_xclk_0;
  output [0:0]coms_pwdn;
  output [0:0]hdmi_in_hpd;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:tmds:1.0 hdmi_out CLK_N" *) output hdmi_out_clk_n;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:tmds:1.0 hdmi_out CLK_P" *) output hdmi_out_clk_p;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:tmds:1.0 hdmi_out DATA_N" *) output [2:0]hdmi_out_data_n;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:tmds:1.0 hdmi_out DATA_P" *) output [2:0]hdmi_out_data_p;

  wire [23:0]CMOS_Capture_RGB565_0_cmos_frame_data;
  wire CMOS_Capture_RGB565_0_cmos_frame_de;
  wire CMOS_Capture_RGB565_0_cmos_frame_href;
  wire CMOS_Capture_RGB565_0_cmos_frame_vsync;
  wire CMOS_Capture_RGB565_0_cmos_xclk;
  wire axi_dynclk_0_PXL_CLK_O;
  wire axi_gpio_0_ip2intc_irpt;
  wire [0:0]axi_gpio_cmos_gpio_io_o;
  wire [0:0]axi_gpio_video_gpio_io_o;
  wire [31:0]axi_mem_intercon_M00_AXI_ARADDR;
  wire [1:0]axi_mem_intercon_M00_AXI_ARBURST;
  wire [3:0]axi_mem_intercon_M00_AXI_ARCACHE;
  wire [0:0]axi_mem_intercon_M00_AXI_ARID;
  wire [3:0]axi_mem_intercon_M00_AXI_ARLEN;
  wire [1:0]axi_mem_intercon_M00_AXI_ARLOCK;
  wire [2:0]axi_mem_intercon_M00_AXI_ARPROT;
  wire [3:0]axi_mem_intercon_M00_AXI_ARQOS;
  wire axi_mem_intercon_M00_AXI_ARREADY;
  wire [2:0]axi_mem_intercon_M00_AXI_ARSIZE;
  wire axi_mem_intercon_M00_AXI_ARVALID;
  wire [31:0]axi_mem_intercon_M00_AXI_AWADDR;
  wire [1:0]axi_mem_intercon_M00_AXI_AWBURST;
  wire [3:0]axi_mem_intercon_M00_AXI_AWCACHE;
  wire [0:0]axi_mem_intercon_M00_AXI_AWID;
  wire [3:0]axi_mem_intercon_M00_AXI_AWLEN;
  wire [1:0]axi_mem_intercon_M00_AXI_AWLOCK;
  wire [2:0]axi_mem_intercon_M00_AXI_AWPROT;
  wire [3:0]axi_mem_intercon_M00_AXI_AWQOS;
  wire axi_mem_intercon_M00_AXI_AWREADY;
  wire [2:0]axi_mem_intercon_M00_AXI_AWSIZE;
  wire axi_mem_intercon_M00_AXI_AWVALID;
  wire [5:0]axi_mem_intercon_M00_AXI_BID;
  wire axi_mem_intercon_M00_AXI_BREADY;
  wire [1:0]axi_mem_intercon_M00_AXI_BRESP;
  wire axi_mem_intercon_M00_AXI_BVALID;
  wire [63:0]axi_mem_intercon_M00_AXI_RDATA;
  wire [5:0]axi_mem_intercon_M00_AXI_RID;
  wire axi_mem_intercon_M00_AXI_RLAST;
  wire axi_mem_intercon_M00_AXI_RREADY;
  wire [1:0]axi_mem_intercon_M00_AXI_RRESP;
  wire axi_mem_intercon_M00_AXI_RVALID;
  wire [63:0]axi_mem_intercon_M00_AXI_WDATA;
  wire [0:0]axi_mem_intercon_M00_AXI_WID;
  wire axi_mem_intercon_M00_AXI_WLAST;
  wire axi_mem_intercon_M00_AXI_WREADY;
  wire [7:0]axi_mem_intercon_M00_AXI_WSTRB;
  wire axi_mem_intercon_M00_AXI_WVALID;
  wire [23:0]axi_vdma_0_M_AXIS_MM2S_TDATA;
  wire [2:0]axi_vdma_0_M_AXIS_MM2S_TKEEP;
  wire axi_vdma_0_M_AXIS_MM2S_TLAST;
  wire axi_vdma_0_M_AXIS_MM2S_TREADY;
  wire [0:0]axi_vdma_0_M_AXIS_MM2S_TUSER;
  wire axi_vdma_0_M_AXIS_MM2S_TVALID;
  wire [31:0]axi_vdma_0_M_AXI_MM2S_ARADDR;
  wire [1:0]axi_vdma_0_M_AXI_MM2S_ARBURST;
  wire [3:0]axi_vdma_0_M_AXI_MM2S_ARCACHE;
  wire [7:0]axi_vdma_0_M_AXI_MM2S_ARLEN;
  wire [2:0]axi_vdma_0_M_AXI_MM2S_ARPROT;
  wire axi_vdma_0_M_AXI_MM2S_ARREADY;
  wire [2:0]axi_vdma_0_M_AXI_MM2S_ARSIZE;
  wire axi_vdma_0_M_AXI_MM2S_ARVALID;
  wire axi_vdma_0_M_AXI_MM2S_AWREADY;
  wire [1:0]axi_vdma_0_M_AXI_MM2S_BRESP;
  wire axi_vdma_0_M_AXI_MM2S_BVALID;
  wire [63:0]axi_vdma_0_M_AXI_MM2S_RDATA;
  wire axi_vdma_0_M_AXI_MM2S_RLAST;
  wire axi_vdma_0_M_AXI_MM2S_RREADY;
  wire [1:0]axi_vdma_0_M_AXI_MM2S_RRESP;
  wire axi_vdma_0_M_AXI_MM2S_RVALID;
  wire axi_vdma_0_M_AXI_MM2S_WREADY;
  wire axi_vdma_0_M_AXI_S2MM_ARREADY;
  wire [31:0]axi_vdma_0_M_AXI_S2MM_AWADDR;
  wire [1:0]axi_vdma_0_M_AXI_S2MM_AWBURST;
  wire [3:0]axi_vdma_0_M_AXI_S2MM_AWCACHE;
  wire [7:0]axi_vdma_0_M_AXI_S2MM_AWLEN;
  wire [2:0]axi_vdma_0_M_AXI_S2MM_AWPROT;
  wire axi_vdma_0_M_AXI_S2MM_AWREADY;
  wire [2:0]axi_vdma_0_M_AXI_S2MM_AWSIZE;
  wire axi_vdma_0_M_AXI_S2MM_AWVALID;
  wire axi_vdma_0_M_AXI_S2MM_BREADY;
  wire [1:0]axi_vdma_0_M_AXI_S2MM_BRESP;
  wire axi_vdma_0_M_AXI_S2MM_BVALID;
  wire [63:0]axi_vdma_0_M_AXI_S2MM_RDATA;
  wire axi_vdma_0_M_AXI_S2MM_RLAST;
  wire [1:0]axi_vdma_0_M_AXI_S2MM_RRESP;
  wire axi_vdma_0_M_AXI_S2MM_RVALID;
  wire [63:0]axi_vdma_0_M_AXI_S2MM_WDATA;
  wire axi_vdma_0_M_AXI_S2MM_WLAST;
  wire axi_vdma_0_M_AXI_S2MM_WREADY;
  wire [7:0]axi_vdma_0_M_AXI_S2MM_WSTRB;
  wire axi_vdma_0_M_AXI_S2MM_WVALID;
  wire axi_vdma_0_mm2s_introut;
  wire axi_vdma_0_s2mm_introut;
  wire [23:0]axis_subset_converter_in_M_AXIS_TDATA;
  wire axis_subset_converter_in_M_AXIS_TLAST;
  wire axis_subset_converter_in_M_AXIS_TREADY;
  wire [0:0]axis_subset_converter_in_M_AXIS_TUSER;
  wire axis_subset_converter_in_M_AXIS_TVALID;
  wire [23:0]axis_subset_converter_out_M_AXIS_TDATA;
  wire [2:0]axis_subset_converter_out_M_AXIS_TKEEP;
  wire axis_subset_converter_out_M_AXIS_TLAST;
  wire axis_subset_converter_out_M_AXIS_TREADY;
  wire [0:0]axis_subset_converter_out_M_AXIS_TUSER;
  wire axis_subset_converter_out_M_AXIS_TVALID;
  wire clk_wiz_0_clk_125M;
  wire clk_wiz_0_locked;
  wire [7:0]cmos_data_0_1;
  wire cmos_href_0_1;
  wire cmos_pclk_0_1;
  wire [0:0]cmos_reset_dout;
  wire cmos_vsync_0_1;
  wire [0:0]coms_pwdn_dout;
  wire dvi2rgb_1_PixelClk;
  wire dvi2rgb_1_aPixelClkLckd;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn;
  wire [0:0]proc_sys_reset_0_peripheral_reset;
  wire [0:0]proc_sys_reset_1_peripheral_aresetn;
  wire [0:0]proc_sys_reset_1_peripheral_aresetn1;
  wire [14:0]processing_system7_0_DDR_ADDR;
  wire [2:0]processing_system7_0_DDR_BA;
  wire processing_system7_0_DDR_CAS_N;
  wire processing_system7_0_DDR_CKE;
  wire processing_system7_0_DDR_CK_N;
  wire processing_system7_0_DDR_CK_P;
  wire processing_system7_0_DDR_CS_N;
  wire [3:0]processing_system7_0_DDR_DM;
  wire [31:0]processing_system7_0_DDR_DQ;
  wire [3:0]processing_system7_0_DDR_DQS_N;
  wire [3:0]processing_system7_0_DDR_DQS_P;
  wire processing_system7_0_DDR_ODT;
  wire processing_system7_0_DDR_RAS_N;
  wire processing_system7_0_DDR_RESET_N;
  wire processing_system7_0_DDR_WE_N;
  wire processing_system7_0_FCLK_CLK0;
  wire processing_system7_0_FCLK_CLK1;
  wire processing_system7_0_FCLK_CLK2;
  wire processing_system7_0_FCLK_CLK3;
  wire processing_system7_0_FCLK_RESET0_N;
  wire processing_system7_0_FIXED_IO_DDR_VRN;
  wire processing_system7_0_FIXED_IO_DDR_VRP;
  wire [53:0]processing_system7_0_FIXED_IO_MIO;
  wire processing_system7_0_FIXED_IO_PS_CLK;
  wire processing_system7_0_FIXED_IO_PS_PORB;
  wire processing_system7_0_FIXED_IO_PS_SRSTB;
  wire processing_system7_0_IIC_0_SCL_I;
  wire processing_system7_0_IIC_0_SCL_O;
  wire processing_system7_0_IIC_0_SCL_T;
  wire processing_system7_0_IIC_0_SDA_I;
  wire processing_system7_0_IIC_0_SDA_O;
  wire processing_system7_0_IIC_0_SDA_T;
  wire [31:0]processing_system7_0_M_AXI_GP0_ARADDR;
  wire [1:0]processing_system7_0_M_AXI_GP0_ARBURST;
  wire [3:0]processing_system7_0_M_AXI_GP0_ARCACHE;
  wire [11:0]processing_system7_0_M_AXI_GP0_ARID;
  wire [3:0]processing_system7_0_M_AXI_GP0_ARLEN;
  wire [1:0]processing_system7_0_M_AXI_GP0_ARLOCK;
  wire [2:0]processing_system7_0_M_AXI_GP0_ARPROT;
  wire [3:0]processing_system7_0_M_AXI_GP0_ARQOS;
  wire processing_system7_0_M_AXI_GP0_ARREADY;
  wire [2:0]processing_system7_0_M_AXI_GP0_ARSIZE;
  wire processing_system7_0_M_AXI_GP0_ARVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_AWADDR;
  wire [1:0]processing_system7_0_M_AXI_GP0_AWBURST;
  wire [3:0]processing_system7_0_M_AXI_GP0_AWCACHE;
  wire [11:0]processing_system7_0_M_AXI_GP0_AWID;
  wire [3:0]processing_system7_0_M_AXI_GP0_AWLEN;
  wire [1:0]processing_system7_0_M_AXI_GP0_AWLOCK;
  wire [2:0]processing_system7_0_M_AXI_GP0_AWPROT;
  wire [3:0]processing_system7_0_M_AXI_GP0_AWQOS;
  wire processing_system7_0_M_AXI_GP0_AWREADY;
  wire [2:0]processing_system7_0_M_AXI_GP0_AWSIZE;
  wire processing_system7_0_M_AXI_GP0_AWVALID;
  wire [11:0]processing_system7_0_M_AXI_GP0_BID;
  wire processing_system7_0_M_AXI_GP0_BREADY;
  wire [1:0]processing_system7_0_M_AXI_GP0_BRESP;
  wire processing_system7_0_M_AXI_GP0_BVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_RDATA;
  wire [11:0]processing_system7_0_M_AXI_GP0_RID;
  wire processing_system7_0_M_AXI_GP0_RLAST;
  wire processing_system7_0_M_AXI_GP0_RREADY;
  wire [1:0]processing_system7_0_M_AXI_GP0_RRESP;
  wire processing_system7_0_M_AXI_GP0_RVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_WDATA;
  wire [11:0]processing_system7_0_M_AXI_GP0_WID;
  wire processing_system7_0_M_AXI_GP0_WLAST;
  wire processing_system7_0_M_AXI_GP0_WREADY;
  wire [3:0]processing_system7_0_M_AXI_GP0_WSTRB;
  wire processing_system7_0_M_AXI_GP0_WVALID;
  wire [31:0]ps7_0_axi_periph_GP0_M04_AXI_ARADDR;
  wire ps7_0_axi_periph_GP0_M04_AXI_ARREADY;
  wire [0:0]ps7_0_axi_periph_GP0_M04_AXI_ARVALID;
  wire [31:0]ps7_0_axi_periph_GP0_M04_AXI_AWADDR;
  wire ps7_0_axi_periph_GP0_M04_AXI_AWREADY;
  wire [0:0]ps7_0_axi_periph_GP0_M04_AXI_AWVALID;
  wire [0:0]ps7_0_axi_periph_GP0_M04_AXI_BREADY;
  wire [1:0]ps7_0_axi_periph_GP0_M04_AXI_BRESP;
  wire ps7_0_axi_periph_GP0_M04_AXI_BVALID;
  wire [31:0]ps7_0_axi_periph_GP0_M04_AXI_RDATA;
  wire [0:0]ps7_0_axi_periph_GP0_M04_AXI_RREADY;
  wire [1:0]ps7_0_axi_periph_GP0_M04_AXI_RRESP;
  wire ps7_0_axi_periph_GP0_M04_AXI_RVALID;
  wire [31:0]ps7_0_axi_periph_GP0_M04_AXI_WDATA;
  wire ps7_0_axi_periph_GP0_M04_AXI_WREADY;
  wire [3:0]ps7_0_axi_periph_GP0_M04_AXI_WSTRB;
  wire [0:0]ps7_0_axi_periph_GP0_M04_AXI_WVALID;
  wire [31:0]ps7_0_axi_periph_GP0_M05_AXI_ARADDR;
  wire ps7_0_axi_periph_GP0_M05_AXI_ARREADY;
  wire ps7_0_axi_periph_GP0_M05_AXI_ARVALID;
  wire [31:0]ps7_0_axi_periph_GP0_M05_AXI_AWADDR;
  wire ps7_0_axi_periph_GP0_M05_AXI_AWREADY;
  wire ps7_0_axi_periph_GP0_M05_AXI_AWVALID;
  wire ps7_0_axi_periph_GP0_M05_AXI_BREADY;
  wire [1:0]ps7_0_axi_periph_GP0_M05_AXI_BRESP;
  wire ps7_0_axi_periph_GP0_M05_AXI_BVALID;
  wire [31:0]ps7_0_axi_periph_GP0_M05_AXI_RDATA;
  wire ps7_0_axi_periph_GP0_M05_AXI_RREADY;
  wire [1:0]ps7_0_axi_periph_GP0_M05_AXI_RRESP;
  wire ps7_0_axi_periph_GP0_M05_AXI_RVALID;
  wire [31:0]ps7_0_axi_periph_GP0_M05_AXI_WDATA;
  wire ps7_0_axi_periph_GP0_M05_AXI_WREADY;
  wire [3:0]ps7_0_axi_periph_GP0_M05_AXI_WSTRB;
  wire ps7_0_axi_periph_GP0_M05_AXI_WVALID;
  wire [31:0]ps7_0_axi_periph_M00_AXI_ARADDR;
  wire ps7_0_axi_periph_M00_AXI_ARREADY;
  wire [0:0]ps7_0_axi_periph_M00_AXI_ARVALID;
  wire [31:0]ps7_0_axi_periph_M00_AXI_AWADDR;
  wire ps7_0_axi_periph_M00_AXI_AWREADY;
  wire [0:0]ps7_0_axi_periph_M00_AXI_AWVALID;
  wire [0:0]ps7_0_axi_periph_M00_AXI_BREADY;
  wire [1:0]ps7_0_axi_periph_M00_AXI_BRESP;
  wire ps7_0_axi_periph_M00_AXI_BVALID;
  wire [31:0]ps7_0_axi_periph_M00_AXI_RDATA;
  wire [0:0]ps7_0_axi_periph_M00_AXI_RREADY;
  wire [1:0]ps7_0_axi_periph_M00_AXI_RRESP;
  wire ps7_0_axi_periph_M00_AXI_RVALID;
  wire [31:0]ps7_0_axi_periph_M00_AXI_WDATA;
  wire ps7_0_axi_periph_M00_AXI_WREADY;
  wire [0:0]ps7_0_axi_periph_M00_AXI_WVALID;
  wire [31:0]ps7_0_axi_periph_M01_AXI_ARADDR;
  wire ps7_0_axi_periph_M01_AXI_ARREADY;
  wire ps7_0_axi_periph_M01_AXI_ARVALID;
  wire [31:0]ps7_0_axi_periph_M01_AXI_AWADDR;
  wire ps7_0_axi_periph_M01_AXI_AWREADY;
  wire ps7_0_axi_periph_M01_AXI_AWVALID;
  wire ps7_0_axi_periph_M01_AXI_BREADY;
  wire [1:0]ps7_0_axi_periph_M01_AXI_BRESP;
  wire ps7_0_axi_periph_M01_AXI_BVALID;
  wire [31:0]ps7_0_axi_periph_M01_AXI_RDATA;
  wire ps7_0_axi_periph_M01_AXI_RREADY;
  wire [1:0]ps7_0_axi_periph_M01_AXI_RRESP;
  wire ps7_0_axi_periph_M01_AXI_RVALID;
  wire [31:0]ps7_0_axi_periph_M01_AXI_WDATA;
  wire ps7_0_axi_periph_M01_AXI_WREADY;
  wire [3:0]ps7_0_axi_periph_M01_AXI_WSTRB;
  wire ps7_0_axi_periph_M01_AXI_WVALID;
  wire rgb2dvi_1_TMDS_CLK_N;
  wire rgb2dvi_1_TMDS_CLK_P;
  wire [2:0]rgb2dvi_1_TMDS_DATA_N;
  wire [2:0]rgb2dvi_1_TMDS_DATA_P;
  wire [0:0]rst_ps7_0_100M_interconnect_aresetn;
  wire [0:0]rst_ps7_0_100M_peripheral_aresetn;
  wire [0:0]rst_ps7_0_133M_interconnect_aresetn;
  wire [0:0]rst_ps7_0_133M_peripheral_aresetn;
  wire v_axi4s_vid_out_0_vid_io_out_ACTIVE_VIDEO;
  wire [23:0]v_axi4s_vid_out_0_vid_io_out_DATA;
  wire v_axi4s_vid_out_0_vid_io_out_HSYNC;
  wire v_axi4s_vid_out_0_vid_io_out_VSYNC;
  wire v_axi4s_vid_out_0_vtg_ce;
  wire v_tc_1_vtiming_out_ACTIVE_VIDEO;
  wire v_tc_1_vtiming_out_HBLANK;
  wire v_tc_1_vtiming_out_HSYNC;
  wire v_tc_1_vtiming_out_VBLANK;
  wire v_tc_1_vtiming_out_VSYNC;
  wire v_tc_in_irq;
  wire [23:0]v_vid_in_axi4s_0_video_out_TDATA;
  wire v_vid_in_axi4s_0_video_out_TLAST;
  wire v_vid_in_axi4s_0_video_out_TREADY;
  wire v_vid_in_axi4s_0_video_out_TUSER;
  wire v_vid_in_axi4s_0_video_out_TVALID;
  wire v_vid_in_axi4s_0_vtiming_out_ACTIVE_VIDEO;
  wire v_vid_in_axi4s_0_vtiming_out_HSYNC;
  wire v_vid_in_axi4s_0_vtiming_out_VSYNC;
  wire [4:0]xlconcat_0_dout;
  wire [0:0]xlconstant_0_dout;

  assign cmos_data_0_1 = cmos_data_0[7:0];
  assign cmos_href_0_1 = cmos_href_0;
  assign cmos_iic_0_scl_o = processing_system7_0_IIC_0_SCL_O;
  assign cmos_iic_0_scl_t = processing_system7_0_IIC_0_SCL_T;
  assign cmos_iic_0_sda_o = processing_system7_0_IIC_0_SDA_O;
  assign cmos_iic_0_sda_t = processing_system7_0_IIC_0_SDA_T;
  assign cmos_pclk_0_1 = cmos_pclk_0;
  assign cmos_reset[0] = cmos_reset_dout;
  assign cmos_vsync_0_1 = cmos_vsync_0;
  assign cmos_xclk_0 = CMOS_Capture_RGB565_0_cmos_xclk;
  assign coms_pwdn[0] = coms_pwdn_dout;
  assign hdmi_in_hpd[0] = axi_gpio_video_gpio_io_o;
  assign hdmi_out_clk_n = rgb2dvi_1_TMDS_CLK_N;
  assign hdmi_out_clk_p = rgb2dvi_1_TMDS_CLK_P;
  assign hdmi_out_data_n[2:0] = rgb2dvi_1_TMDS_DATA_N;
  assign hdmi_out_data_p[2:0] = rgb2dvi_1_TMDS_DATA_P;
  assign processing_system7_0_IIC_0_SCL_I = cmos_iic_0_scl_i;
  assign processing_system7_0_IIC_0_SDA_I = cmos_iic_0_sda_i;
  design_1_CMOS_Capture_RGB565_0_0 CMOS_Capture_RGB565_0
       (.clk_cmos(processing_system7_0_FCLK_CLK2),
        .cmos_data(cmos_data_0_1),
        .cmos_frame_clken(dvi2rgb_1_PixelClk),
        .cmos_frame_data(CMOS_Capture_RGB565_0_cmos_frame_data),
        .cmos_frame_de(CMOS_Capture_RGB565_0_cmos_frame_de),
        .cmos_frame_href(CMOS_Capture_RGB565_0_cmos_frame_href),
        .cmos_frame_vsync(CMOS_Capture_RGB565_0_cmos_frame_vsync),
        .cmos_href(cmos_href_0_1),
        .cmos_pclk(cmos_pclk_0_1),
        .cmos_vsync(cmos_vsync_0_1),
        .cmos_xclk(CMOS_Capture_RGB565_0_cmos_xclk),
        .locled(dvi2rgb_1_aPixelClkLckd),
        .rst_capture(axi_gpio_cmos_gpio_io_o),
        .rst_n(rst_ps7_0_100M_peripheral_aresetn));
  design_1_axi_gpio_0_1 axi_gpio_cmos
       (.gpio_io_o(axi_gpio_cmos_gpio_io_o),
        .s_axi_aclk(processing_system7_0_FCLK_CLK0),
        .s_axi_araddr(ps7_0_axi_periph_GP0_M05_AXI_ARADDR[8:0]),
        .s_axi_aresetn(rst_ps7_0_100M_peripheral_aresetn),
        .s_axi_arready(ps7_0_axi_periph_GP0_M05_AXI_ARREADY),
        .s_axi_arvalid(ps7_0_axi_periph_GP0_M05_AXI_ARVALID),
        .s_axi_awaddr(ps7_0_axi_periph_GP0_M05_AXI_AWADDR[8:0]),
        .s_axi_awready(ps7_0_axi_periph_GP0_M05_AXI_AWREADY),
        .s_axi_awvalid(ps7_0_axi_periph_GP0_M05_AXI_AWVALID),
        .s_axi_bready(ps7_0_axi_periph_GP0_M05_AXI_BREADY),
        .s_axi_bresp(ps7_0_axi_periph_GP0_M05_AXI_BRESP),
        .s_axi_bvalid(ps7_0_axi_periph_GP0_M05_AXI_BVALID),
        .s_axi_rdata(ps7_0_axi_periph_GP0_M05_AXI_RDATA),
        .s_axi_rready(ps7_0_axi_periph_GP0_M05_AXI_RREADY),
        .s_axi_rresp(ps7_0_axi_periph_GP0_M05_AXI_RRESP),
        .s_axi_rvalid(ps7_0_axi_periph_GP0_M05_AXI_RVALID),
        .s_axi_wdata(ps7_0_axi_periph_GP0_M05_AXI_WDATA),
        .s_axi_wready(ps7_0_axi_periph_GP0_M05_AXI_WREADY),
        .s_axi_wstrb(ps7_0_axi_periph_GP0_M05_AXI_WSTRB),
        .s_axi_wvalid(ps7_0_axi_periph_GP0_M05_AXI_WVALID));
  design_1_axi_gpio_0_0 axi_gpio_video
       (.gpio2_io_i(dvi2rgb_1_aPixelClkLckd),
        .gpio_io_o(axi_gpio_video_gpio_io_o),
        .ip2intc_irpt(axi_gpio_0_ip2intc_irpt),
        .s_axi_aclk(processing_system7_0_FCLK_CLK0),
        .s_axi_araddr(ps7_0_axi_periph_GP0_M04_AXI_ARADDR[8:0]),
        .s_axi_aresetn(rst_ps7_0_100M_peripheral_aresetn),
        .s_axi_arready(ps7_0_axi_periph_GP0_M04_AXI_ARREADY),
        .s_axi_arvalid(ps7_0_axi_periph_GP0_M04_AXI_ARVALID),
        .s_axi_awaddr(ps7_0_axi_periph_GP0_M04_AXI_AWADDR[8:0]),
        .s_axi_awready(ps7_0_axi_periph_GP0_M04_AXI_AWREADY),
        .s_axi_awvalid(ps7_0_axi_periph_GP0_M04_AXI_AWVALID),
        .s_axi_bready(ps7_0_axi_periph_GP0_M04_AXI_BREADY),
        .s_axi_bresp(ps7_0_axi_periph_GP0_M04_AXI_BRESP),
        .s_axi_bvalid(ps7_0_axi_periph_GP0_M04_AXI_BVALID),
        .s_axi_rdata(ps7_0_axi_periph_GP0_M04_AXI_RDATA),
        .s_axi_rready(ps7_0_axi_periph_GP0_M04_AXI_RREADY),
        .s_axi_rresp(ps7_0_axi_periph_GP0_M04_AXI_RRESP),
        .s_axi_rvalid(ps7_0_axi_periph_GP0_M04_AXI_RVALID),
        .s_axi_wdata(ps7_0_axi_periph_GP0_M04_AXI_WDATA),
        .s_axi_wready(ps7_0_axi_periph_GP0_M04_AXI_WREADY),
        .s_axi_wstrb(ps7_0_axi_periph_GP0_M04_AXI_WSTRB),
        .s_axi_wvalid(ps7_0_axi_periph_GP0_M04_AXI_WVALID));
  design_1_axi_mem_intercon_0 axi_mem_intercon_HP0
       (.ACLK(processing_system7_0_FCLK_CLK1),
        .ARESETN(rst_ps7_0_133M_interconnect_aresetn),
        .M00_ACLK(processing_system7_0_FCLK_CLK1),
        .M00_ARESETN(rst_ps7_0_133M_peripheral_aresetn),
        .M00_AXI_araddr(axi_mem_intercon_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_mem_intercon_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_mem_intercon_M00_AXI_ARCACHE),
        .M00_AXI_arid(axi_mem_intercon_M00_AXI_ARID),
        .M00_AXI_arlen(axi_mem_intercon_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_mem_intercon_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_mem_intercon_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_mem_intercon_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_mem_intercon_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_mem_intercon_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_mem_intercon_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_mem_intercon_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_mem_intercon_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_mem_intercon_M00_AXI_AWCACHE),
        .M00_AXI_awid(axi_mem_intercon_M00_AXI_AWID),
        .M00_AXI_awlen(axi_mem_intercon_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_mem_intercon_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_mem_intercon_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_mem_intercon_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_mem_intercon_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_mem_intercon_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_mem_intercon_M00_AXI_AWVALID),
        .M00_AXI_bid(axi_mem_intercon_M00_AXI_BID),
        .M00_AXI_bready(axi_mem_intercon_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_mem_intercon_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_mem_intercon_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_mem_intercon_M00_AXI_RDATA),
        .M00_AXI_rid(axi_mem_intercon_M00_AXI_RID),
        .M00_AXI_rlast(axi_mem_intercon_M00_AXI_RLAST),
        .M00_AXI_rready(axi_mem_intercon_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_mem_intercon_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_mem_intercon_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_mem_intercon_M00_AXI_WDATA),
        .M00_AXI_wid(axi_mem_intercon_M00_AXI_WID),
        .M00_AXI_wlast(axi_mem_intercon_M00_AXI_WLAST),
        .M00_AXI_wready(axi_mem_intercon_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_mem_intercon_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_mem_intercon_M00_AXI_WVALID),
        .S00_ACLK(processing_system7_0_FCLK_CLK1),
        .S00_ARESETN(rst_ps7_0_133M_peripheral_aresetn),
        .S00_AXI_araddr(axi_vdma_0_M_AXI_MM2S_ARADDR),
        .S00_AXI_arburst(axi_vdma_0_M_AXI_MM2S_ARBURST),
        .S00_AXI_arcache(axi_vdma_0_M_AXI_MM2S_ARCACHE),
        .S00_AXI_arlen(axi_vdma_0_M_AXI_MM2S_ARLEN),
        .S00_AXI_arprot(axi_vdma_0_M_AXI_MM2S_ARPROT),
        .S00_AXI_arready(axi_vdma_0_M_AXI_MM2S_ARREADY),
        .S00_AXI_arsize(axi_vdma_0_M_AXI_MM2S_ARSIZE),
        .S00_AXI_arvalid(axi_vdma_0_M_AXI_MM2S_ARVALID),
        .S00_AXI_awready(axi_vdma_0_M_AXI_MM2S_AWREADY),
        .S00_AXI_bresp(axi_vdma_0_M_AXI_MM2S_BRESP),
        .S00_AXI_bvalid(axi_vdma_0_M_AXI_MM2S_BVALID),
        .S00_AXI_rdata(axi_vdma_0_M_AXI_MM2S_RDATA),
        .S00_AXI_rlast(axi_vdma_0_M_AXI_MM2S_RLAST),
        .S00_AXI_rready(axi_vdma_0_M_AXI_MM2S_RREADY),
        .S00_AXI_rresp(axi_vdma_0_M_AXI_MM2S_RRESP),
        .S00_AXI_rvalid(axi_vdma_0_M_AXI_MM2S_RVALID),
        .S00_AXI_wready(axi_vdma_0_M_AXI_MM2S_WREADY),
        .S01_ACLK(processing_system7_0_FCLK_CLK1),
        .S01_ARESETN(rst_ps7_0_133M_peripheral_aresetn),
        .S01_AXI_arready(axi_vdma_0_M_AXI_S2MM_ARREADY),
        .S01_AXI_awaddr(axi_vdma_0_M_AXI_S2MM_AWADDR),
        .S01_AXI_awburst(axi_vdma_0_M_AXI_S2MM_AWBURST),
        .S01_AXI_awcache(axi_vdma_0_M_AXI_S2MM_AWCACHE),
        .S01_AXI_awlen(axi_vdma_0_M_AXI_S2MM_AWLEN),
        .S01_AXI_awprot(axi_vdma_0_M_AXI_S2MM_AWPROT),
        .S01_AXI_awready(axi_vdma_0_M_AXI_S2MM_AWREADY),
        .S01_AXI_awsize(axi_vdma_0_M_AXI_S2MM_AWSIZE),
        .S01_AXI_awvalid(axi_vdma_0_M_AXI_S2MM_AWVALID),
        .S01_AXI_bready(axi_vdma_0_M_AXI_S2MM_BREADY),
        .S01_AXI_bresp(axi_vdma_0_M_AXI_S2MM_BRESP),
        .S01_AXI_bvalid(axi_vdma_0_M_AXI_S2MM_BVALID),
        .S01_AXI_rdata(axi_vdma_0_M_AXI_S2MM_RDATA),
        .S01_AXI_rlast(axi_vdma_0_M_AXI_S2MM_RLAST),
        .S01_AXI_rresp(axi_vdma_0_M_AXI_S2MM_RRESP),
        .S01_AXI_rvalid(axi_vdma_0_M_AXI_S2MM_RVALID),
        .S01_AXI_wdata(axi_vdma_0_M_AXI_S2MM_WDATA),
        .S01_AXI_wlast(axi_vdma_0_M_AXI_S2MM_WLAST),
        .S01_AXI_wready(axi_vdma_0_M_AXI_S2MM_WREADY),
        .S01_AXI_wstrb(axi_vdma_0_M_AXI_S2MM_WSTRB),
        .S01_AXI_wvalid(axi_vdma_0_M_AXI_S2MM_WVALID));
  design_1_axi_vdma_0_0 axi_vdma_0
       (.axi_resetn(rst_ps7_0_100M_peripheral_aresetn),
        .m_axi_mm2s_aclk(processing_system7_0_FCLK_CLK1),
        .m_axi_mm2s_araddr(axi_vdma_0_M_AXI_MM2S_ARADDR),
        .m_axi_mm2s_arburst(axi_vdma_0_M_AXI_MM2S_ARBURST),
        .m_axi_mm2s_arcache(axi_vdma_0_M_AXI_MM2S_ARCACHE),
        .m_axi_mm2s_arlen(axi_vdma_0_M_AXI_MM2S_ARLEN),
        .m_axi_mm2s_arprot(axi_vdma_0_M_AXI_MM2S_ARPROT),
        .m_axi_mm2s_arready(axi_vdma_0_M_AXI_MM2S_ARREADY),
        .m_axi_mm2s_arsize(axi_vdma_0_M_AXI_MM2S_ARSIZE),
        .m_axi_mm2s_arvalid(axi_vdma_0_M_AXI_MM2S_ARVALID),
        .m_axi_mm2s_rdata(axi_vdma_0_M_AXI_MM2S_RDATA),
        .m_axi_mm2s_rlast(axi_vdma_0_M_AXI_MM2S_RLAST),
        .m_axi_mm2s_rready(axi_vdma_0_M_AXI_MM2S_RREADY),
        .m_axi_mm2s_rresp(axi_vdma_0_M_AXI_MM2S_RRESP),
        .m_axi_mm2s_rvalid(axi_vdma_0_M_AXI_MM2S_RVALID),
        .m_axi_s2mm_aclk(processing_system7_0_FCLK_CLK1),
        .m_axi_s2mm_awaddr(axi_vdma_0_M_AXI_S2MM_AWADDR),
        .m_axi_s2mm_awburst(axi_vdma_0_M_AXI_S2MM_AWBURST),
        .m_axi_s2mm_awcache(axi_vdma_0_M_AXI_S2MM_AWCACHE),
        .m_axi_s2mm_awlen(axi_vdma_0_M_AXI_S2MM_AWLEN),
        .m_axi_s2mm_awprot(axi_vdma_0_M_AXI_S2MM_AWPROT),
        .m_axi_s2mm_awready(axi_vdma_0_M_AXI_S2MM_AWREADY),
        .m_axi_s2mm_awsize(axi_vdma_0_M_AXI_S2MM_AWSIZE),
        .m_axi_s2mm_awvalid(axi_vdma_0_M_AXI_S2MM_AWVALID),
        .m_axi_s2mm_bready(axi_vdma_0_M_AXI_S2MM_BREADY),
        .m_axi_s2mm_bresp(axi_vdma_0_M_AXI_S2MM_BRESP),
        .m_axi_s2mm_bvalid(axi_vdma_0_M_AXI_S2MM_BVALID),
        .m_axi_s2mm_wdata(axi_vdma_0_M_AXI_S2MM_WDATA),
        .m_axi_s2mm_wlast(axi_vdma_0_M_AXI_S2MM_WLAST),
        .m_axi_s2mm_wready(axi_vdma_0_M_AXI_S2MM_WREADY),
        .m_axi_s2mm_wstrb(axi_vdma_0_M_AXI_S2MM_WSTRB),
        .m_axi_s2mm_wvalid(axi_vdma_0_M_AXI_S2MM_WVALID),
        .m_axis_mm2s_aclk(processing_system7_0_FCLK_CLK1),
        .m_axis_mm2s_tdata(axi_vdma_0_M_AXIS_MM2S_TDATA),
        .m_axis_mm2s_tkeep(axi_vdma_0_M_AXIS_MM2S_TKEEP),
        .m_axis_mm2s_tlast(axi_vdma_0_M_AXIS_MM2S_TLAST),
        .m_axis_mm2s_tready(axi_vdma_0_M_AXIS_MM2S_TREADY),
        .m_axis_mm2s_tuser(axi_vdma_0_M_AXIS_MM2S_TUSER),
        .m_axis_mm2s_tvalid(axi_vdma_0_M_AXIS_MM2S_TVALID),
        .mm2s_introut(axi_vdma_0_mm2s_introut),
        .s2mm_introut(axi_vdma_0_s2mm_introut),
        .s_axi_lite_aclk(processing_system7_0_FCLK_CLK0),
        .s_axi_lite_araddr(ps7_0_axi_periph_M00_AXI_ARADDR[8:0]),
        .s_axi_lite_arready(ps7_0_axi_periph_M00_AXI_ARREADY),
        .s_axi_lite_arvalid(ps7_0_axi_periph_M00_AXI_ARVALID),
        .s_axi_lite_awaddr(ps7_0_axi_periph_M00_AXI_AWADDR[8:0]),
        .s_axi_lite_awready(ps7_0_axi_periph_M00_AXI_AWREADY),
        .s_axi_lite_awvalid(ps7_0_axi_periph_M00_AXI_AWVALID),
        .s_axi_lite_bready(ps7_0_axi_periph_M00_AXI_BREADY),
        .s_axi_lite_bresp(ps7_0_axi_periph_M00_AXI_BRESP),
        .s_axi_lite_bvalid(ps7_0_axi_periph_M00_AXI_BVALID),
        .s_axi_lite_rdata(ps7_0_axi_periph_M00_AXI_RDATA),
        .s_axi_lite_rready(ps7_0_axi_periph_M00_AXI_RREADY),
        .s_axi_lite_rresp(ps7_0_axi_periph_M00_AXI_RRESP),
        .s_axi_lite_rvalid(ps7_0_axi_periph_M00_AXI_RVALID),
        .s_axi_lite_wdata(ps7_0_axi_periph_M00_AXI_WDATA),
        .s_axi_lite_wready(ps7_0_axi_periph_M00_AXI_WREADY),
        .s_axi_lite_wvalid(ps7_0_axi_periph_M00_AXI_WVALID),
        .s_axis_s2mm_aclk(processing_system7_0_FCLK_CLK1),
        .s_axis_s2mm_tdata(axis_subset_converter_in_M_AXIS_TDATA),
        .s_axis_s2mm_tkeep({1'b1,1'b1,1'b1}),
        .s_axis_s2mm_tlast(axis_subset_converter_in_M_AXIS_TLAST),
        .s_axis_s2mm_tready(axis_subset_converter_in_M_AXIS_TREADY),
        .s_axis_s2mm_tuser(axis_subset_converter_in_M_AXIS_TUSER),
        .s_axis_s2mm_tvalid(axis_subset_converter_in_M_AXIS_TVALID));
  design_1_axis_subset_converter_0_0 axis_subset_converter_in
       (.aclk(processing_system7_0_FCLK_CLK1),
        .aresetn(xlconstant_0_dout),
        .m_axis_tdata(axis_subset_converter_in_M_AXIS_TDATA),
        .m_axis_tlast(axis_subset_converter_in_M_AXIS_TLAST),
        .m_axis_tready(axis_subset_converter_in_M_AXIS_TREADY),
        .m_axis_tuser(axis_subset_converter_in_M_AXIS_TUSER),
        .m_axis_tvalid(axis_subset_converter_in_M_AXIS_TVALID),
        .s_axis_tdata(v_vid_in_axi4s_0_video_out_TDATA),
        .s_axis_tlast(v_vid_in_axi4s_0_video_out_TLAST),
        .s_axis_tready(v_vid_in_axi4s_0_video_out_TREADY),
        .s_axis_tuser(v_vid_in_axi4s_0_video_out_TUSER),
        .s_axis_tvalid(v_vid_in_axi4s_0_video_out_TVALID));
  design_1_axis_subset_converter_0_1 axis_subset_converter_out
       (.aclk(processing_system7_0_FCLK_CLK1),
        .aresetn(xlconstant_0_dout),
        .m_axis_tdata(axis_subset_converter_out_M_AXIS_TDATA),
        .m_axis_tkeep(axis_subset_converter_out_M_AXIS_TKEEP),
        .m_axis_tlast(axis_subset_converter_out_M_AXIS_TLAST),
        .m_axis_tready(axis_subset_converter_out_M_AXIS_TREADY),
        .m_axis_tuser(axis_subset_converter_out_M_AXIS_TUSER),
        .m_axis_tvalid(axis_subset_converter_out_M_AXIS_TVALID),
        .s_axis_tdata(axi_vdma_0_M_AXIS_MM2S_TDATA),
        .s_axis_tkeep(axi_vdma_0_M_AXIS_MM2S_TKEEP),
        .s_axis_tlast(axi_vdma_0_M_AXIS_MM2S_TLAST),
        .s_axis_tready(axi_vdma_0_M_AXIS_MM2S_TREADY),
        .s_axis_tuser(axi_vdma_0_M_AXIS_MM2S_TUSER),
        .s_axis_tvalid(axi_vdma_0_M_AXIS_MM2S_TVALID));
  design_1_clk_wiz_0_0 clk_wiz_0
       (.clk_125M(clk_wiz_0_clk_125M),
        .clk_25M(axi_dynclk_0_PXL_CLK_O),
        .clk_in1(processing_system7_0_FCLK_CLK3),
        .locked(clk_wiz_0_locked),
        .resetn(proc_sys_reset_1_peripheral_aresetn));
  design_1_xlconstant_2_0 cmos_reset_RnM
       (.dout(cmos_reset_dout));
  design_1_xlconstant_1_0 coms_pwdn_RnM
       (.dout(coms_pwdn_dout));
  design_1_ila_0_0 ila_0
       (.clk(processing_system7_0_FCLK_CLK1),
        .probe0(axi_vdma_0_M_AXIS_MM2S_TREADY),
        .probe1(axi_vdma_0_M_AXIS_MM2S_TDATA),
        .probe2({1'b1,1'b1,1'b1}),
        .probe3(axi_vdma_0_M_AXIS_MM2S_TVALID),
        .probe4(axi_vdma_0_M_AXIS_MM2S_TLAST),
        .probe5(axi_vdma_0_M_AXIS_MM2S_TUSER),
        .probe6(axi_vdma_0_M_AXIS_MM2S_TKEEP),
        .probe7(1'b0),
        .probe8(1'b0));
  design_1_ila_1_0 ila_1
       (.clk(processing_system7_0_FCLK_CLK1),
        .probe0(axis_subset_converter_out_M_AXIS_TREADY),
        .probe1(axis_subset_converter_out_M_AXIS_TDATA),
        .probe2({1'b1,1'b1,1'b1}),
        .probe3(axis_subset_converter_out_M_AXIS_TVALID),
        .probe4(axis_subset_converter_out_M_AXIS_TLAST),
        .probe5(axis_subset_converter_out_M_AXIS_TUSER),
        .probe6(axis_subset_converter_out_M_AXIS_TKEEP),
        .probe7(1'b0),
        .probe8(1'b0));
  design_1_ila_2_0 ila_2
       (.clk(processing_system7_0_FCLK_CLK1),
        .probe0(axi_vdma_0_M_AXI_MM2S_WREADY),
        .probe1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .probe10(axi_vdma_0_M_AXI_MM2S_RDATA),
        .probe11(1'b0),
        .probe12(axi_vdma_0_M_AXI_MM2S_AWREADY),
        .probe13(axi_vdma_0_M_AXI_MM2S_RRESP),
        .probe14({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .probe15({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .probe16(axi_vdma_0_M_AXI_MM2S_RVALID),
        .probe17(axi_vdma_0_M_AXI_MM2S_ARPROT),
        .probe18({1'b0,1'b0,1'b0}),
        .probe19(1'b0),
        .probe2(axi_vdma_0_M_AXI_MM2S_BRESP),
        .probe20(1'b0),
        .probe21({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .probe22(1'b0),
        .probe23({1'b0,1'b1,1'b1}),
        .probe24({1'b0,1'b1}),
        .probe25(1'b0),
        .probe26(1'b0),
        .probe27(axi_vdma_0_M_AXI_MM2S_ARLEN),
        .probe28(axi_vdma_0_M_AXI_MM2S_ARSIZE),
        .probe29(axi_vdma_0_M_AXI_MM2S_ARBURST),
        .probe3(axi_vdma_0_M_AXI_MM2S_BVALID),
        .probe30(1'b0),
        .probe31(axi_vdma_0_M_AXI_MM2S_ARCACHE),
        .probe32({1'b0,1'b0,1'b1,1'b1}),
        .probe33({1'b0,1'b0,1'b0,1'b0}),
        .probe34({1'b0,1'b0,1'b0,1'b0}),
        .probe35(1'b0),
        .probe36({1'b0,1'b0,1'b0,1'b0}),
        .probe37({1'b0,1'b0,1'b0,1'b0}),
        .probe38(1'b0),
        .probe39(1'b0),
        .probe4(1'b0),
        .probe40(axi_vdma_0_M_AXI_MM2S_RLAST),
        .probe41(1'b0),
        .probe42(1'b0),
        .probe43(1'b0),
        .probe5(axi_vdma_0_M_AXI_MM2S_ARADDR),
        .probe6(axi_vdma_0_M_AXI_MM2S_RREADY),
        .probe7(1'b0),
        .probe8(axi_vdma_0_M_AXI_MM2S_ARVALID),
        .probe9(axi_vdma_0_M_AXI_MM2S_ARREADY));
  design_1_ila_3_0 ila_3
       (.clk(processing_system7_0_FCLK_CLK1),
        .probe0(axi_vdma_0_M_AXI_S2MM_WREADY),
        .probe1(axi_vdma_0_M_AXI_S2MM_AWADDR),
        .probe10(axi_vdma_0_M_AXI_S2MM_RDATA),
        .probe11(axi_vdma_0_M_AXI_S2MM_AWVALID),
        .probe12(axi_vdma_0_M_AXI_S2MM_AWREADY),
        .probe13(axi_vdma_0_M_AXI_S2MM_RRESP),
        .probe14(axi_vdma_0_M_AXI_S2MM_WDATA),
        .probe15(axi_vdma_0_M_AXI_S2MM_WSTRB),
        .probe16(axi_vdma_0_M_AXI_S2MM_RVALID),
        .probe17({1'b0,1'b0,1'b0}),
        .probe18(axi_vdma_0_M_AXI_S2MM_AWPROT),
        .probe19(1'b0),
        .probe2(axi_vdma_0_M_AXI_S2MM_BRESP),
        .probe20(1'b0),
        .probe21(axi_vdma_0_M_AXI_S2MM_AWLEN),
        .probe22(1'b0),
        .probe23(axi_vdma_0_M_AXI_S2MM_AWSIZE),
        .probe24(axi_vdma_0_M_AXI_S2MM_AWBURST),
        .probe25(1'b0),
        .probe26(1'b0),
        .probe27({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .probe28({1'b0,1'b1,1'b1}),
        .probe29({1'b0,1'b1}),
        .probe3(axi_vdma_0_M_AXI_S2MM_BVALID),
        .probe30(1'b0),
        .probe31({1'b0,1'b0,1'b1,1'b1}),
        .probe32(axi_vdma_0_M_AXI_S2MM_AWCACHE),
        .probe33({1'b0,1'b0,1'b0,1'b0}),
        .probe34({1'b0,1'b0,1'b0,1'b0}),
        .probe35(1'b0),
        .probe36({1'b0,1'b0,1'b0,1'b0}),
        .probe37({1'b0,1'b0,1'b0,1'b0}),
        .probe38(1'b0),
        .probe39(1'b0),
        .probe4(axi_vdma_0_M_AXI_S2MM_BREADY),
        .probe40(axi_vdma_0_M_AXI_S2MM_RLAST),
        .probe41(1'b0),
        .probe42(axi_vdma_0_M_AXI_S2MM_WLAST),
        .probe43(1'b0),
        .probe5({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .probe6(1'b0),
        .probe7(axi_vdma_0_M_AXI_S2MM_WVALID),
        .probe8(1'b0),
        .probe9(axi_vdma_0_M_AXI_S2MM_ARREADY));
  design_1_ila_5_0 ila_5
       (.clk(processing_system7_0_FCLK_CLK0),
        .probe0(CMOS_Capture_RGB565_0_cmos_frame_data),
        .probe1(CMOS_Capture_RGB565_0_cmos_frame_href),
        .probe10(cmos_data_0_1),
        .probe2(CMOS_Capture_RGB565_0_cmos_frame_vsync),
        .probe3(CMOS_Capture_RGB565_0_cmos_frame_de),
        .probe4(dvi2rgb_1_PixelClk),
        .probe5(dvi2rgb_1_aPixelClkLckd),
        .probe6(CMOS_Capture_RGB565_0_cmos_xclk),
        .probe7(cmos_pclk_0_1),
        .probe8(cmos_vsync_0_1),
        .probe9(cmos_href_0_1));
  design_1_ila_6_0 ila_6
       (.clk(processing_system7_0_FCLK_CLK1),
        .probe0(v_vid_in_axi4s_0_video_out_TREADY),
        .probe1(v_vid_in_axi4s_0_video_out_TDATA),
        .probe2({1'b1,1'b1,1'b1}),
        .probe3(v_vid_in_axi4s_0_video_out_TVALID),
        .probe4(v_vid_in_axi4s_0_video_out_TLAST),
        .probe5(v_vid_in_axi4s_0_video_out_TUSER),
        .probe6({1'b1,1'b1,1'b1}),
        .probe7(1'b0),
        .probe8(1'b0));
  design_1_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(dvi2rgb_1_aPixelClkLckd),
        .dcm_locked(1'b1),
        .ext_reset_in(processing_system7_0_FCLK_RESET0_N),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .peripheral_reset(proc_sys_reset_0_peripheral_reset),
        .slowest_sync_clk(dvi2rgb_1_PixelClk));
  design_1_proc_sys_reset_1_0 proc_sys_reset_125M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(processing_system7_0_FCLK_RESET0_N),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .slowest_sync_clk(processing_system7_0_FCLK_CLK3));
  design_1_proc_sys_reset_1_1 proc_sys_reset_25M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(processing_system7_0_FCLK_RESET0_N),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_1_peripheral_aresetn1),
        .slowest_sync_clk(axi_dynclk_0_PXL_CLK_O));
  design_1_processing_system7_0_0 processing_system7_0
       (.DDR_Addr(DDR_addr[14:0]),
        .DDR_BankAddr(DDR_ba[2:0]),
        .DDR_CAS_n(DDR_cas_n),
        .DDR_CKE(DDR_cke),
        .DDR_CS_n(DDR_cs_n),
        .DDR_Clk(DDR_ck_p),
        .DDR_Clk_n(DDR_ck_n),
        .DDR_DM(DDR_dm[3:0]),
        .DDR_DQ(DDR_dq[31:0]),
        .DDR_DQS(DDR_dqs_p[3:0]),
        .DDR_DQS_n(DDR_dqs_n[3:0]),
        .DDR_DRSTB(DDR_reset_n),
        .DDR_ODT(DDR_odt),
        .DDR_RAS_n(DDR_ras_n),
        .DDR_VRN(FIXED_IO_ddr_vrn),
        .DDR_VRP(FIXED_IO_ddr_vrp),
        .DDR_WEB(DDR_we_n),
        .FCLK_CLK0(processing_system7_0_FCLK_CLK0),
        .FCLK_CLK1(processing_system7_0_FCLK_CLK1),
        .FCLK_CLK2(processing_system7_0_FCLK_CLK2),
        .FCLK_CLK3(processing_system7_0_FCLK_CLK3),
        .FCLK_RESET0_N(processing_system7_0_FCLK_RESET0_N),
        .I2C0_SCL_I(processing_system7_0_IIC_0_SCL_I),
        .I2C0_SCL_O(processing_system7_0_IIC_0_SCL_O),
        .I2C0_SCL_T(processing_system7_0_IIC_0_SCL_T),
        .I2C0_SDA_I(processing_system7_0_IIC_0_SDA_I),
        .I2C0_SDA_O(processing_system7_0_IIC_0_SDA_O),
        .I2C0_SDA_T(processing_system7_0_IIC_0_SDA_T),
        .IRQ_F2P(xlconcat_0_dout),
        .MIO(FIXED_IO_mio[53:0]),
        .M_AXI_GP0_ACLK(processing_system7_0_FCLK_CLK0),
        .M_AXI_GP0_ARADDR(processing_system7_0_M_AXI_GP0_ARADDR),
        .M_AXI_GP0_ARBURST(processing_system7_0_M_AXI_GP0_ARBURST),
        .M_AXI_GP0_ARCACHE(processing_system7_0_M_AXI_GP0_ARCACHE),
        .M_AXI_GP0_ARID(processing_system7_0_M_AXI_GP0_ARID),
        .M_AXI_GP0_ARLEN(processing_system7_0_M_AXI_GP0_ARLEN),
        .M_AXI_GP0_ARLOCK(processing_system7_0_M_AXI_GP0_ARLOCK),
        .M_AXI_GP0_ARPROT(processing_system7_0_M_AXI_GP0_ARPROT),
        .M_AXI_GP0_ARQOS(processing_system7_0_M_AXI_GP0_ARQOS),
        .M_AXI_GP0_ARREADY(processing_system7_0_M_AXI_GP0_ARREADY),
        .M_AXI_GP0_ARSIZE(processing_system7_0_M_AXI_GP0_ARSIZE),
        .M_AXI_GP0_ARVALID(processing_system7_0_M_AXI_GP0_ARVALID),
        .M_AXI_GP0_AWADDR(processing_system7_0_M_AXI_GP0_AWADDR),
        .M_AXI_GP0_AWBURST(processing_system7_0_M_AXI_GP0_AWBURST),
        .M_AXI_GP0_AWCACHE(processing_system7_0_M_AXI_GP0_AWCACHE),
        .M_AXI_GP0_AWID(processing_system7_0_M_AXI_GP0_AWID),
        .M_AXI_GP0_AWLEN(processing_system7_0_M_AXI_GP0_AWLEN),
        .M_AXI_GP0_AWLOCK(processing_system7_0_M_AXI_GP0_AWLOCK),
        .M_AXI_GP0_AWPROT(processing_system7_0_M_AXI_GP0_AWPROT),
        .M_AXI_GP0_AWQOS(processing_system7_0_M_AXI_GP0_AWQOS),
        .M_AXI_GP0_AWREADY(processing_system7_0_M_AXI_GP0_AWREADY),
        .M_AXI_GP0_AWSIZE(processing_system7_0_M_AXI_GP0_AWSIZE),
        .M_AXI_GP0_AWVALID(processing_system7_0_M_AXI_GP0_AWVALID),
        .M_AXI_GP0_BID(processing_system7_0_M_AXI_GP0_BID),
        .M_AXI_GP0_BREADY(processing_system7_0_M_AXI_GP0_BREADY),
        .M_AXI_GP0_BRESP(processing_system7_0_M_AXI_GP0_BRESP),
        .M_AXI_GP0_BVALID(processing_system7_0_M_AXI_GP0_BVALID),
        .M_AXI_GP0_RDATA(processing_system7_0_M_AXI_GP0_RDATA),
        .M_AXI_GP0_RID(processing_system7_0_M_AXI_GP0_RID),
        .M_AXI_GP0_RLAST(processing_system7_0_M_AXI_GP0_RLAST),
        .M_AXI_GP0_RREADY(processing_system7_0_M_AXI_GP0_RREADY),
        .M_AXI_GP0_RRESP(processing_system7_0_M_AXI_GP0_RRESP),
        .M_AXI_GP0_RVALID(processing_system7_0_M_AXI_GP0_RVALID),
        .M_AXI_GP0_WDATA(processing_system7_0_M_AXI_GP0_WDATA),
        .M_AXI_GP0_WID(processing_system7_0_M_AXI_GP0_WID),
        .M_AXI_GP0_WLAST(processing_system7_0_M_AXI_GP0_WLAST),
        .M_AXI_GP0_WREADY(processing_system7_0_M_AXI_GP0_WREADY),
        .M_AXI_GP0_WSTRB(processing_system7_0_M_AXI_GP0_WSTRB),
        .M_AXI_GP0_WVALID(processing_system7_0_M_AXI_GP0_WVALID),
        .PS_CLK(FIXED_IO_ps_clk),
        .PS_PORB(FIXED_IO_ps_porb),
        .PS_SRSTB(FIXED_IO_ps_srstb),
        .S_AXI_HP0_ACLK(processing_system7_0_FCLK_CLK1),
        .S_AXI_HP0_ARADDR(axi_mem_intercon_M00_AXI_ARADDR),
        .S_AXI_HP0_ARBURST(axi_mem_intercon_M00_AXI_ARBURST),
        .S_AXI_HP0_ARCACHE(axi_mem_intercon_M00_AXI_ARCACHE),
        .S_AXI_HP0_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,axi_mem_intercon_M00_AXI_ARID}),
        .S_AXI_HP0_ARLEN(axi_mem_intercon_M00_AXI_ARLEN),
        .S_AXI_HP0_ARLOCK(axi_mem_intercon_M00_AXI_ARLOCK),
        .S_AXI_HP0_ARPROT(axi_mem_intercon_M00_AXI_ARPROT),
        .S_AXI_HP0_ARQOS(axi_mem_intercon_M00_AXI_ARQOS),
        .S_AXI_HP0_ARREADY(axi_mem_intercon_M00_AXI_ARREADY),
        .S_AXI_HP0_ARSIZE(axi_mem_intercon_M00_AXI_ARSIZE),
        .S_AXI_HP0_ARVALID(axi_mem_intercon_M00_AXI_ARVALID),
        .S_AXI_HP0_AWADDR(axi_mem_intercon_M00_AXI_AWADDR),
        .S_AXI_HP0_AWBURST(axi_mem_intercon_M00_AXI_AWBURST),
        .S_AXI_HP0_AWCACHE(axi_mem_intercon_M00_AXI_AWCACHE),
        .S_AXI_HP0_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,axi_mem_intercon_M00_AXI_AWID}),
        .S_AXI_HP0_AWLEN(axi_mem_intercon_M00_AXI_AWLEN),
        .S_AXI_HP0_AWLOCK(axi_mem_intercon_M00_AXI_AWLOCK),
        .S_AXI_HP0_AWPROT(axi_mem_intercon_M00_AXI_AWPROT),
        .S_AXI_HP0_AWQOS(axi_mem_intercon_M00_AXI_AWQOS),
        .S_AXI_HP0_AWREADY(axi_mem_intercon_M00_AXI_AWREADY),
        .S_AXI_HP0_AWSIZE(axi_mem_intercon_M00_AXI_AWSIZE),
        .S_AXI_HP0_AWVALID(axi_mem_intercon_M00_AXI_AWVALID),
        .S_AXI_HP0_BID(axi_mem_intercon_M00_AXI_BID),
        .S_AXI_HP0_BREADY(axi_mem_intercon_M00_AXI_BREADY),
        .S_AXI_HP0_BRESP(axi_mem_intercon_M00_AXI_BRESP),
        .S_AXI_HP0_BVALID(axi_mem_intercon_M00_AXI_BVALID),
        .S_AXI_HP0_RDATA(axi_mem_intercon_M00_AXI_RDATA),
        .S_AXI_HP0_RDISSUECAP1_EN(1'b0),
        .S_AXI_HP0_RID(axi_mem_intercon_M00_AXI_RID),
        .S_AXI_HP0_RLAST(axi_mem_intercon_M00_AXI_RLAST),
        .S_AXI_HP0_RREADY(axi_mem_intercon_M00_AXI_RREADY),
        .S_AXI_HP0_RRESP(axi_mem_intercon_M00_AXI_RRESP),
        .S_AXI_HP0_RVALID(axi_mem_intercon_M00_AXI_RVALID),
        .S_AXI_HP0_WDATA(axi_mem_intercon_M00_AXI_WDATA),
        .S_AXI_HP0_WID({1'b0,1'b0,1'b0,1'b0,1'b0,axi_mem_intercon_M00_AXI_WID}),
        .S_AXI_HP0_WLAST(axi_mem_intercon_M00_AXI_WLAST),
        .S_AXI_HP0_WREADY(axi_mem_intercon_M00_AXI_WREADY),
        .S_AXI_HP0_WRISSUECAP1_EN(1'b0),
        .S_AXI_HP0_WSTRB(axi_mem_intercon_M00_AXI_WSTRB),
        .S_AXI_HP0_WVALID(axi_mem_intercon_M00_AXI_WVALID),
        .USB0_VBUS_PWRFAULT(1'b0));
  design_1_ps7_0_axi_periph_0 ps7_0_axi_periph_GP0
       (.ACLK(processing_system7_0_FCLK_CLK0),
        .ARESETN(rst_ps7_0_100M_interconnect_aresetn),
        .M00_ACLK(processing_system7_0_FCLK_CLK0),
        .M00_ARESETN(rst_ps7_0_100M_peripheral_aresetn),
        .M00_AXI_araddr(ps7_0_axi_periph_M00_AXI_ARADDR),
        .M00_AXI_arready(ps7_0_axi_periph_M00_AXI_ARREADY),
        .M00_AXI_arvalid(ps7_0_axi_periph_M00_AXI_ARVALID),
        .M00_AXI_awaddr(ps7_0_axi_periph_M00_AXI_AWADDR),
        .M00_AXI_awready(ps7_0_axi_periph_M00_AXI_AWREADY),
        .M00_AXI_awvalid(ps7_0_axi_periph_M00_AXI_AWVALID),
        .M00_AXI_bready(ps7_0_axi_periph_M00_AXI_BREADY),
        .M00_AXI_bresp(ps7_0_axi_periph_M00_AXI_BRESP),
        .M00_AXI_bvalid(ps7_0_axi_periph_M00_AXI_BVALID),
        .M00_AXI_rdata(ps7_0_axi_periph_M00_AXI_RDATA),
        .M00_AXI_rready(ps7_0_axi_periph_M00_AXI_RREADY),
        .M00_AXI_rresp(ps7_0_axi_periph_M00_AXI_RRESP),
        .M00_AXI_rvalid(ps7_0_axi_periph_M00_AXI_RVALID),
        .M00_AXI_wdata(ps7_0_axi_periph_M00_AXI_WDATA),
        .M00_AXI_wready(ps7_0_axi_periph_M00_AXI_WREADY),
        .M00_AXI_wvalid(ps7_0_axi_periph_M00_AXI_WVALID),
        .M01_ACLK(processing_system7_0_FCLK_CLK0),
        .M01_ARESETN(rst_ps7_0_100M_peripheral_aresetn),
        .M01_AXI_araddr(ps7_0_axi_periph_M01_AXI_ARADDR),
        .M01_AXI_arready(ps7_0_axi_periph_M01_AXI_ARREADY),
        .M01_AXI_arvalid(ps7_0_axi_periph_M01_AXI_ARVALID),
        .M01_AXI_awaddr(ps7_0_axi_periph_M01_AXI_AWADDR),
        .M01_AXI_awready(ps7_0_axi_periph_M01_AXI_AWREADY),
        .M01_AXI_awvalid(ps7_0_axi_periph_M01_AXI_AWVALID),
        .M01_AXI_bready(ps7_0_axi_periph_M01_AXI_BREADY),
        .M01_AXI_bresp(ps7_0_axi_periph_M01_AXI_BRESP),
        .M01_AXI_bvalid(ps7_0_axi_periph_M01_AXI_BVALID),
        .M01_AXI_rdata(ps7_0_axi_periph_M01_AXI_RDATA),
        .M01_AXI_rready(ps7_0_axi_periph_M01_AXI_RREADY),
        .M01_AXI_rresp(ps7_0_axi_periph_M01_AXI_RRESP),
        .M01_AXI_rvalid(ps7_0_axi_periph_M01_AXI_RVALID),
        .M01_AXI_wdata(ps7_0_axi_periph_M01_AXI_WDATA),
        .M01_AXI_wready(ps7_0_axi_periph_M01_AXI_WREADY),
        .M01_AXI_wstrb(ps7_0_axi_periph_M01_AXI_WSTRB),
        .M01_AXI_wvalid(ps7_0_axi_periph_M01_AXI_WVALID),
        .M02_ACLK(processing_system7_0_FCLK_CLK0),
        .M02_ARESETN(rst_ps7_0_100M_peripheral_aresetn),
        .M02_AXI_arready(1'b0),
        .M02_AXI_awready(1'b0),
        .M02_AXI_bresp({1'b0,1'b0}),
        .M02_AXI_bvalid(1'b0),
        .M02_AXI_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M02_AXI_rresp({1'b0,1'b0}),
        .M02_AXI_rvalid(1'b0),
        .M02_AXI_wready(1'b0),
        .M03_ACLK(processing_system7_0_FCLK_CLK0),
        .M03_ARESETN(rst_ps7_0_100M_peripheral_aresetn),
        .M03_AXI_arready(1'b0),
        .M03_AXI_awready(1'b0),
        .M03_AXI_bresp({1'b0,1'b0}),
        .M03_AXI_bvalid(1'b0),
        .M03_AXI_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M03_AXI_rresp({1'b0,1'b0}),
        .M03_AXI_rvalid(1'b0),
        .M03_AXI_wready(1'b0),
        .M04_ACLK(processing_system7_0_FCLK_CLK0),
        .M04_ARESETN(rst_ps7_0_100M_peripheral_aresetn),
        .M04_AXI_araddr(ps7_0_axi_periph_GP0_M04_AXI_ARADDR),
        .M04_AXI_arready(ps7_0_axi_periph_GP0_M04_AXI_ARREADY),
        .M04_AXI_arvalid(ps7_0_axi_periph_GP0_M04_AXI_ARVALID),
        .M04_AXI_awaddr(ps7_0_axi_periph_GP0_M04_AXI_AWADDR),
        .M04_AXI_awready(ps7_0_axi_periph_GP0_M04_AXI_AWREADY),
        .M04_AXI_awvalid(ps7_0_axi_periph_GP0_M04_AXI_AWVALID),
        .M04_AXI_bready(ps7_0_axi_periph_GP0_M04_AXI_BREADY),
        .M04_AXI_bresp(ps7_0_axi_periph_GP0_M04_AXI_BRESP),
        .M04_AXI_bvalid(ps7_0_axi_periph_GP0_M04_AXI_BVALID),
        .M04_AXI_rdata(ps7_0_axi_periph_GP0_M04_AXI_RDATA),
        .M04_AXI_rready(ps7_0_axi_periph_GP0_M04_AXI_RREADY),
        .M04_AXI_rresp(ps7_0_axi_periph_GP0_M04_AXI_RRESP),
        .M04_AXI_rvalid(ps7_0_axi_periph_GP0_M04_AXI_RVALID),
        .M04_AXI_wdata(ps7_0_axi_periph_GP0_M04_AXI_WDATA),
        .M04_AXI_wready(ps7_0_axi_periph_GP0_M04_AXI_WREADY),
        .M04_AXI_wstrb(ps7_0_axi_periph_GP0_M04_AXI_WSTRB),
        .M04_AXI_wvalid(ps7_0_axi_periph_GP0_M04_AXI_WVALID),
        .M05_ACLK(processing_system7_0_FCLK_CLK0),
        .M05_ARESETN(rst_ps7_0_100M_peripheral_aresetn),
        .M05_AXI_araddr(ps7_0_axi_periph_GP0_M05_AXI_ARADDR),
        .M05_AXI_arready(ps7_0_axi_periph_GP0_M05_AXI_ARREADY),
        .M05_AXI_arvalid(ps7_0_axi_periph_GP0_M05_AXI_ARVALID),
        .M05_AXI_awaddr(ps7_0_axi_periph_GP0_M05_AXI_AWADDR),
        .M05_AXI_awready(ps7_0_axi_periph_GP0_M05_AXI_AWREADY),
        .M05_AXI_awvalid(ps7_0_axi_periph_GP0_M05_AXI_AWVALID),
        .M05_AXI_bready(ps7_0_axi_periph_GP0_M05_AXI_BREADY),
        .M05_AXI_bresp(ps7_0_axi_periph_GP0_M05_AXI_BRESP),
        .M05_AXI_bvalid(ps7_0_axi_periph_GP0_M05_AXI_BVALID),
        .M05_AXI_rdata(ps7_0_axi_periph_GP0_M05_AXI_RDATA),
        .M05_AXI_rready(ps7_0_axi_periph_GP0_M05_AXI_RREADY),
        .M05_AXI_rresp(ps7_0_axi_periph_GP0_M05_AXI_RRESP),
        .M05_AXI_rvalid(ps7_0_axi_periph_GP0_M05_AXI_RVALID),
        .M05_AXI_wdata(ps7_0_axi_periph_GP0_M05_AXI_WDATA),
        .M05_AXI_wready(ps7_0_axi_periph_GP0_M05_AXI_WREADY),
        .M05_AXI_wstrb(ps7_0_axi_periph_GP0_M05_AXI_WSTRB),
        .M05_AXI_wvalid(ps7_0_axi_periph_GP0_M05_AXI_WVALID),
        .S00_ACLK(processing_system7_0_FCLK_CLK0),
        .S00_ARESETN(rst_ps7_0_100M_peripheral_aresetn),
        .S00_AXI_araddr(processing_system7_0_M_AXI_GP0_ARADDR),
        .S00_AXI_arburst(processing_system7_0_M_AXI_GP0_ARBURST),
        .S00_AXI_arcache(processing_system7_0_M_AXI_GP0_ARCACHE),
        .S00_AXI_arid(processing_system7_0_M_AXI_GP0_ARID),
        .S00_AXI_arlen(processing_system7_0_M_AXI_GP0_ARLEN),
        .S00_AXI_arlock(processing_system7_0_M_AXI_GP0_ARLOCK),
        .S00_AXI_arprot(processing_system7_0_M_AXI_GP0_ARPROT),
        .S00_AXI_arqos(processing_system7_0_M_AXI_GP0_ARQOS),
        .S00_AXI_arready(processing_system7_0_M_AXI_GP0_ARREADY),
        .S00_AXI_arsize(processing_system7_0_M_AXI_GP0_ARSIZE),
        .S00_AXI_arvalid(processing_system7_0_M_AXI_GP0_ARVALID),
        .S00_AXI_awaddr(processing_system7_0_M_AXI_GP0_AWADDR),
        .S00_AXI_awburst(processing_system7_0_M_AXI_GP0_AWBURST),
        .S00_AXI_awcache(processing_system7_0_M_AXI_GP0_AWCACHE),
        .S00_AXI_awid(processing_system7_0_M_AXI_GP0_AWID),
        .S00_AXI_awlen(processing_system7_0_M_AXI_GP0_AWLEN),
        .S00_AXI_awlock(processing_system7_0_M_AXI_GP0_AWLOCK),
        .S00_AXI_awprot(processing_system7_0_M_AXI_GP0_AWPROT),
        .S00_AXI_awqos(processing_system7_0_M_AXI_GP0_AWQOS),
        .S00_AXI_awready(processing_system7_0_M_AXI_GP0_AWREADY),
        .S00_AXI_awsize(processing_system7_0_M_AXI_GP0_AWSIZE),
        .S00_AXI_awvalid(processing_system7_0_M_AXI_GP0_AWVALID),
        .S00_AXI_bid(processing_system7_0_M_AXI_GP0_BID),
        .S00_AXI_bready(processing_system7_0_M_AXI_GP0_BREADY),
        .S00_AXI_bresp(processing_system7_0_M_AXI_GP0_BRESP),
        .S00_AXI_bvalid(processing_system7_0_M_AXI_GP0_BVALID),
        .S00_AXI_rdata(processing_system7_0_M_AXI_GP0_RDATA),
        .S00_AXI_rid(processing_system7_0_M_AXI_GP0_RID),
        .S00_AXI_rlast(processing_system7_0_M_AXI_GP0_RLAST),
        .S00_AXI_rready(processing_system7_0_M_AXI_GP0_RREADY),
        .S00_AXI_rresp(processing_system7_0_M_AXI_GP0_RRESP),
        .S00_AXI_rvalid(processing_system7_0_M_AXI_GP0_RVALID),
        .S00_AXI_wdata(processing_system7_0_M_AXI_GP0_WDATA),
        .S00_AXI_wid(processing_system7_0_M_AXI_GP0_WID),
        .S00_AXI_wlast(processing_system7_0_M_AXI_GP0_WLAST),
        .S00_AXI_wready(processing_system7_0_M_AXI_GP0_WREADY),
        .S00_AXI_wstrb(processing_system7_0_M_AXI_GP0_WSTRB),
        .S00_AXI_wvalid(processing_system7_0_M_AXI_GP0_WVALID));
  design_1_rgb2dvi_1_0 rgb2dvi_1
       (.PixelClk(axi_dynclk_0_PXL_CLK_O),
        .SerialClk(clk_wiz_0_clk_125M),
        .TMDS_Clk_n(rgb2dvi_1_TMDS_CLK_N),
        .TMDS_Clk_p(rgb2dvi_1_TMDS_CLK_P),
        .TMDS_Data_n(rgb2dvi_1_TMDS_DATA_N),
        .TMDS_Data_p(rgb2dvi_1_TMDS_DATA_P),
        .aRst_n(clk_wiz_0_locked),
        .vid_pData(v_axi4s_vid_out_0_vid_io_out_DATA),
        .vid_pHSync(v_axi4s_vid_out_0_vid_io_out_HSYNC),
        .vid_pVDE(v_axi4s_vid_out_0_vid_io_out_ACTIVE_VIDEO),
        .vid_pVSync(v_axi4s_vid_out_0_vid_io_out_VSYNC));
  design_1_rst_ps7_0_100M_0 rst_ps7_0_100M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(processing_system7_0_FCLK_RESET0_N),
        .interconnect_aresetn(rst_ps7_0_100M_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_ps7_0_100M_peripheral_aresetn),
        .slowest_sync_clk(processing_system7_0_FCLK_CLK0));
  design_1_rst_ps7_0_133M_0 rst_ps7_0_133M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(processing_system7_0_FCLK_RESET0_N),
        .interconnect_aresetn(rst_ps7_0_133M_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_ps7_0_133M_peripheral_aresetn),
        .slowest_sync_clk(processing_system7_0_FCLK_CLK1));
  design_1_v_axi4s_vid_out_0_0 v_axi4s_vid_out_0
       (.aclk(processing_system7_0_FCLK_CLK1),
        .aclken(1'b1),
        .aresetn(xlconstant_0_dout),
        .fid(1'b0),
        .s_axis_video_tdata(axis_subset_converter_out_M_AXIS_TDATA),
        .s_axis_video_tlast(axis_subset_converter_out_M_AXIS_TLAST),
        .s_axis_video_tready(axis_subset_converter_out_M_AXIS_TREADY),
        .s_axis_video_tuser(axis_subset_converter_out_M_AXIS_TUSER),
        .s_axis_video_tvalid(axis_subset_converter_out_M_AXIS_TVALID),
        .vid_active_video(v_axi4s_vid_out_0_vid_io_out_ACTIVE_VIDEO),
        .vid_data(v_axi4s_vid_out_0_vid_io_out_DATA),
        .vid_hsync(v_axi4s_vid_out_0_vid_io_out_HSYNC),
        .vid_io_out_ce(1'b1),
        .vid_io_out_clk(axi_dynclk_0_PXL_CLK_O),
        .vid_io_out_reset(1'b0),
        .vid_vsync(v_axi4s_vid_out_0_vid_io_out_VSYNC),
        .vtg_active_video(v_tc_1_vtiming_out_ACTIVE_VIDEO),
        .vtg_ce(v_axi4s_vid_out_0_vtg_ce),
        .vtg_field_id(1'b0),
        .vtg_hblank(v_tc_1_vtiming_out_HBLANK),
        .vtg_hsync(v_tc_1_vtiming_out_HSYNC),
        .vtg_vblank(v_tc_1_vtiming_out_VBLANK),
        .vtg_vsync(v_tc_1_vtiming_out_VSYNC));
  design_1_v_tc_0_0 v_tc_in
       (.active_video_in(v_vid_in_axi4s_0_vtiming_out_ACTIVE_VIDEO),
        .clk(dvi2rgb_1_PixelClk),
        .clken(1'b1),
        .det_clken(1'b1),
        .hsync_in(v_vid_in_axi4s_0_vtiming_out_HSYNC),
        .irq(v_tc_in_irq),
        .resetn(proc_sys_reset_0_peripheral_aresetn),
        .s_axi_aclk(processing_system7_0_FCLK_CLK0),
        .s_axi_aclken(1'b1),
        .s_axi_araddr(ps7_0_axi_periph_M01_AXI_ARADDR[8:0]),
        .s_axi_aresetn(rst_ps7_0_100M_peripheral_aresetn),
        .s_axi_arready(ps7_0_axi_periph_M01_AXI_ARREADY),
        .s_axi_arvalid(ps7_0_axi_periph_M01_AXI_ARVALID),
        .s_axi_awaddr(ps7_0_axi_periph_M01_AXI_AWADDR[8:0]),
        .s_axi_awready(ps7_0_axi_periph_M01_AXI_AWREADY),
        .s_axi_awvalid(ps7_0_axi_periph_M01_AXI_AWVALID),
        .s_axi_bready(ps7_0_axi_periph_M01_AXI_BREADY),
        .s_axi_bresp(ps7_0_axi_periph_M01_AXI_BRESP),
        .s_axi_bvalid(ps7_0_axi_periph_M01_AXI_BVALID),
        .s_axi_rdata(ps7_0_axi_periph_M01_AXI_RDATA),
        .s_axi_rready(ps7_0_axi_periph_M01_AXI_RREADY),
        .s_axi_rresp(ps7_0_axi_periph_M01_AXI_RRESP),
        .s_axi_rvalid(ps7_0_axi_periph_M01_AXI_RVALID),
        .s_axi_wdata(ps7_0_axi_periph_M01_AXI_WDATA),
        .s_axi_wready(ps7_0_axi_periph_M01_AXI_WREADY),
        .s_axi_wstrb(ps7_0_axi_periph_M01_AXI_WSTRB),
        .s_axi_wvalid(ps7_0_axi_periph_M01_AXI_WVALID),
        .vsync_in(v_vid_in_axi4s_0_vtiming_out_VSYNC));
  design_1_v_tc_0_1 v_tc_out
       (.active_video_out(v_tc_1_vtiming_out_ACTIVE_VIDEO),
        .clk(axi_dynclk_0_PXL_CLK_O),
        .clken(1'b1),
        .gen_clken(v_axi4s_vid_out_0_vtg_ce),
        .hblank_out(v_tc_1_vtiming_out_HBLANK),
        .hsync_out(v_tc_1_vtiming_out_HSYNC),
        .resetn(proc_sys_reset_1_peripheral_aresetn1),
        .vblank_out(v_tc_1_vtiming_out_VBLANK),
        .vsync_out(v_tc_1_vtiming_out_VSYNC));
  design_1_v_vid_in_axi4s_0_0 v_vid_in_axi4s_0
       (.aclk(processing_system7_0_FCLK_CLK1),
        .aclken(1'b1),
        .aresetn(xlconstant_0_dout),
        .axis_enable(1'b1),
        .m_axis_video_tdata(v_vid_in_axi4s_0_video_out_TDATA),
        .m_axis_video_tlast(v_vid_in_axi4s_0_video_out_TLAST),
        .m_axis_video_tready(v_vid_in_axi4s_0_video_out_TREADY),
        .m_axis_video_tuser(v_vid_in_axi4s_0_video_out_TUSER),
        .m_axis_video_tvalid(v_vid_in_axi4s_0_video_out_TVALID),
        .vid_active_video(CMOS_Capture_RGB565_0_cmos_frame_de),
        .vid_data(CMOS_Capture_RGB565_0_cmos_frame_data),
        .vid_field_id(1'b0),
        .vid_hblank(1'b0),
        .vid_hsync(CMOS_Capture_RGB565_0_cmos_frame_href),
        .vid_io_in_ce(1'b1),
        .vid_io_in_clk(dvi2rgb_1_PixelClk),
        .vid_io_in_reset(proc_sys_reset_0_peripheral_reset),
        .vid_vblank(1'b0),
        .vid_vsync(CMOS_Capture_RGB565_0_cmos_frame_vsync),
        .vtd_active_video(v_vid_in_axi4s_0_vtiming_out_ACTIVE_VIDEO),
        .vtd_hsync(v_vid_in_axi4s_0_vtiming_out_HSYNC),
        .vtd_vsync(v_vid_in_axi4s_0_vtiming_out_VSYNC));
  design_1_xlconcat_0_0 xlconcat_0
       (.In0(axi_vdma_0_mm2s_introut),
        .In1(axi_vdma_0_s2mm_introut),
        .In2(1'b0),
        .In3(v_tc_in_irq),
        .In4(axi_gpio_0_ip2intc_irpt),
        .dout(xlconcat_0_dout));
  design_1_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
endmodule

module design_1_axi_mem_intercon_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arid,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awid,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rid,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wid,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arlen,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wready,
    S01_ACLK,
    S01_ARESETN,
    S01_AXI_arready,
    S01_AXI_awaddr,
    S01_AXI_awburst,
    S01_AXI_awcache,
    S01_AXI_awlen,
    S01_AXI_awprot,
    S01_AXI_awready,
    S01_AXI_awsize,
    S01_AXI_awvalid,
    S01_AXI_bready,
    S01_AXI_bresp,
    S01_AXI_bvalid,
    S01_AXI_rdata,
    S01_AXI_rlast,
    S01_AXI_rresp,
    S01_AXI_rvalid,
    S01_AXI_wdata,
    S01_AXI_wlast,
    S01_AXI_wready,
    S01_AXI_wstrb,
    S01_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [0:0]M00_AXI_arid;
  output [3:0]M00_AXI_arlen;
  output [1:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [0:0]M00_AXI_awid;
  output [3:0]M00_AXI_awlen;
  output [1:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  input [5:0]M00_AXI_bid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [63:0]M00_AXI_rdata;
  input [5:0]M00_AXI_rid;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [63:0]M00_AXI_wdata;
  output [0:0]M00_AXI_wid;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [7:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [7:0]S00_AXI_arlen;
  input [2:0]S00_AXI_arprot;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  output S00_AXI_awready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [63:0]S00_AXI_rdata;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  output S00_AXI_wready;
  input S01_ACLK;
  input S01_ARESETN;
  output S01_AXI_arready;
  input [31:0]S01_AXI_awaddr;
  input [1:0]S01_AXI_awburst;
  input [3:0]S01_AXI_awcache;
  input [7:0]S01_AXI_awlen;
  input [2:0]S01_AXI_awprot;
  output S01_AXI_awready;
  input [2:0]S01_AXI_awsize;
  input S01_AXI_awvalid;
  input S01_AXI_bready;
  output [1:0]S01_AXI_bresp;
  output S01_AXI_bvalid;
  output [63:0]S01_AXI_rdata;
  output S01_AXI_rlast;
  output [1:0]S01_AXI_rresp;
  output S01_AXI_rvalid;
  input [63:0]S01_AXI_wdata;
  input S01_AXI_wlast;
  output S01_AXI_wready;
  input [7:0]S01_AXI_wstrb;
  input S01_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire S01_ACLK_1;
  wire S01_ARESETN_1;
  wire axi_mem_intercon_HP0_ACLK_net;
  wire axi_mem_intercon_HP0_ARESETN_net;
  wire [31:0]axi_mem_intercon_HP0_to_s00_couplers_ARADDR;
  wire [1:0]axi_mem_intercon_HP0_to_s00_couplers_ARBURST;
  wire [3:0]axi_mem_intercon_HP0_to_s00_couplers_ARCACHE;
  wire [7:0]axi_mem_intercon_HP0_to_s00_couplers_ARLEN;
  wire [2:0]axi_mem_intercon_HP0_to_s00_couplers_ARPROT;
  wire axi_mem_intercon_HP0_to_s00_couplers_ARREADY;
  wire [2:0]axi_mem_intercon_HP0_to_s00_couplers_ARSIZE;
  wire axi_mem_intercon_HP0_to_s00_couplers_ARVALID;
  wire axi_mem_intercon_HP0_to_s00_couplers_AWREADY;
  wire [1:0]axi_mem_intercon_HP0_to_s00_couplers_BRESP;
  wire axi_mem_intercon_HP0_to_s00_couplers_BVALID;
  wire [63:0]axi_mem_intercon_HP0_to_s00_couplers_RDATA;
  wire axi_mem_intercon_HP0_to_s00_couplers_RLAST;
  wire axi_mem_intercon_HP0_to_s00_couplers_RREADY;
  wire [1:0]axi_mem_intercon_HP0_to_s00_couplers_RRESP;
  wire axi_mem_intercon_HP0_to_s00_couplers_RVALID;
  wire axi_mem_intercon_HP0_to_s00_couplers_WREADY;
  wire axi_mem_intercon_HP0_to_s01_couplers_ARREADY;
  wire [31:0]axi_mem_intercon_HP0_to_s01_couplers_AWADDR;
  wire [1:0]axi_mem_intercon_HP0_to_s01_couplers_AWBURST;
  wire [3:0]axi_mem_intercon_HP0_to_s01_couplers_AWCACHE;
  wire [7:0]axi_mem_intercon_HP0_to_s01_couplers_AWLEN;
  wire [2:0]axi_mem_intercon_HP0_to_s01_couplers_AWPROT;
  wire axi_mem_intercon_HP0_to_s01_couplers_AWREADY;
  wire [2:0]axi_mem_intercon_HP0_to_s01_couplers_AWSIZE;
  wire axi_mem_intercon_HP0_to_s01_couplers_AWVALID;
  wire axi_mem_intercon_HP0_to_s01_couplers_BREADY;
  wire [1:0]axi_mem_intercon_HP0_to_s01_couplers_BRESP;
  wire axi_mem_intercon_HP0_to_s01_couplers_BVALID;
  wire [63:0]axi_mem_intercon_HP0_to_s01_couplers_RDATA;
  wire axi_mem_intercon_HP0_to_s01_couplers_RLAST;
  wire [1:0]axi_mem_intercon_HP0_to_s01_couplers_RRESP;
  wire axi_mem_intercon_HP0_to_s01_couplers_RVALID;
  wire [63:0]axi_mem_intercon_HP0_to_s01_couplers_WDATA;
  wire axi_mem_intercon_HP0_to_s01_couplers_WLAST;
  wire axi_mem_intercon_HP0_to_s01_couplers_WREADY;
  wire [7:0]axi_mem_intercon_HP0_to_s01_couplers_WSTRB;
  wire axi_mem_intercon_HP0_to_s01_couplers_WVALID;
  wire [31:0]m00_couplers_to_axi_mem_intercon_HP0_ARADDR;
  wire [1:0]m00_couplers_to_axi_mem_intercon_HP0_ARBURST;
  wire [3:0]m00_couplers_to_axi_mem_intercon_HP0_ARCACHE;
  wire [0:0]m00_couplers_to_axi_mem_intercon_HP0_ARID;
  wire [3:0]m00_couplers_to_axi_mem_intercon_HP0_ARLEN;
  wire [1:0]m00_couplers_to_axi_mem_intercon_HP0_ARLOCK;
  wire [2:0]m00_couplers_to_axi_mem_intercon_HP0_ARPROT;
  wire [3:0]m00_couplers_to_axi_mem_intercon_HP0_ARQOS;
  wire m00_couplers_to_axi_mem_intercon_HP0_ARREADY;
  wire [2:0]m00_couplers_to_axi_mem_intercon_HP0_ARSIZE;
  wire m00_couplers_to_axi_mem_intercon_HP0_ARVALID;
  wire [31:0]m00_couplers_to_axi_mem_intercon_HP0_AWADDR;
  wire [1:0]m00_couplers_to_axi_mem_intercon_HP0_AWBURST;
  wire [3:0]m00_couplers_to_axi_mem_intercon_HP0_AWCACHE;
  wire [0:0]m00_couplers_to_axi_mem_intercon_HP0_AWID;
  wire [3:0]m00_couplers_to_axi_mem_intercon_HP0_AWLEN;
  wire [1:0]m00_couplers_to_axi_mem_intercon_HP0_AWLOCK;
  wire [2:0]m00_couplers_to_axi_mem_intercon_HP0_AWPROT;
  wire [3:0]m00_couplers_to_axi_mem_intercon_HP0_AWQOS;
  wire m00_couplers_to_axi_mem_intercon_HP0_AWREADY;
  wire [2:0]m00_couplers_to_axi_mem_intercon_HP0_AWSIZE;
  wire m00_couplers_to_axi_mem_intercon_HP0_AWVALID;
  wire [5:0]m00_couplers_to_axi_mem_intercon_HP0_BID;
  wire m00_couplers_to_axi_mem_intercon_HP0_BREADY;
  wire [1:0]m00_couplers_to_axi_mem_intercon_HP0_BRESP;
  wire m00_couplers_to_axi_mem_intercon_HP0_BVALID;
  wire [63:0]m00_couplers_to_axi_mem_intercon_HP0_RDATA;
  wire [5:0]m00_couplers_to_axi_mem_intercon_HP0_RID;
  wire m00_couplers_to_axi_mem_intercon_HP0_RLAST;
  wire m00_couplers_to_axi_mem_intercon_HP0_RREADY;
  wire [1:0]m00_couplers_to_axi_mem_intercon_HP0_RRESP;
  wire m00_couplers_to_axi_mem_intercon_HP0_RVALID;
  wire [63:0]m00_couplers_to_axi_mem_intercon_HP0_WDATA;
  wire [0:0]m00_couplers_to_axi_mem_intercon_HP0_WID;
  wire m00_couplers_to_axi_mem_intercon_HP0_WLAST;
  wire m00_couplers_to_axi_mem_intercon_HP0_WREADY;
  wire [7:0]m00_couplers_to_axi_mem_intercon_HP0_WSTRB;
  wire m00_couplers_to_axi_mem_intercon_HP0_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [1:0]s00_couplers_to_xbar_ARBURST;
  wire [3:0]s00_couplers_to_xbar_ARCACHE;
  wire [7:0]s00_couplers_to_xbar_ARLEN;
  wire [0:0]s00_couplers_to_xbar_ARLOCK;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [3:0]s00_couplers_to_xbar_ARQOS;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [2:0]s00_couplers_to_xbar_ARSIZE;
  wire s00_couplers_to_xbar_ARVALID;
  wire [63:0]s00_couplers_to_xbar_RDATA;
  wire [0:0]s00_couplers_to_xbar_RLAST;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s01_couplers_to_xbar_AWADDR;
  wire [1:0]s01_couplers_to_xbar_AWBURST;
  wire [3:0]s01_couplers_to_xbar_AWCACHE;
  wire [7:0]s01_couplers_to_xbar_AWLEN;
  wire [0:0]s01_couplers_to_xbar_AWLOCK;
  wire [2:0]s01_couplers_to_xbar_AWPROT;
  wire [3:0]s01_couplers_to_xbar_AWQOS;
  wire [1:1]s01_couplers_to_xbar_AWREADY;
  wire [2:0]s01_couplers_to_xbar_AWSIZE;
  wire s01_couplers_to_xbar_AWVALID;
  wire s01_couplers_to_xbar_BREADY;
  wire [3:2]s01_couplers_to_xbar_BRESP;
  wire [1:1]s01_couplers_to_xbar_BVALID;
  wire [63:0]s01_couplers_to_xbar_WDATA;
  wire s01_couplers_to_xbar_WLAST;
  wire [1:1]s01_couplers_to_xbar_WREADY;
  wire [7:0]s01_couplers_to_xbar_WSTRB;
  wire s01_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [1:0]xbar_to_m00_couplers_ARBURST;
  wire [3:0]xbar_to_m00_couplers_ARCACHE;
  wire [0:0]xbar_to_m00_couplers_ARID;
  wire [7:0]xbar_to_m00_couplers_ARLEN;
  wire [0:0]xbar_to_m00_couplers_ARLOCK;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire [3:0]xbar_to_m00_couplers_ARQOS;
  wire xbar_to_m00_couplers_ARREADY;
  wire [3:0]xbar_to_m00_couplers_ARREGION;
  wire [2:0]xbar_to_m00_couplers_ARSIZE;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [1:0]xbar_to_m00_couplers_AWBURST;
  wire [3:0]xbar_to_m00_couplers_AWCACHE;
  wire [0:0]xbar_to_m00_couplers_AWID;
  wire [7:0]xbar_to_m00_couplers_AWLEN;
  wire [0:0]xbar_to_m00_couplers_AWLOCK;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire [3:0]xbar_to_m00_couplers_AWQOS;
  wire xbar_to_m00_couplers_AWREADY;
  wire [3:0]xbar_to_m00_couplers_AWREGION;
  wire [2:0]xbar_to_m00_couplers_AWSIZE;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [63:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RID;
  wire xbar_to_m00_couplers_RLAST;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [63:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WLAST;
  wire xbar_to_m00_couplers_WREADY;
  wire [7:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [1:0]NLW_xbar_s_axi_awready_UNCONNECTED;
  wire [3:0]NLW_xbar_s_axi_bresp_UNCONNECTED;
  wire [1:0]NLW_xbar_s_axi_bvalid_UNCONNECTED;
  wire [1:0]NLW_xbar_s_axi_wready_UNCONNECTED;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[31:0] = m00_couplers_to_axi_mem_intercon_HP0_ARADDR;
  assign M00_AXI_arburst[1:0] = m00_couplers_to_axi_mem_intercon_HP0_ARBURST;
  assign M00_AXI_arcache[3:0] = m00_couplers_to_axi_mem_intercon_HP0_ARCACHE;
  assign M00_AXI_arid[0] = m00_couplers_to_axi_mem_intercon_HP0_ARID;
  assign M00_AXI_arlen[3:0] = m00_couplers_to_axi_mem_intercon_HP0_ARLEN;
  assign M00_AXI_arlock[1:0] = m00_couplers_to_axi_mem_intercon_HP0_ARLOCK;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_axi_mem_intercon_HP0_ARPROT;
  assign M00_AXI_arqos[3:0] = m00_couplers_to_axi_mem_intercon_HP0_ARQOS;
  assign M00_AXI_arsize[2:0] = m00_couplers_to_axi_mem_intercon_HP0_ARSIZE;
  assign M00_AXI_arvalid = m00_couplers_to_axi_mem_intercon_HP0_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_axi_mem_intercon_HP0_AWADDR;
  assign M00_AXI_awburst[1:0] = m00_couplers_to_axi_mem_intercon_HP0_AWBURST;
  assign M00_AXI_awcache[3:0] = m00_couplers_to_axi_mem_intercon_HP0_AWCACHE;
  assign M00_AXI_awid[0] = m00_couplers_to_axi_mem_intercon_HP0_AWID;
  assign M00_AXI_awlen[3:0] = m00_couplers_to_axi_mem_intercon_HP0_AWLEN;
  assign M00_AXI_awlock[1:0] = m00_couplers_to_axi_mem_intercon_HP0_AWLOCK;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_axi_mem_intercon_HP0_AWPROT;
  assign M00_AXI_awqos[3:0] = m00_couplers_to_axi_mem_intercon_HP0_AWQOS;
  assign M00_AXI_awsize[2:0] = m00_couplers_to_axi_mem_intercon_HP0_AWSIZE;
  assign M00_AXI_awvalid = m00_couplers_to_axi_mem_intercon_HP0_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_axi_mem_intercon_HP0_BREADY;
  assign M00_AXI_rready = m00_couplers_to_axi_mem_intercon_HP0_RREADY;
  assign M00_AXI_wdata[63:0] = m00_couplers_to_axi_mem_intercon_HP0_WDATA;
  assign M00_AXI_wid[0] = m00_couplers_to_axi_mem_intercon_HP0_WID;
  assign M00_AXI_wlast = m00_couplers_to_axi_mem_intercon_HP0_WLAST;
  assign M00_AXI_wstrb[7:0] = m00_couplers_to_axi_mem_intercon_HP0_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_axi_mem_intercon_HP0_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = axi_mem_intercon_HP0_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi_mem_intercon_HP0_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = axi_mem_intercon_HP0_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_mem_intercon_HP0_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[63:0] = axi_mem_intercon_HP0_to_s00_couplers_RDATA;
  assign S00_AXI_rlast = axi_mem_intercon_HP0_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_mem_intercon_HP0_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_mem_intercon_HP0_to_s00_couplers_RVALID;
  assign S00_AXI_wready = axi_mem_intercon_HP0_to_s00_couplers_WREADY;
  assign S01_ACLK_1 = S01_ACLK;
  assign S01_ARESETN_1 = S01_ARESETN;
  assign S01_AXI_arready = axi_mem_intercon_HP0_to_s01_couplers_ARREADY;
  assign S01_AXI_awready = axi_mem_intercon_HP0_to_s01_couplers_AWREADY;
  assign S01_AXI_bresp[1:0] = axi_mem_intercon_HP0_to_s01_couplers_BRESP;
  assign S01_AXI_bvalid = axi_mem_intercon_HP0_to_s01_couplers_BVALID;
  assign S01_AXI_rdata[63:0] = axi_mem_intercon_HP0_to_s01_couplers_RDATA;
  assign S01_AXI_rlast = axi_mem_intercon_HP0_to_s01_couplers_RLAST;
  assign S01_AXI_rresp[1:0] = axi_mem_intercon_HP0_to_s01_couplers_RRESP;
  assign S01_AXI_rvalid = axi_mem_intercon_HP0_to_s01_couplers_RVALID;
  assign S01_AXI_wready = axi_mem_intercon_HP0_to_s01_couplers_WREADY;
  assign axi_mem_intercon_HP0_ACLK_net = ACLK;
  assign axi_mem_intercon_HP0_ARESETN_net = ARESETN;
  assign axi_mem_intercon_HP0_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axi_mem_intercon_HP0_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_mem_intercon_HP0_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_mem_intercon_HP0_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign axi_mem_intercon_HP0_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_mem_intercon_HP0_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_mem_intercon_HP0_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_mem_intercon_HP0_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_mem_intercon_HP0_to_s01_couplers_AWADDR = S01_AXI_awaddr[31:0];
  assign axi_mem_intercon_HP0_to_s01_couplers_AWBURST = S01_AXI_awburst[1:0];
  assign axi_mem_intercon_HP0_to_s01_couplers_AWCACHE = S01_AXI_awcache[3:0];
  assign axi_mem_intercon_HP0_to_s01_couplers_AWLEN = S01_AXI_awlen[7:0];
  assign axi_mem_intercon_HP0_to_s01_couplers_AWPROT = S01_AXI_awprot[2:0];
  assign axi_mem_intercon_HP0_to_s01_couplers_AWSIZE = S01_AXI_awsize[2:0];
  assign axi_mem_intercon_HP0_to_s01_couplers_AWVALID = S01_AXI_awvalid;
  assign axi_mem_intercon_HP0_to_s01_couplers_BREADY = S01_AXI_bready;
  assign axi_mem_intercon_HP0_to_s01_couplers_WDATA = S01_AXI_wdata[63:0];
  assign axi_mem_intercon_HP0_to_s01_couplers_WLAST = S01_AXI_wlast;
  assign axi_mem_intercon_HP0_to_s01_couplers_WSTRB = S01_AXI_wstrb[7:0];
  assign axi_mem_intercon_HP0_to_s01_couplers_WVALID = S01_AXI_wvalid;
  assign m00_couplers_to_axi_mem_intercon_HP0_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_axi_mem_intercon_HP0_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_axi_mem_intercon_HP0_BID = M00_AXI_bid[5:0];
  assign m00_couplers_to_axi_mem_intercon_HP0_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_mem_intercon_HP0_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_axi_mem_intercon_HP0_RDATA = M00_AXI_rdata[63:0];
  assign m00_couplers_to_axi_mem_intercon_HP0_RID = M00_AXI_rid[5:0];
  assign m00_couplers_to_axi_mem_intercon_HP0_RLAST = M00_AXI_rlast;
  assign m00_couplers_to_axi_mem_intercon_HP0_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_mem_intercon_HP0_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_axi_mem_intercon_HP0_WREADY = M00_AXI_wready;
  m00_couplers_imp_1HBLYI1 m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_axi_mem_intercon_HP0_ARADDR),
        .M_AXI_arburst(m00_couplers_to_axi_mem_intercon_HP0_ARBURST),
        .M_AXI_arcache(m00_couplers_to_axi_mem_intercon_HP0_ARCACHE),
        .M_AXI_arid(m00_couplers_to_axi_mem_intercon_HP0_ARID),
        .M_AXI_arlen(m00_couplers_to_axi_mem_intercon_HP0_ARLEN),
        .M_AXI_arlock(m00_couplers_to_axi_mem_intercon_HP0_ARLOCK),
        .M_AXI_arprot(m00_couplers_to_axi_mem_intercon_HP0_ARPROT),
        .M_AXI_arqos(m00_couplers_to_axi_mem_intercon_HP0_ARQOS),
        .M_AXI_arready(m00_couplers_to_axi_mem_intercon_HP0_ARREADY),
        .M_AXI_arsize(m00_couplers_to_axi_mem_intercon_HP0_ARSIZE),
        .M_AXI_arvalid(m00_couplers_to_axi_mem_intercon_HP0_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_mem_intercon_HP0_AWADDR),
        .M_AXI_awburst(m00_couplers_to_axi_mem_intercon_HP0_AWBURST),
        .M_AXI_awcache(m00_couplers_to_axi_mem_intercon_HP0_AWCACHE),
        .M_AXI_awid(m00_couplers_to_axi_mem_intercon_HP0_AWID),
        .M_AXI_awlen(m00_couplers_to_axi_mem_intercon_HP0_AWLEN),
        .M_AXI_awlock(m00_couplers_to_axi_mem_intercon_HP0_AWLOCK),
        .M_AXI_awprot(m00_couplers_to_axi_mem_intercon_HP0_AWPROT),
        .M_AXI_awqos(m00_couplers_to_axi_mem_intercon_HP0_AWQOS),
        .M_AXI_awready(m00_couplers_to_axi_mem_intercon_HP0_AWREADY),
        .M_AXI_awsize(m00_couplers_to_axi_mem_intercon_HP0_AWSIZE),
        .M_AXI_awvalid(m00_couplers_to_axi_mem_intercon_HP0_AWVALID),
        .M_AXI_bid(m00_couplers_to_axi_mem_intercon_HP0_BID),
        .M_AXI_bready(m00_couplers_to_axi_mem_intercon_HP0_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_mem_intercon_HP0_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_mem_intercon_HP0_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_mem_intercon_HP0_RDATA),
        .M_AXI_rid(m00_couplers_to_axi_mem_intercon_HP0_RID),
        .M_AXI_rlast(m00_couplers_to_axi_mem_intercon_HP0_RLAST),
        .M_AXI_rready(m00_couplers_to_axi_mem_intercon_HP0_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_mem_intercon_HP0_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_mem_intercon_HP0_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_mem_intercon_HP0_WDATA),
        .M_AXI_wid(m00_couplers_to_axi_mem_intercon_HP0_WID),
        .M_AXI_wlast(m00_couplers_to_axi_mem_intercon_HP0_WLAST),
        .M_AXI_wready(m00_couplers_to_axi_mem_intercon_HP0_WREADY),
        .M_AXI_wstrb(m00_couplers_to_axi_mem_intercon_HP0_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_axi_mem_intercon_HP0_WVALID),
        .S_ACLK(axi_mem_intercon_HP0_ACLK_net),
        .S_ARESETN(axi_mem_intercon_HP0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m00_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m00_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m00_couplers_ARID),
        .S_AXI_arlen(xbar_to_m00_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m00_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m00_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m00_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m00_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m00_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m00_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m00_couplers_AWID),
        .S_AXI_awlen(xbar_to_m00_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m00_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m00_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m00_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m00_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m00_couplers_BID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rid(xbar_to_m00_couplers_RID),
        .S_AXI_rlast(xbar_to_m00_couplers_RLAST),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m00_couplers_WLAST),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  s00_couplers_imp_FU42P7 s00_couplers
       (.M_ACLK(axi_mem_intercon_HP0_ACLK_net),
        .M_ARESETN(axi_mem_intercon_HP0_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s00_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s00_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s00_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s00_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s00_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s00_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s00_couplers_to_xbar_RLAST),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(axi_mem_intercon_HP0_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_mem_intercon_HP0_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_mem_intercon_HP0_to_s00_couplers_ARCACHE),
        .S_AXI_arlen(axi_mem_intercon_HP0_to_s00_couplers_ARLEN),
        .S_AXI_arprot(axi_mem_intercon_HP0_to_s00_couplers_ARPROT),
        .S_AXI_arready(axi_mem_intercon_HP0_to_s00_couplers_ARREADY),
        .S_AXI_arsize(axi_mem_intercon_HP0_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(axi_mem_intercon_HP0_to_s00_couplers_ARVALID),
        .S_AXI_awready(axi_mem_intercon_HP0_to_s00_couplers_AWREADY),
        .S_AXI_bresp(axi_mem_intercon_HP0_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_mem_intercon_HP0_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_mem_intercon_HP0_to_s00_couplers_RDATA),
        .S_AXI_rlast(axi_mem_intercon_HP0_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_mem_intercon_HP0_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_mem_intercon_HP0_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_mem_intercon_HP0_to_s00_couplers_RVALID),
        .S_AXI_wready(axi_mem_intercon_HP0_to_s00_couplers_WREADY));
  s01_couplers_imp_1NG5L56 s01_couplers
       (.M_ACLK(axi_mem_intercon_HP0_ACLK_net),
        .M_ARESETN(axi_mem_intercon_HP0_ARESETN_net),
        .M_AXI_awaddr(s01_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s01_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s01_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s01_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s01_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s01_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s01_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s01_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s01_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s01_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s01_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s01_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s01_couplers_to_xbar_BVALID),
        .M_AXI_wdata(s01_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s01_couplers_to_xbar_WLAST),
        .M_AXI_wready(s01_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s01_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s01_couplers_to_xbar_WVALID),
        .S_ACLK(S01_ACLK_1),
        .S_ARESETN(S01_ARESETN_1),
        .S_AXI_arready(axi_mem_intercon_HP0_to_s01_couplers_ARREADY),
        .S_AXI_awaddr(axi_mem_intercon_HP0_to_s01_couplers_AWADDR),
        .S_AXI_awburst(axi_mem_intercon_HP0_to_s01_couplers_AWBURST),
        .S_AXI_awcache(axi_mem_intercon_HP0_to_s01_couplers_AWCACHE),
        .S_AXI_awlen(axi_mem_intercon_HP0_to_s01_couplers_AWLEN),
        .S_AXI_awprot(axi_mem_intercon_HP0_to_s01_couplers_AWPROT),
        .S_AXI_awready(axi_mem_intercon_HP0_to_s01_couplers_AWREADY),
        .S_AXI_awsize(axi_mem_intercon_HP0_to_s01_couplers_AWSIZE),
        .S_AXI_awvalid(axi_mem_intercon_HP0_to_s01_couplers_AWVALID),
        .S_AXI_bready(axi_mem_intercon_HP0_to_s01_couplers_BREADY),
        .S_AXI_bresp(axi_mem_intercon_HP0_to_s01_couplers_BRESP),
        .S_AXI_bvalid(axi_mem_intercon_HP0_to_s01_couplers_BVALID),
        .S_AXI_rdata(axi_mem_intercon_HP0_to_s01_couplers_RDATA),
        .S_AXI_rlast(axi_mem_intercon_HP0_to_s01_couplers_RLAST),
        .S_AXI_rresp(axi_mem_intercon_HP0_to_s01_couplers_RRESP),
        .S_AXI_rvalid(axi_mem_intercon_HP0_to_s01_couplers_RVALID),
        .S_AXI_wdata(axi_mem_intercon_HP0_to_s01_couplers_WDATA),
        .S_AXI_wlast(axi_mem_intercon_HP0_to_s01_couplers_WLAST),
        .S_AXI_wready(axi_mem_intercon_HP0_to_s01_couplers_WREADY),
        .S_AXI_wstrb(axi_mem_intercon_HP0_to_s01_couplers_WSTRB),
        .S_AXI_wvalid(axi_mem_intercon_HP0_to_s01_couplers_WVALID));
  design_1_xbar_0 xbar
       (.aclk(axi_mem_intercon_HP0_ACLK_net),
        .aresetn(axi_mem_intercon_HP0_ARESETN_net),
        .m_axi_araddr(xbar_to_m00_couplers_ARADDR),
        .m_axi_arburst(xbar_to_m00_couplers_ARBURST),
        .m_axi_arcache(xbar_to_m00_couplers_ARCACHE),
        .m_axi_arid(xbar_to_m00_couplers_ARID),
        .m_axi_arlen(xbar_to_m00_couplers_ARLEN),
        .m_axi_arlock(xbar_to_m00_couplers_ARLOCK),
        .m_axi_arprot(xbar_to_m00_couplers_ARPROT),
        .m_axi_arqos(xbar_to_m00_couplers_ARQOS),
        .m_axi_arready(xbar_to_m00_couplers_ARREADY),
        .m_axi_arregion(xbar_to_m00_couplers_ARREGION),
        .m_axi_arsize(xbar_to_m00_couplers_ARSIZE),
        .m_axi_arvalid(xbar_to_m00_couplers_ARVALID),
        .m_axi_awaddr(xbar_to_m00_couplers_AWADDR),
        .m_axi_awburst(xbar_to_m00_couplers_AWBURST),
        .m_axi_awcache(xbar_to_m00_couplers_AWCACHE),
        .m_axi_awid(xbar_to_m00_couplers_AWID),
        .m_axi_awlen(xbar_to_m00_couplers_AWLEN),
        .m_axi_awlock(xbar_to_m00_couplers_AWLOCK),
        .m_axi_awprot(xbar_to_m00_couplers_AWPROT),
        .m_axi_awqos(xbar_to_m00_couplers_AWQOS),
        .m_axi_awready(xbar_to_m00_couplers_AWREADY),
        .m_axi_awregion(xbar_to_m00_couplers_AWREGION),
        .m_axi_awsize(xbar_to_m00_couplers_AWSIZE),
        .m_axi_awvalid(xbar_to_m00_couplers_AWVALID),
        .m_axi_bid(xbar_to_m00_couplers_BID),
        .m_axi_bready(xbar_to_m00_couplers_BREADY),
        .m_axi_bresp(xbar_to_m00_couplers_BRESP),
        .m_axi_bvalid(xbar_to_m00_couplers_BVALID),
        .m_axi_rdata(xbar_to_m00_couplers_RDATA),
        .m_axi_rid(xbar_to_m00_couplers_RID),
        .m_axi_rlast(xbar_to_m00_couplers_RLAST),
        .m_axi_rready(xbar_to_m00_couplers_RREADY),
        .m_axi_rresp(xbar_to_m00_couplers_RRESP),
        .m_axi_rvalid(xbar_to_m00_couplers_RVALID),
        .m_axi_wdata(xbar_to_m00_couplers_WDATA),
        .m_axi_wlast(xbar_to_m00_couplers_WLAST),
        .m_axi_wready(xbar_to_m00_couplers_WREADY),
        .m_axi_wstrb(xbar_to_m00_couplers_WSTRB),
        .m_axi_wvalid(xbar_to_m00_couplers_WVALID),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_ARADDR}),
        .s_axi_arburst({1'b0,1'b0,s00_couplers_to_xbar_ARBURST}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_ARCACHE}),
        .s_axi_arid({1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_ARLEN}),
        .s_axi_arlock({1'b0,s00_couplers_to_xbar_ARLOCK}),
        .s_axi_arprot({1'b0,1'b0,1'b0,s00_couplers_to_xbar_ARPROT}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_ARQOS}),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arsize({1'b0,1'b0,1'b1,s00_couplers_to_xbar_ARSIZE}),
        .s_axi_arvalid({1'b0,s00_couplers_to_xbar_ARVALID}),
        .s_axi_awaddr({s01_couplers_to_xbar_AWADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({s01_couplers_to_xbar_AWBURST,1'b0,1'b1}),
        .s_axi_awcache({s01_couplers_to_xbar_AWCACHE,1'b0,1'b0,1'b1,1'b1}),
        .s_axi_awid({1'b0,1'b0}),
        .s_axi_awlen({s01_couplers_to_xbar_AWLEN,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock({s01_couplers_to_xbar_AWLOCK,1'b0}),
        .s_axi_awprot({s01_couplers_to_xbar_AWPROT,1'b0,1'b0,1'b0}),
        .s_axi_awqos({s01_couplers_to_xbar_AWQOS,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready({s01_couplers_to_xbar_AWREADY,NLW_xbar_s_axi_awready_UNCONNECTED[0]}),
        .s_axi_awsize({s01_couplers_to_xbar_AWSIZE,1'b0,1'b1,1'b1}),
        .s_axi_awvalid({s01_couplers_to_xbar_AWVALID,1'b0}),
        .s_axi_bready({s01_couplers_to_xbar_BREADY,1'b0}),
        .s_axi_bresp({s01_couplers_to_xbar_BRESP,NLW_xbar_s_axi_bresp_UNCONNECTED[1:0]}),
        .s_axi_bvalid({s01_couplers_to_xbar_BVALID,NLW_xbar_s_axi_bvalid_UNCONNECTED[0]}),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rlast(s00_couplers_to_xbar_RLAST),
        .s_axi_rready({1'b0,s00_couplers_to_xbar_RREADY}),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata({s01_couplers_to_xbar_WDATA,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast({s01_couplers_to_xbar_WLAST,1'b0}),
        .s_axi_wready({s01_couplers_to_xbar_WREADY,NLW_xbar_s_axi_wready_UNCONNECTED[0]}),
        .s_axi_wstrb({s01_couplers_to_xbar_WSTRB,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .s_axi_wvalid({s01_couplers_to_xbar_WVALID,1'b0}));
endmodule

module design_1_ps7_0_axi_periph_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arprot,
    M03_AXI_arready,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awprot,
    M03_AXI_awready,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    M04_ACLK,
    M04_ARESETN,
    M04_AXI_araddr,
    M04_AXI_arready,
    M04_AXI_arvalid,
    M04_AXI_awaddr,
    M04_AXI_awready,
    M04_AXI_awvalid,
    M04_AXI_bready,
    M04_AXI_bresp,
    M04_AXI_bvalid,
    M04_AXI_rdata,
    M04_AXI_rready,
    M04_AXI_rresp,
    M04_AXI_rvalid,
    M04_AXI_wdata,
    M04_AXI_wready,
    M04_AXI_wstrb,
    M04_AXI_wvalid,
    M05_ACLK,
    M05_ARESETN,
    M05_AXI_araddr,
    M05_AXI_arready,
    M05_AXI_arvalid,
    M05_AXI_awaddr,
    M05_AXI_awready,
    M05_AXI_awvalid,
    M05_AXI_bready,
    M05_AXI_bresp,
    M05_AXI_bvalid,
    M05_AXI_rdata,
    M05_AXI_rready,
    M05_AXI_rresp,
    M05_AXI_rvalid,
    M05_AXI_wdata,
    M05_AXI_wready,
    M05_AXI_wstrb,
    M05_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wid,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  input [0:0]M00_AXI_arready;
  output [0:0]M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  input [0:0]M00_AXI_awready;
  output [0:0]M00_AXI_awvalid;
  output [0:0]M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input [0:0]M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output [0:0]M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input [0:0]M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input [0:0]M00_AXI_wready;
  output [0:0]M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [31:0]M01_AXI_araddr;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [31:0]M01_AXI_awaddr;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [31:0]M02_AXI_araddr;
  input M02_AXI_arready;
  output M02_AXI_arvalid;
  output [31:0]M02_AXI_awaddr;
  input M02_AXI_awready;
  output M02_AXI_awvalid;
  output M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output M02_AXI_wvalid;
  input M03_ACLK;
  input M03_ARESETN;
  output [31:0]M03_AXI_araddr;
  output [2:0]M03_AXI_arprot;
  input [0:0]M03_AXI_arready;
  output [0:0]M03_AXI_arvalid;
  output [31:0]M03_AXI_awaddr;
  output [2:0]M03_AXI_awprot;
  input [0:0]M03_AXI_awready;
  output [0:0]M03_AXI_awvalid;
  output [0:0]M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input [0:0]M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  output [0:0]M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input [0:0]M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  input [0:0]M03_AXI_wready;
  output [3:0]M03_AXI_wstrb;
  output [0:0]M03_AXI_wvalid;
  input M04_ACLK;
  input M04_ARESETN;
  output [31:0]M04_AXI_araddr;
  input [0:0]M04_AXI_arready;
  output [0:0]M04_AXI_arvalid;
  output [31:0]M04_AXI_awaddr;
  input [0:0]M04_AXI_awready;
  output [0:0]M04_AXI_awvalid;
  output [0:0]M04_AXI_bready;
  input [1:0]M04_AXI_bresp;
  input [0:0]M04_AXI_bvalid;
  input [31:0]M04_AXI_rdata;
  output [0:0]M04_AXI_rready;
  input [1:0]M04_AXI_rresp;
  input [0:0]M04_AXI_rvalid;
  output [31:0]M04_AXI_wdata;
  input [0:0]M04_AXI_wready;
  output [3:0]M04_AXI_wstrb;
  output [0:0]M04_AXI_wvalid;
  input M05_ACLK;
  input M05_ARESETN;
  output [31:0]M05_AXI_araddr;
  input M05_AXI_arready;
  output M05_AXI_arvalid;
  output [31:0]M05_AXI_awaddr;
  input M05_AXI_awready;
  output M05_AXI_awvalid;
  output M05_AXI_bready;
  input [1:0]M05_AXI_bresp;
  input M05_AXI_bvalid;
  input [31:0]M05_AXI_rdata;
  output M05_AXI_rready;
  input [1:0]M05_AXI_rresp;
  input M05_AXI_rvalid;
  output [31:0]M05_AXI_wdata;
  input M05_AXI_wready;
  output [3:0]M05_AXI_wstrb;
  output M05_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [11:0]S00_AXI_arid;
  input [3:0]S00_AXI_arlen;
  input [1:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [11:0]S00_AXI_awid;
  input [3:0]S00_AXI_awlen;
  input [1:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [11:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output [11:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input [11:0]S00_AXI_wid;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire M01_ACLK_1;
  wire M01_ARESETN_1;
  wire M02_ACLK_1;
  wire M02_ARESETN_1;
  wire M03_ACLK_1;
  wire M03_ARESETN_1;
  wire M04_ACLK_1;
  wire M04_ARESETN_1;
  wire M05_ACLK_1;
  wire M05_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire [31:0]m00_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  wire [0:0]m00_couplers_to_ps7_0_axi_periph_GP0_ARREADY;
  wire [0:0]m00_couplers_to_ps7_0_axi_periph_GP0_ARVALID;
  wire [31:0]m00_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  wire [0:0]m00_couplers_to_ps7_0_axi_periph_GP0_AWREADY;
  wire [0:0]m00_couplers_to_ps7_0_axi_periph_GP0_AWVALID;
  wire [0:0]m00_couplers_to_ps7_0_axi_periph_GP0_BREADY;
  wire [1:0]m00_couplers_to_ps7_0_axi_periph_GP0_BRESP;
  wire [0:0]m00_couplers_to_ps7_0_axi_periph_GP0_BVALID;
  wire [31:0]m00_couplers_to_ps7_0_axi_periph_GP0_RDATA;
  wire [0:0]m00_couplers_to_ps7_0_axi_periph_GP0_RREADY;
  wire [1:0]m00_couplers_to_ps7_0_axi_periph_GP0_RRESP;
  wire [0:0]m00_couplers_to_ps7_0_axi_periph_GP0_RVALID;
  wire [31:0]m00_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  wire [0:0]m00_couplers_to_ps7_0_axi_periph_GP0_WREADY;
  wire [0:0]m00_couplers_to_ps7_0_axi_periph_GP0_WVALID;
  wire [31:0]m01_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  wire m01_couplers_to_ps7_0_axi_periph_GP0_ARREADY;
  wire m01_couplers_to_ps7_0_axi_periph_GP0_ARVALID;
  wire [31:0]m01_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  wire m01_couplers_to_ps7_0_axi_periph_GP0_AWREADY;
  wire m01_couplers_to_ps7_0_axi_periph_GP0_AWVALID;
  wire m01_couplers_to_ps7_0_axi_periph_GP0_BREADY;
  wire [1:0]m01_couplers_to_ps7_0_axi_periph_GP0_BRESP;
  wire m01_couplers_to_ps7_0_axi_periph_GP0_BVALID;
  wire [31:0]m01_couplers_to_ps7_0_axi_periph_GP0_RDATA;
  wire m01_couplers_to_ps7_0_axi_periph_GP0_RREADY;
  wire [1:0]m01_couplers_to_ps7_0_axi_periph_GP0_RRESP;
  wire m01_couplers_to_ps7_0_axi_periph_GP0_RVALID;
  wire [31:0]m01_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  wire m01_couplers_to_ps7_0_axi_periph_GP0_WREADY;
  wire [3:0]m01_couplers_to_ps7_0_axi_periph_GP0_WSTRB;
  wire m01_couplers_to_ps7_0_axi_periph_GP0_WVALID;
  wire m02_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  wire m02_couplers_to_ps7_0_axi_periph_GP0_ARREADY;
  wire m02_couplers_to_ps7_0_axi_periph_GP0_ARVALID;
  wire m02_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  wire m02_couplers_to_ps7_0_axi_periph_GP0_AWREADY;
  wire m02_couplers_to_ps7_0_axi_periph_GP0_AWVALID;
  wire m02_couplers_to_ps7_0_axi_periph_GP0_BREADY;
  wire [1:0]m02_couplers_to_ps7_0_axi_periph_GP0_BRESP;
  wire m02_couplers_to_ps7_0_axi_periph_GP0_BVALID;
  wire [31:0]m02_couplers_to_ps7_0_axi_periph_GP0_RDATA;
  wire m02_couplers_to_ps7_0_axi_periph_GP0_RREADY;
  wire [1:0]m02_couplers_to_ps7_0_axi_periph_GP0_RRESP;
  wire m02_couplers_to_ps7_0_axi_periph_GP0_RVALID;
  wire m02_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  wire m02_couplers_to_ps7_0_axi_periph_GP0_WREADY;
  wire m02_couplers_to_ps7_0_axi_periph_GP0_WSTRB;
  wire m02_couplers_to_ps7_0_axi_periph_GP0_WVALID;
  wire m03_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  wire m03_couplers_to_ps7_0_axi_periph_GP0_ARPROT;
  wire [0:0]m03_couplers_to_ps7_0_axi_periph_GP0_ARREADY;
  wire m03_couplers_to_ps7_0_axi_periph_GP0_ARVALID;
  wire m03_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  wire m03_couplers_to_ps7_0_axi_periph_GP0_AWPROT;
  wire [0:0]m03_couplers_to_ps7_0_axi_periph_GP0_AWREADY;
  wire m03_couplers_to_ps7_0_axi_periph_GP0_AWVALID;
  wire m03_couplers_to_ps7_0_axi_periph_GP0_BREADY;
  wire [1:0]m03_couplers_to_ps7_0_axi_periph_GP0_BRESP;
  wire [0:0]m03_couplers_to_ps7_0_axi_periph_GP0_BVALID;
  wire [31:0]m03_couplers_to_ps7_0_axi_periph_GP0_RDATA;
  wire m03_couplers_to_ps7_0_axi_periph_GP0_RREADY;
  wire [1:0]m03_couplers_to_ps7_0_axi_periph_GP0_RRESP;
  wire [0:0]m03_couplers_to_ps7_0_axi_periph_GP0_RVALID;
  wire m03_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  wire [0:0]m03_couplers_to_ps7_0_axi_periph_GP0_WREADY;
  wire m03_couplers_to_ps7_0_axi_periph_GP0_WSTRB;
  wire m03_couplers_to_ps7_0_axi_periph_GP0_WVALID;
  wire [31:0]m04_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  wire [0:0]m04_couplers_to_ps7_0_axi_periph_GP0_ARREADY;
  wire [0:0]m04_couplers_to_ps7_0_axi_periph_GP0_ARVALID;
  wire [31:0]m04_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  wire [0:0]m04_couplers_to_ps7_0_axi_periph_GP0_AWREADY;
  wire [0:0]m04_couplers_to_ps7_0_axi_periph_GP0_AWVALID;
  wire [0:0]m04_couplers_to_ps7_0_axi_periph_GP0_BREADY;
  wire [1:0]m04_couplers_to_ps7_0_axi_periph_GP0_BRESP;
  wire [0:0]m04_couplers_to_ps7_0_axi_periph_GP0_BVALID;
  wire [31:0]m04_couplers_to_ps7_0_axi_periph_GP0_RDATA;
  wire [0:0]m04_couplers_to_ps7_0_axi_periph_GP0_RREADY;
  wire [1:0]m04_couplers_to_ps7_0_axi_periph_GP0_RRESP;
  wire [0:0]m04_couplers_to_ps7_0_axi_periph_GP0_RVALID;
  wire [31:0]m04_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  wire [0:0]m04_couplers_to_ps7_0_axi_periph_GP0_WREADY;
  wire [3:0]m04_couplers_to_ps7_0_axi_periph_GP0_WSTRB;
  wire [0:0]m04_couplers_to_ps7_0_axi_periph_GP0_WVALID;
  wire [31:0]m05_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  wire m05_couplers_to_ps7_0_axi_periph_GP0_ARREADY;
  wire m05_couplers_to_ps7_0_axi_periph_GP0_ARVALID;
  wire [31:0]m05_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  wire m05_couplers_to_ps7_0_axi_periph_GP0_AWREADY;
  wire m05_couplers_to_ps7_0_axi_periph_GP0_AWVALID;
  wire m05_couplers_to_ps7_0_axi_periph_GP0_BREADY;
  wire [1:0]m05_couplers_to_ps7_0_axi_periph_GP0_BRESP;
  wire m05_couplers_to_ps7_0_axi_periph_GP0_BVALID;
  wire [31:0]m05_couplers_to_ps7_0_axi_periph_GP0_RDATA;
  wire m05_couplers_to_ps7_0_axi_periph_GP0_RREADY;
  wire [1:0]m05_couplers_to_ps7_0_axi_periph_GP0_RRESP;
  wire m05_couplers_to_ps7_0_axi_periph_GP0_RVALID;
  wire [31:0]m05_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  wire m05_couplers_to_ps7_0_axi_periph_GP0_WREADY;
  wire [3:0]m05_couplers_to_ps7_0_axi_periph_GP0_WSTRB;
  wire m05_couplers_to_ps7_0_axi_periph_GP0_WVALID;
  wire ps7_0_axi_periph_GP0_ACLK_net;
  wire ps7_0_axi_periph_GP0_ARESETN_net;
  wire [31:0]ps7_0_axi_periph_GP0_to_s00_couplers_ARADDR;
  wire [1:0]ps7_0_axi_periph_GP0_to_s00_couplers_ARBURST;
  wire [3:0]ps7_0_axi_periph_GP0_to_s00_couplers_ARCACHE;
  wire [11:0]ps7_0_axi_periph_GP0_to_s00_couplers_ARID;
  wire [3:0]ps7_0_axi_periph_GP0_to_s00_couplers_ARLEN;
  wire [1:0]ps7_0_axi_periph_GP0_to_s00_couplers_ARLOCK;
  wire [2:0]ps7_0_axi_periph_GP0_to_s00_couplers_ARPROT;
  wire [3:0]ps7_0_axi_periph_GP0_to_s00_couplers_ARQOS;
  wire ps7_0_axi_periph_GP0_to_s00_couplers_ARREADY;
  wire [2:0]ps7_0_axi_periph_GP0_to_s00_couplers_ARSIZE;
  wire ps7_0_axi_periph_GP0_to_s00_couplers_ARVALID;
  wire [31:0]ps7_0_axi_periph_GP0_to_s00_couplers_AWADDR;
  wire [1:0]ps7_0_axi_periph_GP0_to_s00_couplers_AWBURST;
  wire [3:0]ps7_0_axi_periph_GP0_to_s00_couplers_AWCACHE;
  wire [11:0]ps7_0_axi_periph_GP0_to_s00_couplers_AWID;
  wire [3:0]ps7_0_axi_periph_GP0_to_s00_couplers_AWLEN;
  wire [1:0]ps7_0_axi_periph_GP0_to_s00_couplers_AWLOCK;
  wire [2:0]ps7_0_axi_periph_GP0_to_s00_couplers_AWPROT;
  wire [3:0]ps7_0_axi_periph_GP0_to_s00_couplers_AWQOS;
  wire ps7_0_axi_periph_GP0_to_s00_couplers_AWREADY;
  wire [2:0]ps7_0_axi_periph_GP0_to_s00_couplers_AWSIZE;
  wire ps7_0_axi_periph_GP0_to_s00_couplers_AWVALID;
  wire [11:0]ps7_0_axi_periph_GP0_to_s00_couplers_BID;
  wire ps7_0_axi_periph_GP0_to_s00_couplers_BREADY;
  wire [1:0]ps7_0_axi_periph_GP0_to_s00_couplers_BRESP;
  wire ps7_0_axi_periph_GP0_to_s00_couplers_BVALID;
  wire [31:0]ps7_0_axi_periph_GP0_to_s00_couplers_RDATA;
  wire [11:0]ps7_0_axi_periph_GP0_to_s00_couplers_RID;
  wire ps7_0_axi_periph_GP0_to_s00_couplers_RLAST;
  wire ps7_0_axi_periph_GP0_to_s00_couplers_RREADY;
  wire [1:0]ps7_0_axi_periph_GP0_to_s00_couplers_RRESP;
  wire ps7_0_axi_periph_GP0_to_s00_couplers_RVALID;
  wire [31:0]ps7_0_axi_periph_GP0_to_s00_couplers_WDATA;
  wire [11:0]ps7_0_axi_periph_GP0_to_s00_couplers_WID;
  wire ps7_0_axi_periph_GP0_to_s00_couplers_WLAST;
  wire ps7_0_axi_periph_GP0_to_s00_couplers_WREADY;
  wire [3:0]ps7_0_axi_periph_GP0_to_s00_couplers_WSTRB;
  wire ps7_0_axi_periph_GP0_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [0:0]xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [0:0]xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire [0:0]xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire [0:0]xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WREADY;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [95:64]xbar_to_m02_couplers_ARADDR;
  wire xbar_to_m02_couplers_ARREADY;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [95:64]xbar_to_m02_couplers_AWADDR;
  wire xbar_to_m02_couplers_AWREADY;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire xbar_to_m02_couplers_BRESP;
  wire xbar_to_m02_couplers_BVALID;
  wire xbar_to_m02_couplers_RDATA;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire xbar_to_m02_couplers_RRESP;
  wire xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire xbar_to_m02_couplers_WREADY;
  wire [11:8]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire [127:96]xbar_to_m03_couplers_ARADDR;
  wire [11:9]xbar_to_m03_couplers_ARPROT;
  wire xbar_to_m03_couplers_ARREADY;
  wire [3:3]xbar_to_m03_couplers_ARVALID;
  wire [127:96]xbar_to_m03_couplers_AWADDR;
  wire [11:9]xbar_to_m03_couplers_AWPROT;
  wire xbar_to_m03_couplers_AWREADY;
  wire [3:3]xbar_to_m03_couplers_AWVALID;
  wire [3:3]xbar_to_m03_couplers_BREADY;
  wire xbar_to_m03_couplers_BRESP;
  wire xbar_to_m03_couplers_BVALID;
  wire xbar_to_m03_couplers_RDATA;
  wire [3:3]xbar_to_m03_couplers_RREADY;
  wire xbar_to_m03_couplers_RRESP;
  wire xbar_to_m03_couplers_RVALID;
  wire [127:96]xbar_to_m03_couplers_WDATA;
  wire xbar_to_m03_couplers_WREADY;
  wire [15:12]xbar_to_m03_couplers_WSTRB;
  wire [3:3]xbar_to_m03_couplers_WVALID;
  wire [159:128]xbar_to_m04_couplers_ARADDR;
  wire [0:0]xbar_to_m04_couplers_ARREADY;
  wire [4:4]xbar_to_m04_couplers_ARVALID;
  wire [159:128]xbar_to_m04_couplers_AWADDR;
  wire [0:0]xbar_to_m04_couplers_AWREADY;
  wire [4:4]xbar_to_m04_couplers_AWVALID;
  wire [4:4]xbar_to_m04_couplers_BREADY;
  wire [1:0]xbar_to_m04_couplers_BRESP;
  wire [0:0]xbar_to_m04_couplers_BVALID;
  wire [31:0]xbar_to_m04_couplers_RDATA;
  wire [4:4]xbar_to_m04_couplers_RREADY;
  wire [1:0]xbar_to_m04_couplers_RRESP;
  wire [0:0]xbar_to_m04_couplers_RVALID;
  wire [159:128]xbar_to_m04_couplers_WDATA;
  wire [0:0]xbar_to_m04_couplers_WREADY;
  wire [19:16]xbar_to_m04_couplers_WSTRB;
  wire [4:4]xbar_to_m04_couplers_WVALID;
  wire [191:160]xbar_to_m05_couplers_ARADDR;
  wire xbar_to_m05_couplers_ARREADY;
  wire [5:5]xbar_to_m05_couplers_ARVALID;
  wire [191:160]xbar_to_m05_couplers_AWADDR;
  wire xbar_to_m05_couplers_AWREADY;
  wire [5:5]xbar_to_m05_couplers_AWVALID;
  wire [5:5]xbar_to_m05_couplers_BREADY;
  wire [1:0]xbar_to_m05_couplers_BRESP;
  wire xbar_to_m05_couplers_BVALID;
  wire [31:0]xbar_to_m05_couplers_RDATA;
  wire [5:5]xbar_to_m05_couplers_RREADY;
  wire [1:0]xbar_to_m05_couplers_RRESP;
  wire xbar_to_m05_couplers_RVALID;
  wire [191:160]xbar_to_m05_couplers_WDATA;
  wire xbar_to_m05_couplers_WREADY;
  wire [23:20]xbar_to_m05_couplers_WSTRB;
  wire [5:5]xbar_to_m05_couplers_WVALID;
  wire [17:0]NLW_xbar_m_axi_arprot_UNCONNECTED;
  wire [17:0]NLW_xbar_m_axi_awprot_UNCONNECTED;
  wire [23:0]NLW_xbar_m_axi_wstrb_UNCONNECTED;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[31:0] = m00_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  assign M00_AXI_arvalid[0] = m00_couplers_to_ps7_0_axi_periph_GP0_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  assign M00_AXI_awvalid[0] = m00_couplers_to_ps7_0_axi_periph_GP0_AWVALID;
  assign M00_AXI_bready[0] = m00_couplers_to_ps7_0_axi_periph_GP0_BREADY;
  assign M00_AXI_rready[0] = m00_couplers_to_ps7_0_axi_periph_GP0_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  assign M00_AXI_wvalid[0] = m00_couplers_to_ps7_0_axi_periph_GP0_WVALID;
  assign M01_ACLK_1 = M01_ACLK;
  assign M01_ARESETN_1 = M01_ARESETN;
  assign M01_AXI_araddr[31:0] = m01_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  assign M01_AXI_arvalid = m01_couplers_to_ps7_0_axi_periph_GP0_ARVALID;
  assign M01_AXI_awaddr[31:0] = m01_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  assign M01_AXI_awvalid = m01_couplers_to_ps7_0_axi_periph_GP0_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_ps7_0_axi_periph_GP0_BREADY;
  assign M01_AXI_rready = m01_couplers_to_ps7_0_axi_periph_GP0_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_ps7_0_axi_periph_GP0_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_ps7_0_axi_periph_GP0_WVALID;
  assign M02_ACLK_1 = M02_ACLK;
  assign M02_ARESETN_1 = M02_ARESETN;
  assign M02_AXI_araddr[31] = m02_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  assign M02_AXI_araddr[30] = m02_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  assign M02_AXI_araddr[29] = m02_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  assign M02_AXI_araddr[28] = m02_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  assign M02_AXI_araddr[27] = m02_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  assign M02_AXI_araddr[26] = m02_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  assign M02_AXI_araddr[25] = m02_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  assign M02_AXI_araddr[24] = m02_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  assign M02_AXI_araddr[23] = m02_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  assign M02_AXI_araddr[22] = m02_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  assign M02_AXI_araddr[21] = m02_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  assign M02_AXI_araddr[20] = m02_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  assign M02_AXI_araddr[19] = m02_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  assign M02_AXI_araddr[18] = m02_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  assign M02_AXI_araddr[17] = m02_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  assign M02_AXI_araddr[16] = m02_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  assign M02_AXI_araddr[15] = m02_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  assign M02_AXI_araddr[14] = m02_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  assign M02_AXI_araddr[13] = m02_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  assign M02_AXI_araddr[12] = m02_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  assign M02_AXI_araddr[11] = m02_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  assign M02_AXI_araddr[10] = m02_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  assign M02_AXI_araddr[9] = m02_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  assign M02_AXI_araddr[8] = m02_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  assign M02_AXI_araddr[7] = m02_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  assign M02_AXI_araddr[6] = m02_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  assign M02_AXI_araddr[5] = m02_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  assign M02_AXI_araddr[4] = m02_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  assign M02_AXI_araddr[3] = m02_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  assign M02_AXI_araddr[2] = m02_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  assign M02_AXI_araddr[1] = m02_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  assign M02_AXI_araddr[0] = m02_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  assign M02_AXI_arvalid = m02_couplers_to_ps7_0_axi_periph_GP0_ARVALID;
  assign M02_AXI_awaddr[31] = m02_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  assign M02_AXI_awaddr[30] = m02_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  assign M02_AXI_awaddr[29] = m02_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  assign M02_AXI_awaddr[28] = m02_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  assign M02_AXI_awaddr[27] = m02_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  assign M02_AXI_awaddr[26] = m02_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  assign M02_AXI_awaddr[25] = m02_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  assign M02_AXI_awaddr[24] = m02_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  assign M02_AXI_awaddr[23] = m02_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  assign M02_AXI_awaddr[22] = m02_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  assign M02_AXI_awaddr[21] = m02_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  assign M02_AXI_awaddr[20] = m02_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  assign M02_AXI_awaddr[19] = m02_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  assign M02_AXI_awaddr[18] = m02_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  assign M02_AXI_awaddr[17] = m02_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  assign M02_AXI_awaddr[16] = m02_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  assign M02_AXI_awaddr[15] = m02_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  assign M02_AXI_awaddr[14] = m02_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  assign M02_AXI_awaddr[13] = m02_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  assign M02_AXI_awaddr[12] = m02_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  assign M02_AXI_awaddr[11] = m02_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  assign M02_AXI_awaddr[10] = m02_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  assign M02_AXI_awaddr[9] = m02_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  assign M02_AXI_awaddr[8] = m02_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  assign M02_AXI_awaddr[7] = m02_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  assign M02_AXI_awaddr[6] = m02_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  assign M02_AXI_awaddr[5] = m02_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  assign M02_AXI_awaddr[4] = m02_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  assign M02_AXI_awaddr[3] = m02_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  assign M02_AXI_awaddr[2] = m02_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  assign M02_AXI_awaddr[1] = m02_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  assign M02_AXI_awaddr[0] = m02_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  assign M02_AXI_awvalid = m02_couplers_to_ps7_0_axi_periph_GP0_AWVALID;
  assign M02_AXI_bready = m02_couplers_to_ps7_0_axi_periph_GP0_BREADY;
  assign M02_AXI_rready = m02_couplers_to_ps7_0_axi_periph_GP0_RREADY;
  assign M02_AXI_wdata[31] = m02_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  assign M02_AXI_wdata[30] = m02_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  assign M02_AXI_wdata[29] = m02_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  assign M02_AXI_wdata[28] = m02_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  assign M02_AXI_wdata[27] = m02_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  assign M02_AXI_wdata[26] = m02_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  assign M02_AXI_wdata[25] = m02_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  assign M02_AXI_wdata[24] = m02_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  assign M02_AXI_wdata[23] = m02_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  assign M02_AXI_wdata[22] = m02_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  assign M02_AXI_wdata[21] = m02_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  assign M02_AXI_wdata[20] = m02_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  assign M02_AXI_wdata[19] = m02_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  assign M02_AXI_wdata[18] = m02_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  assign M02_AXI_wdata[17] = m02_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  assign M02_AXI_wdata[16] = m02_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  assign M02_AXI_wdata[15] = m02_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  assign M02_AXI_wdata[14] = m02_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  assign M02_AXI_wdata[13] = m02_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  assign M02_AXI_wdata[12] = m02_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  assign M02_AXI_wdata[11] = m02_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  assign M02_AXI_wdata[10] = m02_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  assign M02_AXI_wdata[9] = m02_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  assign M02_AXI_wdata[8] = m02_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  assign M02_AXI_wdata[7] = m02_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  assign M02_AXI_wdata[6] = m02_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  assign M02_AXI_wdata[5] = m02_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  assign M02_AXI_wdata[4] = m02_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  assign M02_AXI_wdata[3] = m02_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  assign M02_AXI_wdata[2] = m02_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  assign M02_AXI_wdata[1] = m02_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  assign M02_AXI_wdata[0] = m02_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  assign M02_AXI_wstrb[3] = m02_couplers_to_ps7_0_axi_periph_GP0_WSTRB;
  assign M02_AXI_wstrb[2] = m02_couplers_to_ps7_0_axi_periph_GP0_WSTRB;
  assign M02_AXI_wstrb[1] = m02_couplers_to_ps7_0_axi_periph_GP0_WSTRB;
  assign M02_AXI_wstrb[0] = m02_couplers_to_ps7_0_axi_periph_GP0_WSTRB;
  assign M02_AXI_wvalid = m02_couplers_to_ps7_0_axi_periph_GP0_WVALID;
  assign M03_ACLK_1 = M03_ACLK;
  assign M03_ARESETN_1 = M03_ARESETN;
  assign M03_AXI_araddr[31] = m03_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  assign M03_AXI_araddr[30] = m03_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  assign M03_AXI_araddr[29] = m03_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  assign M03_AXI_araddr[28] = m03_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  assign M03_AXI_araddr[27] = m03_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  assign M03_AXI_araddr[26] = m03_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  assign M03_AXI_araddr[25] = m03_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  assign M03_AXI_araddr[24] = m03_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  assign M03_AXI_araddr[23] = m03_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  assign M03_AXI_araddr[22] = m03_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  assign M03_AXI_araddr[21] = m03_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  assign M03_AXI_araddr[20] = m03_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  assign M03_AXI_araddr[19] = m03_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  assign M03_AXI_araddr[18] = m03_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  assign M03_AXI_araddr[17] = m03_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  assign M03_AXI_araddr[16] = m03_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  assign M03_AXI_araddr[15] = m03_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  assign M03_AXI_araddr[14] = m03_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  assign M03_AXI_araddr[13] = m03_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  assign M03_AXI_araddr[12] = m03_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  assign M03_AXI_araddr[11] = m03_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  assign M03_AXI_araddr[10] = m03_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  assign M03_AXI_araddr[9] = m03_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  assign M03_AXI_araddr[8] = m03_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  assign M03_AXI_araddr[7] = m03_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  assign M03_AXI_araddr[6] = m03_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  assign M03_AXI_araddr[5] = m03_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  assign M03_AXI_araddr[4] = m03_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  assign M03_AXI_araddr[3] = m03_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  assign M03_AXI_araddr[2] = m03_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  assign M03_AXI_araddr[1] = m03_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  assign M03_AXI_araddr[0] = m03_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  assign M03_AXI_arprot[2] = m03_couplers_to_ps7_0_axi_periph_GP0_ARPROT;
  assign M03_AXI_arprot[1] = m03_couplers_to_ps7_0_axi_periph_GP0_ARPROT;
  assign M03_AXI_arprot[0] = m03_couplers_to_ps7_0_axi_periph_GP0_ARPROT;
  assign M03_AXI_arvalid[0] = m03_couplers_to_ps7_0_axi_periph_GP0_ARVALID;
  assign M03_AXI_awaddr[31] = m03_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  assign M03_AXI_awaddr[30] = m03_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  assign M03_AXI_awaddr[29] = m03_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  assign M03_AXI_awaddr[28] = m03_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  assign M03_AXI_awaddr[27] = m03_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  assign M03_AXI_awaddr[26] = m03_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  assign M03_AXI_awaddr[25] = m03_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  assign M03_AXI_awaddr[24] = m03_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  assign M03_AXI_awaddr[23] = m03_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  assign M03_AXI_awaddr[22] = m03_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  assign M03_AXI_awaddr[21] = m03_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  assign M03_AXI_awaddr[20] = m03_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  assign M03_AXI_awaddr[19] = m03_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  assign M03_AXI_awaddr[18] = m03_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  assign M03_AXI_awaddr[17] = m03_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  assign M03_AXI_awaddr[16] = m03_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  assign M03_AXI_awaddr[15] = m03_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  assign M03_AXI_awaddr[14] = m03_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  assign M03_AXI_awaddr[13] = m03_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  assign M03_AXI_awaddr[12] = m03_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  assign M03_AXI_awaddr[11] = m03_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  assign M03_AXI_awaddr[10] = m03_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  assign M03_AXI_awaddr[9] = m03_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  assign M03_AXI_awaddr[8] = m03_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  assign M03_AXI_awaddr[7] = m03_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  assign M03_AXI_awaddr[6] = m03_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  assign M03_AXI_awaddr[5] = m03_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  assign M03_AXI_awaddr[4] = m03_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  assign M03_AXI_awaddr[3] = m03_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  assign M03_AXI_awaddr[2] = m03_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  assign M03_AXI_awaddr[1] = m03_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  assign M03_AXI_awaddr[0] = m03_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  assign M03_AXI_awprot[2] = m03_couplers_to_ps7_0_axi_periph_GP0_AWPROT;
  assign M03_AXI_awprot[1] = m03_couplers_to_ps7_0_axi_periph_GP0_AWPROT;
  assign M03_AXI_awprot[0] = m03_couplers_to_ps7_0_axi_periph_GP0_AWPROT;
  assign M03_AXI_awvalid[0] = m03_couplers_to_ps7_0_axi_periph_GP0_AWVALID;
  assign M03_AXI_bready[0] = m03_couplers_to_ps7_0_axi_periph_GP0_BREADY;
  assign M03_AXI_rready[0] = m03_couplers_to_ps7_0_axi_periph_GP0_RREADY;
  assign M03_AXI_wdata[31] = m03_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  assign M03_AXI_wdata[30] = m03_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  assign M03_AXI_wdata[29] = m03_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  assign M03_AXI_wdata[28] = m03_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  assign M03_AXI_wdata[27] = m03_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  assign M03_AXI_wdata[26] = m03_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  assign M03_AXI_wdata[25] = m03_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  assign M03_AXI_wdata[24] = m03_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  assign M03_AXI_wdata[23] = m03_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  assign M03_AXI_wdata[22] = m03_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  assign M03_AXI_wdata[21] = m03_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  assign M03_AXI_wdata[20] = m03_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  assign M03_AXI_wdata[19] = m03_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  assign M03_AXI_wdata[18] = m03_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  assign M03_AXI_wdata[17] = m03_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  assign M03_AXI_wdata[16] = m03_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  assign M03_AXI_wdata[15] = m03_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  assign M03_AXI_wdata[14] = m03_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  assign M03_AXI_wdata[13] = m03_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  assign M03_AXI_wdata[12] = m03_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  assign M03_AXI_wdata[11] = m03_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  assign M03_AXI_wdata[10] = m03_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  assign M03_AXI_wdata[9] = m03_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  assign M03_AXI_wdata[8] = m03_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  assign M03_AXI_wdata[7] = m03_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  assign M03_AXI_wdata[6] = m03_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  assign M03_AXI_wdata[5] = m03_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  assign M03_AXI_wdata[4] = m03_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  assign M03_AXI_wdata[3] = m03_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  assign M03_AXI_wdata[2] = m03_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  assign M03_AXI_wdata[1] = m03_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  assign M03_AXI_wdata[0] = m03_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  assign M03_AXI_wstrb[3] = m03_couplers_to_ps7_0_axi_periph_GP0_WSTRB;
  assign M03_AXI_wstrb[2] = m03_couplers_to_ps7_0_axi_periph_GP0_WSTRB;
  assign M03_AXI_wstrb[1] = m03_couplers_to_ps7_0_axi_periph_GP0_WSTRB;
  assign M03_AXI_wstrb[0] = m03_couplers_to_ps7_0_axi_periph_GP0_WSTRB;
  assign M03_AXI_wvalid[0] = m03_couplers_to_ps7_0_axi_periph_GP0_WVALID;
  assign M04_ACLK_1 = M04_ACLK;
  assign M04_ARESETN_1 = M04_ARESETN;
  assign M04_AXI_araddr[31:0] = m04_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  assign M04_AXI_arvalid[0] = m04_couplers_to_ps7_0_axi_periph_GP0_ARVALID;
  assign M04_AXI_awaddr[31:0] = m04_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  assign M04_AXI_awvalid[0] = m04_couplers_to_ps7_0_axi_periph_GP0_AWVALID;
  assign M04_AXI_bready[0] = m04_couplers_to_ps7_0_axi_periph_GP0_BREADY;
  assign M04_AXI_rready[0] = m04_couplers_to_ps7_0_axi_periph_GP0_RREADY;
  assign M04_AXI_wdata[31:0] = m04_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  assign M04_AXI_wstrb[3:0] = m04_couplers_to_ps7_0_axi_periph_GP0_WSTRB;
  assign M04_AXI_wvalid[0] = m04_couplers_to_ps7_0_axi_periph_GP0_WVALID;
  assign M05_ACLK_1 = M05_ACLK;
  assign M05_ARESETN_1 = M05_ARESETN;
  assign M05_AXI_araddr[31:0] = m05_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  assign M05_AXI_arvalid = m05_couplers_to_ps7_0_axi_periph_GP0_ARVALID;
  assign M05_AXI_awaddr[31:0] = m05_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  assign M05_AXI_awvalid = m05_couplers_to_ps7_0_axi_periph_GP0_AWVALID;
  assign M05_AXI_bready = m05_couplers_to_ps7_0_axi_periph_GP0_BREADY;
  assign M05_AXI_rready = m05_couplers_to_ps7_0_axi_periph_GP0_RREADY;
  assign M05_AXI_wdata[31:0] = m05_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  assign M05_AXI_wstrb[3:0] = m05_couplers_to_ps7_0_axi_periph_GP0_WSTRB;
  assign M05_AXI_wvalid = m05_couplers_to_ps7_0_axi_periph_GP0_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = ps7_0_axi_periph_GP0_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = ps7_0_axi_periph_GP0_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[11:0] = ps7_0_axi_periph_GP0_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = ps7_0_axi_periph_GP0_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = ps7_0_axi_periph_GP0_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = ps7_0_axi_periph_GP0_to_s00_couplers_RDATA;
  assign S00_AXI_rid[11:0] = ps7_0_axi_periph_GP0_to_s00_couplers_RID;
  assign S00_AXI_rlast = ps7_0_axi_periph_GP0_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = ps7_0_axi_periph_GP0_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = ps7_0_axi_periph_GP0_to_s00_couplers_RVALID;
  assign S00_AXI_wready = ps7_0_axi_periph_GP0_to_s00_couplers_WREADY;
  assign m00_couplers_to_ps7_0_axi_periph_GP0_ARREADY = M00_AXI_arready[0];
  assign m00_couplers_to_ps7_0_axi_periph_GP0_AWREADY = M00_AXI_awready[0];
  assign m00_couplers_to_ps7_0_axi_periph_GP0_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_ps7_0_axi_periph_GP0_BVALID = M00_AXI_bvalid[0];
  assign m00_couplers_to_ps7_0_axi_periph_GP0_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_ps7_0_axi_periph_GP0_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_ps7_0_axi_periph_GP0_RVALID = M00_AXI_rvalid[0];
  assign m00_couplers_to_ps7_0_axi_periph_GP0_WREADY = M00_AXI_wready[0];
  assign m01_couplers_to_ps7_0_axi_periph_GP0_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_ps7_0_axi_periph_GP0_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_ps7_0_axi_periph_GP0_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_ps7_0_axi_periph_GP0_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_ps7_0_axi_periph_GP0_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_ps7_0_axi_periph_GP0_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_ps7_0_axi_periph_GP0_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_ps7_0_axi_periph_GP0_WREADY = M01_AXI_wready;
  assign m02_couplers_to_ps7_0_axi_periph_GP0_ARREADY = M02_AXI_arready;
  assign m02_couplers_to_ps7_0_axi_periph_GP0_AWREADY = M02_AXI_awready;
  assign m02_couplers_to_ps7_0_axi_periph_GP0_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_ps7_0_axi_periph_GP0_BVALID = M02_AXI_bvalid;
  assign m02_couplers_to_ps7_0_axi_periph_GP0_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_ps7_0_axi_periph_GP0_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_ps7_0_axi_periph_GP0_RVALID = M02_AXI_rvalid;
  assign m02_couplers_to_ps7_0_axi_periph_GP0_WREADY = M02_AXI_wready;
  assign m03_couplers_to_ps7_0_axi_periph_GP0_ARREADY = M03_AXI_arready[0];
  assign m03_couplers_to_ps7_0_axi_periph_GP0_AWREADY = M03_AXI_awready[0];
  assign m03_couplers_to_ps7_0_axi_periph_GP0_BRESP = M03_AXI_bresp[1:0];
  assign m03_couplers_to_ps7_0_axi_periph_GP0_BVALID = M03_AXI_bvalid[0];
  assign m03_couplers_to_ps7_0_axi_periph_GP0_RDATA = M03_AXI_rdata[31:0];
  assign m03_couplers_to_ps7_0_axi_periph_GP0_RRESP = M03_AXI_rresp[1:0];
  assign m03_couplers_to_ps7_0_axi_periph_GP0_RVALID = M03_AXI_rvalid[0];
  assign m03_couplers_to_ps7_0_axi_periph_GP0_WREADY = M03_AXI_wready[0];
  assign m04_couplers_to_ps7_0_axi_periph_GP0_ARREADY = M04_AXI_arready[0];
  assign m04_couplers_to_ps7_0_axi_periph_GP0_AWREADY = M04_AXI_awready[0];
  assign m04_couplers_to_ps7_0_axi_periph_GP0_BRESP = M04_AXI_bresp[1:0];
  assign m04_couplers_to_ps7_0_axi_periph_GP0_BVALID = M04_AXI_bvalid[0];
  assign m04_couplers_to_ps7_0_axi_periph_GP0_RDATA = M04_AXI_rdata[31:0];
  assign m04_couplers_to_ps7_0_axi_periph_GP0_RRESP = M04_AXI_rresp[1:0];
  assign m04_couplers_to_ps7_0_axi_periph_GP0_RVALID = M04_AXI_rvalid[0];
  assign m04_couplers_to_ps7_0_axi_periph_GP0_WREADY = M04_AXI_wready[0];
  assign m05_couplers_to_ps7_0_axi_periph_GP0_ARREADY = M05_AXI_arready;
  assign m05_couplers_to_ps7_0_axi_periph_GP0_AWREADY = M05_AXI_awready;
  assign m05_couplers_to_ps7_0_axi_periph_GP0_BRESP = M05_AXI_bresp[1:0];
  assign m05_couplers_to_ps7_0_axi_periph_GP0_BVALID = M05_AXI_bvalid;
  assign m05_couplers_to_ps7_0_axi_periph_GP0_RDATA = M05_AXI_rdata[31:0];
  assign m05_couplers_to_ps7_0_axi_periph_GP0_RRESP = M05_AXI_rresp[1:0];
  assign m05_couplers_to_ps7_0_axi_periph_GP0_RVALID = M05_AXI_rvalid;
  assign m05_couplers_to_ps7_0_axi_periph_GP0_WREADY = M05_AXI_wready;
  assign ps7_0_axi_periph_GP0_ACLK_net = ACLK;
  assign ps7_0_axi_periph_GP0_ARESETN_net = ARESETN;
  assign ps7_0_axi_periph_GP0_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign ps7_0_axi_periph_GP0_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign ps7_0_axi_periph_GP0_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign ps7_0_axi_periph_GP0_to_s00_couplers_ARID = S00_AXI_arid[11:0];
  assign ps7_0_axi_periph_GP0_to_s00_couplers_ARLEN = S00_AXI_arlen[3:0];
  assign ps7_0_axi_periph_GP0_to_s00_couplers_ARLOCK = S00_AXI_arlock[1:0];
  assign ps7_0_axi_periph_GP0_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign ps7_0_axi_periph_GP0_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign ps7_0_axi_periph_GP0_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign ps7_0_axi_periph_GP0_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign ps7_0_axi_periph_GP0_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign ps7_0_axi_periph_GP0_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign ps7_0_axi_periph_GP0_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign ps7_0_axi_periph_GP0_to_s00_couplers_AWID = S00_AXI_awid[11:0];
  assign ps7_0_axi_periph_GP0_to_s00_couplers_AWLEN = S00_AXI_awlen[3:0];
  assign ps7_0_axi_periph_GP0_to_s00_couplers_AWLOCK = S00_AXI_awlock[1:0];
  assign ps7_0_axi_periph_GP0_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign ps7_0_axi_periph_GP0_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign ps7_0_axi_periph_GP0_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign ps7_0_axi_periph_GP0_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign ps7_0_axi_periph_GP0_to_s00_couplers_BREADY = S00_AXI_bready;
  assign ps7_0_axi_periph_GP0_to_s00_couplers_RREADY = S00_AXI_rready;
  assign ps7_0_axi_periph_GP0_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign ps7_0_axi_periph_GP0_to_s00_couplers_WID = S00_AXI_wid[11:0];
  assign ps7_0_axi_periph_GP0_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign ps7_0_axi_periph_GP0_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign ps7_0_axi_periph_GP0_to_s00_couplers_WVALID = S00_AXI_wvalid;
  m00_couplers_imp_JTMMG6 m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_ps7_0_axi_periph_GP0_ARADDR),
        .M_AXI_arready(m00_couplers_to_ps7_0_axi_periph_GP0_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_ps7_0_axi_periph_GP0_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_ps7_0_axi_periph_GP0_AWADDR),
        .M_AXI_awready(m00_couplers_to_ps7_0_axi_periph_GP0_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_ps7_0_axi_periph_GP0_AWVALID),
        .M_AXI_bready(m00_couplers_to_ps7_0_axi_periph_GP0_BREADY),
        .M_AXI_bresp(m00_couplers_to_ps7_0_axi_periph_GP0_BRESP),
        .M_AXI_bvalid(m00_couplers_to_ps7_0_axi_periph_GP0_BVALID),
        .M_AXI_rdata(m00_couplers_to_ps7_0_axi_periph_GP0_RDATA),
        .M_AXI_rready(m00_couplers_to_ps7_0_axi_periph_GP0_RREADY),
        .M_AXI_rresp(m00_couplers_to_ps7_0_axi_periph_GP0_RRESP),
        .M_AXI_rvalid(m00_couplers_to_ps7_0_axi_periph_GP0_RVALID),
        .M_AXI_wdata(m00_couplers_to_ps7_0_axi_periph_GP0_WDATA),
        .M_AXI_wready(m00_couplers_to_ps7_0_axi_periph_GP0_WREADY),
        .M_AXI_wvalid(m00_couplers_to_ps7_0_axi_periph_GP0_WVALID),
        .S_ACLK(ps7_0_axi_periph_GP0_ACLK_net),
        .S_ARESETN(ps7_0_axi_periph_GP0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_1ANH87B m01_couplers
       (.M_ACLK(M01_ACLK_1),
        .M_ARESETN(M01_ARESETN_1),
        .M_AXI_araddr(m01_couplers_to_ps7_0_axi_periph_GP0_ARADDR),
        .M_AXI_arready(m01_couplers_to_ps7_0_axi_periph_GP0_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_ps7_0_axi_periph_GP0_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_ps7_0_axi_periph_GP0_AWADDR),
        .M_AXI_awready(m01_couplers_to_ps7_0_axi_periph_GP0_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_ps7_0_axi_periph_GP0_AWVALID),
        .M_AXI_bready(m01_couplers_to_ps7_0_axi_periph_GP0_BREADY),
        .M_AXI_bresp(m01_couplers_to_ps7_0_axi_periph_GP0_BRESP),
        .M_AXI_bvalid(m01_couplers_to_ps7_0_axi_periph_GP0_BVALID),
        .M_AXI_rdata(m01_couplers_to_ps7_0_axi_periph_GP0_RDATA),
        .M_AXI_rready(m01_couplers_to_ps7_0_axi_periph_GP0_RREADY),
        .M_AXI_rresp(m01_couplers_to_ps7_0_axi_periph_GP0_RRESP),
        .M_AXI_rvalid(m01_couplers_to_ps7_0_axi_periph_GP0_RVALID),
        .M_AXI_wdata(m01_couplers_to_ps7_0_axi_periph_GP0_WDATA),
        .M_AXI_wready(m01_couplers_to_ps7_0_axi_periph_GP0_WREADY),
        .M_AXI_wstrb(m01_couplers_to_ps7_0_axi_periph_GP0_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_ps7_0_axi_periph_GP0_WVALID),
        .S_ACLK(ps7_0_axi_periph_GP0_ACLK_net),
        .S_ARESETN(ps7_0_axi_periph_GP0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_IHQAAT m02_couplers
       (.M_ACLK(M02_ACLK_1),
        .M_ARESETN(M02_ARESETN_1),
        .M_AXI_araddr(m02_couplers_to_ps7_0_axi_periph_GP0_ARADDR),
        .M_AXI_arready(m02_couplers_to_ps7_0_axi_periph_GP0_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_ps7_0_axi_periph_GP0_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_ps7_0_axi_periph_GP0_AWADDR),
        .M_AXI_awready(m02_couplers_to_ps7_0_axi_periph_GP0_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_ps7_0_axi_periph_GP0_AWVALID),
        .M_AXI_bready(m02_couplers_to_ps7_0_axi_periph_GP0_BREADY),
        .M_AXI_bresp(m02_couplers_to_ps7_0_axi_periph_GP0_BRESP[0]),
        .M_AXI_bvalid(m02_couplers_to_ps7_0_axi_periph_GP0_BVALID),
        .M_AXI_rdata(m02_couplers_to_ps7_0_axi_periph_GP0_RDATA[0]),
        .M_AXI_rready(m02_couplers_to_ps7_0_axi_periph_GP0_RREADY),
        .M_AXI_rresp(m02_couplers_to_ps7_0_axi_periph_GP0_RRESP[0]),
        .M_AXI_rvalid(m02_couplers_to_ps7_0_axi_periph_GP0_RVALID),
        .M_AXI_wdata(m02_couplers_to_ps7_0_axi_periph_GP0_WDATA),
        .M_AXI_wready(m02_couplers_to_ps7_0_axi_periph_GP0_WREADY),
        .M_AXI_wstrb(m02_couplers_to_ps7_0_axi_periph_GP0_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_ps7_0_axi_periph_GP0_WVALID),
        .S_ACLK(ps7_0_axi_periph_GP0_ACLK_net),
        .S_ARESETN(ps7_0_axi_periph_GP0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR[64]),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR[64]),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA[64]),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB[8]),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  m03_couplers_imp_1C9P744 m03_couplers
       (.M_ACLK(M03_ACLK_1),
        .M_ARESETN(M03_ARESETN_1),
        .M_AXI_araddr(m03_couplers_to_ps7_0_axi_periph_GP0_ARADDR),
        .M_AXI_arprot(m03_couplers_to_ps7_0_axi_periph_GP0_ARPROT),
        .M_AXI_arready(m03_couplers_to_ps7_0_axi_periph_GP0_ARREADY),
        .M_AXI_arvalid(m03_couplers_to_ps7_0_axi_periph_GP0_ARVALID),
        .M_AXI_awaddr(m03_couplers_to_ps7_0_axi_periph_GP0_AWADDR),
        .M_AXI_awprot(m03_couplers_to_ps7_0_axi_periph_GP0_AWPROT),
        .M_AXI_awready(m03_couplers_to_ps7_0_axi_periph_GP0_AWREADY),
        .M_AXI_awvalid(m03_couplers_to_ps7_0_axi_periph_GP0_AWVALID),
        .M_AXI_bready(m03_couplers_to_ps7_0_axi_periph_GP0_BREADY),
        .M_AXI_bresp(m03_couplers_to_ps7_0_axi_periph_GP0_BRESP[0]),
        .M_AXI_bvalid(m03_couplers_to_ps7_0_axi_periph_GP0_BVALID),
        .M_AXI_rdata(m03_couplers_to_ps7_0_axi_periph_GP0_RDATA[0]),
        .M_AXI_rready(m03_couplers_to_ps7_0_axi_periph_GP0_RREADY),
        .M_AXI_rresp(m03_couplers_to_ps7_0_axi_periph_GP0_RRESP[0]),
        .M_AXI_rvalid(m03_couplers_to_ps7_0_axi_periph_GP0_RVALID),
        .M_AXI_wdata(m03_couplers_to_ps7_0_axi_periph_GP0_WDATA),
        .M_AXI_wready(m03_couplers_to_ps7_0_axi_periph_GP0_WREADY),
        .M_AXI_wstrb(m03_couplers_to_ps7_0_axi_periph_GP0_WSTRB),
        .M_AXI_wvalid(m03_couplers_to_ps7_0_axi_periph_GP0_WVALID),
        .S_ACLK(ps7_0_axi_periph_GP0_ACLK_net),
        .S_ARESETN(ps7_0_axi_periph_GP0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m03_couplers_ARADDR[96]),
        .S_AXI_arprot(xbar_to_m03_couplers_ARPROT[9]),
        .S_AXI_arready(xbar_to_m03_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m03_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m03_couplers_AWADDR[96]),
        .S_AXI_awprot(xbar_to_m03_couplers_AWPROT[9]),
        .S_AXI_awready(xbar_to_m03_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m03_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m03_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m03_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m03_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m03_couplers_RDATA),
        .S_AXI_rready(xbar_to_m03_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m03_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m03_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m03_couplers_WDATA[96]),
        .S_AXI_wready(xbar_to_m03_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m03_couplers_WSTRB[12]),
        .S_AXI_wvalid(xbar_to_m03_couplers_WVALID));
  m04_couplers_imp_LBMEQO m04_couplers
       (.M_ACLK(M04_ACLK_1),
        .M_ARESETN(M04_ARESETN_1),
        .M_AXI_araddr(m04_couplers_to_ps7_0_axi_periph_GP0_ARADDR),
        .M_AXI_arready(m04_couplers_to_ps7_0_axi_periph_GP0_ARREADY),
        .M_AXI_arvalid(m04_couplers_to_ps7_0_axi_periph_GP0_ARVALID),
        .M_AXI_awaddr(m04_couplers_to_ps7_0_axi_periph_GP0_AWADDR),
        .M_AXI_awready(m04_couplers_to_ps7_0_axi_periph_GP0_AWREADY),
        .M_AXI_awvalid(m04_couplers_to_ps7_0_axi_periph_GP0_AWVALID),
        .M_AXI_bready(m04_couplers_to_ps7_0_axi_periph_GP0_BREADY),
        .M_AXI_bresp(m04_couplers_to_ps7_0_axi_periph_GP0_BRESP),
        .M_AXI_bvalid(m04_couplers_to_ps7_0_axi_periph_GP0_BVALID),
        .M_AXI_rdata(m04_couplers_to_ps7_0_axi_periph_GP0_RDATA),
        .M_AXI_rready(m04_couplers_to_ps7_0_axi_periph_GP0_RREADY),
        .M_AXI_rresp(m04_couplers_to_ps7_0_axi_periph_GP0_RRESP),
        .M_AXI_rvalid(m04_couplers_to_ps7_0_axi_periph_GP0_RVALID),
        .M_AXI_wdata(m04_couplers_to_ps7_0_axi_periph_GP0_WDATA),
        .M_AXI_wready(m04_couplers_to_ps7_0_axi_periph_GP0_WREADY),
        .M_AXI_wstrb(m04_couplers_to_ps7_0_axi_periph_GP0_WSTRB),
        .M_AXI_wvalid(m04_couplers_to_ps7_0_axi_periph_GP0_WVALID),
        .S_ACLK(ps7_0_axi_periph_GP0_ACLK_net),
        .S_ARESETN(ps7_0_axi_periph_GP0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m04_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m04_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m04_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m04_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m04_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m04_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m04_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m04_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m04_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m04_couplers_RDATA),
        .S_AXI_rready(xbar_to_m04_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m04_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m04_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m04_couplers_WDATA),
        .S_AXI_wready(xbar_to_m04_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m04_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m04_couplers_WVALID));
  m05_couplers_imp_19DMBPD m05_couplers
       (.M_ACLK(M05_ACLK_1),
        .M_ARESETN(M05_ARESETN_1),
        .M_AXI_araddr(m05_couplers_to_ps7_0_axi_periph_GP0_ARADDR),
        .M_AXI_arready(m05_couplers_to_ps7_0_axi_periph_GP0_ARREADY),
        .M_AXI_arvalid(m05_couplers_to_ps7_0_axi_periph_GP0_ARVALID),
        .M_AXI_awaddr(m05_couplers_to_ps7_0_axi_periph_GP0_AWADDR),
        .M_AXI_awready(m05_couplers_to_ps7_0_axi_periph_GP0_AWREADY),
        .M_AXI_awvalid(m05_couplers_to_ps7_0_axi_periph_GP0_AWVALID),
        .M_AXI_bready(m05_couplers_to_ps7_0_axi_periph_GP0_BREADY),
        .M_AXI_bresp(m05_couplers_to_ps7_0_axi_periph_GP0_BRESP),
        .M_AXI_bvalid(m05_couplers_to_ps7_0_axi_periph_GP0_BVALID),
        .M_AXI_rdata(m05_couplers_to_ps7_0_axi_periph_GP0_RDATA),
        .M_AXI_rready(m05_couplers_to_ps7_0_axi_periph_GP0_RREADY),
        .M_AXI_rresp(m05_couplers_to_ps7_0_axi_periph_GP0_RRESP),
        .M_AXI_rvalid(m05_couplers_to_ps7_0_axi_periph_GP0_RVALID),
        .M_AXI_wdata(m05_couplers_to_ps7_0_axi_periph_GP0_WDATA),
        .M_AXI_wready(m05_couplers_to_ps7_0_axi_periph_GP0_WREADY),
        .M_AXI_wstrb(m05_couplers_to_ps7_0_axi_periph_GP0_WSTRB),
        .M_AXI_wvalid(m05_couplers_to_ps7_0_axi_periph_GP0_WVALID),
        .S_ACLK(ps7_0_axi_periph_GP0_ACLK_net),
        .S_ARESETN(ps7_0_axi_periph_GP0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m05_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m05_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m05_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m05_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m05_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m05_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m05_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m05_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m05_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m05_couplers_RDATA),
        .S_AXI_rready(xbar_to_m05_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m05_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m05_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m05_couplers_WDATA),
        .S_AXI_wready(xbar_to_m05_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m05_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m05_couplers_WVALID));
  s00_couplers_imp_1GSYDES s00_couplers
       (.M_ACLK(ps7_0_axi_periph_GP0_ACLK_net),
        .M_ARESETN(ps7_0_axi_periph_GP0_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(ps7_0_axi_periph_GP0_to_s00_couplers_ARADDR),
        .S_AXI_arburst(ps7_0_axi_periph_GP0_to_s00_couplers_ARBURST),
        .S_AXI_arcache(ps7_0_axi_periph_GP0_to_s00_couplers_ARCACHE),
        .S_AXI_arid(ps7_0_axi_periph_GP0_to_s00_couplers_ARID),
        .S_AXI_arlen(ps7_0_axi_periph_GP0_to_s00_couplers_ARLEN),
        .S_AXI_arlock(ps7_0_axi_periph_GP0_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(ps7_0_axi_periph_GP0_to_s00_couplers_ARPROT),
        .S_AXI_arqos(ps7_0_axi_periph_GP0_to_s00_couplers_ARQOS),
        .S_AXI_arready(ps7_0_axi_periph_GP0_to_s00_couplers_ARREADY),
        .S_AXI_arsize(ps7_0_axi_periph_GP0_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(ps7_0_axi_periph_GP0_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(ps7_0_axi_periph_GP0_to_s00_couplers_AWADDR),
        .S_AXI_awburst(ps7_0_axi_periph_GP0_to_s00_couplers_AWBURST),
        .S_AXI_awcache(ps7_0_axi_periph_GP0_to_s00_couplers_AWCACHE),
        .S_AXI_awid(ps7_0_axi_periph_GP0_to_s00_couplers_AWID),
        .S_AXI_awlen(ps7_0_axi_periph_GP0_to_s00_couplers_AWLEN),
        .S_AXI_awlock(ps7_0_axi_periph_GP0_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(ps7_0_axi_periph_GP0_to_s00_couplers_AWPROT),
        .S_AXI_awqos(ps7_0_axi_periph_GP0_to_s00_couplers_AWQOS),
        .S_AXI_awready(ps7_0_axi_periph_GP0_to_s00_couplers_AWREADY),
        .S_AXI_awsize(ps7_0_axi_periph_GP0_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(ps7_0_axi_periph_GP0_to_s00_couplers_AWVALID),
        .S_AXI_bid(ps7_0_axi_periph_GP0_to_s00_couplers_BID),
        .S_AXI_bready(ps7_0_axi_periph_GP0_to_s00_couplers_BREADY),
        .S_AXI_bresp(ps7_0_axi_periph_GP0_to_s00_couplers_BRESP),
        .S_AXI_bvalid(ps7_0_axi_periph_GP0_to_s00_couplers_BVALID),
        .S_AXI_rdata(ps7_0_axi_periph_GP0_to_s00_couplers_RDATA),
        .S_AXI_rid(ps7_0_axi_periph_GP0_to_s00_couplers_RID),
        .S_AXI_rlast(ps7_0_axi_periph_GP0_to_s00_couplers_RLAST),
        .S_AXI_rready(ps7_0_axi_periph_GP0_to_s00_couplers_RREADY),
        .S_AXI_rresp(ps7_0_axi_periph_GP0_to_s00_couplers_RRESP),
        .S_AXI_rvalid(ps7_0_axi_periph_GP0_to_s00_couplers_RVALID),
        .S_AXI_wdata(ps7_0_axi_periph_GP0_to_s00_couplers_WDATA),
        .S_AXI_wid(ps7_0_axi_periph_GP0_to_s00_couplers_WID),
        .S_AXI_wlast(ps7_0_axi_periph_GP0_to_s00_couplers_WLAST),
        .S_AXI_wready(ps7_0_axi_periph_GP0_to_s00_couplers_WREADY),
        .S_AXI_wstrb(ps7_0_axi_periph_GP0_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(ps7_0_axi_periph_GP0_to_s00_couplers_WVALID));
  design_1_xbar_1 xbar
       (.aclk(ps7_0_axi_periph_GP0_ACLK_net),
        .aresetn(ps7_0_axi_periph_GP0_ARESETN_net),
        .m_axi_araddr({xbar_to_m05_couplers_ARADDR,xbar_to_m04_couplers_ARADDR,xbar_to_m03_couplers_ARADDR,xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arprot({xbar_to_m03_couplers_ARPROT,NLW_xbar_m_axi_arprot_UNCONNECTED[8:0]}),
        .m_axi_arready({xbar_to_m05_couplers_ARREADY,xbar_to_m04_couplers_ARREADY,xbar_to_m03_couplers_ARREADY,xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m05_couplers_ARVALID,xbar_to_m04_couplers_ARVALID,xbar_to_m03_couplers_ARVALID,xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m05_couplers_AWADDR,xbar_to_m04_couplers_AWADDR,xbar_to_m03_couplers_AWADDR,xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awprot({xbar_to_m03_couplers_AWPROT,NLW_xbar_m_axi_awprot_UNCONNECTED[8:0]}),
        .m_axi_awready({xbar_to_m05_couplers_AWREADY,xbar_to_m04_couplers_AWREADY,xbar_to_m03_couplers_AWREADY,xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m05_couplers_AWVALID,xbar_to_m04_couplers_AWVALID,xbar_to_m03_couplers_AWVALID,xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m05_couplers_BREADY,xbar_to_m04_couplers_BREADY,xbar_to_m03_couplers_BREADY,xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m05_couplers_BRESP,xbar_to_m04_couplers_BRESP,xbar_to_m03_couplers_BRESP,xbar_to_m03_couplers_BRESP,xbar_to_m02_couplers_BRESP,xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m05_couplers_BVALID,xbar_to_m04_couplers_BVALID,xbar_to_m03_couplers_BVALID,xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m05_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m05_couplers_RREADY,xbar_to_m04_couplers_RREADY,xbar_to_m03_couplers_RREADY,xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m05_couplers_RRESP,xbar_to_m04_couplers_RRESP,xbar_to_m03_couplers_RRESP,xbar_to_m03_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m05_couplers_RVALID,xbar_to_m04_couplers_RVALID,xbar_to_m03_couplers_RVALID,xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m05_couplers_WDATA,xbar_to_m04_couplers_WDATA,xbar_to_m03_couplers_WDATA,xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m05_couplers_WREADY,xbar_to_m04_couplers_WREADY,xbar_to_m03_couplers_WREADY,xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m05_couplers_WSTRB,xbar_to_m04_couplers_WSTRB,xbar_to_m03_couplers_WSTRB,xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,NLW_xbar_m_axi_wstrb_UNCONNECTED[3:0]}),
        .m_axi_wvalid({xbar_to_m05_couplers_WVALID,xbar_to_m04_couplers_WVALID,xbar_to_m03_couplers_WVALID,xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module m00_couplers_imp_1HBLYI1
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wid,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [0:0]M_AXI_arid;
  output [3:0]M_AXI_arlen;
  output [1:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [0:0]M_AXI_awid;
  output [3:0]M_AXI_awlen;
  output [1:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [5:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [63:0]M_AXI_rdata;
  input [5:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [63:0]M_AXI_wdata;
  output [0:0]M_AXI_wid;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [7:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [0:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [0:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [0:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [63:0]S_AXI_rdata;
  output [0:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [63:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_m00_regslice_ARADDR;
  wire [1:0]auto_pc_to_m00_regslice_ARBURST;
  wire [3:0]auto_pc_to_m00_regslice_ARCACHE;
  wire [0:0]auto_pc_to_m00_regslice_ARID;
  wire [3:0]auto_pc_to_m00_regslice_ARLEN;
  wire [1:0]auto_pc_to_m00_regslice_ARLOCK;
  wire [2:0]auto_pc_to_m00_regslice_ARPROT;
  wire [3:0]auto_pc_to_m00_regslice_ARQOS;
  wire auto_pc_to_m00_regslice_ARREADY;
  wire [2:0]auto_pc_to_m00_regslice_ARSIZE;
  wire auto_pc_to_m00_regslice_ARVALID;
  wire [31:0]auto_pc_to_m00_regslice_AWADDR;
  wire [1:0]auto_pc_to_m00_regslice_AWBURST;
  wire [3:0]auto_pc_to_m00_regslice_AWCACHE;
  wire [0:0]auto_pc_to_m00_regslice_AWID;
  wire [3:0]auto_pc_to_m00_regslice_AWLEN;
  wire [1:0]auto_pc_to_m00_regslice_AWLOCK;
  wire [2:0]auto_pc_to_m00_regslice_AWPROT;
  wire [3:0]auto_pc_to_m00_regslice_AWQOS;
  wire auto_pc_to_m00_regslice_AWREADY;
  wire [2:0]auto_pc_to_m00_regslice_AWSIZE;
  wire auto_pc_to_m00_regslice_AWVALID;
  wire [0:0]auto_pc_to_m00_regslice_BID;
  wire auto_pc_to_m00_regslice_BREADY;
  wire [1:0]auto_pc_to_m00_regslice_BRESP;
  wire auto_pc_to_m00_regslice_BVALID;
  wire [63:0]auto_pc_to_m00_regslice_RDATA;
  wire [0:0]auto_pc_to_m00_regslice_RID;
  wire auto_pc_to_m00_regslice_RLAST;
  wire auto_pc_to_m00_regslice_RREADY;
  wire [1:0]auto_pc_to_m00_regslice_RRESP;
  wire auto_pc_to_m00_regslice_RVALID;
  wire [63:0]auto_pc_to_m00_regslice_WDATA;
  wire [0:0]auto_pc_to_m00_regslice_WID;
  wire auto_pc_to_m00_regslice_WLAST;
  wire auto_pc_to_m00_regslice_WREADY;
  wire [7:0]auto_pc_to_m00_regslice_WSTRB;
  wire auto_pc_to_m00_regslice_WVALID;
  wire [31:0]m00_couplers_to_auto_pc_ARADDR;
  wire [1:0]m00_couplers_to_auto_pc_ARBURST;
  wire [3:0]m00_couplers_to_auto_pc_ARCACHE;
  wire [0:0]m00_couplers_to_auto_pc_ARID;
  wire [7:0]m00_couplers_to_auto_pc_ARLEN;
  wire [0:0]m00_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m00_couplers_to_auto_pc_ARPROT;
  wire [3:0]m00_couplers_to_auto_pc_ARQOS;
  wire m00_couplers_to_auto_pc_ARREADY;
  wire [3:0]m00_couplers_to_auto_pc_ARREGION;
  wire [2:0]m00_couplers_to_auto_pc_ARSIZE;
  wire m00_couplers_to_auto_pc_ARVALID;
  wire [31:0]m00_couplers_to_auto_pc_AWADDR;
  wire [1:0]m00_couplers_to_auto_pc_AWBURST;
  wire [3:0]m00_couplers_to_auto_pc_AWCACHE;
  wire [0:0]m00_couplers_to_auto_pc_AWID;
  wire [7:0]m00_couplers_to_auto_pc_AWLEN;
  wire [0:0]m00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m00_couplers_to_auto_pc_AWPROT;
  wire [3:0]m00_couplers_to_auto_pc_AWQOS;
  wire m00_couplers_to_auto_pc_AWREADY;
  wire [3:0]m00_couplers_to_auto_pc_AWREGION;
  wire [2:0]m00_couplers_to_auto_pc_AWSIZE;
  wire m00_couplers_to_auto_pc_AWVALID;
  wire [0:0]m00_couplers_to_auto_pc_BID;
  wire m00_couplers_to_auto_pc_BREADY;
  wire [1:0]m00_couplers_to_auto_pc_BRESP;
  wire m00_couplers_to_auto_pc_BVALID;
  wire [63:0]m00_couplers_to_auto_pc_RDATA;
  wire [0:0]m00_couplers_to_auto_pc_RID;
  wire m00_couplers_to_auto_pc_RLAST;
  wire m00_couplers_to_auto_pc_RREADY;
  wire [1:0]m00_couplers_to_auto_pc_RRESP;
  wire m00_couplers_to_auto_pc_RVALID;
  wire [63:0]m00_couplers_to_auto_pc_WDATA;
  wire m00_couplers_to_auto_pc_WLAST;
  wire m00_couplers_to_auto_pc_WREADY;
  wire [7:0]m00_couplers_to_auto_pc_WSTRB;
  wire m00_couplers_to_auto_pc_WVALID;
  wire [31:0]m00_regslice_to_m00_couplers_ARADDR;
  wire [1:0]m00_regslice_to_m00_couplers_ARBURST;
  wire [3:0]m00_regslice_to_m00_couplers_ARCACHE;
  wire [0:0]m00_regslice_to_m00_couplers_ARID;
  wire [3:0]m00_regslice_to_m00_couplers_ARLEN;
  wire [1:0]m00_regslice_to_m00_couplers_ARLOCK;
  wire [2:0]m00_regslice_to_m00_couplers_ARPROT;
  wire [3:0]m00_regslice_to_m00_couplers_ARQOS;
  wire m00_regslice_to_m00_couplers_ARREADY;
  wire [2:0]m00_regslice_to_m00_couplers_ARSIZE;
  wire m00_regslice_to_m00_couplers_ARVALID;
  wire [31:0]m00_regslice_to_m00_couplers_AWADDR;
  wire [1:0]m00_regslice_to_m00_couplers_AWBURST;
  wire [3:0]m00_regslice_to_m00_couplers_AWCACHE;
  wire [0:0]m00_regslice_to_m00_couplers_AWID;
  wire [3:0]m00_regslice_to_m00_couplers_AWLEN;
  wire [1:0]m00_regslice_to_m00_couplers_AWLOCK;
  wire [2:0]m00_regslice_to_m00_couplers_AWPROT;
  wire [3:0]m00_regslice_to_m00_couplers_AWQOS;
  wire m00_regslice_to_m00_couplers_AWREADY;
  wire [2:0]m00_regslice_to_m00_couplers_AWSIZE;
  wire m00_regslice_to_m00_couplers_AWVALID;
  wire [5:0]m00_regslice_to_m00_couplers_BID;
  wire m00_regslice_to_m00_couplers_BREADY;
  wire [1:0]m00_regslice_to_m00_couplers_BRESP;
  wire m00_regslice_to_m00_couplers_BVALID;
  wire [63:0]m00_regslice_to_m00_couplers_RDATA;
  wire [5:0]m00_regslice_to_m00_couplers_RID;
  wire m00_regslice_to_m00_couplers_RLAST;
  wire m00_regslice_to_m00_couplers_RREADY;
  wire [1:0]m00_regslice_to_m00_couplers_RRESP;
  wire m00_regslice_to_m00_couplers_RVALID;
  wire [63:0]m00_regslice_to_m00_couplers_WDATA;
  wire [0:0]m00_regslice_to_m00_couplers_WID;
  wire m00_regslice_to_m00_couplers_WLAST;
  wire m00_regslice_to_m00_couplers_WREADY;
  wire [7:0]m00_regslice_to_m00_couplers_WSTRB;
  wire m00_regslice_to_m00_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = m00_regslice_to_m00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = m00_regslice_to_m00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = m00_regslice_to_m00_couplers_ARCACHE;
  assign M_AXI_arid[0] = m00_regslice_to_m00_couplers_ARID;
  assign M_AXI_arlen[3:0] = m00_regslice_to_m00_couplers_ARLEN;
  assign M_AXI_arlock[1:0] = m00_regslice_to_m00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = m00_regslice_to_m00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = m00_regslice_to_m00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = m00_regslice_to_m00_couplers_ARSIZE;
  assign M_AXI_arvalid = m00_regslice_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m00_regslice_to_m00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = m00_regslice_to_m00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = m00_regslice_to_m00_couplers_AWCACHE;
  assign M_AXI_awid[0] = m00_regslice_to_m00_couplers_AWID;
  assign M_AXI_awlen[3:0] = m00_regslice_to_m00_couplers_AWLEN;
  assign M_AXI_awlock[1:0] = m00_regslice_to_m00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = m00_regslice_to_m00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = m00_regslice_to_m00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = m00_regslice_to_m00_couplers_AWSIZE;
  assign M_AXI_awvalid = m00_regslice_to_m00_couplers_AWVALID;
  assign M_AXI_bready = m00_regslice_to_m00_couplers_BREADY;
  assign M_AXI_rready = m00_regslice_to_m00_couplers_RREADY;
  assign M_AXI_wdata[63:0] = m00_regslice_to_m00_couplers_WDATA;
  assign M_AXI_wid[0] = m00_regslice_to_m00_couplers_WID;
  assign M_AXI_wlast = m00_regslice_to_m00_couplers_WLAST;
  assign M_AXI_wstrb[7:0] = m00_regslice_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = m00_regslice_to_m00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[0] = m00_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = m00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[63:0] = m00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[0] = m00_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = m00_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m00_couplers_to_auto_pc_WREADY;
  assign m00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m00_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m00_couplers_to_auto_pc_ARID = S_AXI_arid[0];
  assign m00_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m00_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m00_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m00_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m00_couplers_to_auto_pc_AWID = S_AXI_awid[0];
  assign m00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m00_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m00_couplers_to_auto_pc_WDATA = S_AXI_wdata[63:0];
  assign m00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[7:0];
  assign m00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  assign m00_regslice_to_m00_couplers_ARREADY = M_AXI_arready;
  assign m00_regslice_to_m00_couplers_AWREADY = M_AXI_awready;
  assign m00_regslice_to_m00_couplers_BID = M_AXI_bid[5:0];
  assign m00_regslice_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_regslice_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign m00_regslice_to_m00_couplers_RDATA = M_AXI_rdata[63:0];
  assign m00_regslice_to_m00_couplers_RID = M_AXI_rid[5:0];
  assign m00_regslice_to_m00_couplers_RLAST = M_AXI_rlast;
  assign m00_regslice_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_regslice_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign m00_regslice_to_m00_couplers_WREADY = M_AXI_wready;
  design_1_auto_pc_0 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m00_regslice_ARADDR),
        .m_axi_arburst(auto_pc_to_m00_regslice_ARBURST),
        .m_axi_arcache(auto_pc_to_m00_regslice_ARCACHE),
        .m_axi_arid(auto_pc_to_m00_regslice_ARID),
        .m_axi_arlen(auto_pc_to_m00_regslice_ARLEN),
        .m_axi_arlock(auto_pc_to_m00_regslice_ARLOCK),
        .m_axi_arprot(auto_pc_to_m00_regslice_ARPROT),
        .m_axi_arqos(auto_pc_to_m00_regslice_ARQOS),
        .m_axi_arready(auto_pc_to_m00_regslice_ARREADY),
        .m_axi_arsize(auto_pc_to_m00_regslice_ARSIZE),
        .m_axi_arvalid(auto_pc_to_m00_regslice_ARVALID),
        .m_axi_awaddr(auto_pc_to_m00_regslice_AWADDR),
        .m_axi_awburst(auto_pc_to_m00_regslice_AWBURST),
        .m_axi_awcache(auto_pc_to_m00_regslice_AWCACHE),
        .m_axi_awid(auto_pc_to_m00_regslice_AWID),
        .m_axi_awlen(auto_pc_to_m00_regslice_AWLEN),
        .m_axi_awlock(auto_pc_to_m00_regslice_AWLOCK),
        .m_axi_awprot(auto_pc_to_m00_regslice_AWPROT),
        .m_axi_awqos(auto_pc_to_m00_regslice_AWQOS),
        .m_axi_awready(auto_pc_to_m00_regslice_AWREADY),
        .m_axi_awsize(auto_pc_to_m00_regslice_AWSIZE),
        .m_axi_awvalid(auto_pc_to_m00_regslice_AWVALID),
        .m_axi_bid(auto_pc_to_m00_regslice_BID),
        .m_axi_bready(auto_pc_to_m00_regslice_BREADY),
        .m_axi_bresp(auto_pc_to_m00_regslice_BRESP),
        .m_axi_bvalid(auto_pc_to_m00_regslice_BVALID),
        .m_axi_rdata(auto_pc_to_m00_regslice_RDATA),
        .m_axi_rid(auto_pc_to_m00_regslice_RID),
        .m_axi_rlast(auto_pc_to_m00_regslice_RLAST),
        .m_axi_rready(auto_pc_to_m00_regslice_RREADY),
        .m_axi_rresp(auto_pc_to_m00_regslice_RRESP),
        .m_axi_rvalid(auto_pc_to_m00_regslice_RVALID),
        .m_axi_wdata(auto_pc_to_m00_regslice_WDATA),
        .m_axi_wid(auto_pc_to_m00_regslice_WID),
        .m_axi_wlast(auto_pc_to_m00_regslice_WLAST),
        .m_axi_wready(auto_pc_to_m00_regslice_WREADY),
        .m_axi_wstrb(auto_pc_to_m00_regslice_WSTRB),
        .m_axi_wvalid(auto_pc_to_m00_regslice_WVALID),
        .s_axi_araddr(m00_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(m00_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m00_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(m00_couplers_to_auto_pc_ARID),
        .s_axi_arlen(m00_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m00_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m00_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m00_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m00_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m00_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m00_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(m00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(m00_couplers_to_auto_pc_AWID),
        .s_axi_awlen(m00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m00_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m00_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m00_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m00_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m00_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(m00_couplers_to_auto_pc_BID),
        .s_axi_bready(m00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m00_couplers_to_auto_pc_RDATA),
        .s_axi_rid(m00_couplers_to_auto_pc_RID),
        .s_axi_rlast(m00_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m00_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m00_couplers_to_auto_pc_WVALID));
  design_1_m00_regslice_0 m00_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m00_regslice_to_m00_couplers_ARADDR),
        .m_axi_arburst(m00_regslice_to_m00_couplers_ARBURST),
        .m_axi_arcache(m00_regslice_to_m00_couplers_ARCACHE),
        .m_axi_arid(m00_regslice_to_m00_couplers_ARID),
        .m_axi_arlen(m00_regslice_to_m00_couplers_ARLEN),
        .m_axi_arlock(m00_regslice_to_m00_couplers_ARLOCK),
        .m_axi_arprot(m00_regslice_to_m00_couplers_ARPROT),
        .m_axi_arqos(m00_regslice_to_m00_couplers_ARQOS),
        .m_axi_arready(m00_regslice_to_m00_couplers_ARREADY),
        .m_axi_arsize(m00_regslice_to_m00_couplers_ARSIZE),
        .m_axi_arvalid(m00_regslice_to_m00_couplers_ARVALID),
        .m_axi_awaddr(m00_regslice_to_m00_couplers_AWADDR),
        .m_axi_awburst(m00_regslice_to_m00_couplers_AWBURST),
        .m_axi_awcache(m00_regslice_to_m00_couplers_AWCACHE),
        .m_axi_awid(m00_regslice_to_m00_couplers_AWID),
        .m_axi_awlen(m00_regslice_to_m00_couplers_AWLEN),
        .m_axi_awlock(m00_regslice_to_m00_couplers_AWLOCK),
        .m_axi_awprot(m00_regslice_to_m00_couplers_AWPROT),
        .m_axi_awqos(m00_regslice_to_m00_couplers_AWQOS),
        .m_axi_awready(m00_regslice_to_m00_couplers_AWREADY),
        .m_axi_awsize(m00_regslice_to_m00_couplers_AWSIZE),
        .m_axi_awvalid(m00_regslice_to_m00_couplers_AWVALID),
        .m_axi_bid(m00_regslice_to_m00_couplers_BID[0]),
        .m_axi_bready(m00_regslice_to_m00_couplers_BREADY),
        .m_axi_bresp(m00_regslice_to_m00_couplers_BRESP),
        .m_axi_bvalid(m00_regslice_to_m00_couplers_BVALID),
        .m_axi_rdata(m00_regslice_to_m00_couplers_RDATA),
        .m_axi_rid(m00_regslice_to_m00_couplers_RID[0]),
        .m_axi_rlast(m00_regslice_to_m00_couplers_RLAST),
        .m_axi_rready(m00_regslice_to_m00_couplers_RREADY),
        .m_axi_rresp(m00_regslice_to_m00_couplers_RRESP),
        .m_axi_rvalid(m00_regslice_to_m00_couplers_RVALID),
        .m_axi_wdata(m00_regslice_to_m00_couplers_WDATA),
        .m_axi_wid(m00_regslice_to_m00_couplers_WID),
        .m_axi_wlast(m00_regslice_to_m00_couplers_WLAST),
        .m_axi_wready(m00_regslice_to_m00_couplers_WREADY),
        .m_axi_wstrb(m00_regslice_to_m00_couplers_WSTRB),
        .m_axi_wvalid(m00_regslice_to_m00_couplers_WVALID),
        .s_axi_araddr(auto_pc_to_m00_regslice_ARADDR),
        .s_axi_arburst(auto_pc_to_m00_regslice_ARBURST),
        .s_axi_arcache(auto_pc_to_m00_regslice_ARCACHE),
        .s_axi_arid(auto_pc_to_m00_regslice_ARID),
        .s_axi_arlen(auto_pc_to_m00_regslice_ARLEN),
        .s_axi_arlock(auto_pc_to_m00_regslice_ARLOCK),
        .s_axi_arprot(auto_pc_to_m00_regslice_ARPROT),
        .s_axi_arqos(auto_pc_to_m00_regslice_ARQOS),
        .s_axi_arready(auto_pc_to_m00_regslice_ARREADY),
        .s_axi_arsize(auto_pc_to_m00_regslice_ARSIZE),
        .s_axi_arvalid(auto_pc_to_m00_regslice_ARVALID),
        .s_axi_awaddr(auto_pc_to_m00_regslice_AWADDR),
        .s_axi_awburst(auto_pc_to_m00_regslice_AWBURST),
        .s_axi_awcache(auto_pc_to_m00_regslice_AWCACHE),
        .s_axi_awid(auto_pc_to_m00_regslice_AWID),
        .s_axi_awlen(auto_pc_to_m00_regslice_AWLEN),
        .s_axi_awlock(auto_pc_to_m00_regslice_AWLOCK),
        .s_axi_awprot(auto_pc_to_m00_regslice_AWPROT),
        .s_axi_awqos(auto_pc_to_m00_regslice_AWQOS),
        .s_axi_awready(auto_pc_to_m00_regslice_AWREADY),
        .s_axi_awsize(auto_pc_to_m00_regslice_AWSIZE),
        .s_axi_awvalid(auto_pc_to_m00_regslice_AWVALID),
        .s_axi_bid(auto_pc_to_m00_regslice_BID),
        .s_axi_bready(auto_pc_to_m00_regslice_BREADY),
        .s_axi_bresp(auto_pc_to_m00_regslice_BRESP),
        .s_axi_bvalid(auto_pc_to_m00_regslice_BVALID),
        .s_axi_rdata(auto_pc_to_m00_regslice_RDATA),
        .s_axi_rid(auto_pc_to_m00_regslice_RID),
        .s_axi_rlast(auto_pc_to_m00_regslice_RLAST),
        .s_axi_rready(auto_pc_to_m00_regslice_RREADY),
        .s_axi_rresp(auto_pc_to_m00_regslice_RRESP),
        .s_axi_rvalid(auto_pc_to_m00_regslice_RVALID),
        .s_axi_wdata(auto_pc_to_m00_regslice_WDATA),
        .s_axi_wid(auto_pc_to_m00_regslice_WID),
        .s_axi_wlast(auto_pc_to_m00_regslice_WLAST),
        .s_axi_wready(auto_pc_to_m00_regslice_WREADY),
        .s_axi_wstrb(auto_pc_to_m00_regslice_WSTRB),
        .s_axi_wvalid(auto_pc_to_m00_regslice_WVALID));
endmodule

module m00_couplers_imp_JTMMG6
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m00_couplers_to_m00_couplers_ARADDR;
  wire [0:0]m00_couplers_to_m00_couplers_ARREADY;
  wire [0:0]m00_couplers_to_m00_couplers_ARVALID;
  wire [31:0]m00_couplers_to_m00_couplers_AWADDR;
  wire [0:0]m00_couplers_to_m00_couplers_AWREADY;
  wire [0:0]m00_couplers_to_m00_couplers_AWVALID;
  wire [0:0]m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire [0:0]m00_couplers_to_m00_couplers_BVALID;
  wire [31:0]m00_couplers_to_m00_couplers_RDATA;
  wire [0:0]m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire [0:0]m00_couplers_to_m00_couplers_RVALID;
  wire [31:0]m00_couplers_to_m00_couplers_WDATA;
  wire [0:0]m00_couplers_to_m00_couplers_WREADY;
  wire [0:0]m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready[0] = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready[0] = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wvalid[0] = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready[0] = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready[0] = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid[0] = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid[0] = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready[0] = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready[0];
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid[0];
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready[0];
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid[0];
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready[0];
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid[0];
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready[0];
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid[0];
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready[0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m01_couplers_imp_1ANH87B
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m01_couplers_to_m01_couplers_ARADDR;
  wire m01_couplers_to_m01_couplers_ARREADY;
  wire m01_couplers_to_m01_couplers_ARVALID;
  wire [31:0]m01_couplers_to_m01_couplers_AWADDR;
  wire m01_couplers_to_m01_couplers_AWREADY;
  wire m01_couplers_to_m01_couplers_AWVALID;
  wire m01_couplers_to_m01_couplers_BREADY;
  wire [1:0]m01_couplers_to_m01_couplers_BRESP;
  wire m01_couplers_to_m01_couplers_BVALID;
  wire [31:0]m01_couplers_to_m01_couplers_RDATA;
  wire m01_couplers_to_m01_couplers_RREADY;
  wire [1:0]m01_couplers_to_m01_couplers_RRESP;
  wire m01_couplers_to_m01_couplers_RVALID;
  wire [31:0]m01_couplers_to_m01_couplers_WDATA;
  wire m01_couplers_to_m01_couplers_WREADY;
  wire [3:0]m01_couplers_to_m01_couplers_WSTRB;
  wire m01_couplers_to_m01_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m01_couplers_to_m01_couplers_ARADDR;
  assign M_AXI_arvalid = m01_couplers_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m01_couplers_to_m01_couplers_AWADDR;
  assign M_AXI_awvalid = m01_couplers_to_m01_couplers_AWVALID;
  assign M_AXI_bready = m01_couplers_to_m01_couplers_BREADY;
  assign M_AXI_rready = m01_couplers_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_couplers_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m01_couplers_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = m01_couplers_to_m01_couplers_WVALID;
  assign S_AXI_arready = m01_couplers_to_m01_couplers_ARREADY;
  assign S_AXI_awready = m01_couplers_to_m01_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_couplers_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_m01_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_m01_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_couplers_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_m01_couplers_RVALID;
  assign S_AXI_wready = m01_couplers_to_m01_couplers_WREADY;
  assign m01_couplers_to_m01_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m01_couplers_to_m01_couplers_ARREADY = M_AXI_arready;
  assign m01_couplers_to_m01_couplers_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_m01_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m01_couplers_to_m01_couplers_AWREADY = M_AXI_awready;
  assign m01_couplers_to_m01_couplers_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_m01_couplers_BREADY = S_AXI_bready;
  assign m01_couplers_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_couplers_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign m01_couplers_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_couplers_to_m01_couplers_RREADY = S_AXI_rready;
  assign m01_couplers_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_couplers_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign m01_couplers_to_m01_couplers_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_m01_couplers_WREADY = M_AXI_wready;
  assign m01_couplers_to_m01_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_m01_couplers_WVALID = S_AXI_wvalid;
endmodule

module m02_couplers_imp_IHQAAT
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input M_AXI_bresp;
  input M_AXI_bvalid;
  input M_AXI_rdata;
  output M_AXI_rready;
  input M_AXI_rresp;
  input M_AXI_rvalid;
  output M_AXI_wdata;
  input M_AXI_wready;
  output M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output S_AXI_bresp;
  output S_AXI_bvalid;
  output S_AXI_rdata;
  input S_AXI_rready;
  output S_AXI_rresp;
  output S_AXI_rvalid;
  input S_AXI_wdata;
  output S_AXI_wready;
  input S_AXI_wstrb;
  input S_AXI_wvalid;

  wire m02_couplers_to_m02_couplers_ARADDR;
  wire m02_couplers_to_m02_couplers_ARREADY;
  wire m02_couplers_to_m02_couplers_ARVALID;
  wire m02_couplers_to_m02_couplers_AWADDR;
  wire m02_couplers_to_m02_couplers_AWREADY;
  wire m02_couplers_to_m02_couplers_AWVALID;
  wire m02_couplers_to_m02_couplers_BREADY;
  wire m02_couplers_to_m02_couplers_BRESP;
  wire m02_couplers_to_m02_couplers_BVALID;
  wire m02_couplers_to_m02_couplers_RDATA;
  wire m02_couplers_to_m02_couplers_RREADY;
  wire m02_couplers_to_m02_couplers_RRESP;
  wire m02_couplers_to_m02_couplers_RVALID;
  wire m02_couplers_to_m02_couplers_WDATA;
  wire m02_couplers_to_m02_couplers_WREADY;
  wire m02_couplers_to_m02_couplers_WSTRB;
  wire m02_couplers_to_m02_couplers_WVALID;

  assign M_AXI_araddr = m02_couplers_to_m02_couplers_ARADDR;
  assign M_AXI_arvalid = m02_couplers_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr = m02_couplers_to_m02_couplers_AWADDR;
  assign M_AXI_awvalid = m02_couplers_to_m02_couplers_AWVALID;
  assign M_AXI_bready = m02_couplers_to_m02_couplers_BREADY;
  assign M_AXI_rready = m02_couplers_to_m02_couplers_RREADY;
  assign M_AXI_wdata = m02_couplers_to_m02_couplers_WDATA;
  assign M_AXI_wstrb = m02_couplers_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid = m02_couplers_to_m02_couplers_WVALID;
  assign S_AXI_arready = m02_couplers_to_m02_couplers_ARREADY;
  assign S_AXI_awready = m02_couplers_to_m02_couplers_AWREADY;
  assign S_AXI_bresp = m02_couplers_to_m02_couplers_BRESP;
  assign S_AXI_bvalid = m02_couplers_to_m02_couplers_BVALID;
  assign S_AXI_rdata = m02_couplers_to_m02_couplers_RDATA;
  assign S_AXI_rresp = m02_couplers_to_m02_couplers_RRESP;
  assign S_AXI_rvalid = m02_couplers_to_m02_couplers_RVALID;
  assign S_AXI_wready = m02_couplers_to_m02_couplers_WREADY;
  assign m02_couplers_to_m02_couplers_ARADDR = S_AXI_araddr;
  assign m02_couplers_to_m02_couplers_ARREADY = M_AXI_arready;
  assign m02_couplers_to_m02_couplers_ARVALID = S_AXI_arvalid;
  assign m02_couplers_to_m02_couplers_AWADDR = S_AXI_awaddr;
  assign m02_couplers_to_m02_couplers_AWREADY = M_AXI_awready;
  assign m02_couplers_to_m02_couplers_AWVALID = S_AXI_awvalid;
  assign m02_couplers_to_m02_couplers_BREADY = S_AXI_bready;
  assign m02_couplers_to_m02_couplers_BRESP = M_AXI_bresp;
  assign m02_couplers_to_m02_couplers_BVALID = M_AXI_bvalid;
  assign m02_couplers_to_m02_couplers_RDATA = M_AXI_rdata;
  assign m02_couplers_to_m02_couplers_RREADY = S_AXI_rready;
  assign m02_couplers_to_m02_couplers_RRESP = M_AXI_rresp;
  assign m02_couplers_to_m02_couplers_RVALID = M_AXI_rvalid;
  assign m02_couplers_to_m02_couplers_WDATA = S_AXI_wdata;
  assign m02_couplers_to_m02_couplers_WREADY = M_AXI_wready;
  assign m02_couplers_to_m02_couplers_WSTRB = S_AXI_wstrb;
  assign m02_couplers_to_m02_couplers_WVALID = S_AXI_wvalid;
endmodule

module m03_couplers_imp_1C9P744
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output M_AXI_araddr;
  output M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output M_AXI_awaddr;
  output M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input M_AXI_bresp;
  input M_AXI_bvalid;
  input M_AXI_rdata;
  output M_AXI_rready;
  input M_AXI_rresp;
  input M_AXI_rvalid;
  output M_AXI_wdata;
  input M_AXI_wready;
  output M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input S_AXI_araddr;
  input S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input S_AXI_awaddr;
  input S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output S_AXI_bresp;
  output S_AXI_bvalid;
  output S_AXI_rdata;
  input S_AXI_rready;
  output S_AXI_rresp;
  output S_AXI_rvalid;
  input S_AXI_wdata;
  output S_AXI_wready;
  input S_AXI_wstrb;
  input S_AXI_wvalid;

  wire m03_couplers_to_m03_couplers_ARADDR;
  wire m03_couplers_to_m03_couplers_ARPROT;
  wire m03_couplers_to_m03_couplers_ARREADY;
  wire m03_couplers_to_m03_couplers_ARVALID;
  wire m03_couplers_to_m03_couplers_AWADDR;
  wire m03_couplers_to_m03_couplers_AWPROT;
  wire m03_couplers_to_m03_couplers_AWREADY;
  wire m03_couplers_to_m03_couplers_AWVALID;
  wire m03_couplers_to_m03_couplers_BREADY;
  wire m03_couplers_to_m03_couplers_BRESP;
  wire m03_couplers_to_m03_couplers_BVALID;
  wire m03_couplers_to_m03_couplers_RDATA;
  wire m03_couplers_to_m03_couplers_RREADY;
  wire m03_couplers_to_m03_couplers_RRESP;
  wire m03_couplers_to_m03_couplers_RVALID;
  wire m03_couplers_to_m03_couplers_WDATA;
  wire m03_couplers_to_m03_couplers_WREADY;
  wire m03_couplers_to_m03_couplers_WSTRB;
  wire m03_couplers_to_m03_couplers_WVALID;

  assign M_AXI_araddr = m03_couplers_to_m03_couplers_ARADDR;
  assign M_AXI_arprot = m03_couplers_to_m03_couplers_ARPROT;
  assign M_AXI_arvalid = m03_couplers_to_m03_couplers_ARVALID;
  assign M_AXI_awaddr = m03_couplers_to_m03_couplers_AWADDR;
  assign M_AXI_awprot = m03_couplers_to_m03_couplers_AWPROT;
  assign M_AXI_awvalid = m03_couplers_to_m03_couplers_AWVALID;
  assign M_AXI_bready = m03_couplers_to_m03_couplers_BREADY;
  assign M_AXI_rready = m03_couplers_to_m03_couplers_RREADY;
  assign M_AXI_wdata = m03_couplers_to_m03_couplers_WDATA;
  assign M_AXI_wstrb = m03_couplers_to_m03_couplers_WSTRB;
  assign M_AXI_wvalid = m03_couplers_to_m03_couplers_WVALID;
  assign S_AXI_arready = m03_couplers_to_m03_couplers_ARREADY;
  assign S_AXI_awready = m03_couplers_to_m03_couplers_AWREADY;
  assign S_AXI_bresp = m03_couplers_to_m03_couplers_BRESP;
  assign S_AXI_bvalid = m03_couplers_to_m03_couplers_BVALID;
  assign S_AXI_rdata = m03_couplers_to_m03_couplers_RDATA;
  assign S_AXI_rresp = m03_couplers_to_m03_couplers_RRESP;
  assign S_AXI_rvalid = m03_couplers_to_m03_couplers_RVALID;
  assign S_AXI_wready = m03_couplers_to_m03_couplers_WREADY;
  assign m03_couplers_to_m03_couplers_ARADDR = S_AXI_araddr;
  assign m03_couplers_to_m03_couplers_ARPROT = S_AXI_arprot;
  assign m03_couplers_to_m03_couplers_ARREADY = M_AXI_arready;
  assign m03_couplers_to_m03_couplers_ARVALID = S_AXI_arvalid;
  assign m03_couplers_to_m03_couplers_AWADDR = S_AXI_awaddr;
  assign m03_couplers_to_m03_couplers_AWPROT = S_AXI_awprot;
  assign m03_couplers_to_m03_couplers_AWREADY = M_AXI_awready;
  assign m03_couplers_to_m03_couplers_AWVALID = S_AXI_awvalid;
  assign m03_couplers_to_m03_couplers_BREADY = S_AXI_bready;
  assign m03_couplers_to_m03_couplers_BRESP = M_AXI_bresp;
  assign m03_couplers_to_m03_couplers_BVALID = M_AXI_bvalid;
  assign m03_couplers_to_m03_couplers_RDATA = M_AXI_rdata;
  assign m03_couplers_to_m03_couplers_RREADY = S_AXI_rready;
  assign m03_couplers_to_m03_couplers_RRESP = M_AXI_rresp;
  assign m03_couplers_to_m03_couplers_RVALID = M_AXI_rvalid;
  assign m03_couplers_to_m03_couplers_WDATA = S_AXI_wdata;
  assign m03_couplers_to_m03_couplers_WREADY = M_AXI_wready;
  assign m03_couplers_to_m03_couplers_WSTRB = S_AXI_wstrb;
  assign m03_couplers_to_m03_couplers_WVALID = S_AXI_wvalid;
endmodule

module m04_couplers_imp_LBMEQO
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m04_couplers_to_m04_couplers_ARADDR;
  wire [0:0]m04_couplers_to_m04_couplers_ARREADY;
  wire [0:0]m04_couplers_to_m04_couplers_ARVALID;
  wire [31:0]m04_couplers_to_m04_couplers_AWADDR;
  wire [0:0]m04_couplers_to_m04_couplers_AWREADY;
  wire [0:0]m04_couplers_to_m04_couplers_AWVALID;
  wire [0:0]m04_couplers_to_m04_couplers_BREADY;
  wire [1:0]m04_couplers_to_m04_couplers_BRESP;
  wire [0:0]m04_couplers_to_m04_couplers_BVALID;
  wire [31:0]m04_couplers_to_m04_couplers_RDATA;
  wire [0:0]m04_couplers_to_m04_couplers_RREADY;
  wire [1:0]m04_couplers_to_m04_couplers_RRESP;
  wire [0:0]m04_couplers_to_m04_couplers_RVALID;
  wire [31:0]m04_couplers_to_m04_couplers_WDATA;
  wire [0:0]m04_couplers_to_m04_couplers_WREADY;
  wire [3:0]m04_couplers_to_m04_couplers_WSTRB;
  wire [0:0]m04_couplers_to_m04_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m04_couplers_to_m04_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m04_couplers_to_m04_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m04_couplers_to_m04_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m04_couplers_to_m04_couplers_AWVALID;
  assign M_AXI_bready[0] = m04_couplers_to_m04_couplers_BREADY;
  assign M_AXI_rready[0] = m04_couplers_to_m04_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m04_couplers_to_m04_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m04_couplers_to_m04_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m04_couplers_to_m04_couplers_WVALID;
  assign S_AXI_arready[0] = m04_couplers_to_m04_couplers_ARREADY;
  assign S_AXI_awready[0] = m04_couplers_to_m04_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m04_couplers_to_m04_couplers_BRESP;
  assign S_AXI_bvalid[0] = m04_couplers_to_m04_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m04_couplers_to_m04_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m04_couplers_to_m04_couplers_RRESP;
  assign S_AXI_rvalid[0] = m04_couplers_to_m04_couplers_RVALID;
  assign S_AXI_wready[0] = m04_couplers_to_m04_couplers_WREADY;
  assign m04_couplers_to_m04_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m04_couplers_to_m04_couplers_ARREADY = M_AXI_arready[0];
  assign m04_couplers_to_m04_couplers_ARVALID = S_AXI_arvalid[0];
  assign m04_couplers_to_m04_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m04_couplers_to_m04_couplers_AWREADY = M_AXI_awready[0];
  assign m04_couplers_to_m04_couplers_AWVALID = S_AXI_awvalid[0];
  assign m04_couplers_to_m04_couplers_BREADY = S_AXI_bready[0];
  assign m04_couplers_to_m04_couplers_BRESP = M_AXI_bresp[1:0];
  assign m04_couplers_to_m04_couplers_BVALID = M_AXI_bvalid[0];
  assign m04_couplers_to_m04_couplers_RDATA = M_AXI_rdata[31:0];
  assign m04_couplers_to_m04_couplers_RREADY = S_AXI_rready[0];
  assign m04_couplers_to_m04_couplers_RRESP = M_AXI_rresp[1:0];
  assign m04_couplers_to_m04_couplers_RVALID = M_AXI_rvalid[0];
  assign m04_couplers_to_m04_couplers_WDATA = S_AXI_wdata[31:0];
  assign m04_couplers_to_m04_couplers_WREADY = M_AXI_wready[0];
  assign m04_couplers_to_m04_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m04_couplers_to_m04_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m05_couplers_imp_19DMBPD
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m05_couplers_to_m05_couplers_ARADDR;
  wire m05_couplers_to_m05_couplers_ARREADY;
  wire m05_couplers_to_m05_couplers_ARVALID;
  wire [31:0]m05_couplers_to_m05_couplers_AWADDR;
  wire m05_couplers_to_m05_couplers_AWREADY;
  wire m05_couplers_to_m05_couplers_AWVALID;
  wire m05_couplers_to_m05_couplers_BREADY;
  wire [1:0]m05_couplers_to_m05_couplers_BRESP;
  wire m05_couplers_to_m05_couplers_BVALID;
  wire [31:0]m05_couplers_to_m05_couplers_RDATA;
  wire m05_couplers_to_m05_couplers_RREADY;
  wire [1:0]m05_couplers_to_m05_couplers_RRESP;
  wire m05_couplers_to_m05_couplers_RVALID;
  wire [31:0]m05_couplers_to_m05_couplers_WDATA;
  wire m05_couplers_to_m05_couplers_WREADY;
  wire [3:0]m05_couplers_to_m05_couplers_WSTRB;
  wire m05_couplers_to_m05_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m05_couplers_to_m05_couplers_ARADDR;
  assign M_AXI_arvalid = m05_couplers_to_m05_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m05_couplers_to_m05_couplers_AWADDR;
  assign M_AXI_awvalid = m05_couplers_to_m05_couplers_AWVALID;
  assign M_AXI_bready = m05_couplers_to_m05_couplers_BREADY;
  assign M_AXI_rready = m05_couplers_to_m05_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m05_couplers_to_m05_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m05_couplers_to_m05_couplers_WSTRB;
  assign M_AXI_wvalid = m05_couplers_to_m05_couplers_WVALID;
  assign S_AXI_arready = m05_couplers_to_m05_couplers_ARREADY;
  assign S_AXI_awready = m05_couplers_to_m05_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m05_couplers_to_m05_couplers_BRESP;
  assign S_AXI_bvalid = m05_couplers_to_m05_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m05_couplers_to_m05_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m05_couplers_to_m05_couplers_RRESP;
  assign S_AXI_rvalid = m05_couplers_to_m05_couplers_RVALID;
  assign S_AXI_wready = m05_couplers_to_m05_couplers_WREADY;
  assign m05_couplers_to_m05_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m05_couplers_to_m05_couplers_ARREADY = M_AXI_arready;
  assign m05_couplers_to_m05_couplers_ARVALID = S_AXI_arvalid;
  assign m05_couplers_to_m05_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m05_couplers_to_m05_couplers_AWREADY = M_AXI_awready;
  assign m05_couplers_to_m05_couplers_AWVALID = S_AXI_awvalid;
  assign m05_couplers_to_m05_couplers_BREADY = S_AXI_bready;
  assign m05_couplers_to_m05_couplers_BRESP = M_AXI_bresp[1:0];
  assign m05_couplers_to_m05_couplers_BVALID = M_AXI_bvalid;
  assign m05_couplers_to_m05_couplers_RDATA = M_AXI_rdata[31:0];
  assign m05_couplers_to_m05_couplers_RREADY = S_AXI_rready;
  assign m05_couplers_to_m05_couplers_RRESP = M_AXI_rresp[1:0];
  assign m05_couplers_to_m05_couplers_RVALID = M_AXI_rvalid;
  assign m05_couplers_to_m05_couplers_WDATA = S_AXI_wdata[31:0];
  assign m05_couplers_to_m05_couplers_WREADY = M_AXI_wready;
  assign m05_couplers_to_m05_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m05_couplers_to_m05_couplers_WVALID = S_AXI_wvalid;
endmodule

module s00_couplers_imp_1GSYDES
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wid,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [11:0]S_AXI_arid;
  input [3:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [11:0]S_AXI_awid;
  input [3:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [11:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [11:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [11:0]S_AXI_wid;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_s00_couplers_ARADDR;
  wire [2:0]auto_pc_to_s00_couplers_ARPROT;
  wire auto_pc_to_s00_couplers_ARREADY;
  wire auto_pc_to_s00_couplers_ARVALID;
  wire [31:0]auto_pc_to_s00_couplers_AWADDR;
  wire [2:0]auto_pc_to_s00_couplers_AWPROT;
  wire auto_pc_to_s00_couplers_AWREADY;
  wire auto_pc_to_s00_couplers_AWVALID;
  wire auto_pc_to_s00_couplers_BREADY;
  wire [1:0]auto_pc_to_s00_couplers_BRESP;
  wire auto_pc_to_s00_couplers_BVALID;
  wire [31:0]auto_pc_to_s00_couplers_RDATA;
  wire auto_pc_to_s00_couplers_RREADY;
  wire [1:0]auto_pc_to_s00_couplers_RRESP;
  wire auto_pc_to_s00_couplers_RVALID;
  wire [31:0]auto_pc_to_s00_couplers_WDATA;
  wire auto_pc_to_s00_couplers_WREADY;
  wire [3:0]auto_pc_to_s00_couplers_WSTRB;
  wire auto_pc_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_auto_pc_ARADDR;
  wire [1:0]s00_couplers_to_auto_pc_ARBURST;
  wire [3:0]s00_couplers_to_auto_pc_ARCACHE;
  wire [11:0]s00_couplers_to_auto_pc_ARID;
  wire [3:0]s00_couplers_to_auto_pc_ARLEN;
  wire [1:0]s00_couplers_to_auto_pc_ARLOCK;
  wire [2:0]s00_couplers_to_auto_pc_ARPROT;
  wire [3:0]s00_couplers_to_auto_pc_ARQOS;
  wire s00_couplers_to_auto_pc_ARREADY;
  wire [2:0]s00_couplers_to_auto_pc_ARSIZE;
  wire s00_couplers_to_auto_pc_ARVALID;
  wire [31:0]s00_couplers_to_auto_pc_AWADDR;
  wire [1:0]s00_couplers_to_auto_pc_AWBURST;
  wire [3:0]s00_couplers_to_auto_pc_AWCACHE;
  wire [11:0]s00_couplers_to_auto_pc_AWID;
  wire [3:0]s00_couplers_to_auto_pc_AWLEN;
  wire [1:0]s00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]s00_couplers_to_auto_pc_AWPROT;
  wire [3:0]s00_couplers_to_auto_pc_AWQOS;
  wire s00_couplers_to_auto_pc_AWREADY;
  wire [2:0]s00_couplers_to_auto_pc_AWSIZE;
  wire s00_couplers_to_auto_pc_AWVALID;
  wire [11:0]s00_couplers_to_auto_pc_BID;
  wire s00_couplers_to_auto_pc_BREADY;
  wire [1:0]s00_couplers_to_auto_pc_BRESP;
  wire s00_couplers_to_auto_pc_BVALID;
  wire [31:0]s00_couplers_to_auto_pc_RDATA;
  wire [11:0]s00_couplers_to_auto_pc_RID;
  wire s00_couplers_to_auto_pc_RLAST;
  wire s00_couplers_to_auto_pc_RREADY;
  wire [1:0]s00_couplers_to_auto_pc_RRESP;
  wire s00_couplers_to_auto_pc_RVALID;
  wire [31:0]s00_couplers_to_auto_pc_WDATA;
  wire [11:0]s00_couplers_to_auto_pc_WID;
  wire s00_couplers_to_auto_pc_WLAST;
  wire s00_couplers_to_auto_pc_WREADY;
  wire [3:0]s00_couplers_to_auto_pc_WSTRB;
  wire s00_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[11:0] = s00_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[11:0] = s00_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = s00_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_pc_ARID = S_AXI_arid[11:0];
  assign s00_couplers_to_auto_pc_ARLEN = S_AXI_arlen[3:0];
  assign s00_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[1:0];
  assign s00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_pc_AWID = S_AXI_awid[11:0];
  assign s00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[3:0];
  assign s00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[1:0];
  assign s00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_auto_pc_WID = S_AXI_wid[11:0];
  assign s00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  design_1_auto_pc_1 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s00_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_s00_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_s00_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_s00_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_s00_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_s00_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_s00_couplers_RDATA),
        .m_axi_rready(auto_pc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_s00_couplers_WDATA),
        .m_axi_wready(auto_pc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(s00_couplers_to_auto_pc_ARID),
        .s_axi_arlen(s00_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_pc_ARREADY),
        .s_axi_arsize(s00_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(s00_couplers_to_auto_pc_AWID),
        .s_axi_awlen(s00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_pc_AWREADY),
        .s_axi_awsize(s00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(s00_couplers_to_auto_pc_BID),
        .s_axi_bready(s00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_pc_RDATA),
        .s_axi_rid(s00_couplers_to_auto_pc_RID),
        .s_axi_rlast(s00_couplers_to_auto_pc_RLAST),
        .s_axi_rready(s00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_pc_WDATA),
        .s_axi_wid(s00_couplers_to_auto_pc_WID),
        .s_axi_wlast(s00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(s00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_pc_WVALID));
endmodule

module s00_couplers_imp_FU42P7
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wready);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  input [63:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  output S_AXI_awready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [63:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  output S_AXI_wready;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]s00_couplers_to_s00_regslice_ARADDR;
  wire [1:0]s00_couplers_to_s00_regslice_ARBURST;
  wire [3:0]s00_couplers_to_s00_regslice_ARCACHE;
  wire [7:0]s00_couplers_to_s00_regslice_ARLEN;
  wire [2:0]s00_couplers_to_s00_regslice_ARPROT;
  wire s00_couplers_to_s00_regslice_ARREADY;
  wire [2:0]s00_couplers_to_s00_regslice_ARSIZE;
  wire s00_couplers_to_s00_regslice_ARVALID;
  wire [63:0]s00_couplers_to_s00_regslice_RDATA;
  wire s00_couplers_to_s00_regslice_RLAST;
  wire s00_couplers_to_s00_regslice_RREADY;
  wire [1:0]s00_couplers_to_s00_regslice_RRESP;
  wire s00_couplers_to_s00_regslice_RVALID;
  wire [31:0]s00_regslice_to_s00_couplers_ARADDR;
  wire [1:0]s00_regslice_to_s00_couplers_ARBURST;
  wire [3:0]s00_regslice_to_s00_couplers_ARCACHE;
  wire [7:0]s00_regslice_to_s00_couplers_ARLEN;
  wire [0:0]s00_regslice_to_s00_couplers_ARLOCK;
  wire [2:0]s00_regslice_to_s00_couplers_ARPROT;
  wire [3:0]s00_regslice_to_s00_couplers_ARQOS;
  wire s00_regslice_to_s00_couplers_ARREADY;
  wire [2:0]s00_regslice_to_s00_couplers_ARSIZE;
  wire s00_regslice_to_s00_couplers_ARVALID;
  wire [63:0]s00_regslice_to_s00_couplers_RDATA;
  wire s00_regslice_to_s00_couplers_RLAST;
  wire s00_regslice_to_s00_couplers_RREADY;
  wire [1:0]s00_regslice_to_s00_couplers_RRESP;
  wire s00_regslice_to_s00_couplers_RVALID;

  assign M_AXI_araddr[31:0] = s00_regslice_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s00_regslice_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s00_regslice_to_s00_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = s00_regslice_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[0] = s00_regslice_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = s00_regslice_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = s00_regslice_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = s00_regslice_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid = s00_regslice_to_s00_couplers_ARVALID;
  assign M_AXI_rready = s00_regslice_to_s00_couplers_RREADY;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_s00_regslice_ARREADY;
  assign S_AXI_rdata[63:0] = s00_couplers_to_s00_regslice_RDATA;
  assign S_AXI_rlast = s00_couplers_to_s00_regslice_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_regslice_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_regslice_RVALID;
  assign s00_couplers_to_s00_regslice_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_s00_regslice_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_s00_regslice_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_s00_regslice_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_s00_regslice_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_regslice_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_s00_regslice_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_regslice_RREADY = S_AXI_rready;
  assign s00_regslice_to_s00_couplers_ARREADY = M_AXI_arready;
  assign s00_regslice_to_s00_couplers_RDATA = M_AXI_rdata[63:0];
  assign s00_regslice_to_s00_couplers_RLAST = M_AXI_rlast;
  assign s00_regslice_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_regslice_to_s00_couplers_RVALID = M_AXI_rvalid;
  design_1_s00_regslice_0 s00_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(s00_regslice_to_s00_couplers_ARADDR),
        .m_axi_arburst(s00_regslice_to_s00_couplers_ARBURST),
        .m_axi_arcache(s00_regslice_to_s00_couplers_ARCACHE),
        .m_axi_arlen(s00_regslice_to_s00_couplers_ARLEN),
        .m_axi_arlock(s00_regslice_to_s00_couplers_ARLOCK),
        .m_axi_arprot(s00_regslice_to_s00_couplers_ARPROT),
        .m_axi_arqos(s00_regslice_to_s00_couplers_ARQOS),
        .m_axi_arready(s00_regslice_to_s00_couplers_ARREADY),
        .m_axi_arsize(s00_regslice_to_s00_couplers_ARSIZE),
        .m_axi_arvalid(s00_regslice_to_s00_couplers_ARVALID),
        .m_axi_rdata(s00_regslice_to_s00_couplers_RDATA),
        .m_axi_rlast(s00_regslice_to_s00_couplers_RLAST),
        .m_axi_rready(s00_regslice_to_s00_couplers_RREADY),
        .m_axi_rresp(s00_regslice_to_s00_couplers_RRESP),
        .m_axi_rvalid(s00_regslice_to_s00_couplers_RVALID),
        .s_axi_araddr(s00_couplers_to_s00_regslice_ARADDR),
        .s_axi_arburst(s00_couplers_to_s00_regslice_ARBURST),
        .s_axi_arcache(s00_couplers_to_s00_regslice_ARCACHE),
        .s_axi_arlen(s00_couplers_to_s00_regslice_ARLEN),
        .s_axi_arlock(1'b0),
        .s_axi_arprot(s00_couplers_to_s00_regslice_ARPROT),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(s00_couplers_to_s00_regslice_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s00_couplers_to_s00_regslice_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_s00_regslice_ARVALID),
        .s_axi_rdata(s00_couplers_to_s00_regslice_RDATA),
        .s_axi_rlast(s00_couplers_to_s00_regslice_RLAST),
        .s_axi_rready(s00_couplers_to_s00_regslice_RREADY),
        .s_axi_rresp(s00_couplers_to_s00_regslice_RRESP),
        .s_axi_rvalid(s00_couplers_to_s00_regslice_RVALID));
endmodule

module s01_couplers_imp_1NG5L56
   (M_ACLK,
    M_ARESETN,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_arready,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  output [63:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [7:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  output S_AXI_arready;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [63:0]S_AXI_rdata;
  output S_AXI_rlast;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [63:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]s01_couplers_to_s01_regslice_AWADDR;
  wire [1:0]s01_couplers_to_s01_regslice_AWBURST;
  wire [3:0]s01_couplers_to_s01_regslice_AWCACHE;
  wire [7:0]s01_couplers_to_s01_regslice_AWLEN;
  wire [2:0]s01_couplers_to_s01_regslice_AWPROT;
  wire s01_couplers_to_s01_regslice_AWREADY;
  wire [2:0]s01_couplers_to_s01_regslice_AWSIZE;
  wire s01_couplers_to_s01_regslice_AWVALID;
  wire s01_couplers_to_s01_regslice_BREADY;
  wire [1:0]s01_couplers_to_s01_regslice_BRESP;
  wire s01_couplers_to_s01_regslice_BVALID;
  wire [63:0]s01_couplers_to_s01_regslice_WDATA;
  wire s01_couplers_to_s01_regslice_WLAST;
  wire s01_couplers_to_s01_regslice_WREADY;
  wire [7:0]s01_couplers_to_s01_regslice_WSTRB;
  wire s01_couplers_to_s01_regslice_WVALID;
  wire [31:0]s01_regslice_to_s01_couplers_AWADDR;
  wire [1:0]s01_regslice_to_s01_couplers_AWBURST;
  wire [3:0]s01_regslice_to_s01_couplers_AWCACHE;
  wire [7:0]s01_regslice_to_s01_couplers_AWLEN;
  wire [0:0]s01_regslice_to_s01_couplers_AWLOCK;
  wire [2:0]s01_regslice_to_s01_couplers_AWPROT;
  wire [3:0]s01_regslice_to_s01_couplers_AWQOS;
  wire s01_regslice_to_s01_couplers_AWREADY;
  wire [2:0]s01_regslice_to_s01_couplers_AWSIZE;
  wire s01_regslice_to_s01_couplers_AWVALID;
  wire s01_regslice_to_s01_couplers_BREADY;
  wire [1:0]s01_regslice_to_s01_couplers_BRESP;
  wire s01_regslice_to_s01_couplers_BVALID;
  wire [63:0]s01_regslice_to_s01_couplers_WDATA;
  wire s01_regslice_to_s01_couplers_WLAST;
  wire s01_regslice_to_s01_couplers_WREADY;
  wire [7:0]s01_regslice_to_s01_couplers_WSTRB;
  wire s01_regslice_to_s01_couplers_WVALID;

  assign M_AXI_awaddr[31:0] = s01_regslice_to_s01_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s01_regslice_to_s01_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s01_regslice_to_s01_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = s01_regslice_to_s01_couplers_AWLEN;
  assign M_AXI_awlock[0] = s01_regslice_to_s01_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = s01_regslice_to_s01_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = s01_regslice_to_s01_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = s01_regslice_to_s01_couplers_AWSIZE;
  assign M_AXI_awvalid = s01_regslice_to_s01_couplers_AWVALID;
  assign M_AXI_bready = s01_regslice_to_s01_couplers_BREADY;
  assign M_AXI_wdata[63:0] = s01_regslice_to_s01_couplers_WDATA;
  assign M_AXI_wlast = s01_regslice_to_s01_couplers_WLAST;
  assign M_AXI_wstrb[7:0] = s01_regslice_to_s01_couplers_WSTRB;
  assign M_AXI_wvalid = s01_regslice_to_s01_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_awready = s01_couplers_to_s01_regslice_AWREADY;
  assign S_AXI_bresp[1:0] = s01_couplers_to_s01_regslice_BRESP;
  assign S_AXI_bvalid = s01_couplers_to_s01_regslice_BVALID;
  assign S_AXI_wready = s01_couplers_to_s01_regslice_WREADY;
  assign s01_couplers_to_s01_regslice_AWADDR = S_AXI_awaddr[31:0];
  assign s01_couplers_to_s01_regslice_AWBURST = S_AXI_awburst[1:0];
  assign s01_couplers_to_s01_regslice_AWCACHE = S_AXI_awcache[3:0];
  assign s01_couplers_to_s01_regslice_AWLEN = S_AXI_awlen[7:0];
  assign s01_couplers_to_s01_regslice_AWPROT = S_AXI_awprot[2:0];
  assign s01_couplers_to_s01_regslice_AWSIZE = S_AXI_awsize[2:0];
  assign s01_couplers_to_s01_regslice_AWVALID = S_AXI_awvalid;
  assign s01_couplers_to_s01_regslice_BREADY = S_AXI_bready;
  assign s01_couplers_to_s01_regslice_WDATA = S_AXI_wdata[63:0];
  assign s01_couplers_to_s01_regslice_WLAST = S_AXI_wlast;
  assign s01_couplers_to_s01_regslice_WSTRB = S_AXI_wstrb[7:0];
  assign s01_couplers_to_s01_regslice_WVALID = S_AXI_wvalid;
  assign s01_regslice_to_s01_couplers_AWREADY = M_AXI_awready;
  assign s01_regslice_to_s01_couplers_BRESP = M_AXI_bresp[1:0];
  assign s01_regslice_to_s01_couplers_BVALID = M_AXI_bvalid;
  assign s01_regslice_to_s01_couplers_WREADY = M_AXI_wready;
  design_1_s01_regslice_0 s01_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_awaddr(s01_regslice_to_s01_couplers_AWADDR),
        .m_axi_awburst(s01_regslice_to_s01_couplers_AWBURST),
        .m_axi_awcache(s01_regslice_to_s01_couplers_AWCACHE),
        .m_axi_awlen(s01_regslice_to_s01_couplers_AWLEN),
        .m_axi_awlock(s01_regslice_to_s01_couplers_AWLOCK),
        .m_axi_awprot(s01_regslice_to_s01_couplers_AWPROT),
        .m_axi_awqos(s01_regslice_to_s01_couplers_AWQOS),
        .m_axi_awready(s01_regslice_to_s01_couplers_AWREADY),
        .m_axi_awsize(s01_regslice_to_s01_couplers_AWSIZE),
        .m_axi_awvalid(s01_regslice_to_s01_couplers_AWVALID),
        .m_axi_bready(s01_regslice_to_s01_couplers_BREADY),
        .m_axi_bresp(s01_regslice_to_s01_couplers_BRESP),
        .m_axi_bvalid(s01_regslice_to_s01_couplers_BVALID),
        .m_axi_wdata(s01_regslice_to_s01_couplers_WDATA),
        .m_axi_wlast(s01_regslice_to_s01_couplers_WLAST),
        .m_axi_wready(s01_regslice_to_s01_couplers_WREADY),
        .m_axi_wstrb(s01_regslice_to_s01_couplers_WSTRB),
        .m_axi_wvalid(s01_regslice_to_s01_couplers_WVALID),
        .s_axi_awaddr(s01_couplers_to_s01_regslice_AWADDR),
        .s_axi_awburst(s01_couplers_to_s01_regslice_AWBURST),
        .s_axi_awcache(s01_couplers_to_s01_regslice_AWCACHE),
        .s_axi_awlen(s01_couplers_to_s01_regslice_AWLEN),
        .s_axi_awlock(1'b0),
        .s_axi_awprot(s01_couplers_to_s01_regslice_AWPROT),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(s01_couplers_to_s01_regslice_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s01_couplers_to_s01_regslice_AWSIZE),
        .s_axi_awvalid(s01_couplers_to_s01_regslice_AWVALID),
        .s_axi_bready(s01_couplers_to_s01_regslice_BREADY),
        .s_axi_bresp(s01_couplers_to_s01_regslice_BRESP),
        .s_axi_bvalid(s01_couplers_to_s01_regslice_BVALID),
        .s_axi_wdata(s01_couplers_to_s01_regslice_WDATA),
        .s_axi_wlast(s01_couplers_to_s01_regslice_WLAST),
        .s_axi_wready(s01_couplers_to_s01_regslice_WREADY),
        .s_axi_wstrb(s01_couplers_to_s01_regslice_WSTRB),
        .s_axi_wvalid(s01_couplers_to_s01_regslice_WVALID));
endmodule
