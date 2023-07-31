//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
//Date        : Fri Jul 28 09:19:07 2023
//Host        : LAPTOP-FQ7LLQV0 running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (clk_0,
    rst_n_0);
  input clk_0;
  input rst_n_0;

  wire clk_0;
  wire rst_n_0;

  design_1 design_1_i
       (.clk_0(clk_0),
        .rst_n_0(rst_n_0));
endmodule
