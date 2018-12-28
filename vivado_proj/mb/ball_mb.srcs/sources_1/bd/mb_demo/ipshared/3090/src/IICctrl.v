`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/02/20 17:57:40
// Design Name: 
// Module Name: IICctrl
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


module IICctrl #(
	parameter	LUT_SIZE	=	170,	//170
	parameter	CLK_FREQ = 27'd100_000_000,	//100MHz
	parameter	IIC_FREQ = 27'd100_000		//100KHz (<400KHz)
	)
	(
	input				clk_100M,	
    input               rst_p,	 
	output				I2C_SCLK,	
	inout				I2C_SDAT,
	
	output		[7:0]	LUT_INDEX, 
    input		[15:0]	LUT_DATA,	
    input    	[7:0]	Slave_Addr,

    output		[7:0] iic_rd_data
	);

	wire [1:0] iic_cmd;
	wire [7:0] iic_rd_data;
	wire device_done;
	wire iic_ack;

	wire write_done;
	wire read_done;

	iic_driver 	#(
		.CLK_FREQ(CLK_FREQ),
		.IIC_FREQ(IIC_FREQ)
		)
	u_iic_driver (	
		.clk_100M(clk_100M),			// 		input 				clk_100M,		//global clock
		.rst_p(rst_p),					// 		input 				rst_p,			//global reset
		.iic_cmd(iic_cmd),				// 		input		[1:0]	iic_cmd,		//read and write command, 10 write, 01 read
		.iic_dev_addr(Slave_Addr),		// 		input		[7:0]	iic_dev_addr,	//IIC device address
		.iic_reg_addr(LUT_DATA[15:8]),	// 		input		[7:0]	iic_reg_addr,	//IIC register address
		.iic_wr_data(LUT_DATA[7:0]),	// 		input		[7:0]	iic_wr_data,	//IIC write data
		.iic_rd_data(iic_rd_data),		// 		output	reg	[7:0]	iic_rd_data,	//IIC read data
		.device_done(device_done),		// 		output				device_done,
		.iic_ack(iic_ack),				// 		output 	reg 		iic_ack,
		.iic_sclk(I2C_SCLK),			// 		output				iic_sclk,		//IIC SCLK
		.iic_sdat(I2C_SDAT),			// 		inout				iic_sdat		//IIC SDA
		.write_done(write_done),
		.read_done(read_done)
		);		

	cam_test #(
		.CLK_FREQ(CLK_FREQ),
		.IIC_FREQ(IIC_FREQ),
		.LUT_SIZE(LUT_SIZE)
		)
	U_cam_test (
		.clk_100M(clk_100M),			// input clk_100M,
		.rst_p(rst_p),					// input rst_p,
		.en(1'b1),
		.iic_cmd(iic_cmd),				// output reg [1:0] iic_cmd,	//read and write command ,10 write ,10 read
		.LUT_INDEX(LUT_INDEX),			// output [7:0] LUT_INDEX,
		.device_done(device_done),		// input device_done,
		.iic_ack(iic_ack),				// input iic_ack
		.write_done(write_done),		// input
		.read_done(read_done)			// input
		);

endmodule
