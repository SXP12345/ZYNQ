`timescale 1ns / 1ps

module top(
  input wire vid_io_in_clk,
  input wire vid_io_in_ce,
  input wire vid_io_in_reset,
  input wire vid_active_video,
  input wire vid_vblank,
  input wire vid_hblank,
  input wire vid_vsync,
  input wire vid_hsync,
  input wire vid_field_id,
  input wire [23 : 0] vid_data,
  input wire aclk,
  input wire aclken,
  input wire aresetn,
  output wire [23 : 0] m_axis_video_tdata,
  output wire m_axis_video_tvalid,
  input wire m_axis_video_tready,
  output wire m_axis_video_tuser,
  output wire m_axis_video_tlast,
  output wire fid,
  output wire vtd_active_video,
  output wire vtd_vblank,
  output wire vtd_hblank,
  output wire vtd_vsync,
  output wire vtd_hsync,
  output wire vtd_field_id,
  output wire overflow,
  output wire underflow,
  input wire axis_enable
);
    
//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
v_vid_in_axi4s_0 your_instance_name (
  .vid_io_in_clk(vid_io_in_clk),              // input wire vid_io_in_clk
  .vid_io_in_ce(vid_io_in_ce),                // input wire vid_io_in_ce
  .vid_io_in_reset(vid_io_in_reset),          // input wire vid_io_in_reset
  .vid_active_video(vid_active_video),        // input wire vid_active_video
  .vid_vblank(vid_vblank),                    // input wire vid_vblank
  .vid_hblank(vid_hblank),                    // input wire vid_hblank
  .vid_vsync(vid_vsync),                      // input wire vid_vsync
  .vid_hsync(vid_hsync),                      // input wire vid_hsync
  .vid_field_id(vid_field_id),                // input wire vid_field_id
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
