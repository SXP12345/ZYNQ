//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
//Date        : Fri Jul 28 09:19:07 2023
//Host        : LAPTOP-FQ7LLQV0 running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=5,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (clk_0,
    rst_n_0);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_0, CLK_DOMAIN design_1_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST_N_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST_N_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input rst_n_0;

  wire [7:0]analog_ov_0_data;
  wire analog_ov_0_href;
  wire analog_ov_0_pclk;
  wire analog_ov_0_vsync;
  wire clk_0_1;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire ov7725_data_sample_0_vid_io_in_clk;
  (* CONN_BUS_INFO = "ov7725_data_sample_0_video_out xilinx.com:interface:vid_io:1.0 None ACTIVE_VIDEO" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire ov7725_data_sample_0_video_out_ACTIVE_VIDEO;
  (* CONN_BUS_INFO = "ov7725_data_sample_0_video_out xilinx.com:interface:vid_io:1.0 None DATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [23:0]ov7725_data_sample_0_video_out_DATA;
  (* CONN_BUS_INFO = "ov7725_data_sample_0_video_out xilinx.com:interface:vid_io:1.0 None VSYNC" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire ov7725_data_sample_0_video_out_VSYNC;
  wire rst_n_0_1;

  assign clk_0_1 = clk_0;
  assign rst_n_0_1 = rst_n_0;
  design_1_analog_ov_0_0 analog_ov_0
       (.clk(clk_0_1),
        .data(analog_ov_0_data),
        .href(analog_ov_0_href),
        .pclk(analog_ov_0_pclk),
        .rst_n(rst_n_0_1),
        .vsync(analog_ov_0_vsync));
  design_1_ila_0_1 ila_0
       (.clk(clk_0_1),
        .probe0(analog_ov_0_pclk),
        .probe1(analog_ov_0_vsync),
        .probe2(analog_ov_0_href),
        .probe3(analog_ov_0_data));
  design_1_ov7725_data_sample_0_0 ov7725_data_sample_0
       (.ov7725_din(analog_ov_0_data),
        .ov7725_href(analog_ov_0_href),
        .ov7725_pclk(analog_ov_0_pclk),
        .ov7725_vsync(analog_ov_0_vsync),
        .rst_n(rst_n_0_1),
        .vid_active_video(ov7725_data_sample_0_video_out_ACTIVE_VIDEO),
        .vid_data(ov7725_data_sample_0_video_out_DATA),
        .vid_io_in_clk(ov7725_data_sample_0_vid_io_in_clk),
        .vid_vsync(ov7725_data_sample_0_video_out_VSYNC));
  design_1_system_ila_3_0 system_ila_3
       (.clk(clk_0_1),
        .probe0(ov7725_data_sample_0_vid_io_in_clk));
  design_1_system_ila_4_0 system_ila_4
       (.SLOT_0_VID_IO_active_video(ov7725_data_sample_0_video_out_ACTIVE_VIDEO),
        .SLOT_0_VID_IO_data(ov7725_data_sample_0_video_out_DATA),
        .SLOT_0_VID_IO_vsync(ov7725_data_sample_0_video_out_VSYNC),
        .clk(clk_0_1));
endmodule
