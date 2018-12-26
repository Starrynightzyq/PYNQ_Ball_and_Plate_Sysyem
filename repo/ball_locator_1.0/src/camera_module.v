`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/02/13 02:54:50
// Design Name: 
// Module Name: camera_module
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module camera_module #(
	parameter ADDR_WIDTH = 17		//地址宽度
	)
	(
	input clk_100M,
	input clk_25M,
	input rst_p,
	input [7:0] OV7725_D,
	input OV7725_HREF,
	input OV7725_PCLK,
	input OV7725_VSYNC,
	inout OV7725_SIOD,
	output OV7725_SIOC,
	output OV7725_XCLK,					//25MHz时钟输出
	output [15:0] camera_dout,
	output [ADDR_WIDTH-1:0] camera_aout,
	output we
    );

    // I2C_AV_Config U_I2C_AV_Config (
    // 	.clk_100M(clk_100M),			//100MHz
    // 	.clk_25M(clk_25M),
    // 	.rst_p(rst_p),		//Global Reset
    // 	.I2C_SCLK(OV7725_SIOC),	//I2C CLOCK,	output
    // 	.I2C_SDAT(OV7725_SIOD)	//I2C DATA,		inout
    // 	);

    IIC_module CMOS_IIC_module (
    .clk_100M(clk_100M),
    .rst_p(rst_p),
    .I2C_SCLK(OV7725_SIOC),
    .I2C_SDAT(OV7725_SIOD),
    .iic_rd_data()
    );
    
    // camera_read U_camera_read (
    // 	.pclk(OV7725_PCLK),		// input pclk,
    // 	.vsync(OV7725_VSYNC),	// input vsync,
    // 	.href(OV7725_HREF),		// input href,
    // 	.din(OV7725_D),			// input[7:0] d,
    // 	.addr(camera_aout),		// output[16:0] addr,
    // 	.dout(camera_dout),		// output reg[15:0] dout,
    // 	.we(we)					// output reg we
    // 	);

    cam_ov7670_ov7725_example U_cam_ov7725_read (
        .pclk(OV7725_PCLK),    // input wire pclk
        .vsync(OV7725_VSYNC),  // input wire vsync
        .href(OV7725_HREF),    // input wire href
        .d(OV7725_D),          // input wire [7 : 0] d
        .H_cnt(),  // output wire [11 : 0] H_cnt
        .V_cnt(),  // output wire [10 : 0] V_cnt
        .addr(camera_aout),    // output wire [16 : 0] addr
        .dout(camera_dout),    // output wire [15 : 0] dout
        .we(we),        // output wire we
        .wclk()    // output wire wclk
        );

    //输出
    assign OV7725_XCLK = clk_25M;

endmodule
