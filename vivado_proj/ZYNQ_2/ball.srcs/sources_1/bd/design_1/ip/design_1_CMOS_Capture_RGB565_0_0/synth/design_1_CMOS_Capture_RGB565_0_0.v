// (c) Copyright 1995-2018 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:CMOS_Capture_RGB565:1.0
// IP Revision: 1

(* X_CORE_INFO = "CMOS_Capture_RGB565,Vivado 2018.2" *)
(* CHECK_LICENSE_TYPE = "design_1_CMOS_Capture_RGB565_0_0,CMOS_Capture_RGB565,{}" *)
(* CORE_GENERATION_INFO = "design_1_CMOS_Capture_RGB565_0_0,CMOS_Capture_RGB565,{x_ipProduct=Vivado 2018.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=CMOS_Capture_RGB565,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,CMOS_FRAME_WAITCNT=1010}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_CMOS_Capture_RGB565_0_0 (
  clk_cmos,
  rst_n,
  rst_capture,
  cmos_pclk,
  cmos_xclk,
  cmos_vsync,
  cmos_href,
  cmos_data,
  cmos_frame_vsync,
  cmos_frame_href,
  cmos_frame_data,
  cmos_frame_clken,
  cmos_frame_de,
  cmos_fps_rate,
  locled
);

input wire clk_cmos;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *)
input wire rst_n;
input wire rst_capture;
input wire cmos_pclk;
output wire cmos_xclk;
input wire cmos_vsync;
input wire cmos_href;
input wire [7 : 0] cmos_data;
output wire cmos_frame_vsync;
output wire cmos_frame_href;
output wire [23 : 0] cmos_frame_data;
output wire cmos_frame_clken;
output wire cmos_frame_de;
output wire [7 : 0] cmos_fps_rate;
output wire locled;

  CMOS_Capture_RGB565 #(
    .CMOS_FRAME_WAITCNT(4'B1010)
  ) inst (
    .clk_cmos(clk_cmos),
    .rst_n(rst_n),
    .rst_capture(rst_capture),
    .cmos_pclk(cmos_pclk),
    .cmos_xclk(cmos_xclk),
    .cmos_vsync(cmos_vsync),
    .cmos_href(cmos_href),
    .cmos_data(cmos_data),
    .cmos_frame_vsync(cmos_frame_vsync),
    .cmos_frame_href(cmos_frame_href),
    .cmos_frame_data(cmos_frame_data),
    .cmos_frame_clken(cmos_frame_clken),
    .cmos_frame_de(cmos_frame_de),
    .cmos_fps_rate(cmos_fps_rate),
    .locled(locled)
  );
endmodule
