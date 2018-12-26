`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/02/08 23:40:59
// Design Name: 
// Module Name: vga_display_pic
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


module vga_display_pic 
	#(
	parameter	DH = 320,			//QVGA = 320*240
				DV = 240,
				ADDR_MAX = 76800,	//DH*DV
				ADDR_WIDTH = 17		//地址宽度
	)
	(
	input 			clk_25M,			//vga_clk，25MHz
	input			clk_100M,
	input 			rst_p,				//高电平复位
	input 	[11:0] 	pixel_x,pixel_y,	//行坐标，场坐标
	input			video_on,
	input 	[15:0] 	rgb_din_1,			//RGB565输入
	input 	[15:0] 	rgb_din_2,			//RGB565输入
	input 	[15:0] 	rgb_din_3,			//RGB565输入
	input 	[15:0] 	rgb_din_4,			//RGB565输入
	input	[9:0]	key_x,				//坐标输入
	input	[9:0]	key_y,
	input	[9:0]	key_x_begin,
	input	[9:0]	key_x_end,
	input	[9:0]	key_y_begin,
	input	[9:0]	key_y_end,
	output 	[ADDR_WIDTH-1:0] 	rgb_aout,			//picture地址
	output 	[15:0] 	rgb_dout,			//RGB565输出
	output	wire		shift_clk_en		//均值滤波移位寄存器使能信号
	);

	//信号声明
	reg [ADDR_WIDTH-1:0] addr_reg,addr_next;
	reg [15:0] rgb_data_reg,rgb_data_next;
	wire pic_en_1;						//图片显示使能
	wire pic_en_2;
	wire pic_en_3;
	wire pic_en_4;
	wire [15:0] rgb_bg;					//背景RGB565数据

	assign pic_en_1 = ((pixel_x >= 0 	&& pixel_x < 320) && (pixel_y >= 0 		&& pixel_y < 240));
	assign pic_en_2 = ((pixel_x >= 320 	&& pixel_x < 640) && (pixel_y >= 0 		&& pixel_y < 240));
	assign pic_en_3 = ((pixel_x >= 0 	&& pixel_x < 320) && (pixel_y >= 240 	&& pixel_y < 480));
	assign pic_en_4 = ((pixel_x >= 320 	&& pixel_x < 640) && (pixel_y >= 240 	&& pixel_y < 480));

	always @(posedge clk_25M or posedge rst_p) begin
		if (rst_p) begin
			// reset
			addr_reg <= 0;
			rgb_data_reg <= 0;
		end
		else begin
			addr_reg <= addr_next;
			rgb_data_reg <= rgb_data_next;
		end
	end

	//addr地址下一个状态
	always @(*) begin
		addr_next = addr_reg;
		if (addr_reg == (ADDR_MAX - 1)) begin
			addr_next = 0;
		end else if (pic_en_1) begin
			addr_next = addr_reg + 1;
		end
	end

	wire box_en;
	wire lin_en;
	// wire frame_en;
	// assign box_en = ((pixel_x >= key_x_begin && pixel_x <= key_x_end)&&(pixel_y == key_y_begin || pixel_y == key_y_end))||((pixel_y >= key_y_begin && pixel_y <= key_y_end)&&(pixel_x == key_x_begin || pixel_x == key_x_end));
	assign box_en = (pixel_x == key_x_begin || pixel_x == key_x_end)&&(pixel_y > key_y_begin && pixel_y < key_y_end) || (pixel_y == key_y_begin || pixel_y == key_y_end)&&(pixel_x > key_x_begin && pixel_x < key_x_end);
	assign lin_en = (pixel_x == key_x)||(pixel_y == key_y);
	// assign frame_en = (pixel_x == 0 || pixel_x = 319 || pixel_y == 0 || pixel_y == 239);


	//rgb_data下一个状态
	always @(*) begin
		rgb_data_next = rgb_data_reg;
		if (!video_on) begin
			rgb_data_next = 16'b0;
		end else begin
			if (pic_en_1) begin
				if (lin_en||box_en) begin
					rgb_data_next = 16'b11111_00000_00000;
				end else begin
					rgb_data_next = rgb_din_1;
				end
			end else if (pic_en_2) begin
				if ((pixel_x == 480)||(pixel_y == 120)) begin
					rgb_data_next = 16'b01111_00000_00011;
				end else begin
					rgb_data_next = rgb_din_2;
				end
			end else if (pic_en_3) begin
				rgb_data_next = rgb_din_3;
			end else if (pic_en_4) begin
				rgb_data_next = rgb_din_4;
			end else begin
				rgb_data_next = rgb_bg;
			end
		end
	end

	//3x3移位寄存器使能信号
	reg [1:0] count;	//4分频
	always @(posedge clk_100M or posedge rst_p) begin
		if (rst_p) begin
			// reset
			count <= 2'b0;
		end
		else if (pic_en_1) begin
			count <= count + 1;
		end
	end

	// wire shift_clk_en_0;
	assign shift_clk_en = (count == 2'b10) & (pic_en_1) & (!rst_p);

	// always @(posedge clk_100M or posedge rst_p) begin
	// 	if (rst_p) begin
	// 		// reset
	// 		shift_clk_en <= 1'b0;
	// 	end
	// 	else begin
	// 		shift_clk_en <= shift_clk_en_0;
	// 	end
	// end
	
	// rgb_bg赋值
	assign rgb_bg = 16'b00000_111111_11111;

	//输出逻辑
	assign rgb_dout = rgb_data_reg;
	assign rgb_aout = addr_reg;

endmodule
