-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
-- Date        : Tue Jul 25 15:16:17 2023
-- Host        : LAPTOP-FQ7LLQV0 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_ov7725_data_sample_0_0_stub.vhdl
-- Design      : design_1_ov7725_data_sample_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    rst_n : in STD_LOGIC;
    ov7725_pclk : in STD_LOGIC;
    ov7725_vsync : in STD_LOGIC;
    ov7725_href : in STD_LOGIC;
    ov7725_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ov7725_rst_n : out STD_LOGIC;
    ov7725_sgm_ctrl : out STD_LOGIC;
    vid_io_in_clk : out STD_LOGIC;
    vid_io_in_ce : out STD_LOGIC;
    vid_vsync : out STD_LOGIC;
    vid_active_video : out STD_LOGIC;
    vid_data : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "rst_n,ov7725_pclk,ov7725_vsync,ov7725_href,ov7725_din[7:0],ov7725_rst_n,ov7725_sgm_ctrl,vid_io_in_clk,vid_io_in_ce,vid_vsync,vid_active_video,vid_data[23:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ov7725_data_sample,Vivado 2021.1";
begin
end;
