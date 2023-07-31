// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Thu Jul 27 20:19:24 2023
// Host        : LAPTOP-FQ7LLQV0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/SUXP/Desktop/ov7725/vivado/project_1/project_1.gen/sources_1/bd/design_1/ip/design_1_analog_ov_0_0/design_1_analog_ov_0_0_stub.v
// Design      : design_1_analog_ov_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "analog_ov,Vivado 2021.1" *)
module design_1_analog_ov_0_0(clk, rst_n, pclk, vsync, href, data)
/* synthesis syn_black_box black_box_pad_pin="clk,rst_n,pclk,vsync,href,data[7:0]" */;
  input clk;
  input rst_n;
  output pclk;
  output vsync;
  output href;
  output [7:0]data;
endmodule
