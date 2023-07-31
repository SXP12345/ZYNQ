// (c) Copyright 1995-2023 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:user:ov7725_data_sample:1.0
// IP Revision: 5

(* X_CORE_INFO = "ov7725_data_sample,Vivado 2021.1" *)
(* CHECK_LICENSE_TYPE = "design_1_ov7725_data_sample_0_0,ov7725_data_sample,{}" *)
(* CORE_GENERATION_INFO = "design_1_ov7725_data_sample_0_0,ov7725_data_sample,{x_ipProduct=Vivado 2021.1,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=ov7725_data_sample,x_ipVersion=1.0,x_ipCoreRevision=5,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_ov7725_data_sample_0_0 (
  rst_n,
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
  vid_data
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *)
input wire rst_n;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ov7725_pclk, ASSOCIATED_RESET ov7725_rst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ov7725_pclk CLK" *)
input wire ov7725_pclk;
input wire ov7725_vsync;
input wire ov7725_href;
input wire [7 : 0] ov7725_din;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ov7725_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ov7725_rst_n RST" *)
output wire ov7725_rst_n;
output wire ov7725_sgm_ctrl;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME vid_io_in_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_ov7725_data_sample_0_0_vid_io_in_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 vid_io_in_clk CLK" *)
output wire vid_io_in_clk;
output wire vid_io_in_ce;
(* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 video_out VSYNC" *)
output wire vid_vsync;
(* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 video_out ACTIVE_VIDEO" *)
output wire vid_active_video;
(* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 video_out DATA" *)
output wire [23 : 0] vid_data;

  ov7725_data_sample inst (
    .rst_n(rst_n),
    .ov7725_pclk(ov7725_pclk),
    .ov7725_vsync(ov7725_vsync),
    .ov7725_href(ov7725_href),
    .ov7725_din(ov7725_din),
    .ov7725_rst_n(ov7725_rst_n),
    .ov7725_sgm_ctrl(ov7725_sgm_ctrl),
    .vid_io_in_clk(vid_io_in_clk),
    .vid_io_in_ce(vid_io_in_ce),
    .vid_vsync(vid_vsync),
    .vid_active_video(vid_active_video),
    .vid_data(vid_data)
  );
endmodule