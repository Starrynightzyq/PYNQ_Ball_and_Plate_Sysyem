// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Fri Jan  4 16:32:45 2019
// Host        : ZYQ-Mac-Win running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/MyFiles/PYNQ_Ball_and_Plate_Sysyem/vivado_proj/ZYNQ_ctrl/ZYNQ_ctrl.srcs/sources_1/bd/design_1/ip/design_1_servo_0_0/design_1_servo_0_0_sim_netlist.v
// Design      : design_1_servo_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_servo_0_0,servo_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "servo_v1_0,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module design_1_servo_0_0
   (pwm_out_0,
    pwm_out_1,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_aclk,
    s_axi_aresetn);
  output pwm_out_0;
  output pwm_out_1;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [3:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [3:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 1e+08, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_CLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0" *) input s_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_RST, POLARITY ACTIVE_LOW" *) input s_axi_aresetn;

  wire \<const0> ;
  wire pwm_out_0;
  wire pwm_out_1;
  wire s_axi_aclk;
  wire [3:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [3:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_servo_0_0_servo_v1_0 inst
       (.S_AXI_ARREADY(s_axi_arready),
        .S_AXI_AWREADY(s_axi_awready),
        .S_AXI_WREADY(s_axi_wready),
        .pwm_out_0(pwm_out_0),
        .pwm_out_1(pwm_out_1),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[3:2]),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[3:2]),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "axi_pwm" *) 
module design_1_servo_0_0_axi_pwm
   (pwm_out_0,
    Q,
    s_axi_aclk,
    SR);
  output pwm_out_0;
  input [31:0]Q;
  input s_axi_aclk;
  input [0:0]SR;

  wire [31:0]Q;
  wire [0:0]SR;
  wire _carry__0_i_1_n_0;
  wire _carry__0_i_2_n_0;
  wire _carry__0_i_3_n_0;
  wire _carry__0_i_4_n_0;
  wire _carry__0_n_0;
  wire _carry__0_n_1;
  wire _carry__0_n_2;
  wire _carry__0_n_3;
  wire _carry__1_i_1_n_0;
  wire _carry__1_i_2_n_0;
  wire _carry__1_i_3_n_0;
  wire _carry__1_i_4_n_0;
  wire _carry__1_n_0;
  wire _carry__1_n_1;
  wire _carry__1_n_2;
  wire _carry__1_n_3;
  wire _carry__2_i_1_n_0;
  wire _carry__2_i_2_n_0;
  wire _carry__2_i_3_n_0;
  wire _carry__2_i_4_n_0;
  wire _carry__2_n_0;
  wire _carry__2_n_1;
  wire _carry__2_n_2;
  wire _carry__2_n_3;
  wire _carry__3_i_1_n_0;
  wire _carry__3_i_2_n_0;
  wire _carry__3_i_3_n_0;
  wire _carry__3_i_4_n_0;
  wire _carry__3_n_0;
  wire _carry__3_n_1;
  wire _carry__3_n_2;
  wire _carry__3_n_3;
  wire _carry__4_i_1_n_0;
  wire _carry__4_i_2_n_0;
  wire _carry__4_i_3_n_0;
  wire _carry__4_i_4_n_0;
  wire _carry__4_n_0;
  wire _carry__4_n_1;
  wire _carry__4_n_2;
  wire _carry__4_n_3;
  wire _carry__5_i_1_n_0;
  wire _carry__5_i_2_n_0;
  wire _carry__5_i_3_n_0;
  wire _carry__5_i_4_n_0;
  wire _carry__5_n_0;
  wire _carry__5_n_1;
  wire _carry__5_n_2;
  wire _carry__5_n_3;
  wire _carry__6_i_1_n_0;
  wire _carry__6_i_2_n_0;
  wire _carry__6_i_3_n_0;
  wire _carry__6_i_4_n_0;
  wire _carry__6_n_0;
  wire _carry__6_n_1;
  wire _carry__6_n_2;
  wire _carry__6_n_3;
  wire _carry_i_1_n_0;
  wire _carry_i_2_n_0;
  wire _carry_i_3_n_0;
  wire _carry_i_4_n_0;
  wire _carry_n_0;
  wire _carry_n_1;
  wire _carry_n_2;
  wire _carry_n_3;
  wire comp_carry__0_i_1_n_0;
  wire comp_carry__0_i_2_n_0;
  wire comp_carry__0_n_0;
  wire comp_carry__0_n_1;
  wire comp_carry__0_n_2;
  wire comp_carry__0_n_3;
  wire comp_carry__0_n_4;
  wire comp_carry__0_n_5;
  wire comp_carry__0_n_6;
  wire comp_carry__0_n_7;
  wire comp_carry__1_i_1_n_0;
  wire comp_carry__1_n_0;
  wire comp_carry__1_n_1;
  wire comp_carry__1_n_2;
  wire comp_carry__1_n_3;
  wire comp_carry__1_n_4;
  wire comp_carry__1_n_5;
  wire comp_carry__1_n_6;
  wire comp_carry__1_n_7;
  wire comp_carry__2_i_1_n_0;
  wire comp_carry__2_n_0;
  wire comp_carry__2_n_1;
  wire comp_carry__2_n_2;
  wire comp_carry__2_n_3;
  wire comp_carry__2_n_4;
  wire comp_carry__2_n_5;
  wire comp_carry__2_n_6;
  wire comp_carry__2_n_7;
  wire comp_carry__3_n_0;
  wire comp_carry__3_n_1;
  wire comp_carry__3_n_2;
  wire comp_carry__3_n_3;
  wire comp_carry__3_n_4;
  wire comp_carry__3_n_5;
  wire comp_carry__3_n_6;
  wire comp_carry__3_n_7;
  wire comp_carry__4_n_0;
  wire comp_carry__4_n_1;
  wire comp_carry__4_n_2;
  wire comp_carry__4_n_3;
  wire comp_carry__4_n_4;
  wire comp_carry__4_n_5;
  wire comp_carry__4_n_6;
  wire comp_carry__4_n_7;
  wire comp_carry__5_n_0;
  wire comp_carry__5_n_1;
  wire comp_carry__5_n_2;
  wire comp_carry__5_n_3;
  wire comp_carry__5_n_4;
  wire comp_carry__5_n_5;
  wire comp_carry__5_n_6;
  wire comp_carry__5_n_7;
  wire comp_carry__6_n_7;
  wire comp_carry_i_1_n_0;
  wire comp_carry_i_2_n_0;
  wire comp_carry_n_0;
  wire comp_carry_n_1;
  wire comp_carry_n_2;
  wire comp_carry_n_3;
  wire comp_carry_n_4;
  wire comp_carry_n_5;
  wire comp_carry_n_6;
  wire comp_carry_n_7;
  wire [31:0]counter;
  wire counter0_carry__0_n_0;
  wire counter0_carry__0_n_1;
  wire counter0_carry__0_n_2;
  wire counter0_carry__0_n_3;
  wire counter0_carry__1_n_0;
  wire counter0_carry__1_n_1;
  wire counter0_carry__1_n_2;
  wire counter0_carry__1_n_3;
  wire counter0_carry__2_n_0;
  wire counter0_carry__2_n_1;
  wire counter0_carry__2_n_2;
  wire counter0_carry__2_n_3;
  wire counter0_carry__3_n_0;
  wire counter0_carry__3_n_1;
  wire counter0_carry__3_n_2;
  wire counter0_carry__3_n_3;
  wire counter0_carry__4_n_0;
  wire counter0_carry__4_n_1;
  wire counter0_carry__4_n_2;
  wire counter0_carry__4_n_3;
  wire counter0_carry__5_n_0;
  wire counter0_carry__5_n_1;
  wire counter0_carry__5_n_2;
  wire counter0_carry__5_n_3;
  wire counter0_carry__6_n_2;
  wire counter0_carry__6_n_3;
  wire counter0_carry_n_0;
  wire counter0_carry_n_1;
  wire counter0_carry_n_2;
  wire counter0_carry_n_3;
  wire \counter[31]_i_10_n_0 ;
  wire \counter[31]_i_2_n_0 ;
  wire \counter[31]_i_3_n_0 ;
  wire \counter[31]_i_4_n_0 ;
  wire \counter[31]_i_5_n_0 ;
  wire \counter[31]_i_6_n_0 ;
  wire \counter[31]_i_7_n_0 ;
  wire \counter[31]_i_8_n_0 ;
  wire \counter[31]_i_9_n_0 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[10] ;
  wire \counter_reg_n_0_[11] ;
  wire \counter_reg_n_0_[12] ;
  wire \counter_reg_n_0_[13] ;
  wire \counter_reg_n_0_[14] ;
  wire \counter_reg_n_0_[15] ;
  wire \counter_reg_n_0_[16] ;
  wire \counter_reg_n_0_[17] ;
  wire \counter_reg_n_0_[18] ;
  wire \counter_reg_n_0_[19] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[20] ;
  wire \counter_reg_n_0_[21] ;
  wire \counter_reg_n_0_[22] ;
  wire \counter_reg_n_0_[23] ;
  wire \counter_reg_n_0_[24] ;
  wire \counter_reg_n_0_[25] ;
  wire \counter_reg_n_0_[26] ;
  wire \counter_reg_n_0_[27] ;
  wire \counter_reg_n_0_[28] ;
  wire \counter_reg_n_0_[29] ;
  wire \counter_reg_n_0_[2] ;
  wire \counter_reg_n_0_[30] ;
  wire \counter_reg_n_0_[31] ;
  wire \counter_reg_n_0_[3] ;
  wire \counter_reg_n_0_[4] ;
  wire \counter_reg_n_0_[5] ;
  wire \counter_reg_n_0_[6] ;
  wire \counter_reg_n_0_[7] ;
  wire \counter_reg_n_0_[8] ;
  wire \counter_reg_n_0_[9] ;
  wire [31:1]data0;
  wire pwm_out_0;
  wire pwm_out_0_INST_0_i_10_n_0;
  wire pwm_out_0_INST_0_i_11_n_0;
  wire pwm_out_0_INST_0_i_1_n_0;
  wire pwm_out_0_INST_0_i_2_n_0;
  wire pwm_out_0_INST_0_i_3_n_0;
  wire pwm_out_0_INST_0_i_4_n_0;
  wire pwm_out_0_INST_0_i_5_n_0;
  wire pwm_out_0_INST_0_i_6_n_0;
  wire pwm_out_0_INST_0_i_7_n_0;
  wire pwm_out_0_INST_0_i_8_n_0;
  wire pwm_out_0_INST_0_i_9_n_0;
  wire s_axi_aclk;
  wire [3:0]NLW__carry_O_UNCONNECTED;
  wire [3:0]NLW__carry__0_O_UNCONNECTED;
  wire [3:0]NLW__carry__1_O_UNCONNECTED;
  wire [3:0]NLW__carry__2_O_UNCONNECTED;
  wire [3:0]NLW__carry__3_O_UNCONNECTED;
  wire [3:0]NLW__carry__4_O_UNCONNECTED;
  wire [3:0]NLW__carry__5_O_UNCONNECTED;
  wire [3:0]NLW__carry__6_O_UNCONNECTED;
  wire [3:0]NLW_comp_carry__6_CO_UNCONNECTED;
  wire [3:1]NLW_comp_carry__6_O_UNCONNECTED;
  wire [3:2]NLW_counter0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_counter0_carry__6_O_UNCONNECTED;

  CARRY4 _carry
       (.CI(1'b0),
        .CO({_carry_n_0,_carry_n_1,_carry_n_2,_carry_n_3}),
        .CYINIT(1'b1),
        .DI({\counter_reg_n_0_[3] ,\counter_reg_n_0_[2] ,\counter_reg_n_0_[1] ,\counter_reg_n_0_[0] }),
        .O(NLW__carry_O_UNCONNECTED[3:0]),
        .S({_carry_i_1_n_0,_carry_i_2_n_0,_carry_i_3_n_0,_carry_i_4_n_0}));
  CARRY4 _carry__0
       (.CI(_carry_n_0),
        .CO({_carry__0_n_0,_carry__0_n_1,_carry__0_n_2,_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({\counter_reg_n_0_[7] ,\counter_reg_n_0_[6] ,\counter_reg_n_0_[5] ,\counter_reg_n_0_[4] }),
        .O(NLW__carry__0_O_UNCONNECTED[3:0]),
        .S({_carry__0_i_1_n_0,_carry__0_i_2_n_0,_carry__0_i_3_n_0,_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__0_i_1
       (.I0(\counter_reg_n_0_[7] ),
        .I1(comp_carry__0_n_7),
        .O(_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__0_i_2
       (.I0(\counter_reg_n_0_[6] ),
        .I1(comp_carry_n_4),
        .O(_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__0_i_3
       (.I0(\counter_reg_n_0_[5] ),
        .I1(comp_carry_n_5),
        .O(_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__0_i_4
       (.I0(\counter_reg_n_0_[4] ),
        .I1(comp_carry_n_6),
        .O(_carry__0_i_4_n_0));
  CARRY4 _carry__1
       (.CI(_carry__0_n_0),
        .CO({_carry__1_n_0,_carry__1_n_1,_carry__1_n_2,_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({\counter_reg_n_0_[11] ,\counter_reg_n_0_[10] ,\counter_reg_n_0_[9] ,\counter_reg_n_0_[8] }),
        .O(NLW__carry__1_O_UNCONNECTED[3:0]),
        .S({_carry__1_i_1_n_0,_carry__1_i_2_n_0,_carry__1_i_3_n_0,_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__1_i_1
       (.I0(\counter_reg_n_0_[11] ),
        .I1(comp_carry__1_n_7),
        .O(_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__1_i_2
       (.I0(\counter_reg_n_0_[10] ),
        .I1(comp_carry__0_n_4),
        .O(_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__1_i_3
       (.I0(\counter_reg_n_0_[9] ),
        .I1(comp_carry__0_n_5),
        .O(_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__1_i_4
       (.I0(\counter_reg_n_0_[8] ),
        .I1(comp_carry__0_n_6),
        .O(_carry__1_i_4_n_0));
  CARRY4 _carry__2
       (.CI(_carry__1_n_0),
        .CO({_carry__2_n_0,_carry__2_n_1,_carry__2_n_2,_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({\counter_reg_n_0_[15] ,\counter_reg_n_0_[14] ,\counter_reg_n_0_[13] ,\counter_reg_n_0_[12] }),
        .O(NLW__carry__2_O_UNCONNECTED[3:0]),
        .S({_carry__2_i_1_n_0,_carry__2_i_2_n_0,_carry__2_i_3_n_0,_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__2_i_1
       (.I0(\counter_reg_n_0_[15] ),
        .I1(comp_carry__2_n_7),
        .O(_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__2_i_2
       (.I0(\counter_reg_n_0_[14] ),
        .I1(comp_carry__1_n_4),
        .O(_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__2_i_3
       (.I0(\counter_reg_n_0_[13] ),
        .I1(comp_carry__1_n_5),
        .O(_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__2_i_4
       (.I0(\counter_reg_n_0_[12] ),
        .I1(comp_carry__1_n_6),
        .O(_carry__2_i_4_n_0));
  CARRY4 _carry__3
       (.CI(_carry__2_n_0),
        .CO({_carry__3_n_0,_carry__3_n_1,_carry__3_n_2,_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({\counter_reg_n_0_[19] ,\counter_reg_n_0_[18] ,\counter_reg_n_0_[17] ,\counter_reg_n_0_[16] }),
        .O(NLW__carry__3_O_UNCONNECTED[3:0]),
        .S({_carry__3_i_1_n_0,_carry__3_i_2_n_0,_carry__3_i_3_n_0,_carry__3_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__3_i_1
       (.I0(\counter_reg_n_0_[19] ),
        .I1(comp_carry__3_n_7),
        .O(_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__3_i_2
       (.I0(\counter_reg_n_0_[18] ),
        .I1(comp_carry__2_n_4),
        .O(_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__3_i_3
       (.I0(\counter_reg_n_0_[17] ),
        .I1(comp_carry__2_n_5),
        .O(_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__3_i_4
       (.I0(\counter_reg_n_0_[16] ),
        .I1(comp_carry__2_n_6),
        .O(_carry__3_i_4_n_0));
  CARRY4 _carry__4
       (.CI(_carry__3_n_0),
        .CO({_carry__4_n_0,_carry__4_n_1,_carry__4_n_2,_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({\counter_reg_n_0_[23] ,\counter_reg_n_0_[22] ,\counter_reg_n_0_[21] ,\counter_reg_n_0_[20] }),
        .O(NLW__carry__4_O_UNCONNECTED[3:0]),
        .S({_carry__4_i_1_n_0,_carry__4_i_2_n_0,_carry__4_i_3_n_0,_carry__4_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__4_i_1
       (.I0(\counter_reg_n_0_[23] ),
        .I1(comp_carry__4_n_7),
        .O(_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__4_i_2
       (.I0(\counter_reg_n_0_[22] ),
        .I1(comp_carry__3_n_4),
        .O(_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__4_i_3
       (.I0(\counter_reg_n_0_[21] ),
        .I1(comp_carry__3_n_5),
        .O(_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__4_i_4
       (.I0(\counter_reg_n_0_[20] ),
        .I1(comp_carry__3_n_6),
        .O(_carry__4_i_4_n_0));
  CARRY4 _carry__5
       (.CI(_carry__4_n_0),
        .CO({_carry__5_n_0,_carry__5_n_1,_carry__5_n_2,_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({\counter_reg_n_0_[27] ,\counter_reg_n_0_[26] ,\counter_reg_n_0_[25] ,\counter_reg_n_0_[24] }),
        .O(NLW__carry__5_O_UNCONNECTED[3:0]),
        .S({_carry__5_i_1_n_0,_carry__5_i_2_n_0,_carry__5_i_3_n_0,_carry__5_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__5_i_1
       (.I0(\counter_reg_n_0_[27] ),
        .I1(comp_carry__5_n_7),
        .O(_carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__5_i_2
       (.I0(\counter_reg_n_0_[26] ),
        .I1(comp_carry__4_n_4),
        .O(_carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__5_i_3
       (.I0(\counter_reg_n_0_[25] ),
        .I1(comp_carry__4_n_5),
        .O(_carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__5_i_4
       (.I0(\counter_reg_n_0_[24] ),
        .I1(comp_carry__4_n_6),
        .O(_carry__5_i_4_n_0));
  CARRY4 _carry__6
       (.CI(_carry__5_n_0),
        .CO({_carry__6_n_0,_carry__6_n_1,_carry__6_n_2,_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({\counter_reg_n_0_[31] ,\counter_reg_n_0_[30] ,\counter_reg_n_0_[29] ,\counter_reg_n_0_[28] }),
        .O(NLW__carry__6_O_UNCONNECTED[3:0]),
        .S({_carry__6_i_1_n_0,_carry__6_i_2_n_0,_carry__6_i_3_n_0,_carry__6_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__6_i_1
       (.I0(\counter_reg_n_0_[31] ),
        .I1(comp_carry__6_n_7),
        .O(_carry__6_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__6_i_2
       (.I0(\counter_reg_n_0_[30] ),
        .I1(comp_carry__5_n_4),
        .O(_carry__6_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__6_i_3
       (.I0(\counter_reg_n_0_[29] ),
        .I1(comp_carry__5_n_5),
        .O(_carry__6_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__6_i_4
       (.I0(\counter_reg_n_0_[28] ),
        .I1(comp_carry__5_n_6),
        .O(_carry__6_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry_i_1
       (.I0(\counter_reg_n_0_[3] ),
        .I1(comp_carry_n_7),
        .O(_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry_i_2
       (.I0(\counter_reg_n_0_[2] ),
        .I1(Q[2]),
        .O(_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry_i_3
       (.I0(\counter_reg_n_0_[1] ),
        .I1(Q[1]),
        .O(_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry_i_4
       (.I0(\counter_reg_n_0_[0] ),
        .I1(Q[0]),
        .O(_carry_i_4_n_0));
  CARRY4 comp_carry
       (.CI(1'b0),
        .CO({comp_carry_n_0,comp_carry_n_1,comp_carry_n_2,comp_carry_n_3}),
        .CYINIT(1'b0),
        .DI({Q[6],1'b0,Q[4],1'b0}),
        .O({comp_carry_n_4,comp_carry_n_5,comp_carry_n_6,comp_carry_n_7}),
        .S({comp_carry_i_1_n_0,Q[5],comp_carry_i_2_n_0,Q[3]}));
  CARRY4 comp_carry__0
       (.CI(comp_carry_n_0),
        .CO({comp_carry__0_n_0,comp_carry__0_n_1,comp_carry__0_n_2,comp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,Q[9:8],1'b0}),
        .O({comp_carry__0_n_4,comp_carry__0_n_5,comp_carry__0_n_6,comp_carry__0_n_7}),
        .S({Q[10],comp_carry__0_i_1_n_0,comp_carry__0_i_2_n_0,Q[7]}));
  LUT1 #(
    .INIT(2'h1)) 
    comp_carry__0_i_1
       (.I0(Q[9]),
        .O(comp_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    comp_carry__0_i_2
       (.I0(Q[8]),
        .O(comp_carry__0_i_2_n_0));
  CARRY4 comp_carry__1
       (.CI(comp_carry__0_n_0),
        .CO({comp_carry__1_n_0,comp_carry__1_n_1,comp_carry__1_n_2,comp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({Q[14],1'b0,1'b0,1'b0}),
        .O({comp_carry__1_n_4,comp_carry__1_n_5,comp_carry__1_n_6,comp_carry__1_n_7}),
        .S({comp_carry__1_i_1_n_0,Q[13:11]}));
  LUT1 #(
    .INIT(2'h1)) 
    comp_carry__1_i_1
       (.I0(Q[14]),
        .O(comp_carry__1_i_1_n_0));
  CARRY4 comp_carry__2
       (.CI(comp_carry__1_n_0),
        .CO({comp_carry__2_n_0,comp_carry__2_n_1,comp_carry__2_n_2,comp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,Q[15]}),
        .O({comp_carry__2_n_4,comp_carry__2_n_5,comp_carry__2_n_6,comp_carry__2_n_7}),
        .S({Q[18:16],comp_carry__2_i_1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    comp_carry__2_i_1
       (.I0(Q[15]),
        .O(comp_carry__2_i_1_n_0));
  CARRY4 comp_carry__3
       (.CI(comp_carry__2_n_0),
        .CO({comp_carry__3_n_0,comp_carry__3_n_1,comp_carry__3_n_2,comp_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({comp_carry__3_n_4,comp_carry__3_n_5,comp_carry__3_n_6,comp_carry__3_n_7}),
        .S(Q[22:19]));
  CARRY4 comp_carry__4
       (.CI(comp_carry__3_n_0),
        .CO({comp_carry__4_n_0,comp_carry__4_n_1,comp_carry__4_n_2,comp_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({comp_carry__4_n_4,comp_carry__4_n_5,comp_carry__4_n_6,comp_carry__4_n_7}),
        .S(Q[26:23]));
  CARRY4 comp_carry__5
       (.CI(comp_carry__4_n_0),
        .CO({comp_carry__5_n_0,comp_carry__5_n_1,comp_carry__5_n_2,comp_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({comp_carry__5_n_4,comp_carry__5_n_5,comp_carry__5_n_6,comp_carry__5_n_7}),
        .S(Q[30:27]));
  CARRY4 comp_carry__6
       (.CI(comp_carry__5_n_0),
        .CO(NLW_comp_carry__6_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_comp_carry__6_O_UNCONNECTED[3:1],comp_carry__6_n_7}),
        .S({1'b0,1'b0,1'b0,Q[31]}));
  LUT1 #(
    .INIT(2'h1)) 
    comp_carry_i_1
       (.I0(Q[6]),
        .O(comp_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    comp_carry_i_2
       (.I0(Q[4]),
        .O(comp_carry_i_2_n_0));
  CARRY4 counter0_carry
       (.CI(1'b0),
        .CO({counter0_carry_n_0,counter0_carry_n_1,counter0_carry_n_2,counter0_carry_n_3}),
        .CYINIT(\counter_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({\counter_reg_n_0_[4] ,\counter_reg_n_0_[3] ,\counter_reg_n_0_[2] ,\counter_reg_n_0_[1] }));
  CARRY4 counter0_carry__0
       (.CI(counter0_carry_n_0),
        .CO({counter0_carry__0_n_0,counter0_carry__0_n_1,counter0_carry__0_n_2,counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({\counter_reg_n_0_[8] ,\counter_reg_n_0_[7] ,\counter_reg_n_0_[6] ,\counter_reg_n_0_[5] }));
  CARRY4 counter0_carry__1
       (.CI(counter0_carry__0_n_0),
        .CO({counter0_carry__1_n_0,counter0_carry__1_n_1,counter0_carry__1_n_2,counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S({\counter_reg_n_0_[12] ,\counter_reg_n_0_[11] ,\counter_reg_n_0_[10] ,\counter_reg_n_0_[9] }));
  CARRY4 counter0_carry__2
       (.CI(counter0_carry__1_n_0),
        .CO({counter0_carry__2_n_0,counter0_carry__2_n_1,counter0_carry__2_n_2,counter0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S({\counter_reg_n_0_[16] ,\counter_reg_n_0_[15] ,\counter_reg_n_0_[14] ,\counter_reg_n_0_[13] }));
  CARRY4 counter0_carry__3
       (.CI(counter0_carry__2_n_0),
        .CO({counter0_carry__3_n_0,counter0_carry__3_n_1,counter0_carry__3_n_2,counter0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S({\counter_reg_n_0_[20] ,\counter_reg_n_0_[19] ,\counter_reg_n_0_[18] ,\counter_reg_n_0_[17] }));
  CARRY4 counter0_carry__4
       (.CI(counter0_carry__3_n_0),
        .CO({counter0_carry__4_n_0,counter0_carry__4_n_1,counter0_carry__4_n_2,counter0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S({\counter_reg_n_0_[24] ,\counter_reg_n_0_[23] ,\counter_reg_n_0_[22] ,\counter_reg_n_0_[21] }));
  CARRY4 counter0_carry__5
       (.CI(counter0_carry__4_n_0),
        .CO({counter0_carry__5_n_0,counter0_carry__5_n_1,counter0_carry__5_n_2,counter0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[28:25]),
        .S({\counter_reg_n_0_[28] ,\counter_reg_n_0_[27] ,\counter_reg_n_0_[26] ,\counter_reg_n_0_[25] }));
  CARRY4 counter0_carry__6
       (.CI(counter0_carry__5_n_0),
        .CO({NLW_counter0_carry__6_CO_UNCONNECTED[3:2],counter0_carry__6_n_2,counter0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_counter0_carry__6_O_UNCONNECTED[3],data0[31:29]}),
        .S({1'b0,\counter_reg_n_0_[31] ,\counter_reg_n_0_[30] ,\counter_reg_n_0_[29] }));
  LUT5 #(
    .INIT(32'h55555455)) 
    \counter[0]_i_1 
       (.I0(\counter_reg_n_0_[0] ),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(\counter[31]_i_5_n_0 ),
        .O(counter[0]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \counter[10]_i_1 
       (.I0(data0[10]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(\counter[31]_i_5_n_0 ),
        .O(counter[10]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \counter[11]_i_1 
       (.I0(data0[11]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(\counter[31]_i_5_n_0 ),
        .O(counter[11]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \counter[12]_i_1 
       (.I0(data0[12]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(\counter[31]_i_5_n_0 ),
        .O(counter[12]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \counter[13]_i_1 
       (.I0(data0[13]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(\counter[31]_i_5_n_0 ),
        .O(counter[13]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \counter[14]_i_1 
       (.I0(data0[14]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(\counter[31]_i_5_n_0 ),
        .O(counter[14]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \counter[15]_i_1 
       (.I0(data0[15]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(\counter[31]_i_5_n_0 ),
        .O(counter[15]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \counter[16]_i_1 
       (.I0(data0[16]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(\counter[31]_i_5_n_0 ),
        .O(counter[16]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \counter[17]_i_1 
       (.I0(data0[17]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(\counter[31]_i_5_n_0 ),
        .O(counter[17]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \counter[18]_i_1 
       (.I0(data0[18]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(\counter[31]_i_5_n_0 ),
        .O(counter[18]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \counter[19]_i_1 
       (.I0(data0[19]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(\counter[31]_i_5_n_0 ),
        .O(counter[19]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \counter[1]_i_1 
       (.I0(data0[1]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(\counter[31]_i_5_n_0 ),
        .O(counter[1]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \counter[20]_i_1 
       (.I0(data0[20]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(\counter[31]_i_5_n_0 ),
        .O(counter[20]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \counter[21]_i_1 
       (.I0(data0[21]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(\counter[31]_i_5_n_0 ),
        .O(counter[21]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \counter[22]_i_1 
       (.I0(data0[22]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(\counter[31]_i_5_n_0 ),
        .O(counter[22]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \counter[23]_i_1 
       (.I0(data0[23]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(\counter[31]_i_5_n_0 ),
        .O(counter[23]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \counter[24]_i_1 
       (.I0(data0[24]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(\counter[31]_i_5_n_0 ),
        .O(counter[24]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \counter[25]_i_1 
       (.I0(data0[25]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(\counter[31]_i_5_n_0 ),
        .O(counter[25]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \counter[26]_i_1 
       (.I0(data0[26]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(\counter[31]_i_5_n_0 ),
        .O(counter[26]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \counter[27]_i_1 
       (.I0(data0[27]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(\counter[31]_i_5_n_0 ),
        .O(counter[27]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \counter[28]_i_1 
       (.I0(data0[28]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(\counter[31]_i_5_n_0 ),
        .O(counter[28]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \counter[29]_i_1 
       (.I0(data0[29]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(\counter[31]_i_5_n_0 ),
        .O(counter[29]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \counter[2]_i_1 
       (.I0(data0[2]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(\counter[31]_i_5_n_0 ),
        .O(counter[2]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \counter[30]_i_1 
       (.I0(data0[30]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(\counter[31]_i_5_n_0 ),
        .O(counter[30]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \counter[31]_i_1 
       (.I0(data0[31]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(\counter[31]_i_5_n_0 ),
        .O(counter[31]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \counter[31]_i_10 
       (.I0(\counter_reg_n_0_[13] ),
        .I1(\counter_reg_n_0_[12] ),
        .O(\counter[31]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \counter[31]_i_2 
       (.I0(\counter_reg_n_0_[25] ),
        .I1(\counter_reg_n_0_[26] ),
        .I2(\counter_reg_n_0_[27] ),
        .I3(\counter_reg_n_0_[16] ),
        .I4(\counter[31]_i_6_n_0 ),
        .O(\counter[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF7FF)) 
    \counter[31]_i_3 
       (.I0(\counter_reg_n_0_[18] ),
        .I1(\counter_reg_n_0_[17] ),
        .I2(\counter_reg_n_0_[30] ),
        .I3(\counter_reg_n_0_[19] ),
        .I4(\counter[31]_i_7_n_0 ),
        .O(\counter[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \counter[31]_i_4 
       (.I0(\counter[31]_i_8_n_0 ),
        .I1(\counter_reg_n_0_[31] ),
        .I2(\counter_reg_n_0_[6] ),
        .I3(\counter_reg_n_0_[4] ),
        .I4(\counter_reg_n_0_[5] ),
        .O(\counter[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \counter[31]_i_5 
       (.I0(\counter_reg_n_0_[29] ),
        .I1(\counter_reg_n_0_[11] ),
        .I2(\counter[31]_i_9_n_0 ),
        .I3(\counter_reg_n_0_[28] ),
        .I4(\counter_reg_n_0_[14] ),
        .I5(\counter[31]_i_10_n_0 ),
        .O(\counter[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[31]_i_6 
       (.I0(\counter_reg_n_0_[23] ),
        .I1(\counter_reg_n_0_[22] ),
        .I2(\counter_reg_n_0_[24] ),
        .I3(\counter_reg_n_0_[21] ),
        .O(\counter[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \counter[31]_i_7 
       (.I0(\counter_reg_n_0_[7] ),
        .I1(\counter_reg_n_0_[20] ),
        .I2(\counter_reg_n_0_[15] ),
        .I3(\counter_reg_n_0_[10] ),
        .O(\counter[31]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \counter[31]_i_8 
       (.I0(\counter_reg_n_0_[1] ),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[3] ),
        .O(\counter[31]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \counter[31]_i_9 
       (.I0(\counter_reg_n_0_[8] ),
        .I1(\counter_reg_n_0_[9] ),
        .O(\counter[31]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \counter[3]_i_1 
       (.I0(data0[3]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(\counter[31]_i_5_n_0 ),
        .O(counter[3]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \counter[4]_i_1 
       (.I0(data0[4]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(\counter[31]_i_5_n_0 ),
        .O(counter[4]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \counter[5]_i_1 
       (.I0(data0[5]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(\counter[31]_i_5_n_0 ),
        .O(counter[5]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \counter[6]_i_1 
       (.I0(data0[6]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(\counter[31]_i_5_n_0 ),
        .O(counter[6]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \counter[7]_i_1 
       (.I0(data0[7]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(\counter[31]_i_5_n_0 ),
        .O(counter[7]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \counter[8]_i_1 
       (.I0(data0[8]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(\counter[31]_i_5_n_0 ),
        .O(counter[8]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \counter[9]_i_1 
       (.I0(data0[9]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(\counter[31]_i_5_n_0 ),
        .O(counter[9]));
  FDCE \counter_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter[0]),
        .Q(\counter_reg_n_0_[0] ));
  FDCE \counter_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter[10]),
        .Q(\counter_reg_n_0_[10] ));
  FDCE \counter_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter[11]),
        .Q(\counter_reg_n_0_[11] ));
  FDCE \counter_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter[12]),
        .Q(\counter_reg_n_0_[12] ));
  FDCE \counter_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter[13]),
        .Q(\counter_reg_n_0_[13] ));
  FDCE \counter_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter[14]),
        .Q(\counter_reg_n_0_[14] ));
  FDCE \counter_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter[15]),
        .Q(\counter_reg_n_0_[15] ));
  FDCE \counter_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter[16]),
        .Q(\counter_reg_n_0_[16] ));
  FDCE \counter_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter[17]),
        .Q(\counter_reg_n_0_[17] ));
  FDCE \counter_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter[18]),
        .Q(\counter_reg_n_0_[18] ));
  FDCE \counter_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter[19]),
        .Q(\counter_reg_n_0_[19] ));
  FDCE \counter_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter[1]),
        .Q(\counter_reg_n_0_[1] ));
  FDCE \counter_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter[20]),
        .Q(\counter_reg_n_0_[20] ));
  FDCE \counter_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter[21]),
        .Q(\counter_reg_n_0_[21] ));
  FDCE \counter_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter[22]),
        .Q(\counter_reg_n_0_[22] ));
  FDCE \counter_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter[23]),
        .Q(\counter_reg_n_0_[23] ));
  FDCE \counter_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter[24]),
        .Q(\counter_reg_n_0_[24] ));
  FDCE \counter_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter[25]),
        .Q(\counter_reg_n_0_[25] ));
  FDCE \counter_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter[26]),
        .Q(\counter_reg_n_0_[26] ));
  FDCE \counter_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter[27]),
        .Q(\counter_reg_n_0_[27] ));
  FDCE \counter_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter[28]),
        .Q(\counter_reg_n_0_[28] ));
  FDCE \counter_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter[29]),
        .Q(\counter_reg_n_0_[29] ));
  FDCE \counter_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter[2]),
        .Q(\counter_reg_n_0_[2] ));
  FDCE \counter_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter[30]),
        .Q(\counter_reg_n_0_[30] ));
  FDCE \counter_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter[31]),
        .Q(\counter_reg_n_0_[31] ));
  FDCE \counter_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter[3]),
        .Q(\counter_reg_n_0_[3] ));
  FDCE \counter_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter[4]),
        .Q(\counter_reg_n_0_[4] ));
  FDCE \counter_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter[5]),
        .Q(\counter_reg_n_0_[5] ));
  FDCE \counter_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter[6]),
        .Q(\counter_reg_n_0_[6] ));
  FDCE \counter_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter[7]),
        .Q(\counter_reg_n_0_[7] ));
  FDCE \counter_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter[8]),
        .Q(\counter_reg_n_0_[8] ));
  FDCE \counter_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter[9]),
        .Q(\counter_reg_n_0_[9] ));
  LUT6 #(
    .INIT(64'h000010FF00001010)) 
    pwm_out_0_INST_0
       (.I0(\counter_reg_n_0_[16] ),
        .I1(\counter_reg_n_0_[17] ),
        .I2(pwm_out_0_INST_0_i_1_n_0),
        .I3(_carry__6_n_0),
        .I4(pwm_out_0_INST_0_i_2_n_0),
        .I5(pwm_out_0_INST_0_i_3_n_0),
        .O(pwm_out_0));
  LUT6 #(
    .INIT(64'h7F7F7F7F777F7777)) 
    pwm_out_0_INST_0_i_1
       (.I0(\counter_reg_n_0_[14] ),
        .I1(\counter_reg_n_0_[15] ),
        .I2(pwm_out_0_INST_0_i_4_n_0),
        .I3(pwm_out_0_INST_0_i_5_n_0),
        .I4(pwm_out_0_INST_0_i_6_n_0),
        .I5(pwm_out_0_INST_0_i_7_n_0),
        .O(pwm_out_0_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    pwm_out_0_INST_0_i_10
       (.I0(\counter_reg_n_0_[10] ),
        .I1(\counter_reg_n_0_[11] ),
        .I2(\counter_reg_n_0_[8] ),
        .I3(\counter_reg_n_0_[9] ),
        .I4(\counter_reg_n_0_[13] ),
        .O(pwm_out_0_INST_0_i_10_n_0));
  LUT6 #(
    .INIT(64'h7FFF7FFF7FFFFFFF)) 
    pwm_out_0_INST_0_i_11
       (.I0(\counter_reg_n_0_[14] ),
        .I1(\counter_reg_n_0_[15] ),
        .I2(\counter_reg_n_0_[17] ),
        .I3(\counter_reg_n_0_[16] ),
        .I4(\counter_reg_n_0_[13] ),
        .I5(\counter_reg_n_0_[12] ),
        .O(pwm_out_0_INST_0_i_11_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    pwm_out_0_INST_0_i_2
       (.I0(pwm_out_0_INST_0_i_8_n_0),
        .I1(\counter_reg_n_0_[23] ),
        .I2(\counter_reg_n_0_[22] ),
        .I3(\counter_reg_n_0_[29] ),
        .I4(\counter_reg_n_0_[28] ),
        .I5(pwm_out_0_INST_0_i_9_n_0),
        .O(pwm_out_0_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00015555)) 
    pwm_out_0_INST_0_i_3
       (.I0(pwm_out_0_INST_0_i_10_n_0),
        .I1(\counter_reg_n_0_[4] ),
        .I2(\counter_reg_n_0_[5] ),
        .I3(\counter_reg_n_0_[6] ),
        .I4(\counter_reg_n_0_[7] ),
        .I5(pwm_out_0_INST_0_i_11_n_0),
        .O(pwm_out_0_INST_0_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    pwm_out_0_INST_0_i_4
       (.I0(\counter_reg_n_0_[12] ),
        .I1(\counter_reg_n_0_[13] ),
        .I2(\counter_reg_n_0_[10] ),
        .I3(\counter_reg_n_0_[11] ),
        .O(pwm_out_0_INST_0_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    pwm_out_0_INST_0_i_5
       (.I0(\counter_reg_n_0_[4] ),
        .I1(\counter_reg_n_0_[3] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(\counter_reg_n_0_[1] ),
        .O(pwm_out_0_INST_0_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h15)) 
    pwm_out_0_INST_0_i_6
       (.I0(\counter_reg_n_0_[7] ),
        .I1(\counter_reg_n_0_[5] ),
        .I2(\counter_reg_n_0_[6] ),
        .O(pwm_out_0_INST_0_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h1FFF)) 
    pwm_out_0_INST_0_i_7
       (.I0(\counter_reg_n_0_[7] ),
        .I1(\counter_reg_n_0_[6] ),
        .I2(\counter_reg_n_0_[9] ),
        .I3(\counter_reg_n_0_[8] ),
        .O(pwm_out_0_INST_0_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    pwm_out_0_INST_0_i_8
       (.I0(\counter_reg_n_0_[27] ),
        .I1(\counter_reg_n_0_[26] ),
        .I2(\counter_reg_n_0_[30] ),
        .I3(\counter_reg_n_0_[21] ),
        .O(pwm_out_0_INST_0_i_8_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    pwm_out_0_INST_0_i_9
       (.I0(\counter_reg_n_0_[25] ),
        .I1(\counter_reg_n_0_[24] ),
        .I2(\counter_reg_n_0_[20] ),
        .I3(\counter_reg_n_0_[31] ),
        .I4(\counter_reg_n_0_[18] ),
        .I5(\counter_reg_n_0_[19] ),
        .O(pwm_out_0_INST_0_i_9_n_0));
endmodule

(* ORIG_REF_NAME = "axi_pwm" *) 
module design_1_servo_0_0_axi_pwm_0
   (pwm_out_1,
    SR,
    Q,
    s_axi_aresetn,
    s_axi_aclk);
  output pwm_out_1;
  output [0:0]SR;
  input [31:0]Q;
  input s_axi_aresetn;
  input s_axi_aclk;

  wire [31:0]Q;
  wire [0:0]SR;
  wire _carry__0_i_1__0_n_0;
  wire _carry__0_i_2__0_n_0;
  wire _carry__0_i_3__0_n_0;
  wire _carry__0_i_4__0_n_0;
  wire _carry__0_n_0;
  wire _carry__0_n_1;
  wire _carry__0_n_2;
  wire _carry__0_n_3;
  wire _carry__1_i_1__0_n_0;
  wire _carry__1_i_2__0_n_0;
  wire _carry__1_i_3__0_n_0;
  wire _carry__1_i_4__0_n_0;
  wire _carry__1_n_0;
  wire _carry__1_n_1;
  wire _carry__1_n_2;
  wire _carry__1_n_3;
  wire _carry__2_i_1__0_n_0;
  wire _carry__2_i_2__0_n_0;
  wire _carry__2_i_3__0_n_0;
  wire _carry__2_i_4__0_n_0;
  wire _carry__2_n_0;
  wire _carry__2_n_1;
  wire _carry__2_n_2;
  wire _carry__2_n_3;
  wire _carry__3_i_1__0_n_0;
  wire _carry__3_i_2__0_n_0;
  wire _carry__3_i_3__0_n_0;
  wire _carry__3_i_4__0_n_0;
  wire _carry__3_n_0;
  wire _carry__3_n_1;
  wire _carry__3_n_2;
  wire _carry__3_n_3;
  wire _carry__4_i_1__0_n_0;
  wire _carry__4_i_2__0_n_0;
  wire _carry__4_i_3__0_n_0;
  wire _carry__4_i_4__0_n_0;
  wire _carry__4_n_0;
  wire _carry__4_n_1;
  wire _carry__4_n_2;
  wire _carry__4_n_3;
  wire _carry__5_i_1__0_n_0;
  wire _carry__5_i_2__0_n_0;
  wire _carry__5_i_3__0_n_0;
  wire _carry__5_i_4__0_n_0;
  wire _carry__5_n_0;
  wire _carry__5_n_1;
  wire _carry__5_n_2;
  wire _carry__5_n_3;
  wire _carry__6_i_1__0_n_0;
  wire _carry__6_i_2__0_n_0;
  wire _carry__6_i_3__0_n_0;
  wire _carry__6_i_4__0_n_0;
  wire _carry__6_n_0;
  wire _carry__6_n_1;
  wire _carry__6_n_2;
  wire _carry__6_n_3;
  wire _carry_i_1__0_n_0;
  wire _carry_i_2__0_n_0;
  wire _carry_i_3__0_n_0;
  wire _carry_i_4__0_n_0;
  wire _carry_n_0;
  wire _carry_n_1;
  wire _carry_n_2;
  wire _carry_n_3;
  wire comp_carry__0_i_1__0_n_0;
  wire comp_carry__0_i_2__0_n_0;
  wire comp_carry__0_n_0;
  wire comp_carry__0_n_1;
  wire comp_carry__0_n_2;
  wire comp_carry__0_n_3;
  wire comp_carry__0_n_4;
  wire comp_carry__0_n_5;
  wire comp_carry__0_n_6;
  wire comp_carry__0_n_7;
  wire comp_carry__1_i_1__0_n_0;
  wire comp_carry__1_n_0;
  wire comp_carry__1_n_1;
  wire comp_carry__1_n_2;
  wire comp_carry__1_n_3;
  wire comp_carry__1_n_4;
  wire comp_carry__1_n_5;
  wire comp_carry__1_n_6;
  wire comp_carry__1_n_7;
  wire comp_carry__2_i_1__0_n_0;
  wire comp_carry__2_n_0;
  wire comp_carry__2_n_1;
  wire comp_carry__2_n_2;
  wire comp_carry__2_n_3;
  wire comp_carry__2_n_4;
  wire comp_carry__2_n_5;
  wire comp_carry__2_n_6;
  wire comp_carry__2_n_7;
  wire comp_carry__3_n_0;
  wire comp_carry__3_n_1;
  wire comp_carry__3_n_2;
  wire comp_carry__3_n_3;
  wire comp_carry__3_n_4;
  wire comp_carry__3_n_5;
  wire comp_carry__3_n_6;
  wire comp_carry__3_n_7;
  wire comp_carry__4_n_0;
  wire comp_carry__4_n_1;
  wire comp_carry__4_n_2;
  wire comp_carry__4_n_3;
  wire comp_carry__4_n_4;
  wire comp_carry__4_n_5;
  wire comp_carry__4_n_6;
  wire comp_carry__4_n_7;
  wire comp_carry__5_n_0;
  wire comp_carry__5_n_1;
  wire comp_carry__5_n_2;
  wire comp_carry__5_n_3;
  wire comp_carry__5_n_4;
  wire comp_carry__5_n_5;
  wire comp_carry__5_n_6;
  wire comp_carry__5_n_7;
  wire comp_carry__6_n_7;
  wire comp_carry_i_1__0_n_0;
  wire comp_carry_i_2__0_n_0;
  wire comp_carry_n_0;
  wire comp_carry_n_1;
  wire comp_carry_n_2;
  wire comp_carry_n_3;
  wire comp_carry_n_4;
  wire comp_carry_n_5;
  wire comp_carry_n_6;
  wire comp_carry_n_7;
  wire [31:0]counter;
  wire counter0_carry__0_n_0;
  wire counter0_carry__0_n_1;
  wire counter0_carry__0_n_2;
  wire counter0_carry__0_n_3;
  wire counter0_carry__0_n_4;
  wire counter0_carry__0_n_5;
  wire counter0_carry__0_n_6;
  wire counter0_carry__0_n_7;
  wire counter0_carry__1_n_0;
  wire counter0_carry__1_n_1;
  wire counter0_carry__1_n_2;
  wire counter0_carry__1_n_3;
  wire counter0_carry__1_n_4;
  wire counter0_carry__1_n_5;
  wire counter0_carry__1_n_6;
  wire counter0_carry__1_n_7;
  wire counter0_carry__2_n_0;
  wire counter0_carry__2_n_1;
  wire counter0_carry__2_n_2;
  wire counter0_carry__2_n_3;
  wire counter0_carry__2_n_4;
  wire counter0_carry__2_n_5;
  wire counter0_carry__2_n_6;
  wire counter0_carry__2_n_7;
  wire counter0_carry__3_n_0;
  wire counter0_carry__3_n_1;
  wire counter0_carry__3_n_2;
  wire counter0_carry__3_n_3;
  wire counter0_carry__3_n_4;
  wire counter0_carry__3_n_5;
  wire counter0_carry__3_n_6;
  wire counter0_carry__3_n_7;
  wire counter0_carry__4_n_0;
  wire counter0_carry__4_n_1;
  wire counter0_carry__4_n_2;
  wire counter0_carry__4_n_3;
  wire counter0_carry__4_n_4;
  wire counter0_carry__4_n_5;
  wire counter0_carry__4_n_6;
  wire counter0_carry__4_n_7;
  wire counter0_carry__5_n_0;
  wire counter0_carry__5_n_1;
  wire counter0_carry__5_n_2;
  wire counter0_carry__5_n_3;
  wire counter0_carry__5_n_4;
  wire counter0_carry__5_n_5;
  wire counter0_carry__5_n_6;
  wire counter0_carry__5_n_7;
  wire counter0_carry__6_n_2;
  wire counter0_carry__6_n_3;
  wire counter0_carry__6_n_5;
  wire counter0_carry__6_n_6;
  wire counter0_carry__6_n_7;
  wire counter0_carry_n_0;
  wire counter0_carry_n_1;
  wire counter0_carry_n_2;
  wire counter0_carry_n_3;
  wire counter0_carry_n_4;
  wire counter0_carry_n_5;
  wire counter0_carry_n_6;
  wire counter0_carry_n_7;
  wire \counter[31]_i_10__0_n_0 ;
  wire \counter[31]_i_2__0_n_0 ;
  wire \counter[31]_i_3__0_n_0 ;
  wire \counter[31]_i_4__0_n_0 ;
  wire \counter[31]_i_5__0_n_0 ;
  wire \counter[31]_i_6__0_n_0 ;
  wire \counter[31]_i_7__0_n_0 ;
  wire \counter[31]_i_8__0_n_0 ;
  wire \counter[31]_i_9__0_n_0 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[10] ;
  wire \counter_reg_n_0_[11] ;
  wire \counter_reg_n_0_[12] ;
  wire \counter_reg_n_0_[13] ;
  wire \counter_reg_n_0_[14] ;
  wire \counter_reg_n_0_[15] ;
  wire \counter_reg_n_0_[16] ;
  wire \counter_reg_n_0_[17] ;
  wire \counter_reg_n_0_[18] ;
  wire \counter_reg_n_0_[19] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[20] ;
  wire \counter_reg_n_0_[21] ;
  wire \counter_reg_n_0_[22] ;
  wire \counter_reg_n_0_[23] ;
  wire \counter_reg_n_0_[24] ;
  wire \counter_reg_n_0_[25] ;
  wire \counter_reg_n_0_[26] ;
  wire \counter_reg_n_0_[27] ;
  wire \counter_reg_n_0_[28] ;
  wire \counter_reg_n_0_[29] ;
  wire \counter_reg_n_0_[2] ;
  wire \counter_reg_n_0_[30] ;
  wire \counter_reg_n_0_[31] ;
  wire \counter_reg_n_0_[3] ;
  wire \counter_reg_n_0_[4] ;
  wire \counter_reg_n_0_[5] ;
  wire \counter_reg_n_0_[6] ;
  wire \counter_reg_n_0_[7] ;
  wire \counter_reg_n_0_[8] ;
  wire \counter_reg_n_0_[9] ;
  wire pwm_out_1;
  wire pwm_out_1_INST_0_i_10_n_0;
  wire pwm_out_1_INST_0_i_11_n_0;
  wire pwm_out_1_INST_0_i_1_n_0;
  wire pwm_out_1_INST_0_i_2_n_0;
  wire pwm_out_1_INST_0_i_3_n_0;
  wire pwm_out_1_INST_0_i_4_n_0;
  wire pwm_out_1_INST_0_i_5_n_0;
  wire pwm_out_1_INST_0_i_6_n_0;
  wire pwm_out_1_INST_0_i_7_n_0;
  wire pwm_out_1_INST_0_i_8_n_0;
  wire pwm_out_1_INST_0_i_9_n_0;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [3:0]NLW__carry_O_UNCONNECTED;
  wire [3:0]NLW__carry__0_O_UNCONNECTED;
  wire [3:0]NLW__carry__1_O_UNCONNECTED;
  wire [3:0]NLW__carry__2_O_UNCONNECTED;
  wire [3:0]NLW__carry__3_O_UNCONNECTED;
  wire [3:0]NLW__carry__4_O_UNCONNECTED;
  wire [3:0]NLW__carry__5_O_UNCONNECTED;
  wire [3:0]NLW__carry__6_O_UNCONNECTED;
  wire [3:0]NLW_comp_carry__6_CO_UNCONNECTED;
  wire [3:1]NLW_comp_carry__6_O_UNCONNECTED;
  wire [3:2]NLW_counter0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_counter0_carry__6_O_UNCONNECTED;

  CARRY4 _carry
       (.CI(1'b0),
        .CO({_carry_n_0,_carry_n_1,_carry_n_2,_carry_n_3}),
        .CYINIT(1'b1),
        .DI({\counter_reg_n_0_[3] ,\counter_reg_n_0_[2] ,\counter_reg_n_0_[1] ,\counter_reg_n_0_[0] }),
        .O(NLW__carry_O_UNCONNECTED[3:0]),
        .S({_carry_i_1__0_n_0,_carry_i_2__0_n_0,_carry_i_3__0_n_0,_carry_i_4__0_n_0}));
  CARRY4 _carry__0
       (.CI(_carry_n_0),
        .CO({_carry__0_n_0,_carry__0_n_1,_carry__0_n_2,_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({\counter_reg_n_0_[7] ,\counter_reg_n_0_[6] ,\counter_reg_n_0_[5] ,\counter_reg_n_0_[4] }),
        .O(NLW__carry__0_O_UNCONNECTED[3:0]),
        .S({_carry__0_i_1__0_n_0,_carry__0_i_2__0_n_0,_carry__0_i_3__0_n_0,_carry__0_i_4__0_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__0_i_1__0
       (.I0(\counter_reg_n_0_[7] ),
        .I1(comp_carry__0_n_7),
        .O(_carry__0_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__0_i_2__0
       (.I0(\counter_reg_n_0_[6] ),
        .I1(comp_carry_n_4),
        .O(_carry__0_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__0_i_3__0
       (.I0(\counter_reg_n_0_[5] ),
        .I1(comp_carry_n_5),
        .O(_carry__0_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__0_i_4__0
       (.I0(\counter_reg_n_0_[4] ),
        .I1(comp_carry_n_6),
        .O(_carry__0_i_4__0_n_0));
  CARRY4 _carry__1
       (.CI(_carry__0_n_0),
        .CO({_carry__1_n_0,_carry__1_n_1,_carry__1_n_2,_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({\counter_reg_n_0_[11] ,\counter_reg_n_0_[10] ,\counter_reg_n_0_[9] ,\counter_reg_n_0_[8] }),
        .O(NLW__carry__1_O_UNCONNECTED[3:0]),
        .S({_carry__1_i_1__0_n_0,_carry__1_i_2__0_n_0,_carry__1_i_3__0_n_0,_carry__1_i_4__0_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__1_i_1__0
       (.I0(\counter_reg_n_0_[11] ),
        .I1(comp_carry__1_n_7),
        .O(_carry__1_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__1_i_2__0
       (.I0(\counter_reg_n_0_[10] ),
        .I1(comp_carry__0_n_4),
        .O(_carry__1_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__1_i_3__0
       (.I0(\counter_reg_n_0_[9] ),
        .I1(comp_carry__0_n_5),
        .O(_carry__1_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__1_i_4__0
       (.I0(\counter_reg_n_0_[8] ),
        .I1(comp_carry__0_n_6),
        .O(_carry__1_i_4__0_n_0));
  CARRY4 _carry__2
       (.CI(_carry__1_n_0),
        .CO({_carry__2_n_0,_carry__2_n_1,_carry__2_n_2,_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({\counter_reg_n_0_[15] ,\counter_reg_n_0_[14] ,\counter_reg_n_0_[13] ,\counter_reg_n_0_[12] }),
        .O(NLW__carry__2_O_UNCONNECTED[3:0]),
        .S({_carry__2_i_1__0_n_0,_carry__2_i_2__0_n_0,_carry__2_i_3__0_n_0,_carry__2_i_4__0_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__2_i_1__0
       (.I0(\counter_reg_n_0_[15] ),
        .I1(comp_carry__2_n_7),
        .O(_carry__2_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__2_i_2__0
       (.I0(\counter_reg_n_0_[14] ),
        .I1(comp_carry__1_n_4),
        .O(_carry__2_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__2_i_3__0
       (.I0(\counter_reg_n_0_[13] ),
        .I1(comp_carry__1_n_5),
        .O(_carry__2_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__2_i_4__0
       (.I0(\counter_reg_n_0_[12] ),
        .I1(comp_carry__1_n_6),
        .O(_carry__2_i_4__0_n_0));
  CARRY4 _carry__3
       (.CI(_carry__2_n_0),
        .CO({_carry__3_n_0,_carry__3_n_1,_carry__3_n_2,_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({\counter_reg_n_0_[19] ,\counter_reg_n_0_[18] ,\counter_reg_n_0_[17] ,\counter_reg_n_0_[16] }),
        .O(NLW__carry__3_O_UNCONNECTED[3:0]),
        .S({_carry__3_i_1__0_n_0,_carry__3_i_2__0_n_0,_carry__3_i_3__0_n_0,_carry__3_i_4__0_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__3_i_1__0
       (.I0(\counter_reg_n_0_[19] ),
        .I1(comp_carry__3_n_7),
        .O(_carry__3_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__3_i_2__0
       (.I0(\counter_reg_n_0_[18] ),
        .I1(comp_carry__2_n_4),
        .O(_carry__3_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__3_i_3__0
       (.I0(\counter_reg_n_0_[17] ),
        .I1(comp_carry__2_n_5),
        .O(_carry__3_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__3_i_4__0
       (.I0(\counter_reg_n_0_[16] ),
        .I1(comp_carry__2_n_6),
        .O(_carry__3_i_4__0_n_0));
  CARRY4 _carry__4
       (.CI(_carry__3_n_0),
        .CO({_carry__4_n_0,_carry__4_n_1,_carry__4_n_2,_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({\counter_reg_n_0_[23] ,\counter_reg_n_0_[22] ,\counter_reg_n_0_[21] ,\counter_reg_n_0_[20] }),
        .O(NLW__carry__4_O_UNCONNECTED[3:0]),
        .S({_carry__4_i_1__0_n_0,_carry__4_i_2__0_n_0,_carry__4_i_3__0_n_0,_carry__4_i_4__0_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__4_i_1__0
       (.I0(\counter_reg_n_0_[23] ),
        .I1(comp_carry__4_n_7),
        .O(_carry__4_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__4_i_2__0
       (.I0(\counter_reg_n_0_[22] ),
        .I1(comp_carry__3_n_4),
        .O(_carry__4_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__4_i_3__0
       (.I0(\counter_reg_n_0_[21] ),
        .I1(comp_carry__3_n_5),
        .O(_carry__4_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__4_i_4__0
       (.I0(\counter_reg_n_0_[20] ),
        .I1(comp_carry__3_n_6),
        .O(_carry__4_i_4__0_n_0));
  CARRY4 _carry__5
       (.CI(_carry__4_n_0),
        .CO({_carry__5_n_0,_carry__5_n_1,_carry__5_n_2,_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({\counter_reg_n_0_[27] ,\counter_reg_n_0_[26] ,\counter_reg_n_0_[25] ,\counter_reg_n_0_[24] }),
        .O(NLW__carry__5_O_UNCONNECTED[3:0]),
        .S({_carry__5_i_1__0_n_0,_carry__5_i_2__0_n_0,_carry__5_i_3__0_n_0,_carry__5_i_4__0_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__5_i_1__0
       (.I0(\counter_reg_n_0_[27] ),
        .I1(comp_carry__5_n_7),
        .O(_carry__5_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__5_i_2__0
       (.I0(\counter_reg_n_0_[26] ),
        .I1(comp_carry__4_n_4),
        .O(_carry__5_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__5_i_3__0
       (.I0(\counter_reg_n_0_[25] ),
        .I1(comp_carry__4_n_5),
        .O(_carry__5_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__5_i_4__0
       (.I0(\counter_reg_n_0_[24] ),
        .I1(comp_carry__4_n_6),
        .O(_carry__5_i_4__0_n_0));
  CARRY4 _carry__6
       (.CI(_carry__5_n_0),
        .CO({_carry__6_n_0,_carry__6_n_1,_carry__6_n_2,_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({\counter_reg_n_0_[31] ,\counter_reg_n_0_[30] ,\counter_reg_n_0_[29] ,\counter_reg_n_0_[28] }),
        .O(NLW__carry__6_O_UNCONNECTED[3:0]),
        .S({_carry__6_i_1__0_n_0,_carry__6_i_2__0_n_0,_carry__6_i_3__0_n_0,_carry__6_i_4__0_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__6_i_1__0
       (.I0(\counter_reg_n_0_[31] ),
        .I1(comp_carry__6_n_7),
        .O(_carry__6_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__6_i_2__0
       (.I0(\counter_reg_n_0_[30] ),
        .I1(comp_carry__5_n_4),
        .O(_carry__6_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__6_i_3__0
       (.I0(\counter_reg_n_0_[29] ),
        .I1(comp_carry__5_n_5),
        .O(_carry__6_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__6_i_4__0
       (.I0(\counter_reg_n_0_[28] ),
        .I1(comp_carry__5_n_6),
        .O(_carry__6_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry_i_1__0
       (.I0(\counter_reg_n_0_[3] ),
        .I1(comp_carry_n_7),
        .O(_carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry_i_2__0
       (.I0(\counter_reg_n_0_[2] ),
        .I1(Q[2]),
        .O(_carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry_i_3__0
       (.I0(\counter_reg_n_0_[1] ),
        .I1(Q[1]),
        .O(_carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry_i_4__0
       (.I0(\counter_reg_n_0_[0] ),
        .I1(Q[0]),
        .O(_carry_i_4__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s_axi_aresetn),
        .O(SR));
  CARRY4 comp_carry
       (.CI(1'b0),
        .CO({comp_carry_n_0,comp_carry_n_1,comp_carry_n_2,comp_carry_n_3}),
        .CYINIT(1'b0),
        .DI({Q[6],1'b0,Q[4],1'b0}),
        .O({comp_carry_n_4,comp_carry_n_5,comp_carry_n_6,comp_carry_n_7}),
        .S({comp_carry_i_1__0_n_0,Q[5],comp_carry_i_2__0_n_0,Q[3]}));
  CARRY4 comp_carry__0
       (.CI(comp_carry_n_0),
        .CO({comp_carry__0_n_0,comp_carry__0_n_1,comp_carry__0_n_2,comp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,Q[9:8],1'b0}),
        .O({comp_carry__0_n_4,comp_carry__0_n_5,comp_carry__0_n_6,comp_carry__0_n_7}),
        .S({Q[10],comp_carry__0_i_1__0_n_0,comp_carry__0_i_2__0_n_0,Q[7]}));
  LUT1 #(
    .INIT(2'h1)) 
    comp_carry__0_i_1__0
       (.I0(Q[9]),
        .O(comp_carry__0_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    comp_carry__0_i_2__0
       (.I0(Q[8]),
        .O(comp_carry__0_i_2__0_n_0));
  CARRY4 comp_carry__1
       (.CI(comp_carry__0_n_0),
        .CO({comp_carry__1_n_0,comp_carry__1_n_1,comp_carry__1_n_2,comp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({Q[14],1'b0,1'b0,1'b0}),
        .O({comp_carry__1_n_4,comp_carry__1_n_5,comp_carry__1_n_6,comp_carry__1_n_7}),
        .S({comp_carry__1_i_1__0_n_0,Q[13:11]}));
  LUT1 #(
    .INIT(2'h1)) 
    comp_carry__1_i_1__0
       (.I0(Q[14]),
        .O(comp_carry__1_i_1__0_n_0));
  CARRY4 comp_carry__2
       (.CI(comp_carry__1_n_0),
        .CO({comp_carry__2_n_0,comp_carry__2_n_1,comp_carry__2_n_2,comp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,Q[15]}),
        .O({comp_carry__2_n_4,comp_carry__2_n_5,comp_carry__2_n_6,comp_carry__2_n_7}),
        .S({Q[18:16],comp_carry__2_i_1__0_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    comp_carry__2_i_1__0
       (.I0(Q[15]),
        .O(comp_carry__2_i_1__0_n_0));
  CARRY4 comp_carry__3
       (.CI(comp_carry__2_n_0),
        .CO({comp_carry__3_n_0,comp_carry__3_n_1,comp_carry__3_n_2,comp_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({comp_carry__3_n_4,comp_carry__3_n_5,comp_carry__3_n_6,comp_carry__3_n_7}),
        .S(Q[22:19]));
  CARRY4 comp_carry__4
       (.CI(comp_carry__3_n_0),
        .CO({comp_carry__4_n_0,comp_carry__4_n_1,comp_carry__4_n_2,comp_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({comp_carry__4_n_4,comp_carry__4_n_5,comp_carry__4_n_6,comp_carry__4_n_7}),
        .S(Q[26:23]));
  CARRY4 comp_carry__5
       (.CI(comp_carry__4_n_0),
        .CO({comp_carry__5_n_0,comp_carry__5_n_1,comp_carry__5_n_2,comp_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({comp_carry__5_n_4,comp_carry__5_n_5,comp_carry__5_n_6,comp_carry__5_n_7}),
        .S(Q[30:27]));
  CARRY4 comp_carry__6
       (.CI(comp_carry__5_n_0),
        .CO(NLW_comp_carry__6_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_comp_carry__6_O_UNCONNECTED[3:1],comp_carry__6_n_7}),
        .S({1'b0,1'b0,1'b0,Q[31]}));
  LUT1 #(
    .INIT(2'h1)) 
    comp_carry_i_1__0
       (.I0(Q[6]),
        .O(comp_carry_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    comp_carry_i_2__0
       (.I0(Q[4]),
        .O(comp_carry_i_2__0_n_0));
  CARRY4 counter0_carry
       (.CI(1'b0),
        .CO({counter0_carry_n_0,counter0_carry_n_1,counter0_carry_n_2,counter0_carry_n_3}),
        .CYINIT(\counter_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter0_carry_n_4,counter0_carry_n_5,counter0_carry_n_6,counter0_carry_n_7}),
        .S({\counter_reg_n_0_[4] ,\counter_reg_n_0_[3] ,\counter_reg_n_0_[2] ,\counter_reg_n_0_[1] }));
  CARRY4 counter0_carry__0
       (.CI(counter0_carry_n_0),
        .CO({counter0_carry__0_n_0,counter0_carry__0_n_1,counter0_carry__0_n_2,counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter0_carry__0_n_4,counter0_carry__0_n_5,counter0_carry__0_n_6,counter0_carry__0_n_7}),
        .S({\counter_reg_n_0_[8] ,\counter_reg_n_0_[7] ,\counter_reg_n_0_[6] ,\counter_reg_n_0_[5] }));
  CARRY4 counter0_carry__1
       (.CI(counter0_carry__0_n_0),
        .CO({counter0_carry__1_n_0,counter0_carry__1_n_1,counter0_carry__1_n_2,counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter0_carry__1_n_4,counter0_carry__1_n_5,counter0_carry__1_n_6,counter0_carry__1_n_7}),
        .S({\counter_reg_n_0_[12] ,\counter_reg_n_0_[11] ,\counter_reg_n_0_[10] ,\counter_reg_n_0_[9] }));
  CARRY4 counter0_carry__2
       (.CI(counter0_carry__1_n_0),
        .CO({counter0_carry__2_n_0,counter0_carry__2_n_1,counter0_carry__2_n_2,counter0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter0_carry__2_n_4,counter0_carry__2_n_5,counter0_carry__2_n_6,counter0_carry__2_n_7}),
        .S({\counter_reg_n_0_[16] ,\counter_reg_n_0_[15] ,\counter_reg_n_0_[14] ,\counter_reg_n_0_[13] }));
  CARRY4 counter0_carry__3
       (.CI(counter0_carry__2_n_0),
        .CO({counter0_carry__3_n_0,counter0_carry__3_n_1,counter0_carry__3_n_2,counter0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter0_carry__3_n_4,counter0_carry__3_n_5,counter0_carry__3_n_6,counter0_carry__3_n_7}),
        .S({\counter_reg_n_0_[20] ,\counter_reg_n_0_[19] ,\counter_reg_n_0_[18] ,\counter_reg_n_0_[17] }));
  CARRY4 counter0_carry__4
       (.CI(counter0_carry__3_n_0),
        .CO({counter0_carry__4_n_0,counter0_carry__4_n_1,counter0_carry__4_n_2,counter0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter0_carry__4_n_4,counter0_carry__4_n_5,counter0_carry__4_n_6,counter0_carry__4_n_7}),
        .S({\counter_reg_n_0_[24] ,\counter_reg_n_0_[23] ,\counter_reg_n_0_[22] ,\counter_reg_n_0_[21] }));
  CARRY4 counter0_carry__5
       (.CI(counter0_carry__4_n_0),
        .CO({counter0_carry__5_n_0,counter0_carry__5_n_1,counter0_carry__5_n_2,counter0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter0_carry__5_n_4,counter0_carry__5_n_5,counter0_carry__5_n_6,counter0_carry__5_n_7}),
        .S({\counter_reg_n_0_[28] ,\counter_reg_n_0_[27] ,\counter_reg_n_0_[26] ,\counter_reg_n_0_[25] }));
  CARRY4 counter0_carry__6
       (.CI(counter0_carry__5_n_0),
        .CO({NLW_counter0_carry__6_CO_UNCONNECTED[3:2],counter0_carry__6_n_2,counter0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_counter0_carry__6_O_UNCONNECTED[3],counter0_carry__6_n_5,counter0_carry__6_n_6,counter0_carry__6_n_7}),
        .S({1'b0,\counter_reg_n_0_[31] ,\counter_reg_n_0_[30] ,\counter_reg_n_0_[29] }));
  LUT5 #(
    .INIT(32'h55555455)) 
    \counter[0]_i_1__0 
       (.I0(\counter_reg_n_0_[0] ),
        .I1(\counter[31]_i_2__0_n_0 ),
        .I2(\counter[31]_i_3__0_n_0 ),
        .I3(\counter[31]_i_4__0_n_0 ),
        .I4(\counter[31]_i_5__0_n_0 ),
        .O(counter[0]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \counter[10]_i_1__0 
       (.I0(counter0_carry__1_n_6),
        .I1(\counter[31]_i_2__0_n_0 ),
        .I2(\counter[31]_i_3__0_n_0 ),
        .I3(\counter[31]_i_4__0_n_0 ),
        .I4(\counter[31]_i_5__0_n_0 ),
        .O(counter[10]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \counter[11]_i_1__0 
       (.I0(counter0_carry__1_n_5),
        .I1(\counter[31]_i_2__0_n_0 ),
        .I2(\counter[31]_i_3__0_n_0 ),
        .I3(\counter[31]_i_4__0_n_0 ),
        .I4(\counter[31]_i_5__0_n_0 ),
        .O(counter[11]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \counter[12]_i_1__0 
       (.I0(counter0_carry__1_n_4),
        .I1(\counter[31]_i_2__0_n_0 ),
        .I2(\counter[31]_i_3__0_n_0 ),
        .I3(\counter[31]_i_4__0_n_0 ),
        .I4(\counter[31]_i_5__0_n_0 ),
        .O(counter[12]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \counter[13]_i_1__0 
       (.I0(counter0_carry__2_n_7),
        .I1(\counter[31]_i_2__0_n_0 ),
        .I2(\counter[31]_i_3__0_n_0 ),
        .I3(\counter[31]_i_4__0_n_0 ),
        .I4(\counter[31]_i_5__0_n_0 ),
        .O(counter[13]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \counter[14]_i_1__0 
       (.I0(counter0_carry__2_n_6),
        .I1(\counter[31]_i_2__0_n_0 ),
        .I2(\counter[31]_i_3__0_n_0 ),
        .I3(\counter[31]_i_4__0_n_0 ),
        .I4(\counter[31]_i_5__0_n_0 ),
        .O(counter[14]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \counter[15]_i_1__0 
       (.I0(counter0_carry__2_n_5),
        .I1(\counter[31]_i_2__0_n_0 ),
        .I2(\counter[31]_i_3__0_n_0 ),
        .I3(\counter[31]_i_4__0_n_0 ),
        .I4(\counter[31]_i_5__0_n_0 ),
        .O(counter[15]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \counter[16]_i_1__0 
       (.I0(counter0_carry__2_n_4),
        .I1(\counter[31]_i_2__0_n_0 ),
        .I2(\counter[31]_i_3__0_n_0 ),
        .I3(\counter[31]_i_4__0_n_0 ),
        .I4(\counter[31]_i_5__0_n_0 ),
        .O(counter[16]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \counter[17]_i_1__0 
       (.I0(counter0_carry__3_n_7),
        .I1(\counter[31]_i_2__0_n_0 ),
        .I2(\counter[31]_i_3__0_n_0 ),
        .I3(\counter[31]_i_4__0_n_0 ),
        .I4(\counter[31]_i_5__0_n_0 ),
        .O(counter[17]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \counter[18]_i_1__0 
       (.I0(counter0_carry__3_n_6),
        .I1(\counter[31]_i_2__0_n_0 ),
        .I2(\counter[31]_i_3__0_n_0 ),
        .I3(\counter[31]_i_4__0_n_0 ),
        .I4(\counter[31]_i_5__0_n_0 ),
        .O(counter[18]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \counter[19]_i_1__0 
       (.I0(counter0_carry__3_n_5),
        .I1(\counter[31]_i_2__0_n_0 ),
        .I2(\counter[31]_i_3__0_n_0 ),
        .I3(\counter[31]_i_4__0_n_0 ),
        .I4(\counter[31]_i_5__0_n_0 ),
        .O(counter[19]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \counter[1]_i_1__0 
       (.I0(counter0_carry_n_7),
        .I1(\counter[31]_i_2__0_n_0 ),
        .I2(\counter[31]_i_3__0_n_0 ),
        .I3(\counter[31]_i_4__0_n_0 ),
        .I4(\counter[31]_i_5__0_n_0 ),
        .O(counter[1]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \counter[20]_i_1__0 
       (.I0(counter0_carry__3_n_4),
        .I1(\counter[31]_i_2__0_n_0 ),
        .I2(\counter[31]_i_3__0_n_0 ),
        .I3(\counter[31]_i_4__0_n_0 ),
        .I4(\counter[31]_i_5__0_n_0 ),
        .O(counter[20]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \counter[21]_i_1__0 
       (.I0(counter0_carry__4_n_7),
        .I1(\counter[31]_i_2__0_n_0 ),
        .I2(\counter[31]_i_3__0_n_0 ),
        .I3(\counter[31]_i_4__0_n_0 ),
        .I4(\counter[31]_i_5__0_n_0 ),
        .O(counter[21]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \counter[22]_i_1__0 
       (.I0(counter0_carry__4_n_6),
        .I1(\counter[31]_i_2__0_n_0 ),
        .I2(\counter[31]_i_3__0_n_0 ),
        .I3(\counter[31]_i_4__0_n_0 ),
        .I4(\counter[31]_i_5__0_n_0 ),
        .O(counter[22]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \counter[23]_i_1__0 
       (.I0(counter0_carry__4_n_5),
        .I1(\counter[31]_i_2__0_n_0 ),
        .I2(\counter[31]_i_3__0_n_0 ),
        .I3(\counter[31]_i_4__0_n_0 ),
        .I4(\counter[31]_i_5__0_n_0 ),
        .O(counter[23]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \counter[24]_i_1__0 
       (.I0(counter0_carry__4_n_4),
        .I1(\counter[31]_i_2__0_n_0 ),
        .I2(\counter[31]_i_3__0_n_0 ),
        .I3(\counter[31]_i_4__0_n_0 ),
        .I4(\counter[31]_i_5__0_n_0 ),
        .O(counter[24]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \counter[25]_i_1__0 
       (.I0(counter0_carry__5_n_7),
        .I1(\counter[31]_i_2__0_n_0 ),
        .I2(\counter[31]_i_3__0_n_0 ),
        .I3(\counter[31]_i_4__0_n_0 ),
        .I4(\counter[31]_i_5__0_n_0 ),
        .O(counter[25]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \counter[26]_i_1__0 
       (.I0(counter0_carry__5_n_6),
        .I1(\counter[31]_i_2__0_n_0 ),
        .I2(\counter[31]_i_3__0_n_0 ),
        .I3(\counter[31]_i_4__0_n_0 ),
        .I4(\counter[31]_i_5__0_n_0 ),
        .O(counter[26]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \counter[27]_i_1__0 
       (.I0(counter0_carry__5_n_5),
        .I1(\counter[31]_i_2__0_n_0 ),
        .I2(\counter[31]_i_3__0_n_0 ),
        .I3(\counter[31]_i_4__0_n_0 ),
        .I4(\counter[31]_i_5__0_n_0 ),
        .O(counter[27]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \counter[28]_i_1__0 
       (.I0(counter0_carry__5_n_4),
        .I1(\counter[31]_i_2__0_n_0 ),
        .I2(\counter[31]_i_3__0_n_0 ),
        .I3(\counter[31]_i_4__0_n_0 ),
        .I4(\counter[31]_i_5__0_n_0 ),
        .O(counter[28]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \counter[29]_i_1__0 
       (.I0(counter0_carry__6_n_7),
        .I1(\counter[31]_i_2__0_n_0 ),
        .I2(\counter[31]_i_3__0_n_0 ),
        .I3(\counter[31]_i_4__0_n_0 ),
        .I4(\counter[31]_i_5__0_n_0 ),
        .O(counter[29]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \counter[2]_i_1__0 
       (.I0(counter0_carry_n_6),
        .I1(\counter[31]_i_2__0_n_0 ),
        .I2(\counter[31]_i_3__0_n_0 ),
        .I3(\counter[31]_i_4__0_n_0 ),
        .I4(\counter[31]_i_5__0_n_0 ),
        .O(counter[2]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \counter[30]_i_1__0 
       (.I0(counter0_carry__6_n_6),
        .I1(\counter[31]_i_2__0_n_0 ),
        .I2(\counter[31]_i_3__0_n_0 ),
        .I3(\counter[31]_i_4__0_n_0 ),
        .I4(\counter[31]_i_5__0_n_0 ),
        .O(counter[30]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \counter[31]_i_10__0 
       (.I0(\counter_reg_n_0_[13] ),
        .I1(\counter_reg_n_0_[12] ),
        .O(\counter[31]_i_10__0_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \counter[31]_i_1__0 
       (.I0(counter0_carry__6_n_5),
        .I1(\counter[31]_i_2__0_n_0 ),
        .I2(\counter[31]_i_3__0_n_0 ),
        .I3(\counter[31]_i_4__0_n_0 ),
        .I4(\counter[31]_i_5__0_n_0 ),
        .O(counter[31]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \counter[31]_i_2__0 
       (.I0(\counter_reg_n_0_[25] ),
        .I1(\counter_reg_n_0_[26] ),
        .I2(\counter_reg_n_0_[27] ),
        .I3(\counter_reg_n_0_[16] ),
        .I4(\counter[31]_i_6__0_n_0 ),
        .O(\counter[31]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF7FF)) 
    \counter[31]_i_3__0 
       (.I0(\counter_reg_n_0_[18] ),
        .I1(\counter_reg_n_0_[17] ),
        .I2(\counter_reg_n_0_[30] ),
        .I3(\counter_reg_n_0_[19] ),
        .I4(\counter[31]_i_7__0_n_0 ),
        .O(\counter[31]_i_3__0_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \counter[31]_i_4__0 
       (.I0(\counter[31]_i_8__0_n_0 ),
        .I1(\counter_reg_n_0_[31] ),
        .I2(\counter_reg_n_0_[6] ),
        .I3(\counter_reg_n_0_[4] ),
        .I4(\counter_reg_n_0_[5] ),
        .O(\counter[31]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \counter[31]_i_5__0 
       (.I0(\counter_reg_n_0_[29] ),
        .I1(\counter_reg_n_0_[11] ),
        .I2(\counter[31]_i_9__0_n_0 ),
        .I3(\counter_reg_n_0_[28] ),
        .I4(\counter_reg_n_0_[14] ),
        .I5(\counter[31]_i_10__0_n_0 ),
        .O(\counter[31]_i_5__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[31]_i_6__0 
       (.I0(\counter_reg_n_0_[23] ),
        .I1(\counter_reg_n_0_[22] ),
        .I2(\counter_reg_n_0_[24] ),
        .I3(\counter_reg_n_0_[21] ),
        .O(\counter[31]_i_6__0_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \counter[31]_i_7__0 
       (.I0(\counter_reg_n_0_[7] ),
        .I1(\counter_reg_n_0_[20] ),
        .I2(\counter_reg_n_0_[15] ),
        .I3(\counter_reg_n_0_[10] ),
        .O(\counter[31]_i_7__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \counter[31]_i_8__0 
       (.I0(\counter_reg_n_0_[1] ),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[3] ),
        .O(\counter[31]_i_8__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \counter[31]_i_9__0 
       (.I0(\counter_reg_n_0_[8] ),
        .I1(\counter_reg_n_0_[9] ),
        .O(\counter[31]_i_9__0_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \counter[3]_i_1__0 
       (.I0(counter0_carry_n_5),
        .I1(\counter[31]_i_2__0_n_0 ),
        .I2(\counter[31]_i_3__0_n_0 ),
        .I3(\counter[31]_i_4__0_n_0 ),
        .I4(\counter[31]_i_5__0_n_0 ),
        .O(counter[3]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \counter[4]_i_1__0 
       (.I0(counter0_carry_n_4),
        .I1(\counter[31]_i_2__0_n_0 ),
        .I2(\counter[31]_i_3__0_n_0 ),
        .I3(\counter[31]_i_4__0_n_0 ),
        .I4(\counter[31]_i_5__0_n_0 ),
        .O(counter[4]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \counter[5]_i_1__0 
       (.I0(counter0_carry__0_n_7),
        .I1(\counter[31]_i_2__0_n_0 ),
        .I2(\counter[31]_i_3__0_n_0 ),
        .I3(\counter[31]_i_4__0_n_0 ),
        .I4(\counter[31]_i_5__0_n_0 ),
        .O(counter[5]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \counter[6]_i_1__0 
       (.I0(counter0_carry__0_n_6),
        .I1(\counter[31]_i_2__0_n_0 ),
        .I2(\counter[31]_i_3__0_n_0 ),
        .I3(\counter[31]_i_4__0_n_0 ),
        .I4(\counter[31]_i_5__0_n_0 ),
        .O(counter[6]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \counter[7]_i_1__0 
       (.I0(counter0_carry__0_n_5),
        .I1(\counter[31]_i_2__0_n_0 ),
        .I2(\counter[31]_i_3__0_n_0 ),
        .I3(\counter[31]_i_4__0_n_0 ),
        .I4(\counter[31]_i_5__0_n_0 ),
        .O(counter[7]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \counter[8]_i_1__0 
       (.I0(counter0_carry__0_n_4),
        .I1(\counter[31]_i_2__0_n_0 ),
        .I2(\counter[31]_i_3__0_n_0 ),
        .I3(\counter[31]_i_4__0_n_0 ),
        .I4(\counter[31]_i_5__0_n_0 ),
        .O(counter[8]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \counter[9]_i_1__0 
       (.I0(counter0_carry__1_n_7),
        .I1(\counter[31]_i_2__0_n_0 ),
        .I2(\counter[31]_i_3__0_n_0 ),
        .I3(\counter[31]_i_4__0_n_0 ),
        .I4(\counter[31]_i_5__0_n_0 ),
        .O(counter[9]));
  FDCE \counter_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter[0]),
        .Q(\counter_reg_n_0_[0] ));
  FDCE \counter_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter[10]),
        .Q(\counter_reg_n_0_[10] ));
  FDCE \counter_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter[11]),
        .Q(\counter_reg_n_0_[11] ));
  FDCE \counter_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter[12]),
        .Q(\counter_reg_n_0_[12] ));
  FDCE \counter_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter[13]),
        .Q(\counter_reg_n_0_[13] ));
  FDCE \counter_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter[14]),
        .Q(\counter_reg_n_0_[14] ));
  FDCE \counter_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter[15]),
        .Q(\counter_reg_n_0_[15] ));
  FDCE \counter_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter[16]),
        .Q(\counter_reg_n_0_[16] ));
  FDCE \counter_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter[17]),
        .Q(\counter_reg_n_0_[17] ));
  FDCE \counter_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter[18]),
        .Q(\counter_reg_n_0_[18] ));
  FDCE \counter_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter[19]),
        .Q(\counter_reg_n_0_[19] ));
  FDCE \counter_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter[1]),
        .Q(\counter_reg_n_0_[1] ));
  FDCE \counter_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter[20]),
        .Q(\counter_reg_n_0_[20] ));
  FDCE \counter_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter[21]),
        .Q(\counter_reg_n_0_[21] ));
  FDCE \counter_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter[22]),
        .Q(\counter_reg_n_0_[22] ));
  FDCE \counter_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter[23]),
        .Q(\counter_reg_n_0_[23] ));
  FDCE \counter_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter[24]),
        .Q(\counter_reg_n_0_[24] ));
  FDCE \counter_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter[25]),
        .Q(\counter_reg_n_0_[25] ));
  FDCE \counter_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter[26]),
        .Q(\counter_reg_n_0_[26] ));
  FDCE \counter_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter[27]),
        .Q(\counter_reg_n_0_[27] ));
  FDCE \counter_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter[28]),
        .Q(\counter_reg_n_0_[28] ));
  FDCE \counter_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter[29]),
        .Q(\counter_reg_n_0_[29] ));
  FDCE \counter_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter[2]),
        .Q(\counter_reg_n_0_[2] ));
  FDCE \counter_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter[30]),
        .Q(\counter_reg_n_0_[30] ));
  FDCE \counter_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter[31]),
        .Q(\counter_reg_n_0_[31] ));
  FDCE \counter_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter[3]),
        .Q(\counter_reg_n_0_[3] ));
  FDCE \counter_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter[4]),
        .Q(\counter_reg_n_0_[4] ));
  FDCE \counter_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter[5]),
        .Q(\counter_reg_n_0_[5] ));
  FDCE \counter_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter[6]),
        .Q(\counter_reg_n_0_[6] ));
  FDCE \counter_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter[7]),
        .Q(\counter_reg_n_0_[7] ));
  FDCE \counter_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter[8]),
        .Q(\counter_reg_n_0_[8] ));
  FDCE \counter_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter[9]),
        .Q(\counter_reg_n_0_[9] ));
  LUT6 #(
    .INIT(64'h000010FF00001010)) 
    pwm_out_1_INST_0
       (.I0(\counter_reg_n_0_[16] ),
        .I1(\counter_reg_n_0_[17] ),
        .I2(pwm_out_1_INST_0_i_1_n_0),
        .I3(_carry__6_n_0),
        .I4(pwm_out_1_INST_0_i_2_n_0),
        .I5(pwm_out_1_INST_0_i_3_n_0),
        .O(pwm_out_1));
  LUT6 #(
    .INIT(64'h7F7F7F7F777F7777)) 
    pwm_out_1_INST_0_i_1
       (.I0(\counter_reg_n_0_[14] ),
        .I1(\counter_reg_n_0_[15] ),
        .I2(pwm_out_1_INST_0_i_4_n_0),
        .I3(pwm_out_1_INST_0_i_5_n_0),
        .I4(pwm_out_1_INST_0_i_6_n_0),
        .I5(pwm_out_1_INST_0_i_7_n_0),
        .O(pwm_out_1_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    pwm_out_1_INST_0_i_10
       (.I0(\counter_reg_n_0_[10] ),
        .I1(\counter_reg_n_0_[11] ),
        .I2(\counter_reg_n_0_[8] ),
        .I3(\counter_reg_n_0_[9] ),
        .I4(\counter_reg_n_0_[13] ),
        .O(pwm_out_1_INST_0_i_10_n_0));
  LUT6 #(
    .INIT(64'h7FFF7FFF7FFFFFFF)) 
    pwm_out_1_INST_0_i_11
       (.I0(\counter_reg_n_0_[14] ),
        .I1(\counter_reg_n_0_[15] ),
        .I2(\counter_reg_n_0_[17] ),
        .I3(\counter_reg_n_0_[16] ),
        .I4(\counter_reg_n_0_[13] ),
        .I5(\counter_reg_n_0_[12] ),
        .O(pwm_out_1_INST_0_i_11_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    pwm_out_1_INST_0_i_2
       (.I0(pwm_out_1_INST_0_i_8_n_0),
        .I1(pwm_out_1_INST_0_i_9_n_0),
        .I2(\counter_reg_n_0_[29] ),
        .I3(\counter_reg_n_0_[28] ),
        .I4(\counter_reg_n_0_[30] ),
        .I5(\counter_reg_n_0_[21] ),
        .O(pwm_out_1_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00015555)) 
    pwm_out_1_INST_0_i_3
       (.I0(pwm_out_1_INST_0_i_10_n_0),
        .I1(\counter_reg_n_0_[4] ),
        .I2(\counter_reg_n_0_[5] ),
        .I3(\counter_reg_n_0_[6] ),
        .I4(\counter_reg_n_0_[7] ),
        .I5(pwm_out_1_INST_0_i_11_n_0),
        .O(pwm_out_1_INST_0_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    pwm_out_1_INST_0_i_4
       (.I0(\counter_reg_n_0_[12] ),
        .I1(\counter_reg_n_0_[13] ),
        .I2(\counter_reg_n_0_[10] ),
        .I3(\counter_reg_n_0_[11] ),
        .O(pwm_out_1_INST_0_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    pwm_out_1_INST_0_i_5
       (.I0(\counter_reg_n_0_[4] ),
        .I1(\counter_reg_n_0_[3] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(\counter_reg_n_0_[1] ),
        .O(pwm_out_1_INST_0_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h15)) 
    pwm_out_1_INST_0_i_6
       (.I0(\counter_reg_n_0_[7] ),
        .I1(\counter_reg_n_0_[5] ),
        .I2(\counter_reg_n_0_[6] ),
        .O(pwm_out_1_INST_0_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h1FFF)) 
    pwm_out_1_INST_0_i_7
       (.I0(\counter_reg_n_0_[7] ),
        .I1(\counter_reg_n_0_[6] ),
        .I2(\counter_reg_n_0_[9] ),
        .I3(\counter_reg_n_0_[8] ),
        .O(pwm_out_1_INST_0_i_7_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    pwm_out_1_INST_0_i_8
       (.I0(\counter_reg_n_0_[25] ),
        .I1(\counter_reg_n_0_[24] ),
        .I2(\counter_reg_n_0_[18] ),
        .I3(\counter_reg_n_0_[31] ),
        .I4(\counter_reg_n_0_[19] ),
        .I5(\counter_reg_n_0_[20] ),
        .O(pwm_out_1_INST_0_i_8_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    pwm_out_1_INST_0_i_9
       (.I0(\counter_reg_n_0_[23] ),
        .I1(\counter_reg_n_0_[22] ),
        .I2(\counter_reg_n_0_[27] ),
        .I3(\counter_reg_n_0_[26] ),
        .O(pwm_out_1_INST_0_i_9_n_0));
endmodule

(* ORIG_REF_NAME = "servo_v1_0" *) 
module design_1_servo_0_0_servo_v1_0
   (S_AXI_AWREADY,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    s_axi_rdata,
    pwm_out_0,
    pwm_out_1,
    s_axi_rvalid,
    s_axi_bvalid,
    s_axi_aclk,
    s_axi_awaddr,
    s_axi_wvalid,
    s_axi_awvalid,
    s_axi_wdata,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_wstrb,
    s_axi_aresetn,
    s_axi_bready,
    s_axi_rready);
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output [31:0]s_axi_rdata;
  output pwm_out_0;
  output pwm_out_1;
  output s_axi_rvalid;
  output s_axi_bvalid;
  input s_axi_aclk;
  input [1:0]s_axi_awaddr;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input [31:0]s_axi_wdata;
  input [1:0]s_axi_araddr;
  input s_axi_arvalid;
  input [3:0]s_axi_wstrb;
  input s_axi_aresetn;
  input s_axi_bready;
  input s_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire pwm_out_0;
  wire pwm_out_1;
  wire s_axi_aclk;
  wire [1:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire [1:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  design_1_servo_0_0_servo_v1_0_S_AXI servo_v1_0_S_AXI_inst
       (.S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_WREADY(S_AXI_WREADY),
        .pwm_out_0(pwm_out_0),
        .pwm_out_1(pwm_out_1),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "servo_v1_0_S_AXI" *) 
module design_1_servo_0_0_servo_v1_0_S_AXI
   (S_AXI_AWREADY,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    s_axi_rdata,
    pwm_out_0,
    pwm_out_1,
    s_axi_rvalid,
    s_axi_bvalid,
    s_axi_aclk,
    s_axi_awaddr,
    s_axi_wvalid,
    s_axi_awvalid,
    s_axi_wdata,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_wstrb,
    s_axi_aresetn,
    s_axi_bready,
    s_axi_rready);
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output [31:0]s_axi_rdata;
  output pwm_out_0;
  output pwm_out_1;
  output s_axi_rvalid;
  output s_axi_bvalid;
  input s_axi_aclk;
  input [1:0]s_axi_awaddr;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input [31:0]s_axi_wdata;
  input [1:0]s_axi_araddr;
  input s_axi_arvalid;
  input [3:0]s_axi_wstrb;
  input s_axi_aresetn;
  input s_axi_bready;
  input s_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire U1_axi_pwm_n_1;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire [1:0]p_0_in;
  wire [31:7]p_1_in;
  wire pwm_out_0;
  wire pwm_out_1;
  wire [31:0]reg_data_out;
  wire s_axi_aclk;
  wire [1:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire [1:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [31:0]slv_reg0;
  wire \slv_reg0[15]_i_1_n_0 ;
  wire \slv_reg0[23]_i_1_n_0 ;
  wire \slv_reg0[31]_i_1_n_0 ;
  wire \slv_reg0[7]_i_1_n_0 ;
  wire [31:0]slv_reg1;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire [31:0]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire [31:0]slv_reg3;
  wire slv_reg_rden__0;
  wire slv_reg_wren__0;

  design_1_servo_0_0_axi_pwm U0_axi_pwm
       (.Q(slv_reg0),
        .SR(U1_axi_pwm_n_1),
        .pwm_out_0(pwm_out_0),
        .s_axi_aclk(s_axi_aclk));
  design_1_servo_0_0_axi_pwm_0 U1_axi_pwm
       (.Q(slv_reg1),
        .SR(U1_axi_pwm_n_1),
        .pwm_out_1(pwm_out_1),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn));
  LUT6 #(
    .INIT(64'hF7FFC4CCC4CCC4CC)) 
    aw_en_i_1
       (.I0(s_axi_awvalid),
        .I1(aw_en_reg_n_0),
        .I2(S_AXI_AWREADY),
        .I3(s_axi_wvalid),
        .I4(s_axi_bready),
        .I5(s_axi_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(U1_axi_pwm_n_1));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s_axi_araddr[0]),
        .I1(s_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s_axi_araddr[1]),
        .I1(s_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .R(U1_axi_pwm_n_1));
  FDRE \axi_araddr_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .R(U1_axi_pwm_n_1));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(U1_axi_pwm_n_1));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(s_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(aw_en_reg_n_0),
        .I4(s_axi_awvalid),
        .I5(p_0_in[0]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s_axi_awaddr[1]),
        .I1(s_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(aw_en_reg_n_0),
        .I4(s_axi_awvalid),
        .I5(p_0_in[1]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(p_0_in[0]),
        .R(U1_axi_pwm_n_1));
  FDRE \axi_awaddr_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(p_0_in[1]),
        .R(U1_axi_pwm_n_1));
  LUT4 #(
    .INIT(16'h2000)) 
    axi_awready_i_2
       (.I0(s_axi_wvalid),
        .I1(S_AXI_AWREADY),
        .I2(aw_en_reg_n_0),
        .I3(s_axi_awvalid),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(U1_axi_pwm_n_1));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(S_AXI_WREADY),
        .I4(s_axi_bready),
        .I5(s_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s_axi_bvalid),
        .R(U1_axi_pwm_n_1));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \axi_rdata[0]_i_1 
       (.I0(slv_reg1[0]),
        .I1(slv_reg2[0]),
        .I2(slv_reg0[0]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg3[0]),
        .O(reg_data_out[0]));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \axi_rdata[10]_i_1 
       (.I0(slv_reg0[10]),
        .I1(slv_reg1[10]),
        .I2(slv_reg2[10]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg3[10]),
        .O(reg_data_out[10]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \axi_rdata[11]_i_1 
       (.I0(slv_reg1[11]),
        .I1(slv_reg2[11]),
        .I2(slv_reg0[11]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg3[11]),
        .O(reg_data_out[11]));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \axi_rdata[12]_i_1 
       (.I0(slv_reg0[12]),
        .I1(slv_reg1[12]),
        .I2(slv_reg3[12]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg2[12]),
        .O(reg_data_out[12]));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \axi_rdata[13]_i_1 
       (.I0(slv_reg0[13]),
        .I1(slv_reg1[13]),
        .I2(slv_reg3[13]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg2[13]),
        .O(reg_data_out[13]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[14]_i_1 
       (.I0(slv_reg1[14]),
        .I1(slv_reg3[14]),
        .I2(slv_reg0[14]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg2[14]),
        .O(reg_data_out[14]));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \axi_rdata[15]_i_1 
       (.I0(slv_reg0[15]),
        .I1(slv_reg1[15]),
        .I2(slv_reg3[15]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg2[15]),
        .O(reg_data_out[15]));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \axi_rdata[16]_i_1 
       (.I0(slv_reg0[16]),
        .I1(slv_reg1[16]),
        .I2(slv_reg3[16]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg2[16]),
        .O(reg_data_out[16]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[17]_i_1 
       (.I0(slv_reg1[17]),
        .I1(slv_reg3[17]),
        .I2(slv_reg0[17]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg2[17]),
        .O(reg_data_out[17]));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \axi_rdata[18]_i_1 
       (.I0(slv_reg0[18]),
        .I1(slv_reg1[18]),
        .I2(slv_reg2[18]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg3[18]),
        .O(reg_data_out[18]));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \axi_rdata[19]_i_1 
       (.I0(slv_reg0[19]),
        .I1(slv_reg1[19]),
        .I2(slv_reg3[19]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg2[19]),
        .O(reg_data_out[19]));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \axi_rdata[1]_i_1 
       (.I0(slv_reg0[1]),
        .I1(slv_reg1[1]),
        .I2(slv_reg3[1]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg2[1]),
        .O(reg_data_out[1]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \axi_rdata[20]_i_1 
       (.I0(slv_reg1[20]),
        .I1(slv_reg2[20]),
        .I2(slv_reg0[20]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg3[20]),
        .O(reg_data_out[20]));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \axi_rdata[21]_i_1 
       (.I0(slv_reg0[21]),
        .I1(slv_reg1[21]),
        .I2(slv_reg2[21]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg3[21]),
        .O(reg_data_out[21]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[22]_i_1 
       (.I0(slv_reg1[22]),
        .I1(slv_reg3[22]),
        .I2(slv_reg0[22]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg2[22]),
        .O(reg_data_out[22]));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \axi_rdata[23]_i_1 
       (.I0(slv_reg0[23]),
        .I1(slv_reg1[23]),
        .I2(slv_reg3[23]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg2[23]),
        .O(reg_data_out[23]));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \axi_rdata[24]_i_1 
       (.I0(slv_reg0[24]),
        .I1(slv_reg1[24]),
        .I2(slv_reg3[24]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg2[24]),
        .O(reg_data_out[24]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[25]_i_1 
       (.I0(slv_reg1[25]),
        .I1(slv_reg3[25]),
        .I2(slv_reg0[25]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg2[25]),
        .O(reg_data_out[25]));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \axi_rdata[26]_i_1 
       (.I0(slv_reg0[26]),
        .I1(slv_reg1[26]),
        .I2(slv_reg2[26]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg3[26]),
        .O(reg_data_out[26]));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \axi_rdata[27]_i_1 
       (.I0(slv_reg0[27]),
        .I1(slv_reg1[27]),
        .I2(slv_reg3[27]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg2[27]),
        .O(reg_data_out[27]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \axi_rdata[28]_i_1 
       (.I0(slv_reg1[28]),
        .I1(slv_reg2[28]),
        .I2(slv_reg0[28]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg3[28]),
        .O(reg_data_out[28]));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \axi_rdata[29]_i_1 
       (.I0(slv_reg0[29]),
        .I1(slv_reg1[29]),
        .I2(slv_reg2[29]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg3[29]),
        .O(reg_data_out[29]));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \axi_rdata[2]_i_1 
       (.I0(slv_reg0[2]),
        .I1(slv_reg1[2]),
        .I2(slv_reg2[2]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg3[2]),
        .O(reg_data_out[2]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[30]_i_1 
       (.I0(slv_reg1[30]),
        .I1(slv_reg3[30]),
        .I2(slv_reg0[30]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg2[30]),
        .O(reg_data_out[30]));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \axi_rdata[31]_i_1 
       (.I0(slv_reg0[31]),
        .I1(slv_reg1[31]),
        .I2(slv_reg3[31]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg2[31]),
        .O(reg_data_out[31]));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \axi_rdata[3]_i_1 
       (.I0(slv_reg0[3]),
        .I1(slv_reg1[3]),
        .I2(slv_reg3[3]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg2[3]),
        .O(reg_data_out[3]));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \axi_rdata[4]_i_1 
       (.I0(slv_reg0[4]),
        .I1(slv_reg1[4]),
        .I2(slv_reg3[4]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg2[4]),
        .O(reg_data_out[4]));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \axi_rdata[5]_i_1 
       (.I0(slv_reg0[5]),
        .I1(slv_reg1[5]),
        .I2(slv_reg2[5]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg3[5]),
        .O(reg_data_out[5]));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \axi_rdata[6]_i_1 
       (.I0(slv_reg0[6]),
        .I1(slv_reg1[6]),
        .I2(slv_reg3[6]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg2[6]),
        .O(reg_data_out[6]));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \axi_rdata[7]_i_1 
       (.I0(slv_reg0[7]),
        .I1(slv_reg1[7]),
        .I2(slv_reg3[7]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg2[7]),
        .O(reg_data_out[7]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \axi_rdata[8]_i_1 
       (.I0(slv_reg1[8]),
        .I1(slv_reg2[8]),
        .I2(slv_reg0[8]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg3[8]),
        .O(reg_data_out[8]));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \axi_rdata[9]_i_1 
       (.I0(slv_reg0[9]),
        .I1(slv_reg1[9]),
        .I2(slv_reg2[9]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg3[9]),
        .O(reg_data_out[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(s_axi_rdata[0]),
        .R(U1_axi_pwm_n_1));
  FDRE \axi_rdata_reg[10] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(s_axi_rdata[10]),
        .R(U1_axi_pwm_n_1));
  FDRE \axi_rdata_reg[11] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(s_axi_rdata[11]),
        .R(U1_axi_pwm_n_1));
  FDRE \axi_rdata_reg[12] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(s_axi_rdata[12]),
        .R(U1_axi_pwm_n_1));
  FDRE \axi_rdata_reg[13] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(s_axi_rdata[13]),
        .R(U1_axi_pwm_n_1));
  FDRE \axi_rdata_reg[14] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(s_axi_rdata[14]),
        .R(U1_axi_pwm_n_1));
  FDRE \axi_rdata_reg[15] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(s_axi_rdata[15]),
        .R(U1_axi_pwm_n_1));
  FDRE \axi_rdata_reg[16] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(s_axi_rdata[16]),
        .R(U1_axi_pwm_n_1));
  FDRE \axi_rdata_reg[17] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(s_axi_rdata[17]),
        .R(U1_axi_pwm_n_1));
  FDRE \axi_rdata_reg[18] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(s_axi_rdata[18]),
        .R(U1_axi_pwm_n_1));
  FDRE \axi_rdata_reg[19] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(s_axi_rdata[19]),
        .R(U1_axi_pwm_n_1));
  FDRE \axi_rdata_reg[1] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(s_axi_rdata[1]),
        .R(U1_axi_pwm_n_1));
  FDRE \axi_rdata_reg[20] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(s_axi_rdata[20]),
        .R(U1_axi_pwm_n_1));
  FDRE \axi_rdata_reg[21] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(s_axi_rdata[21]),
        .R(U1_axi_pwm_n_1));
  FDRE \axi_rdata_reg[22] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(s_axi_rdata[22]),
        .R(U1_axi_pwm_n_1));
  FDRE \axi_rdata_reg[23] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(s_axi_rdata[23]),
        .R(U1_axi_pwm_n_1));
  FDRE \axi_rdata_reg[24] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(s_axi_rdata[24]),
        .R(U1_axi_pwm_n_1));
  FDRE \axi_rdata_reg[25] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(s_axi_rdata[25]),
        .R(U1_axi_pwm_n_1));
  FDRE \axi_rdata_reg[26] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(s_axi_rdata[26]),
        .R(U1_axi_pwm_n_1));
  FDRE \axi_rdata_reg[27] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(s_axi_rdata[27]),
        .R(U1_axi_pwm_n_1));
  FDRE \axi_rdata_reg[28] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(s_axi_rdata[28]),
        .R(U1_axi_pwm_n_1));
  FDRE \axi_rdata_reg[29] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(s_axi_rdata[29]),
        .R(U1_axi_pwm_n_1));
  FDRE \axi_rdata_reg[2] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(s_axi_rdata[2]),
        .R(U1_axi_pwm_n_1));
  FDRE \axi_rdata_reg[30] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(s_axi_rdata[30]),
        .R(U1_axi_pwm_n_1));
  FDRE \axi_rdata_reg[31] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[31]),
        .Q(s_axi_rdata[31]),
        .R(U1_axi_pwm_n_1));
  FDRE \axi_rdata_reg[3] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(s_axi_rdata[3]),
        .R(U1_axi_pwm_n_1));
  FDRE \axi_rdata_reg[4] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(s_axi_rdata[4]),
        .R(U1_axi_pwm_n_1));
  FDRE \axi_rdata_reg[5] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(s_axi_rdata[5]),
        .R(U1_axi_pwm_n_1));
  FDRE \axi_rdata_reg[6] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(s_axi_rdata[6]),
        .R(U1_axi_pwm_n_1));
  FDRE \axi_rdata_reg[7] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(s_axi_rdata[7]),
        .R(U1_axi_pwm_n_1));
  FDRE \axi_rdata_reg[8] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[8]),
        .Q(s_axi_rdata[8]),
        .R(U1_axi_pwm_n_1));
  FDRE \axi_rdata_reg[9] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(s_axi_rdata[9]),
        .R(U1_axi_pwm_n_1));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(S_AXI_ARREADY),
        .I1(s_axi_arvalid),
        .I2(s_axi_rvalid),
        .I3(s_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s_axi_rvalid),
        .R(U1_axi_pwm_n_1));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    axi_wready_i_1
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .I2(S_AXI_WREADY),
        .I3(aw_en_reg_n_0),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(U1_axi_pwm_n_1));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s_axi_wstrb[1]),
        .O(\slv_reg0[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s_axi_wstrb[2]),
        .O(\slv_reg0[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s_axi_wstrb[3]),
        .O(\slv_reg0[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg0[31]_i_2 
       (.I0(S_AXI_WREADY),
        .I1(S_AXI_AWREADY),
        .I2(s_axi_awvalid),
        .I3(s_axi_wvalid),
        .O(slv_reg_wren__0));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s_axi_wstrb[0]),
        .O(\slv_reg0[7]_i_1_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(slv_reg0[0]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg0_reg[10] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(slv_reg0[10]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg0_reg[11] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(slv_reg0[11]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg0_reg[12] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(slv_reg0[12]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg0_reg[13] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(slv_reg0[13]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg0_reg[14] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(slv_reg0[14]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg0_reg[15] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(slv_reg0[15]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg0_reg[16] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(slv_reg0[16]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg0_reg[17] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(slv_reg0[17]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg0_reg[18] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(slv_reg0[18]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg0_reg[19] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(slv_reg0[19]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg0_reg[1] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(slv_reg0[1]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg0_reg[20] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(slv_reg0[20]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg0_reg[21] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(slv_reg0[21]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg0_reg[22] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(slv_reg0[22]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg0_reg[23] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(slv_reg0[23]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg0_reg[24] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(slv_reg0[24]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg0_reg[25] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(slv_reg0[25]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg0_reg[26] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(slv_reg0[26]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg0_reg[27] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(slv_reg0[27]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg0_reg[28] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(slv_reg0[28]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg0_reg[29] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(slv_reg0[29]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg0_reg[2] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(slv_reg0[2]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg0_reg[30] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(slv_reg0[30]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg0_reg[31] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(slv_reg0[31]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg0_reg[3] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(slv_reg0[3]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg0_reg[4] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(slv_reg0[4]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg0_reg[5] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(slv_reg0[5]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg0_reg[6] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(slv_reg0[6]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg0_reg[7] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(slv_reg0[7]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg0_reg[8] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(slv_reg0[8]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg0_reg[9] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(slv_reg0[9]),
        .R(U1_axi_pwm_n_1));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s_axi_wstrb[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s_axi_wstrb[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s_axi_wstrb[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s_axi_wstrb[0]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(slv_reg1[0]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg1_reg[10] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(slv_reg1[10]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg1_reg[11] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(slv_reg1[11]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg1_reg[12] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(slv_reg1[12]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg1_reg[13] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(slv_reg1[13]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg1_reg[14] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(slv_reg1[14]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg1_reg[15] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(slv_reg1[15]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg1_reg[16] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(slv_reg1[16]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg1_reg[17] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(slv_reg1[17]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg1_reg[18] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(slv_reg1[18]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg1_reg[19] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(slv_reg1[19]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg1_reg[1] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(slv_reg1[1]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg1_reg[20] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(slv_reg1[20]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg1_reg[21] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(slv_reg1[21]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg1_reg[22] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(slv_reg1[22]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg1_reg[23] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(slv_reg1[23]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg1_reg[24] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(slv_reg1[24]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg1_reg[25] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(slv_reg1[25]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg1_reg[26] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(slv_reg1[26]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg1_reg[27] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(slv_reg1[27]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg1_reg[28] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(slv_reg1[28]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg1_reg[29] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(slv_reg1[29]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg1_reg[2] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(slv_reg1[2]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg1_reg[30] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(slv_reg1[30]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg1_reg[31] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(slv_reg1[31]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg1_reg[3] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(slv_reg1[3]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg1_reg[4] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(slv_reg1[4]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg1_reg[5] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(slv_reg1[5]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg1_reg[6] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(slv_reg1[6]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg1_reg[7] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(slv_reg1[7]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg1_reg[8] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(slv_reg1[8]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg1_reg[9] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(slv_reg1[9]),
        .R(U1_axi_pwm_n_1));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s_axi_wstrb[1]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s_axi_wstrb[2]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s_axi_wstrb[3]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s_axi_wstrb[0]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(slv_reg2[0]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg2_reg[10] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(slv_reg2[10]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg2_reg[11] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(slv_reg2[11]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg2_reg[12] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(slv_reg2[12]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg2_reg[13] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(slv_reg2[13]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg2_reg[14] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(slv_reg2[14]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg2_reg[15] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(slv_reg2[15]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg2_reg[16] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(slv_reg2[16]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg2_reg[17] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(slv_reg2[17]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg2_reg[18] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(slv_reg2[18]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg2_reg[19] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(slv_reg2[19]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg2_reg[1] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(slv_reg2[1]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg2_reg[20] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(slv_reg2[20]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg2_reg[21] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(slv_reg2[21]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg2_reg[22] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(slv_reg2[22]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg2_reg[23] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(slv_reg2[23]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg2_reg[24] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(slv_reg2[24]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg2_reg[25] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(slv_reg2[25]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg2_reg[26] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(slv_reg2[26]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg2_reg[27] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(slv_reg2[27]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg2_reg[28] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(slv_reg2[28]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg2_reg[29] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(slv_reg2[29]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg2_reg[2] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(slv_reg2[2]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg2_reg[30] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(slv_reg2[30]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg2_reg[31] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(slv_reg2[31]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg2_reg[3] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(slv_reg2[3]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg2_reg[4] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(slv_reg2[4]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg2_reg[5] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(slv_reg2[5]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg2_reg[6] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(slv_reg2[6]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg2_reg[7] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(slv_reg2[7]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg2_reg[8] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(slv_reg2[8]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg2_reg[9] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(slv_reg2[9]),
        .R(U1_axi_pwm_n_1));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s_axi_wstrb[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(p_1_in[15]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s_axi_wstrb[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(p_1_in[23]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s_axi_wstrb[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(p_1_in[31]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s_axi_wstrb[0]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(p_1_in[7]));
  FDRE \slv_reg3_reg[0] 
       (.C(s_axi_aclk),
        .CE(p_1_in[7]),
        .D(s_axi_wdata[0]),
        .Q(slv_reg3[0]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg3_reg[10] 
       (.C(s_axi_aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[10]),
        .Q(slv_reg3[10]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg3_reg[11] 
       (.C(s_axi_aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[11]),
        .Q(slv_reg3[11]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg3_reg[12] 
       (.C(s_axi_aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[12]),
        .Q(slv_reg3[12]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg3_reg[13] 
       (.C(s_axi_aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[13]),
        .Q(slv_reg3[13]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg3_reg[14] 
       (.C(s_axi_aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[14]),
        .Q(slv_reg3[14]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg3_reg[15] 
       (.C(s_axi_aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[15]),
        .Q(slv_reg3[15]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg3_reg[16] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[16]),
        .Q(slv_reg3[16]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg3_reg[17] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[17]),
        .Q(slv_reg3[17]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg3_reg[18] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[18]),
        .Q(slv_reg3[18]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg3_reg[19] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[19]),
        .Q(slv_reg3[19]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg3_reg[1] 
       (.C(s_axi_aclk),
        .CE(p_1_in[7]),
        .D(s_axi_wdata[1]),
        .Q(slv_reg3[1]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg3_reg[20] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[20]),
        .Q(slv_reg3[20]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg3_reg[21] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[21]),
        .Q(slv_reg3[21]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg3_reg[22] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[22]),
        .Q(slv_reg3[22]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg3_reg[23] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[23]),
        .Q(slv_reg3[23]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg3_reg[24] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[24]),
        .Q(slv_reg3[24]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg3_reg[25] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[25]),
        .Q(slv_reg3[25]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg3_reg[26] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[26]),
        .Q(slv_reg3[26]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg3_reg[27] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[27]),
        .Q(slv_reg3[27]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg3_reg[28] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[28]),
        .Q(slv_reg3[28]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg3_reg[29] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[29]),
        .Q(slv_reg3[29]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg3_reg[2] 
       (.C(s_axi_aclk),
        .CE(p_1_in[7]),
        .D(s_axi_wdata[2]),
        .Q(slv_reg3[2]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg3_reg[30] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[30]),
        .Q(slv_reg3[30]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg3_reg[31] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[31]),
        .Q(slv_reg3[31]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg3_reg[3] 
       (.C(s_axi_aclk),
        .CE(p_1_in[7]),
        .D(s_axi_wdata[3]),
        .Q(slv_reg3[3]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg3_reg[4] 
       (.C(s_axi_aclk),
        .CE(p_1_in[7]),
        .D(s_axi_wdata[4]),
        .Q(slv_reg3[4]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg3_reg[5] 
       (.C(s_axi_aclk),
        .CE(p_1_in[7]),
        .D(s_axi_wdata[5]),
        .Q(slv_reg3[5]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg3_reg[6] 
       (.C(s_axi_aclk),
        .CE(p_1_in[7]),
        .D(s_axi_wdata[6]),
        .Q(slv_reg3[6]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg3_reg[7] 
       (.C(s_axi_aclk),
        .CE(p_1_in[7]),
        .D(s_axi_wdata[7]),
        .Q(slv_reg3[7]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg3_reg[8] 
       (.C(s_axi_aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[8]),
        .Q(slv_reg3[8]),
        .R(U1_axi_pwm_n_1));
  FDRE \slv_reg3_reg[9] 
       (.C(s_axi_aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[9]),
        .Q(slv_reg3[9]),
        .R(U1_axi_pwm_n_1));
  LUT3 #(
    .INIT(8'h20)) 
    slv_reg_rden
       (.I0(s_axi_arvalid),
        .I1(s_axi_rvalid),
        .I2(S_AXI_ARREADY),
        .O(slv_reg_rden__0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
