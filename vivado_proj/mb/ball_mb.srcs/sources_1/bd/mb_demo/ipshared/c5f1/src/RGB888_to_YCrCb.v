`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/03/02 12:52:12
// Design Name: 
// Module Name: RGB888_to_YCrCb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: RGB转YCbCr cost 3 clk_T
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

//--------------------------------------------
/*Refer to <OV7725 Camera Module Software Applicaton Note> page 5
     Y     =    (77 *R     +     150*G     +     29 *B)>>8
     Cb     =    (-43*R    -     85 *G    +     128*B)>>8 + 128
     Cr     =    (128*R     -    107*G      -    21 *B)>>8 + 128
 --->
     Y     =    (77 *R     +     150*G     +     29 *B)>>8
     Cb     =    (-43*R    -     85 *G    +     128*B + 32768)>>8
     Cr     =    (128*R     -    107*G      -    21 *B + 32768)>>8*/
//--------------------------------------------

module RGB888_to_YCrCb(
	input clk_100M,
	input rst_p,
	input [7:0] cmos_R,
	input [7:0] cmos_G,
	input [7:0] cmos_B,
	input wire shift_clk_en_i,
	input wire [11:0] pixel_x_i,
	input wire [11:0] pixel_y_i,
	output [7:0] Y,
	output [7:0] Cr,
	output [7:0] Cb,
	output wire shift_clk_en_o,
	output wire [11:0] pixel_x_o,
	output wire [11:0] pixel_y_o
    );

	//RGB565 to RGB888
	wire [7:0] cmos_R0;
	wire [7:0] cmos_G0;
	wire [7:0] cmos_B0;

	assign cmos_R0 = {cmos_R};
	assign cmos_G0 = {cmos_G};
	assign cmos_B0 = {cmos_B};

	//RGB888 to YCrCb
	//step1 consume 1 clock
	reg	[15:0]	cmos_R1,cmos_R2,cmos_R3;
	reg	[15:0]	cmos_G1,cmos_G2,cmos_G3;
	reg	[15:0]	cmos_B1,cmos_B2,cmos_B3;

	always @(posedge clk_100M or posedge rst_p) begin
		if (rst_p) begin
			// reset
			cmos_R1 <= 16'd0;
			cmos_G1 <= 16'd0;
			cmos_B1 <= 16'd0;
			cmos_R2 <= 16'd0;
			cmos_G2 <= 16'd0;
			cmos_B2 <= 16'd0;
			cmos_R3 <= 16'd0;
			cmos_G3 <= 16'd0;
			cmos_B3 <= 16'd0;
		end
		else begin
			cmos_R1 <= cmos_R0 * 8'd77;
			cmos_G1 <= cmos_G0 * 8'd150;
			cmos_B1 <= cmos_B0 * 8'd29;
			cmos_R2 <= cmos_R0 * 8'd43;
			cmos_G2 <= cmos_G0 * 8'd85;
			cmos_B2 <= cmos_B0 * 8'd128;
			cmos_R3 <= cmos_R0 * 8'd128;
			cmos_G3 <= cmos_G0 * 8'd107;
			cmos_B3 <= cmos_B0 * 8'd21;
		end
	end

	//step2 consume 1 clock
	reg [15:0] img_Y0;
	reg [15:0] img_Cb0;
	reg [15:0] img_Cr0;

	always @(posedge clk_100M or posedge rst_p) begin
		if (rst_p) begin
			// reset
			img_Y0 <= 16'd0;
			img_Cb0 <= 16'd0;
			img_Cr0 <= 16'd0;
		end
		else begin
			img_Y0 <= cmos_R1 + cmos_G1 + cmos_B1;
			img_Cb0 <= 16'd32768 + cmos_B2 - cmos_R2 - cmos_G2;
			img_Cr0 <= 16'd32768 + cmos_R3 - cmos_G3 - cmos_B3;
		end
	end

	//step3 consume 1 cloclk
	reg [7:0] img_Y1;
	reg [7:0] img_Cb1;
	reg [7:0] img_Cr1;

	always @(posedge clk_100M or posedge rst_p) begin
		if (rst_p) begin
			// reset
			img_Y1 <= 8'd0;
			img_Cb1 <= 8'd0;
			img_Cr1 <= 8'd0;
		end
		else begin
			img_Y1 <= img_Y0[15:7];
			img_Cb1 <= img_Cb0[15:7];
			img_Cr1 <= img_Cr0[15:7];
		end
	end

	//shift_clk_en 延迟三个时钟周期
	parameter NUM_T = 3;
	reg [NUM_T-1:0] shift_clk_en_buf;
	always @(posedge clk_100M or posedge rst_p) begin
		if (rst_p) begin
			// reset
			shift_clk_en_buf[NUM_T-1:0] <= 0;
		end
		else begin
			shift_clk_en_buf[NUM_T-1:0] <= {shift_clk_en_buf[NUM_T-2:0], shift_clk_en_i};
		end
	end
	assign shift_clk_en_o = shift_clk_en_buf[NUM_T-1];

	//pixel_x_y delay 3
	reg [11:0] pixel_x_delay_1;
	reg [11:0] pixel_x_delay_2;
	reg [11:0] pixel_x_delay_3;
	reg [11:0] pixel_y_delay_1;
	reg [11:0] pixel_y_delay_2;
	reg [11:0] pixel_y_delay_3;

	always @(posedge clk_100M or posedge rst_p) begin
		if (rst_p) begin
			// reset
			pixel_x_delay_1 <= 12'b0;
			pixel_x_delay_2 <= 12'b0;
			pixel_x_delay_3 <= 12'b0;
			pixel_y_delay_1 <= 12'b0;
			pixel_y_delay_2 <= 12'b0;
			pixel_y_delay_3 <= 12'b0;
		end
		else begin
			pixel_x_delay_1 <= pixel_x_i;
			pixel_x_delay_2 <= pixel_x_delay_1;
			pixel_x_delay_3 <= pixel_x_delay_2;
			pixel_y_delay_1 <= pixel_y_i;
			pixel_y_delay_2 <= pixel_y_delay_1;
			pixel_y_delay_3 <= pixel_y_delay_2;
		end
	end
	assign pixel_x_o = pixel_x_delay_3;
	assign pixel_y_o = pixel_y_delay_3;



	assign Y = img_Y1;
	assign Cr = img_Cr1;
	assign Cb = img_Cb1;

endmodule
