//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
//Date        : Fri Jul 28 08:48:23 2023
//Host        : LAPTOP-FQ7LLQV0 running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    GPIO_0_0_tri_io,
    ov7725_rst_n_0,
    ov7725_sgm_ctrl_0);
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  inout [7:0]GPIO_0_0_tri_io;
  output ov7725_rst_n_0;
  output ov7725_sgm_ctrl_0;

  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire [0:0]GPIO_0_0_tri_i_0;
  wire [1:1]GPIO_0_0_tri_i_1;
  wire [2:2]GPIO_0_0_tri_i_2;
  wire [3:3]GPIO_0_0_tri_i_3;
  wire [4:4]GPIO_0_0_tri_i_4;
  wire [5:5]GPIO_0_0_tri_i_5;
  wire [6:6]GPIO_0_0_tri_i_6;
  wire [7:7]GPIO_0_0_tri_i_7;
  wire [0:0]GPIO_0_0_tri_io_0;
  wire [1:1]GPIO_0_0_tri_io_1;
  wire [2:2]GPIO_0_0_tri_io_2;
  wire [3:3]GPIO_0_0_tri_io_3;
  wire [4:4]GPIO_0_0_tri_io_4;
  wire [5:5]GPIO_0_0_tri_io_5;
  wire [6:6]GPIO_0_0_tri_io_6;
  wire [7:7]GPIO_0_0_tri_io_7;
  wire [0:0]GPIO_0_0_tri_o_0;
  wire [1:1]GPIO_0_0_tri_o_1;
  wire [2:2]GPIO_0_0_tri_o_2;
  wire [3:3]GPIO_0_0_tri_o_3;
  wire [4:4]GPIO_0_0_tri_o_4;
  wire [5:5]GPIO_0_0_tri_o_5;
  wire [6:6]GPIO_0_0_tri_o_6;
  wire [7:7]GPIO_0_0_tri_o_7;
  wire [0:0]GPIO_0_0_tri_t_0;
  wire [1:1]GPIO_0_0_tri_t_1;
  wire [2:2]GPIO_0_0_tri_t_2;
  wire [3:3]GPIO_0_0_tri_t_3;
  wire [4:4]GPIO_0_0_tri_t_4;
  wire [5:5]GPIO_0_0_tri_t_5;
  wire [6:6]GPIO_0_0_tri_t_6;
  wire [7:7]GPIO_0_0_tri_t_7;
  wire ov7725_rst_n_0;
  wire ov7725_sgm_ctrl_0;

  IOBUF GPIO_0_0_tri_iobuf_0
       (.I(GPIO_0_0_tri_o_0),
        .IO(GPIO_0_0_tri_io[0]),
        .O(GPIO_0_0_tri_i_0),
        .T(GPIO_0_0_tri_t_0));
  IOBUF GPIO_0_0_tri_iobuf_1
       (.I(GPIO_0_0_tri_o_1),
        .IO(GPIO_0_0_tri_io[1]),
        .O(GPIO_0_0_tri_i_1),
        .T(GPIO_0_0_tri_t_1));
  IOBUF GPIO_0_0_tri_iobuf_2
       (.I(GPIO_0_0_tri_o_2),
        .IO(GPIO_0_0_tri_io[2]),
        .O(GPIO_0_0_tri_i_2),
        .T(GPIO_0_0_tri_t_2));
  IOBUF GPIO_0_0_tri_iobuf_3
       (.I(GPIO_0_0_tri_o_3),
        .IO(GPIO_0_0_tri_io[3]),
        .O(GPIO_0_0_tri_i_3),
        .T(GPIO_0_0_tri_t_3));
  IOBUF GPIO_0_0_tri_iobuf_4
       (.I(GPIO_0_0_tri_o_4),
        .IO(GPIO_0_0_tri_io[4]),
        .O(GPIO_0_0_tri_i_4),
        .T(GPIO_0_0_tri_t_4));
  IOBUF GPIO_0_0_tri_iobuf_5
       (.I(GPIO_0_0_tri_o_5),
        .IO(GPIO_0_0_tri_io[5]),
        .O(GPIO_0_0_tri_i_5),
        .T(GPIO_0_0_tri_t_5));
  IOBUF GPIO_0_0_tri_iobuf_6
       (.I(GPIO_0_0_tri_o_6),
        .IO(GPIO_0_0_tri_io[6]),
        .O(GPIO_0_0_tri_i_6),
        .T(GPIO_0_0_tri_t_6));
  IOBUF GPIO_0_0_tri_iobuf_7
       (.I(GPIO_0_0_tri_o_7),
        .IO(GPIO_0_0_tri_io[7]),
        .O(GPIO_0_0_tri_i_7),
        .T(GPIO_0_0_tri_t_7));
  design_1 design_1_i
       (.DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .GPIO_0_0_tri_i({GPIO_0_0_tri_i_7,GPIO_0_0_tri_i_6,GPIO_0_0_tri_i_5,GPIO_0_0_tri_i_4,GPIO_0_0_tri_i_3,GPIO_0_0_tri_i_2,GPIO_0_0_tri_i_1,GPIO_0_0_tri_i_0}),
        .GPIO_0_0_tri_o({GPIO_0_0_tri_o_7,GPIO_0_0_tri_o_6,GPIO_0_0_tri_o_5,GPIO_0_0_tri_o_4,GPIO_0_0_tri_o_3,GPIO_0_0_tri_o_2,GPIO_0_0_tri_o_1,GPIO_0_0_tri_o_0}),
        .GPIO_0_0_tri_t({GPIO_0_0_tri_t_7,GPIO_0_0_tri_t_6,GPIO_0_0_tri_t_5,GPIO_0_0_tri_t_4,GPIO_0_0_tri_t_3,GPIO_0_0_tri_t_2,GPIO_0_0_tri_t_1,GPIO_0_0_tri_t_0}),
        .ov7725_rst_n_0(ov7725_rst_n_0),
        .ov7725_sgm_ctrl_0(ov7725_sgm_ctrl_0));
endmodule
