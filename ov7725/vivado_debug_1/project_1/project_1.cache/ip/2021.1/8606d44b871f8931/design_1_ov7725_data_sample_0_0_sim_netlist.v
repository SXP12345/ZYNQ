// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Fri Jul 28 09:19:57 2023
// Host        : LAPTOP-FQ7LLQV0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_ov7725_data_sample_0_0_sim_netlist.v
// Design      : design_1_ov7725_data_sample_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_ov7725_data_sample_0_0,ov7725_data_sample,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "ov7725_data_sample,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (rst_n,
    ov7725_pclk,
    ov7725_vsync,
    ov7725_href,
    ov7725_din,
    ov7725_rst_n,
    ov7725_sgm_ctrl,
    vid_io_in_clk,
    vid_io_in_ce,
    vid_vsync,
    vid_active_video,
    vid_data);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ov7725_pclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ov7725_pclk, ASSOCIATED_RESET ov7725_rst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input ov7725_pclk;
  input ov7725_vsync;
  input ov7725_href;
  input [7:0]ov7725_din;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ov7725_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ov7725_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output ov7725_rst_n;
  output ov7725_sgm_ctrl;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 vid_io_in_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME vid_io_in_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_ov7725_data_sample_0_0_vid_io_in_clk, INSERT_VIP 0" *) output vid_io_in_clk;
  output vid_io_in_ce;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 video_out VSYNC" *) output vid_vsync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 video_out ACTIVE_VIDEO" *) output vid_active_video;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 video_out DATA" *) output [23:0]vid_data;

  wire \<const0> ;
  wire \<const1> ;
  wire [7:0]ov7725_din;
  wire ov7725_href;
  wire ov7725_pclk;
  wire ov7725_vsync;
  wire rst_n;
  wire vid_active_video;
  wire [23:3]\^vid_data ;
  wire vid_io_in_ce;
  wire vid_io_in_clk;
  wire vid_vsync;

  assign ov7725_rst_n = \<const1> ;
  assign ov7725_sgm_ctrl = \<const1> ;
  assign vid_data[23:19] = \^vid_data [23:19];
  assign vid_data[18] = \<const0> ;
  assign vid_data[17] = \<const0> ;
  assign vid_data[16] = \<const0> ;
  assign vid_data[15:10] = \^vid_data [15:10];
  assign vid_data[9] = \<const0> ;
  assign vid_data[8] = \<const0> ;
  assign vid_data[7:3] = \^vid_data [7:3];
  assign vid_data[2] = \<const0> ;
  assign vid_data[1] = \<const0> ;
  assign vid_data[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ov7725_data_sample inst
       (.ov7725_din(ov7725_din),
        .ov7725_href(ov7725_href),
        .ov7725_pclk(ov7725_pclk),
        .ov7725_vsync(ov7725_vsync),
        .rst_n(rst_n),
        .vid_active_video(vid_active_video),
        .vid_data({\^vid_data [23:19],\^vid_data [15:10],\^vid_data [7:3]}),
        .vid_io_in_clk(vid_io_in_clk),
        .vid_vsync(vid_vsync),
        .wait_done_reg_0(vid_io_in_ce));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ov7725_data_sample
   (vid_io_in_clk,
    vid_data,
    vid_vsync,
    wait_done_reg_0,
    vid_active_video,
    ov7725_pclk,
    ov7725_vsync,
    ov7725_href,
    ov7725_din,
    rst_n);
  output vid_io_in_clk;
  output [15:0]vid_data;
  output vid_vsync;
  output wait_done_reg_0;
  output vid_active_video;
  input ov7725_pclk;
  input ov7725_vsync;
  input ov7725_href;
  input [7:0]ov7725_din;
  input rst_n;

  wire RGB565;
  wire byte_flag;
  wire byte_flag0_out;
  wire [7:0]ov7725_din;
  wire [7:0]ov7725_din_d1;
  wire [7:0]ov7725_din_d2;
  wire [7:0]ov7725_din_d3;
  wire ov7725_href;
  wire ov7725_href_d1;
  wire ov7725_href_d2;
  wire ov7725_href_d3;
  wire ov7725_href_d4;
  wire ov7725_pclk;
  wire ov7725_vsync;
  wire ov7725_vsync_d1;
  wire ov7725_vsync_d2;
  wire p_0_in;
  wire rst_n;
  wire vid_active_video;
  wire vid_clk_i_2_n_0;
  wire [15:0]vid_data;
  wire vid_io_in_clk;
  wire vid_vsync;
  wire [7:0]wait_cnt;
  wire \wait_cnt[4]_i_2_n_0 ;
  wire \wait_cnt[7]_i_1_n_0 ;
  wire [7:0]wait_cnt_0;
  wire wait_done_i_1_n_0;
  wire wait_done_i_2_n_0;
  wire wait_done_i_3_n_0;
  wire wait_done_reg_0;

  LUT2 #(
    .INIT(4'h8)) 
    \RGB565[15]_i_1 
       (.I0(ov7725_href_d2),
        .I1(byte_flag),
        .O(RGB565));
  FDCE \RGB565_reg[0] 
       (.C(ov7725_pclk),
        .CE(RGB565),
        .CLR(vid_clk_i_2_n_0),
        .D(ov7725_din_d2[0]),
        .Q(vid_data[0]));
  FDCE \RGB565_reg[10] 
       (.C(ov7725_pclk),
        .CE(RGB565),
        .CLR(vid_clk_i_2_n_0),
        .D(ov7725_din_d3[2]),
        .Q(vid_data[10]));
  FDCE \RGB565_reg[11] 
       (.C(ov7725_pclk),
        .CE(RGB565),
        .CLR(vid_clk_i_2_n_0),
        .D(ov7725_din_d3[3]),
        .Q(vid_data[11]));
  FDCE \RGB565_reg[12] 
       (.C(ov7725_pclk),
        .CE(RGB565),
        .CLR(vid_clk_i_2_n_0),
        .D(ov7725_din_d3[4]),
        .Q(vid_data[12]));
  FDCE \RGB565_reg[13] 
       (.C(ov7725_pclk),
        .CE(RGB565),
        .CLR(vid_clk_i_2_n_0),
        .D(ov7725_din_d3[5]),
        .Q(vid_data[13]));
  FDCE \RGB565_reg[14] 
       (.C(ov7725_pclk),
        .CE(RGB565),
        .CLR(vid_clk_i_2_n_0),
        .D(ov7725_din_d3[6]),
        .Q(vid_data[14]));
  FDCE \RGB565_reg[15] 
       (.C(ov7725_pclk),
        .CE(RGB565),
        .CLR(vid_clk_i_2_n_0),
        .D(ov7725_din_d3[7]),
        .Q(vid_data[15]));
  FDCE \RGB565_reg[1] 
       (.C(ov7725_pclk),
        .CE(RGB565),
        .CLR(vid_clk_i_2_n_0),
        .D(ov7725_din_d2[1]),
        .Q(vid_data[1]));
  FDCE \RGB565_reg[2] 
       (.C(ov7725_pclk),
        .CE(RGB565),
        .CLR(vid_clk_i_2_n_0),
        .D(ov7725_din_d2[2]),
        .Q(vid_data[2]));
  FDCE \RGB565_reg[3] 
       (.C(ov7725_pclk),
        .CE(RGB565),
        .CLR(vid_clk_i_2_n_0),
        .D(ov7725_din_d2[3]),
        .Q(vid_data[3]));
  FDCE \RGB565_reg[4] 
       (.C(ov7725_pclk),
        .CE(RGB565),
        .CLR(vid_clk_i_2_n_0),
        .D(ov7725_din_d2[4]),
        .Q(vid_data[4]));
  FDCE \RGB565_reg[5] 
       (.C(ov7725_pclk),
        .CE(RGB565),
        .CLR(vid_clk_i_2_n_0),
        .D(ov7725_din_d2[5]),
        .Q(vid_data[5]));
  FDCE \RGB565_reg[6] 
       (.C(ov7725_pclk),
        .CE(RGB565),
        .CLR(vid_clk_i_2_n_0),
        .D(ov7725_din_d2[6]),
        .Q(vid_data[6]));
  FDCE \RGB565_reg[7] 
       (.C(ov7725_pclk),
        .CE(RGB565),
        .CLR(vid_clk_i_2_n_0),
        .D(ov7725_din_d2[7]),
        .Q(vid_data[7]));
  FDCE \RGB565_reg[8] 
       (.C(ov7725_pclk),
        .CE(RGB565),
        .CLR(vid_clk_i_2_n_0),
        .D(ov7725_din_d3[0]),
        .Q(vid_data[8]));
  FDCE \RGB565_reg[9] 
       (.C(ov7725_pclk),
        .CE(RGB565),
        .CLR(vid_clk_i_2_n_0),
        .D(ov7725_din_d3[1]),
        .Q(vid_data[9]));
  LUT2 #(
    .INIT(4'h2)) 
    byte_flag_i_1
       (.I0(ov7725_href_d2),
        .I1(byte_flag),
        .O(byte_flag0_out));
  FDCE byte_flag_reg
       (.C(ov7725_pclk),
        .CE(1'b1),
        .CLR(vid_clk_i_2_n_0),
        .D(byte_flag0_out),
        .Q(byte_flag));
  FDCE \ov7725_din_d1_reg[0] 
       (.C(ov7725_pclk),
        .CE(1'b1),
        .CLR(vid_clk_i_2_n_0),
        .D(ov7725_din[0]),
        .Q(ov7725_din_d1[0]));
  FDCE \ov7725_din_d1_reg[1] 
       (.C(ov7725_pclk),
        .CE(1'b1),
        .CLR(vid_clk_i_2_n_0),
        .D(ov7725_din[1]),
        .Q(ov7725_din_d1[1]));
  FDCE \ov7725_din_d1_reg[2] 
       (.C(ov7725_pclk),
        .CE(1'b1),
        .CLR(vid_clk_i_2_n_0),
        .D(ov7725_din[2]),
        .Q(ov7725_din_d1[2]));
  FDCE \ov7725_din_d1_reg[3] 
       (.C(ov7725_pclk),
        .CE(1'b1),
        .CLR(vid_clk_i_2_n_0),
        .D(ov7725_din[3]),
        .Q(ov7725_din_d1[3]));
  FDCE \ov7725_din_d1_reg[4] 
       (.C(ov7725_pclk),
        .CE(1'b1),
        .CLR(vid_clk_i_2_n_0),
        .D(ov7725_din[4]),
        .Q(ov7725_din_d1[4]));
  FDCE \ov7725_din_d1_reg[5] 
       (.C(ov7725_pclk),
        .CE(1'b1),
        .CLR(vid_clk_i_2_n_0),
        .D(ov7725_din[5]),
        .Q(ov7725_din_d1[5]));
  FDCE \ov7725_din_d1_reg[6] 
       (.C(ov7725_pclk),
        .CE(1'b1),
        .CLR(vid_clk_i_2_n_0),
        .D(ov7725_din[6]),
        .Q(ov7725_din_d1[6]));
  FDCE \ov7725_din_d1_reg[7] 
       (.C(ov7725_pclk),
        .CE(1'b1),
        .CLR(vid_clk_i_2_n_0),
        .D(ov7725_din[7]),
        .Q(ov7725_din_d1[7]));
  FDCE \ov7725_din_d2_reg[0] 
       (.C(ov7725_pclk),
        .CE(1'b1),
        .CLR(vid_clk_i_2_n_0),
        .D(ov7725_din_d1[0]),
        .Q(ov7725_din_d2[0]));
  FDCE \ov7725_din_d2_reg[1] 
       (.C(ov7725_pclk),
        .CE(1'b1),
        .CLR(vid_clk_i_2_n_0),
        .D(ov7725_din_d1[1]),
        .Q(ov7725_din_d2[1]));
  FDCE \ov7725_din_d2_reg[2] 
       (.C(ov7725_pclk),
        .CE(1'b1),
        .CLR(vid_clk_i_2_n_0),
        .D(ov7725_din_d1[2]),
        .Q(ov7725_din_d2[2]));
  FDCE \ov7725_din_d2_reg[3] 
       (.C(ov7725_pclk),
        .CE(1'b1),
        .CLR(vid_clk_i_2_n_0),
        .D(ov7725_din_d1[3]),
        .Q(ov7725_din_d2[3]));
  FDCE \ov7725_din_d2_reg[4] 
       (.C(ov7725_pclk),
        .CE(1'b1),
        .CLR(vid_clk_i_2_n_0),
        .D(ov7725_din_d1[4]),
        .Q(ov7725_din_d2[4]));
  FDCE \ov7725_din_d2_reg[5] 
       (.C(ov7725_pclk),
        .CE(1'b1),
        .CLR(vid_clk_i_2_n_0),
        .D(ov7725_din_d1[5]),
        .Q(ov7725_din_d2[5]));
  FDCE \ov7725_din_d2_reg[6] 
       (.C(ov7725_pclk),
        .CE(1'b1),
        .CLR(vid_clk_i_2_n_0),
        .D(ov7725_din_d1[6]),
        .Q(ov7725_din_d2[6]));
  FDCE \ov7725_din_d2_reg[7] 
       (.C(ov7725_pclk),
        .CE(1'b1),
        .CLR(vid_clk_i_2_n_0),
        .D(ov7725_din_d1[7]),
        .Q(ov7725_din_d2[7]));
  FDCE \ov7725_din_d3_reg[0] 
       (.C(ov7725_pclk),
        .CE(1'b1),
        .CLR(vid_clk_i_2_n_0),
        .D(ov7725_din_d2[0]),
        .Q(ov7725_din_d3[0]));
  FDCE \ov7725_din_d3_reg[1] 
       (.C(ov7725_pclk),
        .CE(1'b1),
        .CLR(vid_clk_i_2_n_0),
        .D(ov7725_din_d2[1]),
        .Q(ov7725_din_d3[1]));
  FDCE \ov7725_din_d3_reg[2] 
       (.C(ov7725_pclk),
        .CE(1'b1),
        .CLR(vid_clk_i_2_n_0),
        .D(ov7725_din_d2[2]),
        .Q(ov7725_din_d3[2]));
  FDCE \ov7725_din_d3_reg[3] 
       (.C(ov7725_pclk),
        .CE(1'b1),
        .CLR(vid_clk_i_2_n_0),
        .D(ov7725_din_d2[3]),
        .Q(ov7725_din_d3[3]));
  FDCE \ov7725_din_d3_reg[4] 
       (.C(ov7725_pclk),
        .CE(1'b1),
        .CLR(vid_clk_i_2_n_0),
        .D(ov7725_din_d2[4]),
        .Q(ov7725_din_d3[4]));
  FDCE \ov7725_din_d3_reg[5] 
       (.C(ov7725_pclk),
        .CE(1'b1),
        .CLR(vid_clk_i_2_n_0),
        .D(ov7725_din_d2[5]),
        .Q(ov7725_din_d3[5]));
  FDCE \ov7725_din_d3_reg[6] 
       (.C(ov7725_pclk),
        .CE(1'b1),
        .CLR(vid_clk_i_2_n_0),
        .D(ov7725_din_d2[6]),
        .Q(ov7725_din_d3[6]));
  FDCE \ov7725_din_d3_reg[7] 
       (.C(ov7725_pclk),
        .CE(1'b1),
        .CLR(vid_clk_i_2_n_0),
        .D(ov7725_din_d2[7]),
        .Q(ov7725_din_d3[7]));
  FDCE ov7725_href_d1_reg
       (.C(ov7725_pclk),
        .CE(1'b1),
        .CLR(vid_clk_i_2_n_0),
        .D(ov7725_href),
        .Q(ov7725_href_d1));
  FDCE ov7725_href_d2_reg
       (.C(ov7725_pclk),
        .CE(1'b1),
        .CLR(vid_clk_i_2_n_0),
        .D(ov7725_href_d1),
        .Q(ov7725_href_d2));
  FDCE ov7725_href_d3_reg
       (.C(ov7725_pclk),
        .CE(1'b1),
        .CLR(vid_clk_i_2_n_0),
        .D(ov7725_href_d2),
        .Q(ov7725_href_d3));
  FDCE ov7725_href_d4_reg
       (.C(ov7725_pclk),
        .CE(1'b1),
        .CLR(vid_clk_i_2_n_0),
        .D(ov7725_href_d3),
        .Q(ov7725_href_d4));
  FDCE ov7725_vsync_d1_reg
       (.C(ov7725_pclk),
        .CE(1'b1),
        .CLR(vid_clk_i_2_n_0),
        .D(ov7725_vsync),
        .Q(ov7725_vsync_d1));
  FDCE ov7725_vsync_d2_reg
       (.C(ov7725_pclk),
        .CE(1'b1),
        .CLR(vid_clk_i_2_n_0),
        .D(ov7725_vsync_d1),
        .Q(ov7725_vsync_d2));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    vid_active_video_INST_0
       (.I0(ov7725_href_d4),
        .I1(wait_done_reg_0),
        .O(vid_active_video));
  LUT1 #(
    .INIT(2'h1)) 
    vid_clk_i_1
       (.I0(vid_io_in_clk),
        .O(p_0_in));
  LUT1 #(
    .INIT(2'h1)) 
    vid_clk_i_2
       (.I0(rst_n),
        .O(vid_clk_i_2_n_0));
  FDCE vid_clk_reg
       (.C(ov7725_pclk),
        .CE(1'b1),
        .CLR(vid_clk_i_2_n_0),
        .D(p_0_in),
        .Q(vid_io_in_clk));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    vid_vsync_INST_0
       (.I0(ov7725_vsync_d2),
        .I1(wait_done_reg_0),
        .O(vid_vsync));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    \wait_cnt[0]_i_1 
       (.I0(wait_done_i_3_n_0),
        .I1(wait_cnt[7]),
        .I2(wait_cnt[6]),
        .I3(wait_cnt[5]),
        .I4(wait_cnt[0]),
        .O(wait_cnt_0[0]));
  LUT6 #(
    .INIT(64'h0000FFFFFFFE0000)) 
    \wait_cnt[1]_i_1 
       (.I0(wait_cnt[5]),
        .I1(wait_cnt[6]),
        .I2(wait_cnt[7]),
        .I3(wait_done_i_3_n_0),
        .I4(wait_cnt[1]),
        .I5(wait_cnt[0]),
        .O(wait_cnt_0[1]));
  LUT6 #(
    .INIT(64'h00FFFF00BF00FF00)) 
    \wait_cnt[2]_i_1 
       (.I0(wait_done_i_2_n_0),
        .I1(wait_cnt[4]),
        .I2(wait_cnt[3]),
        .I3(wait_cnt[2]),
        .I4(wait_cnt[1]),
        .I5(wait_cnt[0]),
        .O(wait_cnt_0[2]));
  LUT6 #(
    .INIT(64'h0FB0F0F0F0F0F0F0)) 
    \wait_cnt[3]_i_1 
       (.I0(wait_done_i_2_n_0),
        .I1(wait_cnt[4]),
        .I2(wait_cnt[3]),
        .I3(wait_cnt[0]),
        .I4(wait_cnt[2]),
        .I5(wait_cnt[1]),
        .O(wait_cnt_0[3]));
  LUT6 #(
    .INIT(64'hFF00FF0000FFFE00)) 
    \wait_cnt[4]_i_1 
       (.I0(wait_cnt[5]),
        .I1(wait_cnt[6]),
        .I2(wait_cnt[7]),
        .I3(wait_cnt[4]),
        .I4(wait_cnt[0]),
        .I5(\wait_cnt[4]_i_2_n_0 ),
        .O(wait_cnt_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \wait_cnt[4]_i_2 
       (.I0(wait_cnt[2]),
        .I1(wait_cnt[1]),
        .I2(wait_cnt[3]),
        .O(\wait_cnt[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hA6)) 
    \wait_cnt[5]_i_1 
       (.I0(wait_cnt[5]),
        .I1(wait_cnt[0]),
        .I2(wait_done_i_3_n_0),
        .O(wait_cnt_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hAA6A)) 
    \wait_cnt[6]_i_1 
       (.I0(wait_cnt[6]),
        .I1(wait_cnt[5]),
        .I2(wait_cnt[0]),
        .I3(wait_done_i_3_n_0),
        .O(wait_cnt_0[6]));
  LUT2 #(
    .INIT(4'h2)) 
    \wait_cnt[7]_i_1 
       (.I0(ov7725_vsync_d1),
        .I1(ov7725_vsync_d2),
        .O(\wait_cnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAAAA6AAA)) 
    \wait_cnt[7]_i_2 
       (.I0(wait_cnt[7]),
        .I1(wait_cnt[0]),
        .I2(wait_cnt[5]),
        .I3(wait_cnt[6]),
        .I4(wait_done_i_3_n_0),
        .O(wait_cnt_0[7]));
  FDCE \wait_cnt_reg[0] 
       (.C(ov7725_pclk),
        .CE(\wait_cnt[7]_i_1_n_0 ),
        .CLR(vid_clk_i_2_n_0),
        .D(wait_cnt_0[0]),
        .Q(wait_cnt[0]));
  FDCE \wait_cnt_reg[1] 
       (.C(ov7725_pclk),
        .CE(\wait_cnt[7]_i_1_n_0 ),
        .CLR(vid_clk_i_2_n_0),
        .D(wait_cnt_0[1]),
        .Q(wait_cnt[1]));
  FDCE \wait_cnt_reg[2] 
       (.C(ov7725_pclk),
        .CE(\wait_cnt[7]_i_1_n_0 ),
        .CLR(vid_clk_i_2_n_0),
        .D(wait_cnt_0[2]),
        .Q(wait_cnt[2]));
  FDCE \wait_cnt_reg[3] 
       (.C(ov7725_pclk),
        .CE(\wait_cnt[7]_i_1_n_0 ),
        .CLR(vid_clk_i_2_n_0),
        .D(wait_cnt_0[3]),
        .Q(wait_cnt[3]));
  FDCE \wait_cnt_reg[4] 
       (.C(ov7725_pclk),
        .CE(\wait_cnt[7]_i_1_n_0 ),
        .CLR(vid_clk_i_2_n_0),
        .D(wait_cnt_0[4]),
        .Q(wait_cnt[4]));
  FDCE \wait_cnt_reg[5] 
       (.C(ov7725_pclk),
        .CE(\wait_cnt[7]_i_1_n_0 ),
        .CLR(vid_clk_i_2_n_0),
        .D(wait_cnt_0[5]),
        .Q(wait_cnt[5]));
  FDCE \wait_cnt_reg[6] 
       (.C(ov7725_pclk),
        .CE(\wait_cnt[7]_i_1_n_0 ),
        .CLR(vid_clk_i_2_n_0),
        .D(wait_cnt_0[6]),
        .Q(wait_cnt[6]));
  FDCE \wait_cnt_reg[7] 
       (.C(ov7725_pclk),
        .CE(\wait_cnt[7]_i_1_n_0 ),
        .CLR(vid_clk_i_2_n_0),
        .D(wait_cnt_0[7]),
        .Q(wait_cnt[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000004)) 
    wait_done_i_1
       (.I0(ov7725_vsync_d2),
        .I1(ov7725_vsync_d1),
        .I2(wait_cnt[0]),
        .I3(wait_done_i_2_n_0),
        .I4(wait_done_i_3_n_0),
        .I5(wait_done_reg_0),
        .O(wait_done_i_1_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    wait_done_i_2
       (.I0(wait_cnt[7]),
        .I1(wait_cnt[6]),
        .I2(wait_cnt[5]),
        .O(wait_done_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    wait_done_i_3
       (.I0(wait_cnt[3]),
        .I1(wait_cnt[1]),
        .I2(wait_cnt[2]),
        .I3(wait_cnt[4]),
        .O(wait_done_i_3_n_0));
  FDCE wait_done_reg
       (.C(ov7725_pclk),
        .CE(1'b1),
        .CLR(vid_clk_i_2_n_0),
        .D(wait_done_i_1_n_0),
        .Q(wait_done_reg_0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
