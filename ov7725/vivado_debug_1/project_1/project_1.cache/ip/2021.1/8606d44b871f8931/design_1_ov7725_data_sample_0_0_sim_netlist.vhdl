-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
-- Date        : Fri Jul 28 09:19:57 2023
-- Host        : LAPTOP-FQ7LLQV0 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_ov7725_data_sample_0_0_sim_netlist.vhdl
-- Design      : design_1_ov7725_data_sample_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ov7725_data_sample is
  port (
    vid_io_in_clk : out STD_LOGIC;
    vid_data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    vid_vsync : out STD_LOGIC;
    wait_done_reg_0 : out STD_LOGIC;
    vid_active_video : out STD_LOGIC;
    ov7725_pclk : in STD_LOGIC;
    ov7725_vsync : in STD_LOGIC;
    ov7725_href : in STD_LOGIC;
    ov7725_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rst_n : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ov7725_data_sample;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ov7725_data_sample is
  signal RGB565 : STD_LOGIC;
  signal byte_flag : STD_LOGIC;
  signal byte_flag0_out : STD_LOGIC;
  signal ov7725_din_d1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ov7725_din_d2 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ov7725_din_d3 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ov7725_href_d1 : STD_LOGIC;
  signal ov7725_href_d2 : STD_LOGIC;
  signal ov7725_href_d3 : STD_LOGIC;
  signal ov7725_href_d4 : STD_LOGIC;
  signal ov7725_vsync_d1 : STD_LOGIC;
  signal ov7725_vsync_d2 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal vid_clk_i_2_n_0 : STD_LOGIC;
  signal \^vid_io_in_clk\ : STD_LOGIC;
  signal wait_cnt : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \wait_cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \wait_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal wait_cnt_0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal wait_done_i_1_n_0 : STD_LOGIC;
  signal wait_done_i_2_n_0 : STD_LOGIC;
  signal wait_done_i_3_n_0 : STD_LOGIC;
  signal \^wait_done_reg_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of vid_active_video_INST_0 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of vid_vsync_INST_0 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \wait_cnt[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \wait_cnt[4]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \wait_cnt[5]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \wait_cnt[6]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \wait_cnt[7]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of wait_done_i_3 : label is "soft_lutpair1";
begin
  vid_io_in_clk <= \^vid_io_in_clk\;
  wait_done_reg_0 <= \^wait_done_reg_0\;
\RGB565[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ov7725_href_d2,
      I1 => byte_flag,
      O => RGB565
    );
\RGB565_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => ov7725_pclk,
      CE => RGB565,
      CLR => vid_clk_i_2_n_0,
      D => ov7725_din_d2(0),
      Q => vid_data(0)
    );
\RGB565_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => ov7725_pclk,
      CE => RGB565,
      CLR => vid_clk_i_2_n_0,
      D => ov7725_din_d3(2),
      Q => vid_data(10)
    );
\RGB565_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => ov7725_pclk,
      CE => RGB565,
      CLR => vid_clk_i_2_n_0,
      D => ov7725_din_d3(3),
      Q => vid_data(11)
    );
\RGB565_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => ov7725_pclk,
      CE => RGB565,
      CLR => vid_clk_i_2_n_0,
      D => ov7725_din_d3(4),
      Q => vid_data(12)
    );
\RGB565_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => ov7725_pclk,
      CE => RGB565,
      CLR => vid_clk_i_2_n_0,
      D => ov7725_din_d3(5),
      Q => vid_data(13)
    );
\RGB565_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => ov7725_pclk,
      CE => RGB565,
      CLR => vid_clk_i_2_n_0,
      D => ov7725_din_d3(6),
      Q => vid_data(14)
    );
\RGB565_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => ov7725_pclk,
      CE => RGB565,
      CLR => vid_clk_i_2_n_0,
      D => ov7725_din_d3(7),
      Q => vid_data(15)
    );
\RGB565_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => ov7725_pclk,
      CE => RGB565,
      CLR => vid_clk_i_2_n_0,
      D => ov7725_din_d2(1),
      Q => vid_data(1)
    );
\RGB565_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => ov7725_pclk,
      CE => RGB565,
      CLR => vid_clk_i_2_n_0,
      D => ov7725_din_d2(2),
      Q => vid_data(2)
    );
\RGB565_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => ov7725_pclk,
      CE => RGB565,
      CLR => vid_clk_i_2_n_0,
      D => ov7725_din_d2(3),
      Q => vid_data(3)
    );
