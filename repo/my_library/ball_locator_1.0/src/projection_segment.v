`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/08/13 22:17:34
// Design Name: 
// Module Name: projection_segment
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 投影分割模块
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module projection_segment(
	input clk_100M,
	input clk_25M,
	input rst_p,
	(*mark_debug="true"*)input [11:0] pixel_x_i,
	(*mark_debug="true"*)input [11:0] pixel_y_i,
	(*mark_debug="true"*)input img_bit_i,
	(*mark_debug="true"*)input shift_clk_en_i,
	(*mark_debug="true"*)output reg [11:0] coord_x,
	(*mark_debug="true"*)output reg [11:0] coord_y,
	(*mark_debug="true"*)output reg coord_valid
    );

	wire x_hist_we;
	wire [11:0] x_hist_wr_bits;
	wire [11:0] x_hist_rd_bits;
	wire [8:0] x_hist_wr_addr;
	wire [8:0] x_hist_rd_addr;
	assign x_hist_rd_addr = bulid_on ? pixel_x_i[8:0] : 9'b0;

	histogram_x U_histogram_x (
		.clka(clk_100M),    // input wire clka
		.wea(x_hist_we),      // input wire [0 : 0] wea
		.addra(x_hist_wr_addr),  // input wire [8 : 0] addra
		.dina(x_hist_wr_bits),    // input wire [11 : 0] dina
		.clkb(clk_100M),    // input wire clkb
		.addrb(x_hist_rd_addr),  // input wire [8 : 0] addrb
		.doutb(x_hist_rd_bits)  // output wire [11 : 0] doutb
		);
		
	wire y_hist_we;
	wire [11:0] y_hist_wr_bits;
	wire [11:0] y_hist_rd_bits;
	wire [7:0] y_hist_wr_addr;
	wire [7:0] y_hist_rd_addr;
	assign y_hist_rd_addr = bulid_on ? pixel_y_i[7:0] : 8'b0;

	histogram_y U_histogram_y (
		.clka(clk_100M),    // input wire clka
		.wea(y_hist_we),      // input wire [0 : 0] wea
		.addra(y_hist_wr_addr),  // input wire [7 : 0] addra
		.dina(y_hist_wr_bits),    // input wire [11 : 0] dina
		.clkb(clk_100M),    // input wire clkb
		.addrb(y_hist_rd_addr),  // input wire [7 : 0] addrb
		.doutb(y_hist_rd_bits)  // output wire [11 : 0] doutb
		);

	//定义常数
	//VGA 640 * 480 同步参数
	parameter VGA_HD = 12'd640;	//水平显示区域
	parameter VGA_VD = 12'd480;	//垂直显示区域
	//camear
	parameter CAM_HD = 12'd320;
	parameter CAM_VD = 12'd240;

	reg img_bit_delay1;
	reg img_bit_delay2;
	wire img_bit_delay_done;

	reg shift_clk_en_delay1;
	reg shift_clk_en_delay2;
	wire shift_clk_en_delay_done;

	reg [11:0] x_hist_rd_addr_delay1;
	reg [11:0] x_hist_rd_addr_delay2;
	wire [11:0] x_hist_rd_addr_delay_done;

	reg [11:0] y_hist_rd_addr_delay1;
	reg [11:0] y_hist_rd_addr_delay2;
	wire [11:0] y_hist_rd_addr_delay_done;

	always @(posedge clk_100M or posedge rst_p) begin
		if (rst_p) begin
			// reset
			img_bit_delay1 <= 1'b0;
			img_bit_delay2 <= 1'b0;

			shift_clk_en_delay1 <= 1'b0;
			shift_clk_en_delay2 <= 1'b0;

			x_hist_rd_addr_delay1 <= 9'b0;
			x_hist_rd_addr_delay2 <= 9'b0;

			y_hist_rd_addr_delay1 <= 8'b0;
			y_hist_rd_addr_delay2 <= 8'b0;
		end
		else begin
			img_bit_delay1 <= img_bit_i;
			img_bit_delay2 <= img_bit_delay1;

			shift_clk_en_delay1 <= shift_clk_en_i;
			shift_clk_en_delay2 <= shift_clk_en_delay1;

			x_hist_rd_addr_delay1 <= pixel_x_i;
			x_hist_rd_addr_delay2 <= x_hist_rd_addr_delay1;

			y_hist_rd_addr_delay1 <= pixel_y_i;
			y_hist_rd_addr_delay2 <= y_hist_rd_addr_delay1;
		end
	end
	assign img_bit_delay_done = img_bit_delay1;
	assign shift_clk_en_delay_done = shift_clk_en_delay1;
	assign x_hist_rd_addr_delay_done = x_hist_rd_addr_delay2;
	assign y_hist_rd_addr_delay_done = y_hist_rd_addr_delay1;

	wire [11:0] x_hist_wr_bits_temp;
	wire [11:0] y_hist_wr_bits_temp;
	assign x_hist_wr_bits_temp = x_hist_rd_bits + img_bit_delay_done;
	assign y_hist_wr_bits_temp = y_hist_rd_bits + img_bit_delay_done;

	(*mark_debug="true"*)wire bulid_on;
	(*mark_debug="true"*)wire clear_on;
	(*mark_debug="true"*)wire build_end;
	(*mark_debug="true"*)wire clear_end;
	assign bulid_on = (x_hist_rd_addr_delay_done >= 12'b0) && (x_hist_rd_addr_delay_done < CAM_HD) && (y_hist_rd_addr_delay_done >= 12'b0) && (y_hist_rd_addr_delay_done < CAM_VD);
	assign clear_on = (x_hist_rd_addr_delay_done >= 12'b0) && (x_hist_rd_addr_delay_done < VGA_HD) && (y_hist_rd_addr_delay_done >= CAM_VD) && (y_hist_rd_addr_delay_done < VGA_VD);
	assign build_end = (x_hist_rd_addr_delay_done == CAM_HD-12'b1) && (y_hist_rd_addr_delay_done == CAM_VD-12'b1);
	assign clear_end = (x_hist_rd_addr_delay_done == VGA_HD-12'b1) && (y_hist_rd_addr_delay_done == VGA_VD-12'b1);


	// x_hist_wr_addr = 9'b0;
	// x_hist_wr_bits = 12'b0;
	// x_hist_we = 1'b0;

	// y_hist_wr_addr = 8'b0;
	// y_hist_wr_bits = 12'b0;
	// y_hist_we = 1'b0;
	
	assign x_hist_wr_addr = bulid_on ? x_hist_rd_addr_delay_done : clear_on ? x_hist_rd_addr_delay_done : 0;
	assign y_hist_wr_addr = bulid_on ? y_hist_rd_addr_delay_done : clear_on ? (y_hist_rd_addr_delay_done - 12'd240) : 0;
	assign x_hist_wr_bits = bulid_on ? x_hist_wr_bits_temp : clear_on ? 1'b0 : 1'b0;
	assign y_hist_wr_bits = bulid_on ? y_hist_wr_bits_temp : clear_on ? 1'b0 : 1'b0;
	assign x_hist_we = bulid_on ? shift_clk_en_delay_done : clear_on ? 1'b1 : 1'b0;
	assign y_hist_we = bulid_on ? shift_clk_en_delay_done : clear_on ? 1'b1 : 1'b0;

	(*mark_debug="true"*)reg [11:0] x_max_pixel_num;
	(*mark_debug="true"*)reg [11:0] y_max_pixel_num;
	(*mark_debug="true"*)reg [11:0] x_max_pixel_addr;
	(*mark_debug="true"*)reg [11:0] y_max_pixel_addr;

	always @(posedge clk_100M or posedge rst_p) begin
		if (rst_p) begin
			// reset
			x_max_pixel_num <= 12'b0;
			y_max_pixel_num <= 12'b0;
			x_max_pixel_addr <= 12'b0;
			y_max_pixel_addr <= 12'b0;
		end
		else begin
			if (bulid_on) begin
				if (shift_clk_en_delay_done) begin
					if (x_hist_wr_bits_temp > x_max_pixel_num) begin
						x_max_pixel_num <= x_hist_wr_bits_temp;
						x_max_pixel_addr <= x_hist_rd_addr_delay_done;
					end
					if (y_hist_wr_bits_temp > y_max_pixel_num) begin
						y_max_pixel_num <= y_hist_wr_bits_temp;
						y_max_pixel_addr <= y_hist_rd_addr_delay_done;
					end
				end
			end else if(clear_on) begin
				x_max_pixel_num <= 12'b0;
				y_max_pixel_num <= 12'b0;
			end
		end
	end

	always @(posedge clk_100M or posedge rst_p) begin
		if (rst_p) begin
			// reset
			coord_x <= 12'b0;
			coord_y <= 12'b0;
		end
		else if (build_end_up) begin
			coord_x <= x_max_pixel_addr;
			coord_y <= y_max_pixel_addr;
		end
	end

	reg build_end_1;
	(*mark_debug="true"*)wire build_end_up;
	(*mark_debug="true"*)wire build_end_down;
	always @(posedge clk_100M) begin
		build_end_1 <= build_end;
	end
	assign build_end_up = (build_end == 1'b1)&&(build_end_1 == 1'b0);
	assign build_end_down = (build_end == 1'b0)&&(build_end_1 == 1'b1);

	always @(posedge clk_100M or posedge rst_p) begin
		if (rst_p) begin
			// reset
			coord_valid <= 1'b0;
		end
		else begin
			coord_valid <= build_end_down;
		end
	end

endmodule
