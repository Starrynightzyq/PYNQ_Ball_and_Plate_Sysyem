`timescale 1ns / 1ps
module alinx_ov5640
#(
   parameter BUFFER_DEPTH = 4096
)
(
	input                                        cmos_vsync,       //cmos vsync
	input                                        cmos_href,        //cmos hsync refrence
	input                                        cmos_pclk,        //cmos pxiel clock
	input   [7:0]                                cmos_d,           //cmos data

	// AXI4-Stream signals
	input                                        m_axis_video_aclk,     // AXI4-Stream clock
	input                                        m_axis_video_aresetn,  // AXI4-Stream reset, active low 
	output reg [15:0]                            m_axis_video_tdata,    // AXI4-Stream data
	output reg                                   m_axis_video_tvalid,   // AXI4-Stream valid 
	input                                        m_axis_video_tready,   // AXI4-Stream ready 
	output reg                                   m_axis_video_tuser,    // AXI4-Stream tuser (SOF)
	output reg                                   m_axis_video_tlast,    // AXI4-Stream tlast (EOL)
	output reg [1:0]                             m_axis_video_tkeep     // AXI4-Stream tkeep
	
    );
// assign        m_axis_video_tkeep = 2'b11;
wire[15:0]    cmos_d_16bit;
wire          cmos_href_16bit;
reg[7:0]      cmos_d_d0;
reg           cmos_href_d0;
reg           cmos_vsync_d0;
reg           cmos_vsync_d1;
wire          cmos_hblank;
reg           s_axis_tlast;
reg           s_axis_tuser;
// wire          s_axis_tready;
reg           cmos_hblank_d0;
reg           cmos_hblank_d1;
reg           cmos_href_16bit_d0;
reg           cmos_href_16bit_d1;
reg[15:0]     cmos_d_16bit_d0;
reg[15:0]     cmos_d_16bit_d1;
wire          s_axis_tvalid = cmos_href_16bit_d1 & cmos_hblank_d1;
wire[15:0]    s_axis_tdata = cmos_d_16bit_d1;
reg[31:0]     reset_cnt;
// reg[31:0]     fifo_ready_cnt;
// reg           fifo_ready;
reg           cmos_aresetn;
// (* ASYNC_REG="true" *) reg           axis_reset;
// (* ASYNC_REG="true" *) reg           fifo_ready_maxis;
// always@(posedge m_axis_video_aclk)
// begin
//     axis_reset <= cmos_aresetn;
//     fifo_ready_maxis <= fifo_ready;
// end
always@(posedge cmos_pclk)
begin
    if(reset_cnt < 32'd200_000_000)
    begin
        reset_cnt <= reset_cnt + 32'd1;
        cmos_aresetn <= 1'b0;
    end
    else
    begin
        cmos_aresetn <= 1'b1;
    end
end

// always@(posedge cmos_pclk)
// begin
//     if(cmos_aresetn == 1'b0)
//     begin
//         fifo_ready_cnt <= 32'd0;
//         fifo_ready <= 1'b0;
//     end
//     else if(fifo_ready_cnt < 32'd100_000_000)
//     begin
//         fifo_ready_cnt <= fifo_ready_cnt + 32'd1;
//         fifo_ready <= 1'b0;
//     end
//     else
//     begin
//         fifo_ready <= 1'b1;
//     end
// end

always@(posedge cmos_pclk)
begin
    if(cmos_aresetn == 1'b0)
    begin
        cmos_d_d0 <= 8'd0;
        cmos_href_d0 <= 1'b0;
        cmos_vsync_d0 <= 1'b0;
        cmos_vsync_d1 <= 1'b0;
    end
    else
    begin
        cmos_d_d0 <= cmos_d;
        cmos_href_d0 <= cmos_href;
        cmos_vsync_d0 <= cmos_vsync;
        cmos_vsync_d1 <= cmos_vsync_d0;
    end    
end

cmos_8_16bit cmos_8_16bit_m0(
	.rst(~cmos_aresetn),
	.pclk(cmos_pclk),
	.pdata_i(cmos_d_d0),
	.de_i(cmos_href_d0),
	.pdata_o(cmos_d_16bit),
	.hblank(cmos_hblank),
	.de_o(cmos_href_16bit)
);
always@(posedge cmos_pclk)
begin
    if(cmos_aresetn == 1'b0)
    begin
        cmos_hblank_d0 <= 1'b0;
        cmos_hblank_d1 <= 1'b0;
        cmos_d_16bit_d0 <= 1'b0;
        cmos_d_16bit_d1 <= 1'b0;
        cmos_href_16bit_d0 <= 1'b0;
        cmos_href_16bit_d1 <= 1'b0;
        s_axis_tlast <= 1'b0;
	end
	else
    begin
        cmos_hblank_d0 <= cmos_hblank;
        cmos_hblank_d1 <= cmos_hblank_d0;
        cmos_d_16bit_d0 <= cmos_d_16bit;
        cmos_d_16bit_d1 <= cmos_d_16bit_d0;
        cmos_href_16bit_d0 <= cmos_href_16bit;
        cmos_href_16bit_d1 <= cmos_href_16bit_d0;
        s_axis_tlast <= cmos_hblank_d0 & ~cmos_hblank;
    end	
end

always@(posedge cmos_pclk)
begin
    if(cmos_aresetn == 1'b0)
        s_axis_tuser <= 1'b0;
	else if(cmos_vsync_d1 == 1'b1 && cmos_vsync_d0 == 1'b0)
		s_axis_tuser <= 1'b1;
	else if(s_axis_tuser == 1'b1 && s_axis_tvalid == 1'b1)
		s_axis_tuser <= 1'b0;
end

// assign m_axis_video_tvalid = m_axis_video_tready;
// assign s_axis_tready = ~full;


always @(posedge m_axis_video_aclk or negedge m_axis_video_aresetn) begin
	if (!m_axis_video_aresetn) begin
		// reset
		m_axis_video_tdata 	<= 16'b0;
		m_axis_video_tvalid <= 1'b0;
		m_axis_video_tuser 	<= 1'b0;
		m_axis_video_tlast 	<= 1'b0;
		m_axis_video_tkeep 	<= 1'b0;
	end
	else begin
		m_axis_video_tdata 	<= s_axis_tdata;
		m_axis_video_tvalid <= m_axis_video_tready;
		m_axis_video_tuser 	<= s_axis_tuser;
		m_axis_video_tlast 	<= s_axis_tlast;
		m_axis_video_tkeep 	<= 2'b11;
	end
end
// assign {m_axis_video_tdata,m_axis_video_tlast,m_axis_video_tuser} = {s_axis_tdata,s_axis_tlast,s_axis_tuser};

endmodule