\RGB565_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => ov7725_pclk,
      CE => RGB565,
      CLR => vid_clk_i_2_n_0,
      D => ov7725_din_d2(4),
      Q => vid_data(4)
    );
\RGB565_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => ov7725_pclk,
      CE => RGB565,
      CLR => vid_clk_i_2_n_0,
      D => ov7725_din_d2(5),
      Q => vid_data(5)
    );
\RGB565_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => ov7725_pclk,
      CE => RGB565,
      CLR => vid_clk_i_2_n_0,
      D => ov7725_din_d2(6),
      Q => vid_data(6)
    );
\RGB565_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => ov7725_pclk,
      CE => RGB565,
      CLR => vid_clk_i_2_n_0,
      D => ov7725_din_d2(7),
      Q => vid_data(7)
    );
\RGB565_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => ov7725_pclk,
      CE => RGB565,
      CLR => vid_clk_i_2_n_0,
      D => ov7725_din_d3(0),
      Q => vid_data(8)
    );
\RGB565_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => ov7725_pclk,
      CE => RGB565,
      CLR => vid_clk_i_2_n_0,
      D => ov7725_din_d3(1),
      Q => vid_data(9)
    );
byte_flag_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ov7725_href_d2,
      I1 => byte_flag,
      O => byte_flag0_out
    );
byte_flag_reg: unisim.vcomponents.FDCE
     port map (
      C => ov7725_pclk,
      CE => '1',
      CLR => vid_clk_i_2_n_0,
      D => byte_flag0_out,
      Q => byte_flag
    );
\ov7725_din_d1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => ov7725_pclk,
      CE => '1',
      CLR => vid_clk_i_2_n_0,
      D => ov7725_din(0),
      Q => ov7725_din_d1(0)
    );
\ov7725_din_d1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => ov7725_pclk,
      CE => '1',
      CLR => vid_clk_i_2_n_0,
      D => ov7725_din(1),
      Q => ov7725_din_d1(1)
    );
\ov7725_din_d1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => ov7725_pclk,
      CE => '1',
      CLR => vid_clk_i_2_n_0,
      D => ov7725_din(2),
      Q => ov7725_din_d1(2)
    );
\ov7725_din_d1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => ov7725_pclk,
      CE => '1',
      CLR => vid_clk_i_2_n_0,
      D => ov7725_din(3),
      Q => ov7725_din_d1(3)
    );
\ov7725_din_d1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => ov7725_pclk,
      CE => '1',
      CLR => vid_clk_i_2_n_0,
      D => ov7725_din(4),
      Q => ov7725_din_d1(4)
    );
\ov7725_din_d1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => ov7725_pclk,
      CE => '1',
      CLR => vid_clk_i_2_n_0,
      D => ov7725_din(5),
      Q => ov7725_din_d1(5)
    );
\ov7725_din_d1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => ov7725_pclk,
      CE => '1',
      CLR => vid_clk_i_2_n_0,
      D => ov7725_din(6),
      Q => ov7725_din_d1(6)
    );
\ov7725_din_d1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => ov7725_pclk,
      CE => '1',
      CLR => vid_clk_i_2_n_0,
      D => ov7725_din(7),
      Q => ov7725_din_d1(7)
    );
\ov7725_din_d2_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => ov7725_pclk,
      CE => '1',
      CLR => vid_clk_i_2_n_0,
      D => ov7725_din_d1(0),
      Q => ov7725_din_d2(0)
    );
\ov7725_din_d2_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => ov7725_pclk,
      CE => '1',
      CLR => vid_clk_i_2_n_0,
      D => ov7725_din_d1(1),
      Q => ov7725_din_d2(1)
    );
\ov7725_din_d2_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => ov7725_pclk,
      CE => '1',
      CLR => vid_clk_i_2_n_0,
      D => ov7725_din_d1(2),
      Q => ov7725_din_d2(2)
    );
\ov7725_din_d2_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => ov7725_pclk,
      CE => '1',
      CLR => vid_clk_i_2_n_0,
      D => ov7725_din_d1(3),
      Q => ov7725_din_d2(3)
    );
\ov7725_din_d2_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => ov7725_pclk,
      CE => '1',
      CLR => vid_clk_i_2_n_0,
      D => ov7725_din_d1(4),
      Q => ov7725_din_d2(4)
    );
