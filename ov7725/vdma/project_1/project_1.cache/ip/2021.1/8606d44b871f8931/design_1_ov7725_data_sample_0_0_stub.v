// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Tue Jul 25 15:16:17 2023
// Host        : LAPTOP-FQ7LLQV0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_ov7725_data_sample_0_0_stub.v
// Design      : design_1_ov7725_data_sample_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ov7725_data_sample,Vivado 2021.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(rst_n, ov7725_pclk, ov7725_vsync, ov7725_href, 
  ov7725_din, ov7725_rst_n, ov7725_sgm_ctrl, vid_io_in_clk, vid_io_in_ce, vid_vsync, 
  vid_active_video, vid_data)
/* synthesis syn_black_box black_box_pad_pin="rst_n,ov7725_pclk,ov7725_vsync,ov7725_href,ov7725_din[7:0],ov7725_rst_n,ov7725_sgm_ctrl,vid_io_in_clk,vid_io_in_ce,vid_vsync,vid_active_video,vid_data[23:0]" */;
  input rst_n;
  input ov7725_pclk;
  input ov7725_vsync;
  input ov7725_href;
  input [7:0]ov7725_din;
  output ov7725_rst_n;
  output ov7725_sgm_ctrl;
  output vid_io_in_clk;
  output vid_io_in_ce;
  output vid_vsync;
  output vid_active_video;
  output [23:0]vid_data;
endmodule
