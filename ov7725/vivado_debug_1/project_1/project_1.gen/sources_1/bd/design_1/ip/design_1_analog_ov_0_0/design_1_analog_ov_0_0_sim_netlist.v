// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Fri Jul 28 09:19:59 2023
// Host        : LAPTOP-FQ7LLQV0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/SUXP/Desktop/ov7725/vivado_debug_1/project_1/project_1.gen/sources_1/bd/design_1/ip/design_1_analog_ov_0_0/design_1_analog_ov_0_0_sim_netlist.v
// Design      : design_1_analog_ov_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_analog_ov_0_0,analog_ov,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "analog_ov,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module design_1_analog_ov_0_0
   (clk,
    rst_n,
    pclk,
    vsync,
    href,
    data);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  output pclk;
  output vsync;
  output href;
  output [7:0]data;

  wire clk;
  wire [7:0]data;
  wire href;
  wire pclk;
  wire rst_n;
  wire vsync;

  design_1_analog_ov_0_0_analog_ov inst
       (.clk(clk),
        .data(data),
        .href(href),
        .pclk_reg_0(pclk),
        .rst_n(rst_n),
        .vsync(vsync));
endmodule

(* ORIG_REF_NAME = "analog_ov" *) 
module design_1_analog_ov_0_0_analog_ov
   (data,
    pclk_reg_0,
    href,
    vsync,
    rst_n,
    clk);
  output [7:0]data;
  output pclk_reg_0;
  output href;
  output vsync;
  input rst_n;
  input clk;

  wire \S[0]_i_1_n_0 ;
  wire \S[1]_i_1_n_0 ;
  wire \S[2]_i_10_n_0 ;
  wire \S[2]_i_11_n_0 ;
  wire \S[2]_i_12_n_0 ;
  wire \S[2]_i_13_n_0 ;
  wire \S[2]_i_14_n_0 ;
  wire \S[2]_i_15_n_0 ;
  wire \S[2]_i_16_n_0 ;
  wire \S[2]_i_17_n_0 ;
  wire \S[2]_i_18_n_0 ;
  wire \S[2]_i_19_n_0 ;
  wire \S[2]_i_1_n_0 ;
  wire \S[2]_i_20_n_0 ;
  wire \S[2]_i_21_n_0 ;
  wire \S[2]_i_22_n_0 ;
  wire \S[2]_i_23_n_0 ;
  wire \S[2]_i_2_n_0 ;
  wire \S[2]_i_3_n_0 ;
  wire \S[2]_i_4_n_0 ;
  wire \S[2]_i_5_n_0 ;
  wire \S[2]_i_6_n_0 ;
  wire \S[2]_i_7_n_0 ;
  wire \S[2]_i_8_n_0 ;
  wire \S[2]_i_9_n_0 ;
  wire \S_reg_n_0_[0] ;
  wire \S_reg_n_0_[1] ;
  wire \S_reg_n_0_[2] ;
  wire clk;
  wire [31:0]cnt;
  wire cnt0_carry__0_n_0;
  wire cnt0_carry__0_n_1;
  wire cnt0_carry__0_n_2;
  wire cnt0_carry__0_n_3;
  wire cnt0_carry__1_n_0;
  wire cnt0_carry__1_n_1;
  wire cnt0_carry__1_n_2;
  wire cnt0_carry__1_n_3;
  wire cnt0_carry__2_n_0;
  wire cnt0_carry__2_n_1;
  wire cnt0_carry__2_n_2;
  wire cnt0_carry__2_n_3;
  wire cnt0_carry__3_n_0;
  wire cnt0_carry__3_n_1;
  wire cnt0_carry__3_n_2;
  wire cnt0_carry__3_n_3;
  wire cnt0_carry__4_n_0;
  wire cnt0_carry__4_n_1;
  wire cnt0_carry__4_n_2;
  wire cnt0_carry__4_n_3;
  wire cnt0_carry__5_n_0;
  wire cnt0_carry__5_n_1;
  wire cnt0_carry__5_n_2;
  wire cnt0_carry__5_n_3;
  wire cnt0_carry__6_n_2;
  wire cnt0_carry__6_n_3;
  wire cnt0_carry_n_0;
  wire cnt0_carry_n_1;
  wire cnt0_carry_n_2;
  wire cnt0_carry_n_3;
  wire \cnt[0]_i_2_n_0 ;
  wire \cnt[31]_i_10_n_0 ;
  wire \cnt[31]_i_11_n_0 ;
  wire \cnt[31]_i_12_n_0 ;
  wire \cnt[31]_i_13_n_0 ;
  wire \cnt[31]_i_14_n_0 ;
  wire \cnt[31]_i_15_n_0 ;
  wire \cnt[31]_i_16_n_0 ;
  wire \cnt[31]_i_17_n_0 ;
  wire \cnt[31]_i_2_n_0 ;
  wire \cnt[31]_i_4_n_0 ;
  wire \cnt[31]_i_5_n_0 ;
  wire \cnt[31]_i_6_n_0 ;
  wire \cnt[31]_i_7_n_0 ;
  wire \cnt[31]_i_8_n_0 ;
  wire \cnt[31]_i_9_n_0 ;
  wire [7:0]data;
  wire [31:1]data0;
  wire \data[7]_i_1_n_0 ;
  wire \data[7]_i_4_n_0 ;
  wire href;
  wire href2_out;
  wire href_i_1_n_0;
  wire href_i_2_n_0;
  wire href_i_3_n_0;
  wire href_i_4_n_0;
  wire p_0_in;
  wire [7:0]p_0_in__0;
  wire [31:0]p_0_out;
  wire pclk_i_1_n_0;
  wire pclk_reg_0;
  wire rst_n;
  wire [31:0]v_cnt;
  wire v_cnt0_carry__0_n_0;
  wire v_cnt0_carry__0_n_1;
  wire v_cnt0_carry__0_n_2;
  wire v_cnt0_carry__0_n_3;
  wire v_cnt0_carry__0_n_4;
  wire v_cnt0_carry__0_n_5;
  wire v_cnt0_carry__0_n_6;
  wire v_cnt0_carry__0_n_7;
  wire v_cnt0_carry__1_n_0;
  wire v_cnt0_carry__1_n_1;
  wire v_cnt0_carry__1_n_2;
  wire v_cnt0_carry__1_n_3;
  wire v_cnt0_carry__1_n_4;
  wire v_cnt0_carry__1_n_5;
  wire v_cnt0_carry__1_n_6;
  wire v_cnt0_carry__1_n_7;
  wire v_cnt0_carry__2_n_0;
  wire v_cnt0_carry__2_n_1;
  wire v_cnt0_carry__2_n_2;
  wire v_cnt0_carry__2_n_3;
  wire v_cnt0_carry__2_n_4;
  wire v_cnt0_carry__2_n_5;
  wire v_cnt0_carry__2_n_6;
  wire v_cnt0_carry__2_n_7;
  wire v_cnt0_carry__3_n_0;
  wire v_cnt0_carry__3_n_1;
  wire v_cnt0_carry__3_n_2;
  wire v_cnt0_carry__3_n_3;
  wire v_cnt0_carry__3_n_4;
  wire v_cnt0_carry__3_n_5;
  wire v_cnt0_carry__3_n_6;
  wire v_cnt0_carry__3_n_7;
  wire v_cnt0_carry__4_n_0;
  wire v_cnt0_carry__4_n_1;
  wire v_cnt0_carry__4_n_2;
  wire v_cnt0_carry__4_n_3;
  wire v_cnt0_carry__4_n_4;
  wire v_cnt0_carry__4_n_5;
  wire v_cnt0_carry__4_n_6;
  wire v_cnt0_carry__4_n_7;
  wire v_cnt0_carry__5_n_0;
  wire v_cnt0_carry__5_n_1;
  wire v_cnt0_carry__5_n_2;
  wire v_cnt0_carry__5_n_3;
  wire v_cnt0_carry__5_n_4;
  wire v_cnt0_carry__5_n_5;
  wire v_cnt0_carry__5_n_6;
  wire v_cnt0_carry__5_n_7;
  wire v_cnt0_carry__6_n_2;
  wire v_cnt0_carry__6_n_3;
  wire v_cnt0_carry__6_n_5;
  wire v_cnt0_carry__6_n_6;
  wire v_cnt0_carry__6_n_7;
  wire v_cnt0_carry_n_0;
  wire v_cnt0_carry_n_1;
  wire v_cnt0_carry_n_2;
  wire v_cnt0_carry_n_3;
  wire v_cnt0_carry_n_4;
  wire v_cnt0_carry_n_5;
  wire v_cnt0_carry_n_6;
  wire v_cnt0_carry_n_7;
  wire \v_cnt[0]_i_2_n_0 ;
  wire \v_cnt[0]_i_3_n_0 ;
  wire \v_cnt[0]_i_4_n_0 ;
  wire \v_cnt[0]_i_5_n_0 ;
  wire \v_cnt[31]_i_1_n_0 ;
  wire [31:0]v_cnt_1;
  wire vsync;
  wire vsync_0;
  wire vsync_i_1_n_0;
  wire vsync_i_3_n_0;
  wire vsync_i_4_n_0;
  wire vsync_i_5_n_0;
  wire [3:2]NLW_cnt0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_cnt0_carry__6_O_UNCONNECTED;
  wire [3:2]NLW_v_cnt0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_v_cnt0_carry__6_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h26660000)) 
    \S[0]_i_1 
       (.I0(\S_reg_n_0_[0] ),
        .I1(\S[2]_i_2_n_0 ),
        .I2(\S_reg_n_0_[1] ),
        .I3(\S_reg_n_0_[2] ),
        .I4(rst_n),
        .O(\S[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2E2A262A00000000)) 
    \S[1]_i_1 
       (.I0(\S_reg_n_0_[1] ),
        .I1(\S[2]_i_2_n_0 ),
        .I2(\S_reg_n_0_[2] ),
        .I3(\S_reg_n_0_[0] ),
        .I4(\S[2]_i_3_n_0 ),
        .I5(rst_n),
        .O(\S[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h262222AA00000000)) 
    \S[2]_i_1 
       (.I0(\S_reg_n_0_[2] ),
        .I1(\S[2]_i_2_n_0 ),
        .I2(\S[2]_i_3_n_0 ),
        .I3(\S_reg_n_0_[0] ),
        .I4(\S_reg_n_0_[1] ),
        .I5(rst_n),
        .O(\S[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \S[2]_i_10 
       (.I0(\S[2]_i_19_n_0 ),
        .I1(\S[2]_i_20_n_0 ),
        .I2(v_cnt[31]),
        .I3(v_cnt[30]),
        .I4(v_cnt[1]),
        .I5(\v_cnt[0]_i_4_n_0 ),
        .O(\S[2]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \S[2]_i_11 
       (.I0(v_cnt[4]),
        .I1(v_cnt[5]),
        .I2(v_cnt[3]),
        .I3(v_cnt[2]),
        .I4(\S[2]_i_21_n_0 ),
        .O(\S[2]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \S[2]_i_12 
       (.I0(v_cnt[12]),
        .I1(v_cnt[13]),
        .I2(v_cnt[10]),
        .I3(v_cnt[11]),
        .I4(\S[2]_i_22_n_0 ),
        .O(\S[2]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \S[2]_i_13 
       (.I0(vsync_i_5_n_0),
        .I1(cnt[13]),
        .I2(cnt[10]),
        .I3(cnt[9]),
        .I4(\cnt[31]_i_15_n_0 ),
        .O(\S[2]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \S[2]_i_14 
       (.I0(\S_reg_n_0_[1] ),
        .I1(\S_reg_n_0_[2] ),
        .O(\S[2]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \S[2]_i_15 
       (.I0(\S_reg_n_0_[0] ),
        .I1(cnt[1]),
        .I2(\S_reg_n_0_[1] ),
        .I3(cnt[5]),
        .I4(cnt[3]),
        .I5(cnt[4]),
        .O(\S[2]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h00400000)) 
    \S[2]_i_16 
       (.I0(\S_reg_n_0_[0] ),
        .I1(cnt[8]),
        .I2(cnt[5]),
        .I3(cnt[3]),
        .I4(cnt[4]),
        .O(\S[2]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h00000000E0000000)) 
    \S[2]_i_17 
       (.I0(\S_reg_n_0_[1] ),
        .I1(\S_reg_n_0_[2] ),
        .I2(cnt[7]),
        .I3(cnt[6]),
        .I4(cnt[2]),
        .I5(\S[2]_i_23_n_0 ),
        .O(\S[2]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    \S[2]_i_18 
       (.I0(cnt[3]),
        .I1(cnt[4]),
        .I2(vsync_i_5_n_0),
        .I3(\S[2]_i_23_n_0 ),
        .I4(cnt[8]),
        .O(\S[2]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \S[2]_i_19 
       (.I0(v_cnt[23]),
        .I1(v_cnt[22]),
        .I2(v_cnt[25]),
        .I3(v_cnt[24]),
        .O(\S[2]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8FFF8FFFFFFF8)) 
    \S[2]_i_2 
       (.I0(\S[2]_i_4_n_0 ),
        .I1(\S[2]_i_5_n_0 ),
        .I2(\S[2]_i_6_n_0 ),
        .I3(\S[2]_i_7_n_0 ),
        .I4(\S[2]_i_8_n_0 ),
        .I5(\S[2]_i_9_n_0 ),
        .O(\S[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \S[2]_i_20 
       (.I0(v_cnt[19]),
        .I1(v_cnt[18]),
        .I2(v_cnt[21]),
        .I3(v_cnt[20]),
        .O(\S[2]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \S[2]_i_21 
       (.I0(v_cnt[7]),
        .I1(v_cnt[6]),
        .I2(v_cnt[9]),
        .I3(v_cnt[8]),
        .O(\S[2]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \S[2]_i_22 
       (.I0(v_cnt[15]),
        .I1(v_cnt[14]),
        .I2(v_cnt[17]),
        .I3(v_cnt[16]),
        .O(\S[2]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \S[2]_i_23 
       (.I0(cnt[13]),
        .I1(cnt[10]),
        .I2(cnt[9]),
        .O(\S[2]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \S[2]_i_3 
       (.I0(\S[2]_i_10_n_0 ),
        .I1(\S[2]_i_11_n_0 ),
        .I2(\S[2]_i_12_n_0 ),
        .I3(v_cnt[0]),
        .O(\S[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \S[2]_i_4 
       (.I0(cnt[8]),
        .I1(cnt[4]),
        .I2(cnt[3]),
        .O(\S[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \S[2]_i_5 
       (.I0(\S[2]_i_13_n_0 ),
        .I1(cnt[5]),
        .I2(pclk_reg_0),
        .I3(\cnt[31]_i_4_n_0 ),
        .I4(cnt[31]),
        .I5(cnt[1]),
        .O(\S[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5500550057005500)) 
    \S[2]_i_6 
       (.I0(\S[2]_i_14_n_0 ),
        .I1(cnt[31]),
        .I2(\cnt[31]_i_4_n_0 ),
        .I3(pclk_reg_0),
        .I4(\S[2]_i_15_n_0 ),
        .I5(vsync_i_3_n_0),
        .O(\S[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \S[2]_i_7 
       (.I0(\S[2]_i_16_n_0 ),
        .I1(pclk_reg_0),
        .I2(\cnt[31]_i_4_n_0 ),
        .I3(cnt[31]),
        .I4(cnt[1]),
        .I5(\S[2]_i_17_n_0 ),
        .O(\S[2]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \S[2]_i_8 
       (.I0(\S_reg_n_0_[0] ),
        .I1(\S_reg_n_0_[1] ),
        .O(\S[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    \S[2]_i_9 
       (.I0(\S[2]_i_18_n_0 ),
        .I1(cnt[5]),
        .I2(pclk_reg_0),
        .I3(\cnt[31]_i_4_n_0 ),
        .I4(cnt[31]),
        .I5(cnt[1]),
        .O(\S[2]_i_9_n_0 ));
  FDRE \S_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\S[0]_i_1_n_0 ),
        .Q(\S_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \S_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\S[1]_i_1_n_0 ),
        .Q(\S_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \S_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\S[2]_i_1_n_0 ),
        .Q(\S_reg_n_0_[2] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt0_carry
       (.CI(1'b0),
        .CO({cnt0_carry_n_0,cnt0_carry_n_1,cnt0_carry_n_2,cnt0_carry_n_3}),
        .CYINIT(cnt[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(cnt[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt0_carry__0
       (.CI(cnt0_carry_n_0),
        .CO({cnt0_carry__0_n_0,cnt0_carry__0_n_1,cnt0_carry__0_n_2,cnt0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(cnt[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt0_carry__1
       (.CI(cnt0_carry__0_n_0),
        .CO({cnt0_carry__1_n_0,cnt0_carry__1_n_1,cnt0_carry__1_n_2,cnt0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(cnt[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt0_carry__2
       (.CI(cnt0_carry__1_n_0),
        .CO({cnt0_carry__2_n_0,cnt0_carry__2_n_1,cnt0_carry__2_n_2,cnt0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(cnt[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt0_carry__3
       (.CI(cnt0_carry__2_n_0),
        .CO({cnt0_carry__3_n_0,cnt0_carry__3_n_1,cnt0_carry__3_n_2,cnt0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S(cnt[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt0_carry__4
       (.CI(cnt0_carry__3_n_0),
        .CO({cnt0_carry__4_n_0,cnt0_carry__4_n_1,cnt0_carry__4_n_2,cnt0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S(cnt[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt0_carry__5
       (.CI(cnt0_carry__4_n_0),
        .CO({cnt0_carry__5_n_0,cnt0_carry__5_n_1,cnt0_carry__5_n_2,cnt0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[28:25]),
        .S(cnt[28:25]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt0_carry__6
       (.CI(cnt0_carry__5_n_0),
        .CO({NLW_cnt0_carry__6_CO_UNCONNECTED[3:2],cnt0_carry__6_n_2,cnt0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_cnt0_carry__6_O_UNCONNECTED[3],data0[31:29]}),
        .S({1'b0,cnt[31:29]}));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h32)) 
    \cnt[0]_i_1 
       (.I0(\cnt[31]_i_5_n_0 ),
        .I1(cnt[0]),
        .I2(\cnt[0]_i_2_n_0 ),
        .O(p_0_out[0]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \cnt[0]_i_2 
       (.I0(\cnt[31]_i_10_n_0 ),
        .I1(\cnt[31]_i_9_n_0 ),
        .I2(\cnt[31]_i_8_n_0 ),
        .I3(\cnt[31]_i_7_n_0 ),
        .I4(\cnt[31]_i_6_n_0 ),
        .O(\cnt[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \cnt[10]_i_1 
       (.I0(\cnt[31]_i_4_n_0 ),
        .I1(\cnt[31]_i_5_n_0 ),
        .I2(data0[10]),
        .O(p_0_out[10]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \cnt[11]_i_1 
       (.I0(\cnt[31]_i_4_n_0 ),
        .I1(\cnt[31]_i_5_n_0 ),
        .I2(data0[11]),
        .O(p_0_out[11]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \cnt[12]_i_1 
       (.I0(\cnt[31]_i_4_n_0 ),
        .I1(\cnt[31]_i_5_n_0 ),
        .I2(data0[12]),
        .O(p_0_out[12]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \cnt[13]_i_1 
       (.I0(\cnt[31]_i_4_n_0 ),
        .I1(\cnt[31]_i_5_n_0 ),
        .I2(data0[13]),
        .O(p_0_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \cnt[14]_i_1 
       (.I0(\cnt[31]_i_4_n_0 ),
        .I1(\cnt[31]_i_5_n_0 ),
        .I2(data0[14]),
        .O(p_0_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \cnt[15]_i_1 
       (.I0(\cnt[31]_i_4_n_0 ),
        .I1(\cnt[31]_i_5_n_0 ),
        .I2(data0[15]),
        .O(p_0_out[15]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \cnt[16]_i_1 
       (.I0(\cnt[31]_i_4_n_0 ),
        .I1(\cnt[31]_i_5_n_0 ),
        .I2(data0[16]),
        .O(p_0_out[16]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \cnt[17]_i_1 
       (.I0(\cnt[31]_i_4_n_0 ),
        .I1(\cnt[31]_i_5_n_0 ),
        .I2(data0[17]),
        .O(p_0_out[17]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \cnt[18]_i_1 
       (.I0(\cnt[31]_i_4_n_0 ),
        .I1(\cnt[31]_i_5_n_0 ),
        .I2(data0[18]),
        .O(p_0_out[18]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \cnt[19]_i_1 
       (.I0(\cnt[31]_i_4_n_0 ),
        .I1(\cnt[31]_i_5_n_0 ),
        .I2(data0[19]),
        .O(p_0_out[19]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \cnt[1]_i_1 
       (.I0(\cnt[31]_i_4_n_0 ),
        .I1(\cnt[31]_i_5_n_0 ),
        .I2(data0[1]),
        .O(p_0_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \cnt[20]_i_1 
       (.I0(\cnt[31]_i_4_n_0 ),
        .I1(\cnt[31]_i_5_n_0 ),
        .I2(data0[20]),
        .O(p_0_out[20]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \cnt[21]_i_1 
       (.I0(\cnt[31]_i_4_n_0 ),
        .I1(\cnt[31]_i_5_n_0 ),
        .I2(data0[21]),
        .O(p_0_out[21]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \cnt[22]_i_1 
       (.I0(\cnt[31]_i_4_n_0 ),
        .I1(\cnt[31]_i_5_n_0 ),
        .I2(data0[22]),
        .O(p_0_out[22]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \cnt[23]_i_1 
       (.I0(\cnt[31]_i_4_n_0 ),
        .I1(\cnt[31]_i_5_n_0 ),
        .I2(data0[23]),
        .O(p_0_out[23]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \cnt[24]_i_1 
       (.I0(\cnt[31]_i_4_n_0 ),
        .I1(\cnt[31]_i_5_n_0 ),
        .I2(data0[24]),
        .O(p_0_out[24]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \cnt[25]_i_1 
       (.I0(\cnt[31]_i_4_n_0 ),
        .I1(\cnt[31]_i_5_n_0 ),
        .I2(data0[25]),
        .O(p_0_out[25]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \cnt[26]_i_1 
       (.I0(\cnt[31]_i_4_n_0 ),
        .I1(\cnt[31]_i_5_n_0 ),
        .I2(data0[26]),
        .O(p_0_out[26]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \cnt[27]_i_1 
       (.I0(\cnt[31]_i_4_n_0 ),
        .I1(\cnt[31]_i_5_n_0 ),
        .I2(data0[27]),
        .O(p_0_out[27]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \cnt[28]_i_1 
       (.I0(\cnt[31]_i_4_n_0 ),
        .I1(\cnt[31]_i_5_n_0 ),
        .I2(data0[28]),
        .O(p_0_out[28]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \cnt[29]_i_1 
       (.I0(\cnt[31]_i_4_n_0 ),
        .I1(\cnt[31]_i_5_n_0 ),
        .I2(data0[29]),
        .O(p_0_out[29]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \cnt[2]_i_1 
       (.I0(\cnt[31]_i_4_n_0 ),
        .I1(\cnt[31]_i_5_n_0 ),
        .I2(data0[2]),
        .O(p_0_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \cnt[30]_i_1 
       (.I0(\cnt[31]_i_4_n_0 ),
        .I1(\cnt[31]_i_5_n_0 ),
        .I2(data0[30]),
        .O(p_0_out[30]));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[31]_i_1 
       (.I0(rst_n),
        .O(p_0_in));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cnt[31]_i_10 
       (.I0(cnt[14]),
        .I1(cnt[12]),
        .I2(cnt[16]),
        .I3(cnt[15]),
        .O(\cnt[31]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFFFFFFFFEF)) 
    \cnt[31]_i_11 
       (.I0(\cnt[31]_i_14_n_0 ),
        .I1(cnt[13]),
        .I2(\cnt[31]_i_15_n_0 ),
        .I3(\cnt[31]_i_16_n_0 ),
        .I4(cnt[9]),
        .I5(cnt[10]),
        .O(\cnt[31]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F05FF05FF0FD)) 
    \cnt[31]_i_12 
       (.I0(cnt[8]),
        .I1(cnt[5]),
        .I2(cnt[2]),
        .I3(\S_reg_n_0_[0] ),
        .I4(\S_reg_n_0_[2] ),
        .I5(\S_reg_n_0_[1] ),
        .O(\cnt[31]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hA3BFA3BFFFF0A3F0)) 
    \cnt[31]_i_13 
       (.I0(cnt[8]),
        .I1(cnt[5]),
        .I2(\S_reg_n_0_[0] ),
        .I3(\S_reg_n_0_[1] ),
        .I4(\S_reg_n_0_[2] ),
        .I5(cnt[1]),
        .O(\cnt[31]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFE7FFFFFFFFE7FF)) 
    \cnt[31]_i_14 
       (.I0(href_i_4_n_0),
        .I1(cnt[4]),
        .I2(cnt[3]),
        .I3(\cnt[31]_i_17_n_0 ),
        .I4(cnt[7]),
        .I5(cnt[6]),
        .O(\cnt[31]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \cnt[31]_i_15 
       (.I0(\S_reg_n_0_[1] ),
        .I1(\S_reg_n_0_[0] ),
        .I2(\S_reg_n_0_[2] ),
        .O(\cnt[31]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hBF30B030)) 
    \cnt[31]_i_16 
       (.I0(cnt[8]),
        .I1(cnt[5]),
        .I2(\S_reg_n_0_[2] ),
        .I3(\S_reg_n_0_[1] ),
        .I4(cnt[1]),
        .O(\cnt[31]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hEB)) 
    \cnt[31]_i_17 
       (.I0(\S_reg_n_0_[0] ),
        .I1(\S_reg_n_0_[2] ),
        .I2(\S_reg_n_0_[1] ),
        .O(\cnt[31]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h70)) 
    \cnt[31]_i_2 
       (.I0(\S_reg_n_0_[2] ),
        .I1(\S_reg_n_0_[1] ),
        .I2(pclk_reg_0),
        .O(\cnt[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \cnt[31]_i_3 
       (.I0(\cnt[31]_i_4_n_0 ),
        .I1(\cnt[31]_i_5_n_0 ),
        .I2(data0[31]),
        .O(p_0_out[31]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \cnt[31]_i_4 
       (.I0(\cnt[31]_i_6_n_0 ),
        .I1(\cnt[31]_i_7_n_0 ),
        .I2(\cnt[31]_i_8_n_0 ),
        .I3(\cnt[31]_i_9_n_0 ),
        .I4(\cnt[31]_i_10_n_0 ),
        .I5(cnt[0]),
        .O(\cnt[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFEFFFFFFFE)) 
    \cnt[31]_i_5 
       (.I0(\cnt[31]_i_11_n_0 ),
        .I1(\cnt[31]_i_12_n_0 ),
        .I2(\cnt[31]_i_13_n_0 ),
        .I3(cnt[31]),
        .I4(cnt[5]),
        .I5(href_i_4_n_0),
        .O(\cnt[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cnt[31]_i_6 
       (.I0(cnt[18]),
        .I1(cnt[17]),
        .I2(cnt[20]),
        .I3(cnt[19]),
        .O(\cnt[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cnt[31]_i_7 
       (.I0(cnt[22]),
        .I1(cnt[21]),
        .I2(cnt[24]),
        .I3(cnt[23]),
        .O(\cnt[31]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \cnt[31]_i_8 
       (.I0(cnt[30]),
        .I1(cnt[29]),
        .I2(cnt[11]),
        .O(\cnt[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cnt[31]_i_9 
       (.I0(cnt[26]),
        .I1(cnt[25]),
        .I2(cnt[28]),
        .I3(cnt[27]),
        .O(\cnt[31]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \cnt[3]_i_1 
       (.I0(\cnt[31]_i_4_n_0 ),
        .I1(\cnt[31]_i_5_n_0 ),
        .I2(data0[3]),
        .O(p_0_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \cnt[4]_i_1 
       (.I0(\cnt[31]_i_4_n_0 ),
        .I1(\cnt[31]_i_5_n_0 ),
        .I2(data0[4]),
        .O(p_0_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \cnt[5]_i_1 
       (.I0(\cnt[31]_i_4_n_0 ),
        .I1(\cnt[31]_i_5_n_0 ),
        .I2(data0[5]),
        .O(p_0_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \cnt[6]_i_1 
       (.I0(\cnt[31]_i_4_n_0 ),
        .I1(\cnt[31]_i_5_n_0 ),
        .I2(data0[6]),
        .O(p_0_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \cnt[7]_i_1 
       (.I0(\cnt[31]_i_4_n_0 ),
        .I1(\cnt[31]_i_5_n_0 ),
        .I2(data0[7]),
        .O(p_0_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \cnt[8]_i_1 
       (.I0(\cnt[31]_i_4_n_0 ),
        .I1(\cnt[31]_i_5_n_0 ),
        .I2(data0[8]),
        .O(p_0_out[8]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \cnt[9]_i_1 
       (.I0(\cnt[31]_i_4_n_0 ),
        .I1(\cnt[31]_i_5_n_0 ),
        .I2(data0[9]),
        .O(p_0_out[9]));
  FDRE \cnt_reg[0] 
       (.C(clk),
        .CE(\cnt[31]_i_2_n_0 ),
        .D(p_0_out[0]),
        .Q(cnt[0]),
        .R(p_0_in));
  FDRE \cnt_reg[10] 
       (.C(clk),
        .CE(\cnt[31]_i_2_n_0 ),
        .D(p_0_out[10]),
        .Q(cnt[10]),
        .R(p_0_in));
  FDRE \cnt_reg[11] 
       (.C(clk),
        .CE(\cnt[31]_i_2_n_0 ),
        .D(p_0_out[11]),
        .Q(cnt[11]),
        .R(p_0_in));
  FDRE \cnt_reg[12] 
       (.C(clk),
        .CE(\cnt[31]_i_2_n_0 ),
        .D(p_0_out[12]),
        .Q(cnt[12]),
        .R(p_0_in));
  FDRE \cnt_reg[13] 
       (.C(clk),
        .CE(\cnt[31]_i_2_n_0 ),
        .D(p_0_out[13]),
        .Q(cnt[13]),
        .R(p_0_in));
  FDRE \cnt_reg[14] 
       (.C(clk),
        .CE(\cnt[31]_i_2_n_0 ),
        .D(p_0_out[14]),
        .Q(cnt[14]),
        .R(p_0_in));
  FDRE \cnt_reg[15] 
       (.C(clk),
        .CE(\cnt[31]_i_2_n_0 ),
        .D(p_0_out[15]),
        .Q(cnt[15]),
        .R(p_0_in));
  FDRE \cnt_reg[16] 
       (.C(clk),
        .CE(\cnt[31]_i_2_n_0 ),
        .D(p_0_out[16]),
        .Q(cnt[16]),
        .R(p_0_in));
  FDRE \cnt_reg[17] 
       (.C(clk),
        .CE(\cnt[31]_i_2_n_0 ),
        .D(p_0_out[17]),
        .Q(cnt[17]),
        .R(p_0_in));
  FDRE \cnt_reg[18] 
       (.C(clk),
        .CE(\cnt[31]_i_2_n_0 ),
        .D(p_0_out[18]),
        .Q(cnt[18]),
        .R(p_0_in));
  FDRE \cnt_reg[19] 
       (.C(clk),
        .CE(\cnt[31]_i_2_n_0 ),
        .D(p_0_out[19]),
        .Q(cnt[19]),
        .R(p_0_in));
  FDRE \cnt_reg[1] 
       (.C(clk),
        .CE(\cnt[31]_i_2_n_0 ),
        .D(p_0_out[1]),
        .Q(cnt[1]),
        .R(p_0_in));
  FDRE \cnt_reg[20] 
       (.C(clk),
        .CE(\cnt[31]_i_2_n_0 ),
        .D(p_0_out[20]),
        .Q(cnt[20]),
        .R(p_0_in));
  FDRE \cnt_reg[21] 
       (.C(clk),
        .CE(\cnt[31]_i_2_n_0 ),
        .D(p_0_out[21]),
        .Q(cnt[21]),
        .R(p_0_in));
  FDRE \cnt_reg[22] 
       (.C(clk),
        .CE(\cnt[31]_i_2_n_0 ),
        .D(p_0_out[22]),
        .Q(cnt[22]),
        .R(p_0_in));
  FDRE \cnt_reg[23] 
       (.C(clk),
        .CE(\cnt[31]_i_2_n_0 ),
        .D(p_0_out[23]),
        .Q(cnt[23]),
        .R(p_0_in));
  FDRE \cnt_reg[24] 
       (.C(clk),
        .CE(\cnt[31]_i_2_n_0 ),
        .D(p_0_out[24]),
        .Q(cnt[24]),
        .R(p_0_in));
  FDRE \cnt_reg[25] 
       (.C(clk),
        .CE(\cnt[31]_i_2_n_0 ),
        .D(p_0_out[25]),
        .Q(cnt[25]),
        .R(p_0_in));
  FDRE \cnt_reg[26] 
       (.C(clk),
        .CE(\cnt[31]_i_2_n_0 ),
        .D(p_0_out[26]),
        .Q(cnt[26]),
        .R(p_0_in));
  FDRE \cnt_reg[27] 
       (.C(clk),
        .CE(\cnt[31]_i_2_n_0 ),
        .D(p_0_out[27]),
        .Q(cnt[27]),
        .R(p_0_in));
  FDRE \cnt_reg[28] 
       (.C(clk),
        .CE(\cnt[31]_i_2_n_0 ),
        .D(p_0_out[28]),
        .Q(cnt[28]),
        .R(p_0_in));
  FDRE \cnt_reg[29] 
       (.C(clk),
        .CE(\cnt[31]_i_2_n_0 ),
        .D(p_0_out[29]),
        .Q(cnt[29]),
        .R(p_0_in));
  FDRE \cnt_reg[2] 
       (.C(clk),
        .CE(\cnt[31]_i_2_n_0 ),
        .D(p_0_out[2]),
        .Q(cnt[2]),
        .R(p_0_in));
  FDRE \cnt_reg[30] 
       (.C(clk),
        .CE(\cnt[31]_i_2_n_0 ),
        .D(p_0_out[30]),
        .Q(cnt[30]),
        .R(p_0_in));
  FDRE \cnt_reg[31] 
       (.C(clk),
        .CE(\cnt[31]_i_2_n_0 ),
        .D(p_0_out[31]),
        .Q(cnt[31]),
        .R(p_0_in));
  FDRE \cnt_reg[3] 
       (.C(clk),
        .CE(\cnt[31]_i_2_n_0 ),
        .D(p_0_out[3]),
        .Q(cnt[3]),
        .R(p_0_in));
  FDRE \cnt_reg[4] 
       (.C(clk),
        .CE(\cnt[31]_i_2_n_0 ),
        .D(p_0_out[4]),
        .Q(cnt[4]),
        .R(p_0_in));
  FDRE \cnt_reg[5] 
       (.C(clk),
        .CE(\cnt[31]_i_2_n_0 ),
        .D(p_0_out[5]),
        .Q(cnt[5]),
        .R(p_0_in));
  FDRE \cnt_reg[6] 
       (.C(clk),
        .CE(\cnt[31]_i_2_n_0 ),
        .D(p_0_out[6]),
        .Q(cnt[6]),
        .R(p_0_in));
  FDRE \cnt_reg[7] 
       (.C(clk),
        .CE(\cnt[31]_i_2_n_0 ),
        .D(p_0_out[7]),
        .Q(cnt[7]),
        .R(p_0_in));
  FDRE \cnt_reg[8] 
       (.C(clk),
        .CE(\cnt[31]_i_2_n_0 ),
        .D(p_0_out[8]),
        .Q(cnt[8]),
        .R(p_0_in));
  FDRE \cnt_reg[9] 
       (.C(clk),
        .CE(\cnt[31]_i_2_n_0 ),
        .D(p_0_out[9]),
        .Q(cnt[9]),
        .R(p_0_in));
  LUT1 #(
    .INIT(2'h1)) 
    \data[0]_i_1 
       (.I0(data[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data[1]_i_1 
       (.I0(data[0]),
        .I1(data[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \data[2]_i_1 
       (.I0(data[1]),
        .I1(data[0]),
        .I2(data[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \data[3]_i_1 
       (.I0(data[2]),
        .I1(data[0]),
        .I2(data[1]),
        .I3(data[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \data[4]_i_1 
       (.I0(data[3]),
        .I1(data[1]),
        .I2(data[0]),
        .I3(data[2]),
        .I4(data[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \data[5]_i_1 
       (.I0(data[4]),
        .I1(data[2]),
        .I2(data[0]),
        .I3(data[1]),
        .I4(data[3]),
        .I5(data[5]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \data[6]_i_1 
       (.I0(\data[7]_i_4_n_0 ),
        .I1(data[6]),
        .O(p_0_in__0[6]));
  LUT2 #(
    .INIT(4'h7)) 
    \data[7]_i_1 
       (.I0(href_i_2_n_0),
        .I1(rst_n),
        .O(\data[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \data[7]_i_2 
       (.I0(pclk_reg_0),
        .I1(\S_reg_n_0_[0] ),
        .I2(\S_reg_n_0_[2] ),
        .I3(\S_reg_n_0_[1] ),
        .O(href2_out));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \data[7]_i_3 
       (.I0(data[6]),
        .I1(\data[7]_i_4_n_0 ),
        .I2(data[7]),
        .O(p_0_in__0[7]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \data[7]_i_4 
       (.I0(data[4]),
        .I1(data[2]),
        .I2(data[0]),
        .I3(data[1]),
        .I4(data[3]),
        .I5(data[5]),
        .O(\data[7]_i_4_n_0 ));
  FDRE \data_reg[0] 
       (.C(clk),
        .CE(href2_out),
        .D(p_0_in__0[0]),
        .Q(data[0]),
        .R(\data[7]_i_1_n_0 ));
  FDRE \data_reg[1] 
       (.C(clk),
        .CE(href2_out),
        .D(p_0_in__0[1]),
        .Q(data[1]),
        .R(\data[7]_i_1_n_0 ));
  FDRE \data_reg[2] 
       (.C(clk),
        .CE(href2_out),
        .D(p_0_in__0[2]),
        .Q(data[2]),
        .R(\data[7]_i_1_n_0 ));
  FDRE \data_reg[3] 
       (.C(clk),
        .CE(href2_out),
        .D(p_0_in__0[3]),
        .Q(data[3]),
        .R(\data[7]_i_1_n_0 ));
  FDRE \data_reg[4] 
       (.C(clk),
        .CE(href2_out),
        .D(p_0_in__0[4]),
        .Q(data[4]),
        .R(\data[7]_i_1_n_0 ));
  FDRE \data_reg[5] 
       (.C(clk),
        .CE(href2_out),
        .D(p_0_in__0[5]),
        .Q(data[5]),
        .R(\data[7]_i_1_n_0 ));
  FDRE \data_reg[6] 
       (.C(clk),
        .CE(href2_out),
        .D(p_0_in__0[6]),
        .Q(data[6]),
        .R(\data[7]_i_1_n_0 ));
  FDRE \data_reg[7] 
       (.C(clk),
        .CE(href2_out),
        .D(p_0_in__0[7]),
        .Q(data[7]),
        .R(\data[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h8880)) 
    href_i_1
       (.I0(href_i_2_n_0),
        .I1(rst_n),
        .I2(href2_out),
        .I3(href),
        .O(href_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    href_i_2
       (.I0(href_i_3_n_0),
        .I1(cnt[3]),
        .I2(cnt[4]),
        .I3(vsync_i_3_n_0),
        .I4(href_i_4_n_0),
        .O(href_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    href_i_3
       (.I0(cnt[1]),
        .I1(cnt[31]),
        .I2(\cnt[31]_i_4_n_0 ),
        .I3(pclk_reg_0),
        .I4(cnt[5]),
        .O(href_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    href_i_4
       (.I0(\S_reg_n_0_[1] ),
        .I1(\S_reg_n_0_[2] ),
        .I2(\S_reg_n_0_[0] ),
        .O(href_i_4_n_0));
  FDRE href_reg
       (.C(clk),
        .CE(1'b1),
        .D(href_i_1_n_0),
        .Q(href),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h4)) 
    pclk_i_1
       (.I0(pclk_reg_0),
        .I1(rst_n),
        .O(pclk_i_1_n_0));
  FDRE pclk_reg
       (.C(clk),
        .CE(1'b1),
        .D(pclk_i_1_n_0),
        .Q(pclk_reg_0),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 v_cnt0_carry
       (.CI(1'b0),
        .CO({v_cnt0_carry_n_0,v_cnt0_carry_n_1,v_cnt0_carry_n_2,v_cnt0_carry_n_3}),
        .CYINIT(v_cnt[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({v_cnt0_carry_n_4,v_cnt0_carry_n_5,v_cnt0_carry_n_6,v_cnt0_carry_n_7}),
        .S(v_cnt[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 v_cnt0_carry__0
       (.CI(v_cnt0_carry_n_0),
        .CO({v_cnt0_carry__0_n_0,v_cnt0_carry__0_n_1,v_cnt0_carry__0_n_2,v_cnt0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({v_cnt0_carry__0_n_4,v_cnt0_carry__0_n_5,v_cnt0_carry__0_n_6,v_cnt0_carry__0_n_7}),
        .S(v_cnt[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 v_cnt0_carry__1
       (.CI(v_cnt0_carry__0_n_0),
        .CO({v_cnt0_carry__1_n_0,v_cnt0_carry__1_n_1,v_cnt0_carry__1_n_2,v_cnt0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({v_cnt0_carry__1_n_4,v_cnt0_carry__1_n_5,v_cnt0_carry__1_n_6,v_cnt0_carry__1_n_7}),
        .S(v_cnt[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 v_cnt0_carry__2
       (.CI(v_cnt0_carry__1_n_0),
        .CO({v_cnt0_carry__2_n_0,v_cnt0_carry__2_n_1,v_cnt0_carry__2_n_2,v_cnt0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({v_cnt0_carry__2_n_4,v_cnt0_carry__2_n_5,v_cnt0_carry__2_n_6,v_cnt0_carry__2_n_7}),
        .S(v_cnt[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 v_cnt0_carry__3
       (.CI(v_cnt0_carry__2_n_0),
        .CO({v_cnt0_carry__3_n_0,v_cnt0_carry__3_n_1,v_cnt0_carry__3_n_2,v_cnt0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({v_cnt0_carry__3_n_4,v_cnt0_carry__3_n_5,v_cnt0_carry__3_n_6,v_cnt0_carry__3_n_7}),
        .S(v_cnt[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 v_cnt0_carry__4
       (.CI(v_cnt0_carry__3_n_0),
        .CO({v_cnt0_carry__4_n_0,v_cnt0_carry__4_n_1,v_cnt0_carry__4_n_2,v_cnt0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({v_cnt0_carry__4_n_4,v_cnt0_carry__4_n_5,v_cnt0_carry__4_n_6,v_cnt0_carry__4_n_7}),
        .S(v_cnt[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 v_cnt0_carry__5
       (.CI(v_cnt0_carry__4_n_0),
        .CO({v_cnt0_carry__5_n_0,v_cnt0_carry__5_n_1,v_cnt0_carry__5_n_2,v_cnt0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({v_cnt0_carry__5_n_4,v_cnt0_carry__5_n_5,v_cnt0_carry__5_n_6,v_cnt0_carry__5_n_7}),
        .S(v_cnt[28:25]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 v_cnt0_carry__6
       (.CI(v_cnt0_carry__5_n_0),
        .CO({NLW_v_cnt0_carry__6_CO_UNCONNECTED[3:2],v_cnt0_carry__6_n_2,v_cnt0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_v_cnt0_carry__6_O_UNCONNECTED[3],v_cnt0_carry__6_n_5,v_cnt0_carry__6_n_6,v_cnt0_carry__6_n_7}),
        .S({1'b0,v_cnt[31:29]}));
  LUT2 #(
    .INIT(4'h2)) 
    \v_cnt[0]_i_1 
       (.I0(\v_cnt[0]_i_2_n_0 ),
        .I1(v_cnt[0]),
        .O(v_cnt_1[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \v_cnt[0]_i_2 
       (.I0(\v_cnt[0]_i_3_n_0 ),
        .I1(\v_cnt[0]_i_4_n_0 ),
        .I2(v_cnt[1]),
        .I3(v_cnt[30]),
        .I4(v_cnt[31]),
        .I5(\v_cnt[0]_i_5_n_0 ),
        .O(\v_cnt[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    \v_cnt[0]_i_3 
       (.I0(\S[2]_i_21_n_0 ),
        .I1(v_cnt[2]),
        .I2(v_cnt[3]),
        .I3(v_cnt[5]),
        .I4(v_cnt[4]),
        .I5(\S[2]_i_12_n_0 ),
        .O(\v_cnt[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \v_cnt[0]_i_4 
       (.I0(v_cnt[27]),
        .I1(v_cnt[26]),
        .I2(v_cnt[29]),
        .I3(v_cnt[28]),
        .O(\v_cnt[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \v_cnt[0]_i_5 
       (.I0(v_cnt[20]),
        .I1(v_cnt[21]),
        .I2(v_cnt[18]),
        .I3(v_cnt[19]),
        .I4(\S[2]_i_19_n_0 ),
        .O(\v_cnt[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \v_cnt[10]_i_1 
       (.I0(\S[2]_i_3_n_0 ),
        .I1(v_cnt0_carry__1_n_6),
        .O(v_cnt_1[10]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \v_cnt[11]_i_1 
       (.I0(\S[2]_i_3_n_0 ),
        .I1(v_cnt0_carry__1_n_5),
        .O(v_cnt_1[11]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \v_cnt[12]_i_1 
       (.I0(\S[2]_i_3_n_0 ),
        .I1(v_cnt0_carry__1_n_4),
        .O(v_cnt_1[12]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \v_cnt[13]_i_1 
       (.I0(\S[2]_i_3_n_0 ),
        .I1(v_cnt0_carry__2_n_7),
        .O(v_cnt_1[13]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \v_cnt[14]_i_1 
       (.I0(\S[2]_i_3_n_0 ),
        .I1(v_cnt0_carry__2_n_6),
        .O(v_cnt_1[14]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \v_cnt[15]_i_1 
       (.I0(\S[2]_i_3_n_0 ),
        .I1(v_cnt0_carry__2_n_5),
        .O(v_cnt_1[15]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \v_cnt[16]_i_1 
       (.I0(\S[2]_i_3_n_0 ),
        .I1(v_cnt0_carry__2_n_4),
        .O(v_cnt_1[16]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \v_cnt[17]_i_1 
       (.I0(\S[2]_i_3_n_0 ),
        .I1(v_cnt0_carry__3_n_7),
        .O(v_cnt_1[17]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \v_cnt[18]_i_1 
       (.I0(\S[2]_i_3_n_0 ),
        .I1(v_cnt0_carry__3_n_6),
        .O(v_cnt_1[18]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \v_cnt[19]_i_1 
       (.I0(\S[2]_i_3_n_0 ),
        .I1(v_cnt0_carry__3_n_5),
        .O(v_cnt_1[19]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \v_cnt[1]_i_1 
       (.I0(\S[2]_i_3_n_0 ),
        .I1(v_cnt0_carry_n_7),
        .O(v_cnt_1[1]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \v_cnt[20]_i_1 
       (.I0(\S[2]_i_3_n_0 ),
        .I1(v_cnt0_carry__3_n_4),
        .O(v_cnt_1[20]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \v_cnt[21]_i_1 
       (.I0(\S[2]_i_3_n_0 ),
        .I1(v_cnt0_carry__4_n_7),
        .O(v_cnt_1[21]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \v_cnt[22]_i_1 
       (.I0(\S[2]_i_3_n_0 ),
        .I1(v_cnt0_carry__4_n_6),
        .O(v_cnt_1[22]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \v_cnt[23]_i_1 
       (.I0(\S[2]_i_3_n_0 ),
        .I1(v_cnt0_carry__4_n_5),
        .O(v_cnt_1[23]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \v_cnt[24]_i_1 
       (.I0(\S[2]_i_3_n_0 ),
        .I1(v_cnt0_carry__4_n_4),
        .O(v_cnt_1[24]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \v_cnt[25]_i_1 
       (.I0(\S[2]_i_3_n_0 ),
        .I1(v_cnt0_carry__5_n_7),
        .O(v_cnt_1[25]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \v_cnt[26]_i_1 
       (.I0(\S[2]_i_3_n_0 ),
        .I1(v_cnt0_carry__5_n_6),
        .O(v_cnt_1[26]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \v_cnt[27]_i_1 
       (.I0(\S[2]_i_3_n_0 ),
        .I1(v_cnt0_carry__5_n_5),
        .O(v_cnt_1[27]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \v_cnt[28]_i_1 
       (.I0(\S[2]_i_3_n_0 ),
        .I1(v_cnt0_carry__5_n_4),
        .O(v_cnt_1[28]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \v_cnt[29]_i_1 
       (.I0(\S[2]_i_3_n_0 ),
        .I1(v_cnt0_carry__6_n_7),
        .O(v_cnt_1[29]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \v_cnt[2]_i_1 
       (.I0(\S[2]_i_3_n_0 ),
        .I1(v_cnt0_carry_n_6),
        .O(v_cnt_1[2]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \v_cnt[30]_i_1 
       (.I0(\S[2]_i_3_n_0 ),
        .I1(v_cnt0_carry__6_n_6),
        .O(v_cnt_1[30]));
  LUT1 #(
    .INIT(2'h1)) 
    \v_cnt[31]_i_1 
       (.I0(href_i_2_n_0),
        .O(\v_cnt[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \v_cnt[31]_i_2 
       (.I0(\S[2]_i_3_n_0 ),
        .I1(v_cnt0_carry__6_n_5),
        .O(v_cnt_1[31]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \v_cnt[3]_i_1 
       (.I0(\S[2]_i_3_n_0 ),
        .I1(v_cnt0_carry_n_5),
        .O(v_cnt_1[3]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \v_cnt[4]_i_1 
       (.I0(\S[2]_i_3_n_0 ),
        .I1(v_cnt0_carry_n_4),
        .O(v_cnt_1[4]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \v_cnt[5]_i_1 
       (.I0(\S[2]_i_3_n_0 ),
        .I1(v_cnt0_carry__0_n_7),
        .O(v_cnt_1[5]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \v_cnt[6]_i_1 
       (.I0(\S[2]_i_3_n_0 ),
        .I1(v_cnt0_carry__0_n_6),
        .O(v_cnt_1[6]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \v_cnt[7]_i_1 
       (.I0(\S[2]_i_3_n_0 ),
        .I1(v_cnt0_carry__0_n_5),
        .O(v_cnt_1[7]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \v_cnt[8]_i_1 
       (.I0(\S[2]_i_3_n_0 ),
        .I1(v_cnt0_carry__0_n_4),
        .O(v_cnt_1[8]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \v_cnt[9]_i_1 
       (.I0(\S[2]_i_3_n_0 ),
        .I1(v_cnt0_carry__1_n_7),
        .O(v_cnt_1[9]));
  FDRE \v_cnt_reg[0] 
       (.C(clk),
        .CE(\v_cnt[31]_i_1_n_0 ),
        .D(v_cnt_1[0]),
        .Q(v_cnt[0]),
        .R(p_0_in));
  FDRE \v_cnt_reg[10] 
       (.C(clk),
        .CE(\v_cnt[31]_i_1_n_0 ),
        .D(v_cnt_1[10]),
        .Q(v_cnt[10]),
        .R(p_0_in));
  FDRE \v_cnt_reg[11] 
       (.C(clk),
        .CE(\v_cnt[31]_i_1_n_0 ),
        .D(v_cnt_1[11]),
        .Q(v_cnt[11]),
        .R(p_0_in));
  FDRE \v_cnt_reg[12] 
       (.C(clk),
        .CE(\v_cnt[31]_i_1_n_0 ),
        .D(v_cnt_1[12]),
        .Q(v_cnt[12]),
        .R(p_0_in));
  FDRE \v_cnt_reg[13] 
       (.C(clk),
        .CE(\v_cnt[31]_i_1_n_0 ),
        .D(v_cnt_1[13]),
        .Q(v_cnt[13]),
        .R(p_0_in));
  FDRE \v_cnt_reg[14] 
       (.C(clk),
        .CE(\v_cnt[31]_i_1_n_0 ),
        .D(v_cnt_1[14]),
        .Q(v_cnt[14]),
        .R(p_0_in));
  FDRE \v_cnt_reg[15] 
       (.C(clk),
        .CE(\v_cnt[31]_i_1_n_0 ),
        .D(v_cnt_1[15]),
        .Q(v_cnt[15]),
        .R(p_0_in));
  FDRE \v_cnt_reg[16] 
       (.C(clk),
        .CE(\v_cnt[31]_i_1_n_0 ),
        .D(v_cnt_1[16]),
        .Q(v_cnt[16]),
        .R(p_0_in));
  FDRE \v_cnt_reg[17] 
       (.C(clk),
        .CE(\v_cnt[31]_i_1_n_0 ),
        .D(v_cnt_1[17]),
        .Q(v_cnt[17]),
        .R(p_0_in));
  FDRE \v_cnt_reg[18] 
       (.C(clk),
        .CE(\v_cnt[31]_i_1_n_0 ),
        .D(v_cnt_1[18]),
        .Q(v_cnt[18]),
        .R(p_0_in));
  FDRE \v_cnt_reg[19] 
       (.C(clk),
        .CE(\v_cnt[31]_i_1_n_0 ),
        .D(v_cnt_1[19]),
        .Q(v_cnt[19]),
        .R(p_0_in));
  FDRE \v_cnt_reg[1] 
       (.C(clk),
        .CE(\v_cnt[31]_i_1_n_0 ),
        .D(v_cnt_1[1]),
        .Q(v_cnt[1]),
        .R(p_0_in));
  FDRE \v_cnt_reg[20] 
       (.C(clk),
        .CE(\v_cnt[31]_i_1_n_0 ),
        .D(v_cnt_1[20]),
        .Q(v_cnt[20]),
        .R(p_0_in));
  FDRE \v_cnt_reg[21] 
       (.C(clk),
        .CE(\v_cnt[31]_i_1_n_0 ),
        .D(v_cnt_1[21]),
        .Q(v_cnt[21]),
        .R(p_0_in));
  FDRE \v_cnt_reg[22] 
       (.C(clk),
        .CE(\v_cnt[31]_i_1_n_0 ),
        .D(v_cnt_1[22]),
        .Q(v_cnt[22]),
        .R(p_0_in));
  FDRE \v_cnt_reg[23] 
       (.C(clk),
        .CE(\v_cnt[31]_i_1_n_0 ),
        .D(v_cnt_1[23]),
        .Q(v_cnt[23]),
        .R(p_0_in));
  FDRE \v_cnt_reg[24] 
       (.C(clk),
        .CE(\v_cnt[31]_i_1_n_0 ),
        .D(v_cnt_1[24]),
        .Q(v_cnt[24]),
        .R(p_0_in));
  FDRE \v_cnt_reg[25] 
       (.C(clk),
        .CE(\v_cnt[31]_i_1_n_0 ),
        .D(v_cnt_1[25]),
        .Q(v_cnt[25]),
        .R(p_0_in));
  FDRE \v_cnt_reg[26] 
       (.C(clk),
        .CE(\v_cnt[31]_i_1_n_0 ),
        .D(v_cnt_1[26]),
        .Q(v_cnt[26]),
        .R(p_0_in));
  FDRE \v_cnt_reg[27] 
       (.C(clk),
        .CE(\v_cnt[31]_i_1_n_0 ),
        .D(v_cnt_1[27]),
        .Q(v_cnt[27]),
        .R(p_0_in));
  FDRE \v_cnt_reg[28] 
       (.C(clk),
        .CE(\v_cnt[31]_i_1_n_0 ),
        .D(v_cnt_1[28]),
        .Q(v_cnt[28]),
        .R(p_0_in));
  FDRE \v_cnt_reg[29] 
       (.C(clk),
        .CE(\v_cnt[31]_i_1_n_0 ),
        .D(v_cnt_1[29]),
        .Q(v_cnt[29]),
        .R(p_0_in));
  FDRE \v_cnt_reg[2] 
       (.C(clk),
        .CE(\v_cnt[31]_i_1_n_0 ),
        .D(v_cnt_1[2]),
        .Q(v_cnt[2]),
        .R(p_0_in));
  FDRE \v_cnt_reg[30] 
       (.C(clk),
        .CE(\v_cnt[31]_i_1_n_0 ),
        .D(v_cnt_1[30]),
        .Q(v_cnt[30]),
        .R(p_0_in));
  FDRE \v_cnt_reg[31] 
       (.C(clk),
        .CE(\v_cnt[31]_i_1_n_0 ),
        .D(v_cnt_1[31]),
        .Q(v_cnt[31]),
        .R(p_0_in));
  FDRE \v_cnt_reg[3] 
       (.C(clk),
        .CE(\v_cnt[31]_i_1_n_0 ),
        .D(v_cnt_1[3]),
        .Q(v_cnt[3]),
        .R(p_0_in));
  FDRE \v_cnt_reg[4] 
       (.C(clk),
        .CE(\v_cnt[31]_i_1_n_0 ),
        .D(v_cnt_1[4]),
        .Q(v_cnt[4]),
        .R(p_0_in));
  FDRE \v_cnt_reg[5] 
       (.C(clk),
        .CE(\v_cnt[31]_i_1_n_0 ),
        .D(v_cnt_1[5]),
        .Q(v_cnt[5]),
        .R(p_0_in));
  FDRE \v_cnt_reg[6] 
       (.C(clk),
        .CE(\v_cnt[31]_i_1_n_0 ),
        .D(v_cnt_1[6]),
        .Q(v_cnt[6]),
        .R(p_0_in));
  FDRE \v_cnt_reg[7] 
       (.C(clk),
        .CE(\v_cnt[31]_i_1_n_0 ),
        .D(v_cnt_1[7]),
        .Q(v_cnt[7]),
        .R(p_0_in));
  FDRE \v_cnt_reg[8] 
       (.C(clk),
        .CE(\v_cnt[31]_i_1_n_0 ),
        .D(v_cnt_1[8]),
        .Q(v_cnt[8]),
        .R(p_0_in));
  FDRE \v_cnt_reg[9] 
       (.C(clk),
        .CE(\v_cnt[31]_i_1_n_0 ),
        .D(v_cnt_1[9]),
        .Q(v_cnt[9]),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'hAAEAAA2A00000000)) 
    vsync_i_1
       (.I0(vsync),
        .I1(\S_reg_n_0_[0] ),
        .I2(pclk_reg_0),
        .I3(\S_reg_n_0_[1] ),
        .I4(vsync_0),
        .I5(rst_n),
        .O(vsync_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
    vsync_i_2
       (.I0(cnt[1]),
        .I1(vsync_i_3_n_0),
        .I2(vsync_i_4_n_0),
        .I3(cnt[4]),
        .I4(cnt[3]),
        .I5(cnt[5]),
        .O(vsync_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    vsync_i_3
       (.I0(cnt[8]),
        .I1(cnt[13]),
        .I2(cnt[10]),
        .I3(cnt[9]),
        .I4(vsync_i_5_n_0),
        .O(vsync_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    vsync_i_4
       (.I0(\cnt[31]_i_4_n_0 ),
        .I1(cnt[31]),
        .O(vsync_i_4_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    vsync_i_5
       (.I0(cnt[7]),
        .I1(cnt[6]),
        .I2(cnt[2]),
        .O(vsync_i_5_n_0));
  FDRE vsync_reg
       (.C(clk),
        .CE(1'b1),
        .D(vsync_i_1_n_0),
        .Q(vsync),
        .R(1'b0));
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