\ov7725_din_d2_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => ov7725_pclk,
      CE => '1',
      CLR => vid_clk_i_2_n_0,
      D => ov7725_din_d1(5),
      Q => ov7725_din_d2(5)
    );
\ov7725_din_d2_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => ov7725_pclk,
      CE => '1',
      CLR => vid_clk_i_2_n_0,
      D => ov7725_din_d1(6),
      Q => ov7725_din_d2(6)
    );
\ov7725_din_d2_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => ov7725_pclk,
      CE => '1',
      CLR => vid_clk_i_2_n_0,
      D => ov7725_din_d1(7),
      Q => ov7725_din_d2(7)
    );
\ov7725_din_d3_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => ov7725_pclk,
      CE => '1',
      CLR => vid_clk_i_2_n_0,
      D => ov7725_din_d2(0),
      Q => ov7725_din_d3(0)
    );
\ov7725_din_d3_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => ov7725_pclk,
      CE => '1',
      CLR => vid_clk_i_2_n_0,
      D => ov7725_din_d2(1),
      Q => ov7725_din_d3(1)
    );
\ov7725_din_d3_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => ov7725_pclk,
      CE => '1',
      CLR => vid_clk_i_2_n_0,
      D => ov7725_din_d2(2),
      Q => ov7725_din_d3(2)
    );
\ov7725_din_d3_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => ov7725_pclk,
      CE => '1',
      CLR => vid_clk_i_2_n_0,
      D => ov7725_din_d2(3),
      Q => ov7725_din_d3(3)
    );
\ov7725_din_d3_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => ov7725_pclk,
      CE => '1',
      CLR => vid_clk_i_2_n_0,
      D => ov7725_din_d2(4),
      Q => ov7725_din_d3(4)
    );
\ov7725_din_d3_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => ov7725_pclk,
      CE => '1',
      CLR => vid_clk_i_2_n_0,
      D => ov7725_din_d2(5),
      Q => ov7725_din_d3(5)
    );
\ov7725_din_d3_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => ov7725_pclk,
      CE => '1',
      CLR => vid_clk_i_2_n_0,
      D => ov7725_din_d2(6),
      Q => ov7725_din_d3(6)
    );
\ov7725_din_d3_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => ov7725_pclk,
      CE => '1',
      CLR => vid_clk_i_2_n_0,
      D => ov7725_din_d2(7),
      Q => ov7725_din_d3(7)
    );
ov7725_href_d1_reg: unisim.vcomponents.FDCE
     port map (
      C => ov7725_pclk,
      CE => '1',
      CLR => vid_clk_i_2_n_0,
      D => ov7725_href,
      Q => ov7725_href_d1
    );
ov7725_href_d2_reg: unisim.vcomponents.FDCE
     port map (
      C => ov7725_pclk,
      CE => '1',
      CLR => vid_clk_i_2_n_0,
      D => ov7725_href_d1,
      Q => ov7725_href_d2
    );
ov7725_href_d3_reg: unisim.vcomponents.FDCE
     port map (
      C => ov7725_pclk,
      CE => '1',
      CLR => vid_clk_i_2_n_0,
      D => ov7725_href_d2,
      Q => ov7725_href_d3
    );
ov7725_href_d4_reg: unisim.vcomponents.FDCE
     port map (
      C => ov7725_pclk,
      CE => '1',
      CLR => vid_clk_i_2_n_0,
      D => ov7725_href_d3,
      Q => ov7725_href_d4
    );
ov7725_vsync_d1_reg: unisim.vcomponents.FDCE
     port map (
      C => ov7725_pclk,
      CE => '1',
      CLR => vid_clk_i_2_n_0,
      D => ov7725_vsync,
      Q => ov7725_vsync_d1
    );
ov7725_vsync_d2_reg: unisim.vcomponents.FDCE
     port map (
      C => ov7725_pclk,
      CE => '1',
      CLR => vid_clk_i_2_n_0,
      D => ov7725_vsync_d1,
      Q => ov7725_vsync_d2
    );
vid_active_video_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ov7725_href_d4,
      I1 => \^wait_done_reg_0\,
      O => vid_active_video
    );
vid_clk_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^vid_io_in_clk\,
      O => p_0_in
    );
vid_clk_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => vid_clk_i_2_n_0
    );
