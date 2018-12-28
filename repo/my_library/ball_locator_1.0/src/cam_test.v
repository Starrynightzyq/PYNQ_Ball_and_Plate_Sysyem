`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/02/21 17:03:00
// Design Name: 
// Module Name: cam_test
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


module cam_test #(
		parameter	CLK_FREQ = 27'd100_000_000,	//100MHz
		parameter	IIC_FREQ = 27'd100_000,		//100KHz (<400KHz)
		parameter	LUT_SIZE = 170				//最大写入数
	)
	(
	input clk_100M,
	input rst_p,
	input en,

	output reg [1:0] iic_cmd,	//read and write command ,10 write ,10 read
	output [7:0] LUT_INDEX,

	input device_done,
	input iic_ack,

	input write_done,
	input read_done
    );

	reg [7:0] LUT_cnt;

	reg [1:0] state;

	localparam IDLE = 2'd0;
	localparam WRITE = 2'd1;
	localparam STOP = 2'd2;

	// reg	[16:0]	delay_cnt;
	// wire delay_done;
	// always @ ( posedge clk_100M or posedge rst_p ) begin
	// 	if ( rst_p ) begin
	// 		delay_cnt	<= 17'd0;
	// 	end else if ( delay_cnt < ( CLK_FREQ / IIC_FREQ ) ) begin
	// 		delay_cnt	<= delay_cnt + 1'b1;
	// 	end else begin
	// 		delay_cnt	<= 17'd1;
	// 	end
	// end
	// assign delay_done = ( delay_cnt == ( CLK_FREQ / IIC_FREQ ) ) ? 1'b1 : 1'b0;

	//write data
	// wire en;
	// assign en = 1'b1;	//just for test
	always @(posedge clk_100M or posedge rst_p) begin
		if (rst_p) begin
			// reset
			state <= IDLE;
			iic_cmd <= 2'b00;
			LUT_cnt <= 8'd2;
		end
		else if (en) begin
			case(state)
				IDLE:begin
					iic_cmd <= 2'b00;
					if (device_done) begin
						state <= WRITE;
					end else begin
						state <= IDLE;
					end
				end
				WRITE:begin
					iic_cmd <= 2'b10;
					if (write_done) begin 	//((!iic_ack)&write_done)
						if (LUT_cnt < LUT_SIZE) begin
							LUT_cnt <= LUT_cnt + 1;
							state <= WRITE;
						end else begin
							state <= STOP;
						end
					end
				end
				STOP:begin
					iic_cmd <= 2'b00;
				end
				default:begin
					state <= IDLE;
				end
			endcase
		end
	end

	//检测 iic_ack 下降沿
	// reg iic_ack_reg;
	// wire iic_ack_fall;
	// always @(posedge clk_100M) begin
	// 	iic_ack_reg <= iic_ack;
	// end
	// assign iic_ack_fall = (iic_ack_reg)&&(!iic_ack);

	//some output
	assign LUT_INDEX = LUT_cnt;

endmodule
