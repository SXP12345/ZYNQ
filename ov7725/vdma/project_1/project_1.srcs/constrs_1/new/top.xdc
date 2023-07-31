set_property PACKAGE_PIN T17 [get_ports ov7725_pclk_0]
set_property IOSTANDARD LVCMOS33 [get_ports ov7725_pclk_0]
set_property PACKAGE_PIN P18 [get_ports ov7725_rst_n_0]
set_property IOSTANDARD LVCMOS33 [get_ports ov7725_rst_n_0]
set_property PACKAGE_PIN N18 [get_ports ov7725_href_0]
set_property IOSTANDARD LVCMOS33 [get_ports ov7725_href_0]
set_property PACKAGE_PIN U18 [get_ports ov7725_sgm_ctrl_0]
set_property IOSTANDARD LVCMOS33 [get_ports ov7725_sgm_ctrl_0]
set_property IOSTANDARD LVCMOS33 [get_ports ov7725_vsync_0]
set_property PACKAGE_PIN T12 [get_ports {GPIO_0_0_tri_io[0]}]
set_property PACKAGE_PIN U12 [get_ports {GPIO_0_0_tri_io[1]}]
set_property PACKAGE_PIN V12 [get_ports {GPIO_0_0_tri_io[2]}]
set_property PACKAGE_PIN W13 [get_ports {GPIO_0_0_tri_io[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO_0_0_tri_io[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO_0_0_tri_io[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO_0_0_tri_io[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO_0_0_tri_io[3]}]
set_property PACKAGE_PIN N20 [get_ports ov7725_vsync_0]
set_property PACKAGE_PIN P20 [get_ports {GPIO_0_0_tri_io[6]}]
set_property PACKAGE_PIN T20 [get_ports {GPIO_0_0_tri_io[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO_0_0_tri_io[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO_0_0_tri_io[6]}]
set_property PULLUP true [get_ports {GPIO_0_0_tri_io[6]}]
set_property PULLUP true [get_ports {GPIO_0_0_tri_io[7]}]
set_property PACKAGE_PIN P15 [get_ports {GPIO_0_0_tri_io[5]}]
set_property PACKAGE_PIN U15 [get_ports {GPIO_0_0_tri_io[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO_0_0_tri_io[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO_0_0_tri_io[4]}]
set_property PACKAGE_PIN U20 [get_ports {ov7725_din_0[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ov7725_din_0[0]}]
set_property PACKAGE_PIN P19 [get_ports {ov7725_din_0[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ov7725_din_0[1]}]
set_property PACKAGE_PIN V20 [get_ports {ov7725_din_0[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ov7725_din_0[2]}]
set_property PACKAGE_PIN R18 [get_ports {ov7725_din_0[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ov7725_din_0[3]}]
set_property PACKAGE_PIN W20 [get_ports {ov7725_din_0[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ov7725_din_0[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ov7725_din_0[5]}]
set_property PACKAGE_PIN W16 [get_ports {ov7725_din_0[5]}]
set_property PACKAGE_PIN R17 [get_ports {ov7725_din_0[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ov7725_din_0[6]}]
set_property PACKAGE_PIN T16 [get_ports {ov7725_din_0[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ov7725_din_0[7]}]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets ov7725_pclk_0_IBUF]