vid_clk_reg: unisim.vcomponents.FDCE
     port map (
      C => ov7725_pclk,
      CE => '1',
      CLR => vid_clk_i_2_n_0,
      D => p_0_in,
      Q => \^vid_io_in_clk\
    );
vid_vsync_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ov7725_vsync_d2,
      I1 => \^wait_done_reg_0\,
      O => vid_vsync
    );
\wait_cnt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFFE"
    )
        port map (
      I0 => wait_done_i_3_n_0,
      I1 => wait_cnt(7),
      I2 => wait_cnt(6),
      I3 => wait_cnt(5),
      I4 => wait_cnt(0),
      O => wait_cnt_0(0)
    );
\wait_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFFFFE0000"
    )
        port map (
      I0 => wait_cnt(5),
      I1 => wait_cnt(6),
      I2 => wait_cnt(7),
      I3 => wait_done_i_3_n_0,
      I4 => wait_cnt(1),
      I5 => wait_cnt(0),
      O => wait_cnt_0(1)
    );
\wait_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFFF00BF00FF00"
    )
        port map (
      I0 => wait_done_i_2_n_0,
      I1 => wait_cnt(4),
      I2 => wait_cnt(3),
      I3 => wait_cnt(2),
      I4 => wait_cnt(1),
      I5 => wait_cnt(0),
      O => wait_cnt_0(2)
    );
\wait_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FB0F0F0F0F0F0F0"
    )
        port map (
      I0 => wait_done_i_2_n_0,
      I1 => wait_cnt(4),
      I2 => wait_cnt(3),
      I3 => wait_cnt(0),
      I4 => wait_cnt(2),
      I5 => wait_cnt(1),
      O => wait_cnt_0(3)
    );
\wait_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF0000FFFE00"
    )
        port map (
      I0 => wait_cnt(5),
      I1 => wait_cnt(6),
      I2 => wait_cnt(7),
      I3 => wait_cnt(4),
      I4 => wait_cnt(0),
      I5 => \wait_cnt[4]_i_2_n_0\,
      O => wait_cnt_0(4)
    );
\wait_cnt[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => wait_cnt(2),
      I1 => wait_cnt(1),
      I2 => wait_cnt(3),
      O => \wait_cnt[4]_i_2_n_0\
    );
\wait_cnt[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A6"
    )
        port map (
      I0 => wait_cnt(5),
      I1 => wait_cnt(0),
      I2 => wait_done_i_3_n_0,
      O => wait_cnt_0(5)
    );
\wait_cnt[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA6A"
    )
        port map (
      I0 => wait_cnt(6),
      I1 => wait_cnt(5),
      I2 => wait_cnt(0),
      I3 => wait_done_i_3_n_0,
      O => wait_cnt_0(6)
    );
\wait_cnt[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ov7725_vsync_d1,
      I1 => ov7725_vsync_d2,
      O => \wait_cnt[7]_i_1_n_0\
    );
\wait_cnt[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA6AAA"
    )
        port map (
      I0 => wait_cnt(7),
      I1 => wait_cnt(0),
      I2 => wait_cnt(5),
      I3 => wait_cnt(6),
      I4 => wait_done_i_3_n_0,
      O => wait_cnt_0(7)
    );
\wait_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => ov7725_pclk,
      CE => \wait_cnt[7]_i_1_n_0\,
      CLR => vid_clk_i_2_n_0,
      D => wait_cnt_0(0),
      Q => wait_cnt(0)
    );
\wait_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => ov7725_pclk,
      CE => \wait_cnt[7]_i_1_n_0\,
      CLR => vid_clk_i_2_n_0,
      D => wait_cnt_0(1),
      Q => wait_cnt(1)
    );
\wait_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => ov7725_pclk,
      CE => \wait_cnt[7]_i_1_n_0\,
      CLR => vid_clk_i_2_n_0,
      D => wait_cnt_0(2),
      Q => wait_cnt(2)
    );
\wait_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => ov7725_pclk,
      CE => \wait_cnt[7]_i_1_n_0\,
      CLR => vid_clk_i_2_n_0,
      D => wait_cnt_0(3),
      Q => wait_cnt(3)
    );
\wait_cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => ov7725_pclk,
      CE => \wait_cnt[7]_i_1_n_0\,
      CLR => vid_clk_i_2_n_0,
      D => wait_cnt_0(4),
      Q => wait_cnt(4)
    );
