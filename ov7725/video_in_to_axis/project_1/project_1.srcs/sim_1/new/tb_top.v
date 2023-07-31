`timescale 1ns / 1ps

module tb_top();

reg vid_io_in_clk;//  input wire vid_io_in_clk,
reg vid_io_in_ce;  //input wire vid_io_in_ce,
reg vid_io_in_reset;  //input wire vid_io_in_reset,
reg vid_active_video;  //input wire vid_active_video,//
reg vid_vblank;//  input wire vid_vblank,
reg vid_hblank;//  input wire vid_hblank,
reg vid_vsync;  //input wire vid_vsync, //
reg vid_hsync;  //input wire vid_hsync, //
reg vid_field_id;  //input wire vid_field_id,
reg [23 : 0] vid_data;  //input wire [23 : 0] vid_data, //

reg aclk;  //input wire aclk,
reg aclken;  //input wire aclken,
reg aresetn;  //input wire aresetn,
wire [23 : 0] m_axis_video_tdata;
wire m_axis_video_tvalid;
reg m_axis_video_tready;//  input wire m_axis_video_tready,
wire m_axis_video_tuser;
wire m_axis_video_tlast;
wire fid;
wire vtd_active_video;
wire vtd_vblank;
wire vtd_hblank;
wire vtd_vsync;
wire vtd_hsync;
wire vtd_field_id;
wire overflow;
wire underflow;
reg axis_enable;  //input wire axis_enable
  
initial begin
    vid_io_in_clk = 0;
    vid_io_in_ce = 0;
    vid_io_in_reset = 0;
    vid_vblank = 0;
    vid_hblank = 0;
//    vid_hsync = 0;
    vid_field_id = 0;
    #5000;
    vid_io_in_ce = 1;
end
always #25 vid_io_in_clk = ~vid_io_in_clk;

initial begin
    aclk = 0;
    aclken = 0;
    aresetn = 0;
    m_axis_video_tready = 0;
    axis_enable = 0;
    #500;
    aclken = 1;
    aresetn = 1;
    m_axis_video_tready = 1;
    axis_enable = 1;
end
always # 5 aclk = ~aclk;

reg [15:0] S;
reg [15:0] cnt;
reg [15:0] cnt_h;
reg [15:0] cnt_v;
always@(posedge vid_io_in_clk) begin
    if(!vid_io_in_ce) begin
        vid_active_video <= 0;
        vid_vsync <= 0;
        vid_hsync = 0;
        vid_data <= 0;
        
        S <= 0;
        cnt <= 0;
        cnt_h <= 0;
        cnt_v <= 0;
    end
    else begin
        if(S == 0) begin
            if(cnt == 1000) begin
                S <= 1;
                cnt <= 0;
                vid_vsync <= 1;
            end
            else begin
                cnt <= cnt + 1;
            end
        end
        else if(S == 1) begin
            if(cnt == 250) begin
                S <= 2;
                cnt <= 0;
                vid_hsync <= 0;
            end
            else begin
                cnt <= cnt + 1;
            end
        end
        else if(S == 2) begin
            if(cnt == 50) begin
                S <= 3;
                cnt <= 0;
            end
            else begin
                cnt <= cnt + 1;
            end
        end
        else if(S == 3) begin
            if(cnt_h == 16) begin
                S <= 4;
                cnt_h <= 0;
                vid_active_video <= 0;
            end
            else begin
                cnt_h <= cnt_h + 1;
                vid_active_video <= 1;
                vid_data <= vid_data + 1;
            end
        end
        else if(S == 4) begin
            if(cnt == 50) begin
                cnt <= 0;
                vid_hsync <= 0;
                if(cnt_v == 16) begin
                    S <= 5;
                    cnt_v <= 0;
                end
                else begin
                    S <= 1;
                    cnt_v <= cnt_v + 1;
                end
            end
            else begin
                cnt <= cnt + 1;
            end
        end
        else if(S == 5) begin
            if(cnt == 250) begin
                S <= 0;
                cnt <= 0;
                vid_vsync <= 0;
            end
            else begin
                cnt <= cnt + 1;
            end
        end
    end 
end


top uut (
  .vid_io_in_clk(vid_io_in_clk),              // input wire vid_io_in_clk
  .vid_io_in_ce(vid_io_in_ce),                // input wire vid_io_in_ce
  .vid_io_in_reset(0),          // input wire vid_io_in_reset
  .vid_active_video(vid_active_video),        // input wire vid_active_video
  .vid_vblank(0),                    // input wire vid_vblank
  .vid_hblank(0),                    // input wire vid_hblank
  .vid_vsync(~vid_vsync),                      // input wire vid_vsync
  .vid_hsync(0),                      // input wire vid_hsync
  .vid_field_id(0),                // input wire vid_field_id
  .vid_data(vid_data),                        // input wire [23 : 0] vid_data
  .aclk(aclk),                                // input wire aclk
  .aclken(aclken),                            // input wire aclken
  .aresetn(aresetn),                          // input wire aresetn
  .m_axis_video_tdata(m_axis_video_tdata),    // output wire [23 : 0] m_axis_video_tdata
  .m_axis_video_tvalid(m_axis_video_tvalid),  // output wire m_axis_video_tvalid
  .m_axis_video_tready(m_axis_video_tready),  // input wire m_axis_video_tready
  .m_axis_video_tuser(m_axis_video_tuser),    // output wire m_axis_video_tuser
  .m_axis_video_tlast(m_axis_video_tlast),    // output wire m_axis_video_tlast
  .fid(fid),                                  // output wire fid
  .vtd_active_video(vtd_active_video),        // output wire vtd_active_video
  .vtd_vblank(vtd_vblank),                    // output wire vtd_vblank
  .vtd_hblank(vtd_hblank),                    // output wire vtd_hblank
  .vtd_vsync(vtd_vsync),                      // output wire vtd_vsync
  .vtd_hsync(vtd_hsync),                      // output wire vtd_hsync
  .vtd_field_id(vtd_field_id),                // output wire vtd_field_id
  .overflow(overflow),                        // output wire overflow
  .underflow(underflow),                      // output wire underflow
  .axis_enable(axis_enable)                  // input wire axis_enable
);
endmodule
