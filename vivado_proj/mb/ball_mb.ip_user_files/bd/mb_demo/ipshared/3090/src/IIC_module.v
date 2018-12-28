`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/03/26 18:41:03
// Design Name: 
// Module Name: IIC_module
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


module IIC_module(
	input clk_100M,
	input rst_p,
	output I2C_SCLK,
	inout I2C_SDAT,
	output [7:0] iic_rd_data
    );

	wire [7:0] LUT_INDEX;
	wire [15 : 0] LUT_DATA;
	wire [7 : 0] Slave_Addr;
	IICctrl U_IIC_ctrl (
		.clk_100M(clk_100M),              // input wire iCLK
		.rst_p(rst_p),                // input wire rst
		.I2C_SCLK(I2C_SCLK),      // output wire I2C_SCLK
		.I2C_SDAT(I2C_SDAT),      // inout wire I2C_SDAT
		.LUT_INDEX(LUT_INDEX),    // output wire [7 : 0] LUT_INDEX
		.LUT_DATA(LUT_DATA),      // input wire [15 : 0] LUT_DATA
		.Slave_Addr(Slave_Addr),  // input wire [7 : 0] Slave_Addr
		.iic_rd_data(iic_rd_data)
		);

	ov7725_regData U_ov7725_regData (
		.LUT_INDEX(LUT_INDEX),	// input [7:0] LUT_INDEX,
		.LUT_DATA(LUT_DATA),	// output reg [15:0] LUT_DATA,
		.Slave_Addr(Slave_Addr)	// output [7:0] Slave_Addr
		);
	
endmodule
