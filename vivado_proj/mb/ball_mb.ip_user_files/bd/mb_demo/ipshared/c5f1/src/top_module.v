`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/07/28 12:00:03
// Design Name: 
// Module Name: top_module
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


module ov7725_top #(
	ADDR_WIDTH = 17		//地址宽度
	)
	(
	input sys_clk,
	input rst_p,
	// input uart_coms_sel,	//1 uart_pic , 0 cmos_pic
	input en_take_color_i,		//颜色采集使能

	input [7:0] threshold_i,	//阈值
	output [11:0] coord_x_o,	//x坐标
	output [11:0] coord_y_o,	//y坐标
	output coord_valid_o,		//坐标变换信号
	// OV7725
	input [7:0] OV7725_D,
	input OV7725_HREF,
	input OV7725_PCLK,
	input OV7725_VSYNC,
	inout OV7725_SIOD,
	output OV7725_SIOC,
	output OV7725_XCLK,
	output OV7725_PWND,
	output OV7725_RST,
	//vga
	output vga_hsync,
	output vga_vsync,
	output [11:0] vga_data	//RGB444 out
	//uart
	// output uart_tx,
	// input uart_rx
    );

	//VGA模块
	wire [11:0] pixel_x_o_vga;
	wire [11:0] pixel_y_o_vga;
	wire [15:0] rgb_dout;
	wire [ADDR_WIDTH-1:0] vga_aout;	//vga输出的picture地址
	wire shift_clk_en_o_vga;		//均值滤波移位寄存器使能信号
	vga_module U_vga_module(
		.clk_25M(clk_25M),		//input clk_25M,
		.clk_100M(clk_100M),
		.rst_p(rst_p),			//input rst_p,
		.rgb_din_1({16{dout_ed}}),		//input [15:0] rgb_din,
		.rgb_din_2(s_ram_16_dout),
		.rgb_din_3(),	
		.rgb_din_4(),
		.key_x(pro_coord_x_o),
		.key_y(pro_coord_y_o),
		.key_x_begin(key_x_begin),
		.key_x_end(key_x_end),
		.key_y_begin(key_y_begin),
		.key_y_end(key_y_end),
		.hsync(vga_hsync),		//output hsync,
		.vsync(vga_vsync),		//output vsync,
		.rgb_dout(rgb_dout),	//output [15:0] rgb_dout	//RGB565输出
		.rgb_aout(vga_aout),		//output [15:0] rgb_aout 	//地址
		.shift_clk_en(shift_clk_en_o_vga),		// output			shift_clk_en		//均值滤波移位寄存器使能信号
		.pixel_x(pixel_x_o_vga),
		.pixel_y(pixel_y_o_vga)
		);


 	//16bit 移位寄存器
 	wire [15:0] s_ram_16_dout;
	shift_ram_16bit U_shift_ram_16bit (
		.D(ram_dout),        // input wire [15 : 0] D
		.CLK(clk_25M),    // input wire CLK
		.SCLR(rst_p),  // input wire SCLR
		.Q(s_ram_16_dout)        // output wire [15 : 0] Q
		);

	//时钟分频 100MHz -> 25MHz
	wire clk_25M;
	wire clk_100M;
	clk_wiz U_clk_wiz (
	// Clock out ports
	.clk_out1(clk_100M),     // output clk_out1	100M
	.clk_out2(clk_25M),     // output clk_out2	25M
	// Status and control signals
	.reset(rst_p), // input reset
	// Clock in ports
	.clk_in1(sys_clk));      // input clk_in1   		

	//cmos module
	wire [15:0] camera_dout;	//camera输出RGB565
	wire [ADDR_WIDTH-1:0] camera_aout;	//camera的地址输出
	wire camera_we;
	camera_module #(
		.ADDR_WIDTH(ADDR_WIDTH)	//地址宽度
		)
	U_camera_module (
		.clk_100M(clk_100M),
		.clk_25M(clk_25M),
		.rst_p(rst_p),
		.OV7725_D(OV7725_D),
		.OV7725_HREF(OV7725_HREF),
		.OV7725_PCLK(OV7725_PCLK),
		.OV7725_VSYNC(OV7725_VSYNC),
		.OV7725_SIOD(OV7725_SIOD),
		.OV7725_SIOC(OV7725_SIOC),
		.OV7725_XCLK(OV7725_XCLK),
		.camera_dout(camera_dout),
		.camera_aout(camera_aout),
		.we(camera_we)
		);

	//uart_pic
	// wire [16:0] uart_pic_aout;
	// wire [15:0] uart_pic_dout;	//rgb565
	// wire uart_wea;
	// uart_pic_module #(
	// 	.Baud_Rate(115200)	//波特率，9600、19200、38400、57600、115200
	// 	)
	// U_uart_pic_module 
	// 	(
	// 	.clk_100M(clk_100M),
	// 	.rst_p(rst_p),
	// 	.rx(uart_rx),// 	input rx,				//uart input
	// 	.uart_pic_aout(uart_pic_aout),// 	output [16:0] uart_pic_aout,
	// 	.uart_pic_dout(uart_pic_dout),// 	output [15:0] uart_pic_dout,	//rgb565
	// 	.wea(uart_wea),// 	output wea,
	// 	.fifo_full(),
	// 	.fifo_empty()
	// 	);

	//camera ram
	wire [15:0] ram_dout;	//ram输出的RGB565数据
	wire [16 : 0] ram_ain;
	wire [15 : 0] ram_din;
	wire [0 : 0] ram_wea;
	ram_pic U_ram_pic (
		.clka(clk_100M),    // input wire clka
		.wea(ram_wea),      // input wire [0 : 0] wea
		.addra(ram_ain),  // input wire [16 : 0] addra
		.dina(ram_din),    // input wire [15 : 0] dina
		.clkb(clk_25M),    // input wire clkb
		.addrb(vga_aout),  // input wire [16 : 0] addrb
		.doutb(ram_dout)  // output wire [15 : 0] doutb
		);

//-----------------------------------------------------------------
//-----------------uart_pic or cmos_pic select---------------------
	assign ram_ain = camera_aout;
	assign ram_din = camera_dout;
	assign ram_wea = camera_we;
//-----------------------------------------------------------------
//-----------------------------------------------------------------

	//中值滤波 RGB888 -> RGB888
	wire [7:0] med_R_dout;
	wire [7:0] med_G_dout;
	wire [7:0] med_B_dout;
	wire shift_clk_en_o_med;
	wire [11:0] pixel_x_o_med;
	wire [11:0] pixel_y_o_med;
	wire med_en;
	assign med_en = 1'b1;
	median_filter_rgb888 U_median_filter_rgb888 (
		.clk_100M(clk_100M),
		.rst_p(rst_p),
		.shift_clk_en_i(shift_clk_en_o_vga),	// 	input shift_clk_en,		//移位寄存器时钟使能信号
		.pixel_x_i(pixel_x_o_vga),
		.pixel_y_i(pixel_y_o_vga),
		.med_en(med_en),
		.img_R_in({ram_dout[15:11],ram_dout[15:13]}),	//5+3
		.img_G_in({ram_dout[10:5],ram_dout[10:9]}),	//6+2
		.img_B_in({ram_dout[4:0],ram_dout[4:2]}),	//5+3
		.img_R_out(med_R_dout),
		.img_G_out(med_G_dout),
		.img_B_out(med_B_dout),
		.shift_clk_en_o(shift_clk_en_o_med),
		.pixel_x_o(pixel_x_o_med),
		.pixel_y_o(pixel_y_o_med)
		);

	//RGB_888 to YCrCb
	//Y分量灰度输出
	wire [7:0] img_Y;
	wire [7:0] img_Cr;
	wire [7:0] img_Cb;
	wire shift_clk_en_o_YCrCb;
	wire [11:0] pixel_x_o_YCrCb;
	wire [11:0] pixel_y_o_YCrCb;
	RGB888_to_YCrCb U_RGB888_to_YCrCb (
		.clk_100M(clk_100M),
		.rst_p(rst_p),
		.cmos_R(med_R_dout),		// input [4:0] cmos_R,
		.cmos_G(med_G_dout),		// input [5:0] cmos_G,
		.cmos_B(med_B_dout),			// input [4:0] cmos_B,
		.shift_clk_en_i(shift_clk_en_o_med),
		.pixel_x_i(pixel_x_o_med),
		.pixel_y_i(pixel_y_o_med),
		.Y(img_Y),		// output [7:0] Y,
		.Cr(img_Cr),	// output [7:0] Cr,
		.Cb(img_Cb),	// output [7:0] Cb 
		.shift_clk_en_o(shift_clk_en_o_YCrCb),
		.pixel_x_o(pixel_x_o_YCrCb),
		.pixel_y_o(pixel_y_o_YCrCb)
		);

 	//颜色采集
 	wire en_take_color;
 	assign en_take_color = en_take_color_i;	//just for test
 	wire [15:0] color_sample;
 	take_color U_take_color (
 		.clk_100M(clk_100M),
 		.rst_p(rst_p),
 		.en(en_take_color),
 		.CrCb({img_Cr,img_Cb}),
 		.shift_clk_en(shift_clk_en_o_YCrCb),
 		.pixel_x(pixel_x_o_YCrCb),
 		.pixel_y(pixel_y_o_YCrCb),
 		.color_sample(color_sample)
 		);


 	//颜色二值化
 	wire [7:0] THRESHOLD;
 	wire cmp_en;
 	wire cmp_bit_out;
 	wire shift_clk_en_o_cmp;
	wire [11:0] pixel_x_o_cmp;
	wire [11:0] pixel_y_o_cmp;
 	assign cmp_en = 1'b1;
 	// assign THRESHOLD = 8'h35;	//just for test
 	assign THRESHOLD = threshold_i;
 	color_comparator U_color_comparator (
 		.clk_100M(clk_100M),
 		.rst_p(rst_p),
 		.en(cmp_en),
 		.color_to_compare({img_Cr,img_Cb}),
 		.color_sample(color_sample),
 		.color_threshold({2{THRESHOLD}}),
		.shift_clk_en_i(shift_clk_en_o_YCrCb),
		.pixel_x_i(pixel_x_o_YCrCb),
		.pixel_y_i(pixel_y_o_YCrCb),
		.shift_clk_en_o(shift_clk_en_o_cmp),
		.pixel_x_o(pixel_x_o_cmp),
		.pixel_y_o(pixel_y_o_cmp),
 		.bit_data(cmp_bit_out)
 		);

 	//腐蚀膨胀
 	wire ed_en;
 	wire dout_ed;
 	wire shift_clk_en_o_ed;
	wire [11:0] pixel_x_o_ed;
	wire [11:0] pixel_y_o_ed;
 	assign ed_en = 1'b1;	//just for test
 	erosion_dilation U_erosion_dilation (
 		.clk_100M(clk_100M),
 		.rst_p(rst_p),
 		.en(ed_en),
 		.din(cmp_bit_out),
 		.shift_clk_en_i(shift_clk_en_o_cmp),
		.pixel_x_i(pixel_x_o_cmp),
		.pixel_y_i(pixel_y_o_cmp),
 		.shift_clk_en_o(shift_clk_en_o_ed),
		.pixel_x_o(pixel_x_o_ed),
		.pixel_y_o(pixel_y_o_ed),
 		.dout(dout_ed)
 		);

 	//水平垂直投影分割
 	wire [11:0] pro_coord_x_o;
 	wire [11:0] pro_coord_y_o;
 	projection_segment U_projection_segment (
 		.clk_100M(clk_100M),
 		.clk_25M(clk_25M),
 		.rst_p(rst_p),
 		.pixel_x_i(pixel_x_o_ed),
 		.pixel_y_i(pixel_y_o_ed),
 		.img_bit_i(dout_ed),
 		.shift_clk_en_i(shift_clk_en_o_ed),
 		.coord_x(pro_coord_x_o),
 		.coord_y(pro_coord_y_o),
 		.coord_valid(coord_valid_o)
 		);

	assign OV7725_RST = 1'b1;
	assign OV7725_PWND = 1'b0;
	assign vga_data = {rgb_dout[15:12],rgb_dout[10:7],rgb_dout[4:1]};
	// assign hsync = vga_hsync;
	// assign vsync = vga_vsync;
	assign coord_x_o = pro_coord_x_o;
	assign coord_y_o = pro_coord_y_o;

endmodule
