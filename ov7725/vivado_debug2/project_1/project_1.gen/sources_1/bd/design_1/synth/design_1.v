//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
//Date        : Fri Jul 28 18:13:28 2023
//Host        : LAPTOP-FQ7LLQV0 running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=6,da_board_cnt=2,da_clkrst_cnt=22,da_ps7_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
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
    GPIO_0_0_tri_i,
    GPIO_0_0_tri_o,
    GPIO_0_0_tri_t,
    ov7725_din_0,
    ov7725_href_0,
    ov7725_pclk_0,
    ov7725_rst_n_0,
    ov7725_sgm_ctrl_0,
    ov7725_vsync_0);
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) inout [14:0]DDR_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR BA" *) inout [2:0]DDR_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CAS_N" *) inout DDR_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_N" *) inout DDR_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_P" *) inout DDR_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CKE" *) inout DDR_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CS_N" *) inout DDR_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DM" *) inout [3:0]DDR_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQ" *) inout [31:0]DDR_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_N" *) inout [3:0]DDR_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_P" *) inout [3:0]DDR_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ODT" *) inout DDR_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RAS_N" *) inout DDR_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RESET_N" *) inout DDR_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR WE_N" *) inout DDR_we_n;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false" *) inout FIXED_IO_ddr_vrn;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP" *) inout FIXED_IO_ddr_vrp;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO" *) inout [53:0]FIXED_IO_mio;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK" *) inout FIXED_IO_ps_clk;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB" *) inout FIXED_IO_ps_porb;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB" *) inout FIXED_IO_ps_srstb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_0_0 TRI_I" *) input [7:0]GPIO_0_0_tri_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_0_0 TRI_O" *) output [7:0]GPIO_0_0_tri_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_0_0 TRI_T" *) output [7:0]GPIO_0_0_tri_t;
  input [7:0]ov7725_din_0;
  input ov7725_href_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.OV7725_PCLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.OV7725_PCLK_0, CLK_DOMAIN design_1_ov7725_pclk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input ov7725_pclk_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.OV7725_RST_N_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.OV7725_RST_N_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output ov7725_rst_n_0;
  output ov7725_sgm_ctrl_0;
  input ov7725_vsync_0;

  wire ov7725_data_sample_0_ov7725_rst_n;
  wire ov7725_data_sample_0_ov7725_sgm_ctrl;
  wire ov7725_data_sample_0_vid_io_in_ce;
  wire ov7725_data_sample_0_vid_io_in_clk;
  (* CONN_BUS_INFO = "ov7725_data_sample_0_video_out xilinx.com:interface:vid_io:1.0 None ACTIVE_VIDEO" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire ov7725_data_sample_0_video_out_ACTIVE_VIDEO;
  (* CONN_BUS_INFO = "ov7725_data_sample_0_video_out xilinx.com:interface:vid_io:1.0 None DATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [23:0]ov7725_data_sample_0_video_out_DATA;
  (* CONN_BUS_INFO = "ov7725_data_sample_0_video_out xilinx.com:interface:vid_io:1.0 None VSYNC" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire ov7725_data_sample_0_video_out_VSYNC;
  wire [7:0]ov7725_din_0_1;
  wire ov7725_href_0_1;
  wire ov7725_pclk_0_1;
  wire ov7725_vsync_0_1;
  wire [14:0]processing_system7_0_DDR_ADDR;
  wire [2:0]processing_system7_0_DDR_BA;
  wire processing_system7_0_DDR_CAS_N;
  wire processing_system7_0_DDR_CKE;
  wire processing_system7_0_DDR_CK_N;
  wire processing_system7_0_DDR_CK_P;
  wire processing_system7_0_DDR_CS_N;
  wire [3:0]processing_system7_0_DDR_DM;
  wire [31:0]processing_system7_0_DDR_DQ;
  wire [3:0]processing_system7_0_DDR_DQS_N;
  wire [3:0]processing_system7_0_DDR_DQS_P;
  wire processing_system7_0_DDR_ODT;
  wire processing_system7_0_DDR_RAS_N;
  wire processing_system7_0_DDR_RESET_N;
  wire processing_system7_0_DDR_WE_N;
  wire processing_system7_0_FCLK_CLK0;
  wire processing_system7_0_FCLK_RESET0_N;
  wire processing_system7_0_FIXED_IO_DDR_VRN;
  wire processing_system7_0_FIXED_IO_DDR_VRP;
  wire [53:0]processing_system7_0_FIXED_IO_MIO;
  wire processing_system7_0_FIXED_IO_PS_CLK;
  wire processing_system7_0_FIXED_IO_PS_PORB;
  wire processing_system7_0_FIXED_IO_PS_SRSTB;
  wire [7:0]processing_system7_0_GPIO_0_TRI_I;
  wire [7:0]processing_system7_0_GPIO_0_TRI_O;
  wire [7:0]processing_system7_0_GPIO_0_TRI_T;
  wire [0:0]rst_design_1_100M_peripheral_aresetn;

  assign GPIO_0_0_tri_o[7:0] = processing_system7_0_GPIO_0_TRI_O;
  assign GPIO_0_0_tri_t[7:0] = processing_system7_0_GPIO_0_TRI_T;
  assign ov7725_din_0_1 = ov7725_din_0[7:0];
  assign ov7725_href_0_1 = ov7725_href_0;
  assign ov7725_pclk_0_1 = ov7725_pclk_0;
  assign ov7725_rst_n_0 = ov7725_data_sample_0_ov7725_rst_n;
  assign ov7725_sgm_ctrl_0 = ov7725_data_sample_0_ov7725_sgm_ctrl;
  assign ov7725_vsync_0_1 = ov7725_vsync_0;
  assign processing_system7_0_GPIO_0_TRI_I = GPIO_0_0_tri_i[7:0];
  design_1_ov7725_data_sample_0_0 ov7725_data_sample_0
       (.ov7725_din(ov7725_din_0_1),
        .ov7725_href(ov7725_href_0_1),
        .ov7725_pclk(ov7725_pclk_0_1),
        .ov7725_rst_n(ov7725_data_sample_0_ov7725_rst_n),
        .ov7725_sgm_ctrl(ov7725_data_sample_0_ov7725_sgm_ctrl),
        .ov7725_vsync(ov7725_vsync_0_1),
        .rst_n(rst_design_1_100M_peripheral_aresetn),
        .vid_active_video(ov7725_data_sample_0_video_out_ACTIVE_VIDEO),
        .vid_data(ov7725_data_sample_0_video_out_DATA),
        .vid_io_in_ce(ov7725_data_sample_0_vid_io_in_ce),
        .vid_io_in_clk(ov7725_data_sample_0_vid_io_in_clk),
        .vid_vsync(ov7725_data_sample_0_video_out_VSYNC));
  design_1_processing_system7_0_0 processing_system7_0
       (.DDR_Addr(DDR_addr[14:0]),
        .DDR_BankAddr(DDR_ba[2:0]),
        .DDR_CAS_n(DDR_cas_n),
        .DDR_CKE(DDR_cke),
        .DDR_CS_n(DDR_cs_n),
        .DDR_Clk(DDR_ck_p),
        .DDR_Clk_n(DDR_ck_n),
        .DDR_DM(DDR_dm[3:0]),
        .DDR_DQ(DDR_dq[31:0]),
        .DDR_DQS(DDR_dqs_p[3:0]),
        .DDR_DQS_n(DDR_dqs_n[3:0]),
        .DDR_DRSTB(DDR_reset_n),
        .DDR_ODT(DDR_odt),
        .DDR_RAS_n(DDR_ras_n),
        .DDR_VRN(FIXED_IO_ddr_vrn),
        .DDR_VRP(FIXED_IO_ddr_vrp),
        .DDR_WEB(DDR_we_n),
        .FCLK_CLK0(processing_system7_0_FCLK_CLK0),
        .FCLK_RESET0_N(processing_system7_0_FCLK_RESET0_N),
        .GPIO_I(processing_system7_0_GPIO_0_TRI_I),
        .GPIO_O(processing_system7_0_GPIO_0_TRI_O),
        .GPIO_T(processing_system7_0_GPIO_0_TRI_T),
        .MIO(FIXED_IO_mio[53:0]),
        .PS_CLK(FIXED_IO_ps_clk),
        .PS_PORB(FIXED_IO_ps_porb),
        .PS_SRSTB(FIXED_IO_ps_srstb));
  design_1_rst_design_1_100M_0 rst_design_1_100M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(processing_system7_0_FCLK_RESET0_N),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_design_1_100M_peripheral_aresetn),
        .slowest_sync_clk(processing_system7_0_FCLK_CLK0));
  design_1_system_ila_0_0 system_ila_0
       (.SLOT_0_VID_IO_active_video(ov7725_data_sample_0_video_out_ACTIVE_VIDEO),
        .SLOT_0_VID_IO_data(ov7725_data_sample_0_video_out_DATA),
        .SLOT_0_VID_IO_vsync(ov7725_data_sample_0_video_out_VSYNC),
        .clk(processing_system7_0_FCLK_CLK0),
        .probe0(ov7725_pclk_0_1),
        .probe1(ov7725_vsync_0_1),
        .probe2(ov7725_href_0_1),
        .probe3(ov7725_din_0_1),
        .probe4(ov7725_data_sample_0_vid_io_in_clk),
        .probe5(ov7725_data_sample_0_vid_io_in_ce));
  design_1_v_vid_in_axi4s_0_0 v_vid_in_axi4s_0
       (.aclk(processing_system7_0_FCLK_CLK0),
        .aclken(1'b1),
        .aresetn(1'b1),
        .axis_enable(1'b1),
        .m_axis_video_tready(1'b1),
        .vid_active_video(ov7725_data_sample_0_video_out_ACTIVE_VIDEO),
        .vid_data(ov7725_data_sample_0_video_out_DATA),
        .vid_field_id(1'b0),
        .vid_hblank(1'b0),
        .vid_hsync(1'b0),
        .vid_io_in_ce(ov7725_data_sample_0_vid_io_in_ce),
        .vid_io_in_clk(ov7725_data_sample_0_vid_io_in_clk),
        .vid_io_in_reset(1'b0),
        .vid_vblank(1'b0),
        .vid_vsync(ov7725_data_sample_0_video_out_VSYNC));
endmodule