\wait_cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => ov7725_pclk,
      CE => \wait_cnt[7]_i_1_n_0\,
      CLR => vid_clk_i_2_n_0,
      D => wait_cnt_0(5),
      Q => wait_cnt(5)
    );
\wait_cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => ov7725_pclk,
      CE => \wait_cnt[7]_i_1_n_0\,
      CLR => vid_clk_i_2_n_0,
      D => wait_cnt_0(6),
      Q => wait_cnt(6)
    );
\wait_cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => ov7725_pclk,
      CE => \wait_cnt[7]_i_1_n_0\,
      CLR => vid_clk_i_2_n_0,
      D => wait_cnt_0(7),
      Q => wait_cnt(7)
    );
wait_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000004"
    )
        port map (
      I0 => ov7725_vsync_d2,
      I1 => ov7725_vsync_d1,
      I2 => wait_cnt(0),
      I3 => wait_done_i_2_n_0,
      I4 => wait_done_i_3_n_0,
      I5 => \^wait_done_reg_0\,
      O => wait_done_i_1_n_0
    );
wait_done_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => wait_cnt(7),
      I1 => wait_cnt(6),
      I2 => wait_cnt(5),
      O => wait_done_i_2_n_0
    );
wait_done_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => wait_cnt(3),
      I1 => wait_cnt(1),
      I2 => wait_cnt(2),
      I3 => wait_cnt(4),
      O => wait_done_i_3_n_0
    );
wait_done_reg: unisim.vcomponents.FDCE
     port map (
      C => ov7725_pclk,
      CE => '1',
      CLR => vid_clk_i_2_n_0,
      D => wait_done_i_1_n_0,
      Q => \^wait_done_reg_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_ov7725_data_sample_0_0,ov7725_data_sample,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "ov7725_data_sample,Vivado 2021.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^vid_data\ : STD_LOGIC_VECTOR ( 23 downto 3 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ov7725_pclk : signal is "xilinx.com:signal:clock:1.0 ov7725_pclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ov7725_pclk : signal is "XIL_INTERFACENAME ov7725_pclk, ASSOCIATED_RESET ov7725_rst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ov7725_rst_n : signal is "xilinx.com:signal:reset:1.0 ov7725_rst_n RST";
  attribute X_INTERFACE_PARAMETER of ov7725_rst_n : signal is "XIL_INTERFACENAME ov7725_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of vid_active_video : signal is "xilinx.com:interface:vid_io:1.0 video_out ACTIVE_VIDEO";
  attribute X_INTERFACE_INFO of vid_io_in_clk : signal is "xilinx.com:signal:clock:1.0 vid_io_in_clk CLK";
  attribute X_INTERFACE_PARAMETER of vid_io_in_clk : signal is "XIL_INTERFACENAME vid_io_in_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_ov7725_data_sample_0_0_vid_io_in_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of vid_vsync : signal is "xilinx.com:interface:vid_io:1.0 video_out VSYNC";
  attribute X_INTERFACE_INFO of vid_data : signal is "xilinx.com:interface:vid_io:1.0 video_out DATA";
begin
  ov7725_rst_n <= \<const1>\;
  ov7725_sgm_ctrl <= \<const1>\;
  vid_data(23 downto 19) <= \^vid_data\(23 downto 19);
  vid_data(18) <= \<const0>\;
  vid_data(17) <= \<const0>\;
  vid_data(16) <= \<const0>\;
  vid_data(15 downto 10) <= \^vid_data\(15 downto 10);
  vid_data(9) <= \<const0>\;
  vid_data(8) <= \<const0>\;
  vid_data(7 downto 3) <= \^vid_data\(7 downto 3);
  vid_data(2) <= \<const0>\;
  vid_data(1) <= \<const0>\;
  vid_data(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ov7725_data_sample
     port map (
      ov7725_din(7 downto 0) => ov7725_din(7 downto 0),
      ov7725_href => ov7725_href,
      ov7725_pclk => ov7725_pclk,
      ov7725_vsync => ov7725_vsync,
      rst_n => rst_n,
      vid_active_video => vid_active_video,
      vid_data(15 downto 11) => \^vid_data\(23 downto 19),
      vid_data(10 downto 5) => \^vid_data\(15 downto 10),
      vid_data(4 downto 0) => \^vid_data\(7 downto 3),
      vid_io_in_clk => vid_io_in_clk,
      vid_vsync => vid_vsync,
      wait_done_reg_0 => vid_io_in_ce
    );
end STRUCTURE;
