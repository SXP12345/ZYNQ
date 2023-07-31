-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
-- Date        : Thu Jul 27 20:19:24 2023
-- Host        : LAPTOP-FQ7LLQV0 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/SUXP/Desktop/ov7725/vivado/project_1/project_1.gen/sources_1/bd/design_1/ip/design_1_analog_ov_0_0/design_1_analog_ov_0_0_sim_netlist.vhdl
-- Design      : design_1_analog_ov_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_analog_ov_0_0_analog_ov is
  port (
    data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    pclk_reg_0 : out STD_LOGIC;
    href : out STD_LOGIC;
    vsync : out STD_LOGIC;
    rst_n : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_analog_ov_0_0_analog_ov : entity is "analog_ov";
end design_1_analog_ov_0_0_analog_ov;

architecture STRUCTURE of design_1_analog_ov_0_0_analog_ov is
  signal \S[0]_i_1_n_0\ : STD_LOGIC;
  signal \S[1]_i_1_n_0\ : STD_LOGIC;
  signal \S[2]_i_10_n_0\ : STD_LOGIC;
  signal \S[2]_i_11_n_0\ : STD_LOGIC;
  signal \S[2]_i_12_n_0\ : STD_LOGIC;
  signal \S[2]_i_13_n_0\ : STD_LOGIC;
  signal \S[2]_i_14_n_0\ : STD_LOGIC;
  signal \S[2]_i_15_n_0\ : STD_LOGIC;
  signal \S[2]_i_16_n_0\ : STD_LOGIC;
  signal \S[2]_i_17_n_0\ : STD_LOGIC;
  signal \S[2]_i_18_n_0\ : STD_LOGIC;
  signal \S[2]_i_19_n_0\ : STD_LOGIC;
  signal \S[2]_i_1_n_0\ : STD_LOGIC;
  signal \S[2]_i_20_n_0\ : STD_LOGIC;
  signal \S[2]_i_21_n_0\ : STD_LOGIC;
  signal \S[2]_i_22_n_0\ : STD_LOGIC;
  signal \S[2]_i_23_n_0\ : STD_LOGIC;
  signal \S[2]_i_2_n_0\ : STD_LOGIC;
  signal \S[2]_i_3_n_0\ : STD_LOGIC;
  signal \S[2]_i_4_n_0\ : STD_LOGIC;
  signal \S[2]_i_5_n_0\ : STD_LOGIC;
  signal \S[2]_i_6_n_0\ : STD_LOGIC;
  signal \S[2]_i_7_n_0\ : STD_LOGIC;
  signal \S[2]_i_8_n_0\ : STD_LOGIC;
  signal \S[2]_i_9_n_0\ : STD_LOGIC;
  signal \S_reg_n_0_[0]\ : STD_LOGIC;
  signal \S_reg_n_0_[1]\ : STD_LOGIC;
  signal \S_reg_n_0_[2]\ : STD_LOGIC;
  signal cnt : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \cnt0_carry__0_n_0\ : STD_LOGIC;
  signal \cnt0_carry__0_n_1\ : STD_LOGIC;
  signal \cnt0_carry__0_n_2\ : STD_LOGIC;
  signal \cnt0_carry__0_n_3\ : STD_LOGIC;
  signal \cnt0_carry__1_n_0\ : STD_LOGIC;
  signal \cnt0_carry__1_n_1\ : STD_LOGIC;
  signal \cnt0_carry__1_n_2\ : STD_LOGIC;
  signal \cnt0_carry__1_n_3\ : STD_LOGIC;
  signal \cnt0_carry__2_n_0\ : STD_LOGIC;
  signal \cnt0_carry__2_n_1\ : STD_LOGIC;
  signal \cnt0_carry__2_n_2\ : STD_LOGIC;
  signal \cnt0_carry__2_n_3\ : STD_LOGIC;
  signal \cnt0_carry__3_n_0\ : STD_LOGIC;
  signal \cnt0_carry__3_n_1\ : STD_LOGIC;
  signal \cnt0_carry__3_n_2\ : STD_LOGIC;
  signal \cnt0_carry__3_n_3\ : STD_LOGIC;
  signal \cnt0_carry__4_n_0\ : STD_LOGIC;
  signal \cnt0_carry__4_n_1\ : STD_LOGIC;
  signal \cnt0_carry__4_n_2\ : STD_LOGIC;
  signal \cnt0_carry__4_n_3\ : STD_LOGIC;
  signal \cnt0_carry__5_n_0\ : STD_LOGIC;
  signal \cnt0_carry__5_n_1\ : STD_LOGIC;
  signal \cnt0_carry__5_n_2\ : STD_LOGIC;
  signal \cnt0_carry__5_n_3\ : STD_LOGIC;
  signal \cnt0_carry__6_n_2\ : STD_LOGIC;
  signal \cnt0_carry__6_n_3\ : STD_LOGIC;
  signal cnt0_carry_n_0 : STD_LOGIC;
  signal cnt0_carry_n_1 : STD_LOGIC;
  signal cnt0_carry_n_2 : STD_LOGIC;
  signal cnt0_carry_n_3 : STD_LOGIC;
  signal \cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal \cnt[31]_i_10_n_0\ : STD_LOGIC;
  signal \cnt[31]_i_11_n_0\ : STD_LOGIC;
  signal \cnt[31]_i_12_n_0\ : STD_LOGIC;
  signal \cnt[31]_i_13_n_0\ : STD_LOGIC;
  signal \cnt[31]_i_14_n_0\ : STD_LOGIC;
  signal \cnt[31]_i_15_n_0\ : STD_LOGIC;
  signal \cnt[31]_i_16_n_0\ : STD_LOGIC;
  signal \cnt[31]_i_17_n_0\ : STD_LOGIC;
  signal \cnt[31]_i_2_n_0\ : STD_LOGIC;
  signal \cnt[31]_i_4_n_0\ : STD_LOGIC;
  signal \cnt[31]_i_5_n_0\ : STD_LOGIC;
  signal \cnt[31]_i_6_n_0\ : STD_LOGIC;
  signal \cnt[31]_i_7_n_0\ : STD_LOGIC;
  signal \cnt[31]_i_8_n_0\ : STD_LOGIC;
  signal \cnt[31]_i_9_n_0\ : STD_LOGIC;
  signal \^data\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \data[7]_i_1_n_0\ : STD_LOGIC;
  signal \data[7]_i_4_n_0\ : STD_LOGIC;
  signal \^href\ : STD_LOGIC;
  signal href2_out : STD_LOGIC;
  signal href_i_1_n_0 : STD_LOGIC;
  signal href_i_2_n_0 : STD_LOGIC;
  signal href_i_3_n_0 : STD_LOGIC;
  signal href_i_4_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_0_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal pclk_i_1_n_0 : STD_LOGIC;
  signal \^pclk_reg_0\ : STD_LOGIC;
  signal v_cnt : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \v_cnt0_carry__0_n_0\ : STD_LOGIC;
  signal \v_cnt0_carry__0_n_1\ : STD_LOGIC;
  signal \v_cnt0_carry__0_n_2\ : STD_LOGIC;
  signal \v_cnt0_carry__0_n_3\ : STD_LOGIC;
  signal \v_cnt0_carry__0_n_4\ : STD_LOGIC;
  signal \v_cnt0_carry__0_n_5\ : STD_LOGIC;
  signal \v_cnt0_carry__0_n_6\ : STD_LOGIC;
  signal \v_cnt0_carry__0_n_7\ : STD_LOGIC;
  signal \v_cnt0_carry__1_n_0\ : STD_LOGIC;
  signal \v_cnt0_carry__1_n_1\ : STD_LOGIC;
  signal \v_cnt0_carry__1_n_2\ : STD_LOGIC;
  signal \v_cnt0_carry__1_n_3\ : STD_LOGIC;
  signal \v_cnt0_carry__1_n_4\ : STD_LOGIC;
  signal \v_cnt0_carry__1_n_5\ : STD_LOGIC;
  signal \v_cnt0_carry__1_n_6\ : STD_LOGIC;
  signal \v_cnt0_carry__1_n_7\ : STD_LOGIC;
  signal \v_cnt0_carry__2_n_0\ : STD_LOGIC;
  signal \v_cnt0_carry__2_n_1\ : STD_LOGIC;
  signal \v_cnt0_carry__2_n_2\ : STD_LOGIC;
  signal \v_cnt0_carry__2_n_3\ : STD_LOGIC;
  signal \v_cnt0_carry__2_n_4\ : STD_LOGIC;
  signal \v_cnt0_carry__2_n_5\ : STD_LOGIC;
  signal \v_cnt0_carry__2_n_6\ : STD_LOGIC;
  signal \v_cnt0_carry__2_n_7\ : STD_LOGIC;
  signal \v_cnt0_carry__3_n_0\ : STD_LOGIC;
  signal \v_cnt0_carry__3_n_1\ : STD_LOGIC;
  signal \v_cnt0_carry__3_n_2\ : STD_LOGIC;
  signal \v_cnt0_carry__3_n_3\ : STD_LOGIC;
  signal \v_cnt0_carry__3_n_4\ : STD_LOGIC;
  signal \v_cnt0_carry__3_n_5\ : STD_LOGIC;
  signal \v_cnt0_carry__3_n_6\ : STD_LOGIC;
  signal \v_cnt0_carry__3_n_7\ : STD_LOGIC;
  signal \v_cnt0_carry__4_n_0\ : STD_LOGIC;
  signal \v_cnt0_carry__4_n_1\ : STD_LOGIC;
  signal \v_cnt0_carry__4_n_2\ : STD_LOGIC;
  signal \v_cnt0_carry__4_n_3\ : STD_LOGIC;
  signal \v_cnt0_carry__4_n_4\ : STD_LOGIC;
  signal \v_cnt0_carry__4_n_5\ : STD_LOGIC;
  signal \v_cnt0_carry__4_n_6\ : STD_LOGIC;
  signal \v_cnt0_carry__4_n_7\ : STD_LOGIC;
  signal \v_cnt0_carry__5_n_0\ : STD_LOGIC;
  signal \v_cnt0_carry__5_n_1\ : STD_LOGIC;
  signal \v_cnt0_carry__5_n_2\ : STD_LOGIC;
  signal \v_cnt0_carry__5_n_3\ : STD_LOGIC;
  signal \v_cnt0_carry__5_n_4\ : STD_LOGIC;
  signal \v_cnt0_carry__5_n_5\ : STD_LOGIC;
  signal \v_cnt0_carry__5_n_6\ : STD_LOGIC;
  signal \v_cnt0_carry__5_n_7\ : STD_LOGIC;
  signal \v_cnt0_carry__6_n_2\ : STD_LOGIC;
  signal \v_cnt0_carry__6_n_3\ : STD_LOGIC;
  signal \v_cnt0_carry__6_n_5\ : STD_LOGIC;
  signal \v_cnt0_carry__6_n_6\ : STD_LOGIC;
  signal \v_cnt0_carry__6_n_7\ : STD_LOGIC;
  signal v_cnt0_carry_n_0 : STD_LOGIC;
  signal v_cnt0_carry_n_1 : STD_LOGIC;
  signal v_cnt0_carry_n_2 : STD_LOGIC;
  signal v_cnt0_carry_n_3 : STD_LOGIC;
  signal v_cnt0_carry_n_4 : STD_LOGIC;
  signal v_cnt0_carry_n_5 : STD_LOGIC;
  signal v_cnt0_carry_n_6 : STD_LOGIC;
  signal v_cnt0_carry_n_7 : STD_LOGIC;
  signal \v_cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal \v_cnt[0]_i_3_n_0\ : STD_LOGIC;
  signal \v_cnt[0]_i_4_n_0\ : STD_LOGIC;
  signal \v_cnt[0]_i_5_n_0\ : STD_LOGIC;
  signal \v_cnt[31]_i_1_n_0\ : STD_LOGIC;
  signal v_cnt_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^vsync\ : STD_LOGIC;
  signal vsync_0 : STD_LOGIC;
  signal vsync_i_1_n_0 : STD_LOGIC;
  signal vsync_i_3_n_0 : STD_LOGIC;
  signal vsync_i_4_n_0 : STD_LOGIC;
  signal vsync_i_5_n_0 : STD_LOGIC;
  signal \NLW_cnt0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_cnt0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_v_cnt0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_v_cnt0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \S[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \S[2]_i_14\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \S[2]_i_18\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \S[2]_i_20\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \S[2]_i_23\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \S[2]_i_4\ : label is "soft_lutpair2";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of cnt0_carry : label is 35;
  attribute ADDER_THRESHOLD of \cnt0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt0_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt0_carry__6\ : label is 35;
  attribute SOFT_HLUTNM of \cnt[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cnt[10]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \cnt[11]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \cnt[12]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \cnt[13]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \cnt[14]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \cnt[15]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \cnt[16]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \cnt[17]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \cnt[18]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \cnt[19]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \cnt[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cnt[20]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \cnt[21]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \cnt[22]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \cnt[23]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \cnt[24]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \cnt[25]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \cnt[26]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \cnt[27]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \cnt[28]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \cnt[29]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \cnt[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \cnt[30]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \cnt[31]_i_15\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnt[31]_i_16\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cnt[31]_i_17\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \cnt[31]_i_3\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \cnt[3]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \cnt[4]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \cnt[5]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \cnt[6]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \cnt[7]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \cnt[8]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \cnt[9]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \data[1]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \data[2]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \data[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data[4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data[6]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \data[7]_i_3\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of href_i_1 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of href_i_3 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of href_i_4 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of pclk_i_1 : label is "soft_lutpair7";
  attribute ADDER_THRESHOLD of v_cnt0_carry : label is 35;
  attribute ADDER_THRESHOLD of \v_cnt0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \v_cnt0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \v_cnt0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \v_cnt0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \v_cnt0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \v_cnt0_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \v_cnt0_carry__6\ : label is 35;
  attribute SOFT_HLUTNM of \v_cnt[0]_i_5\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \v_cnt[10]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \v_cnt[11]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \v_cnt[12]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \v_cnt[13]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \v_cnt[14]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \v_cnt[15]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \v_cnt[16]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \v_cnt[17]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \v_cnt[18]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \v_cnt[19]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \v_cnt[1]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \v_cnt[20]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \v_cnt[21]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \v_cnt[22]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \v_cnt[23]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \v_cnt[24]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \v_cnt[25]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \v_cnt[26]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \v_cnt[27]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \v_cnt[28]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \v_cnt[29]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \v_cnt[2]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \v_cnt[30]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \v_cnt[3]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \v_cnt[4]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \v_cnt[5]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \v_cnt[6]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \v_cnt[7]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \v_cnt[8]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \v_cnt[9]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of vsync_i_3 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of vsync_i_4 : label is "soft_lutpair1";
begin
  data(7 downto 0) <= \^data\(7 downto 0);
  href <= \^href\;
  pclk_reg_0 <= \^pclk_reg_0\;
  vsync <= \^vsync\;
\S[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"26660000"
    )
        port map (
      I0 => \S_reg_n_0_[0]\,
      I1 => \S[2]_i_2_n_0\,
      I2 => \S_reg_n_0_[1]\,
      I3 => \S_reg_n_0_[2]\,
      I4 => rst_n,
      O => \S[0]_i_1_n_0\
    );
\S[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2E2A262A00000000"
    )
        port map (
      I0 => \S_reg_n_0_[1]\,
      I1 => \S[2]_i_2_n_0\,
      I2 => \S_reg_n_0_[2]\,
      I3 => \S_reg_n_0_[0]\,
      I4 => \S[2]_i_3_n_0\,
      I5 => rst_n,
      O => \S[1]_i_1_n_0\
    );
\S[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"262222AA00000000"
    )
        port map (
      I0 => \S_reg_n_0_[2]\,
      I1 => \S[2]_i_2_n_0\,
      I2 => \S[2]_i_3_n_0\,
      I3 => \S_reg_n_0_[0]\,
      I4 => \S_reg_n_0_[1]\,
      I5 => rst_n,
      O => \S[2]_i_1_n_0\
    );
\S[2]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \S[2]_i_19_n_0\,
      I1 => \S[2]_i_20_n_0\,
      I2 => v_cnt(31),
      I3 => v_cnt(30),
      I4 => v_cnt(1),
      I5 => \v_cnt[0]_i_4_n_0\,
      O => \S[2]_i_10_n_0\
    );
\S[2]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => v_cnt(4),
      I1 => v_cnt(5),
      I2 => v_cnt(3),
      I3 => v_cnt(2),
      I4 => \S[2]_i_21_n_0\,
      O => \S[2]_i_11_n_0\
    );
\S[2]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => v_cnt(12),
      I1 => v_cnt(13),
      I2 => v_cnt(10),
      I3 => v_cnt(11),
      I4 => \S[2]_i_22_n_0\,
      O => \S[2]_i_12_n_0\
    );
\S[2]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => vsync_i_5_n_0,
      I1 => cnt(13),
      I2 => cnt(10),
      I3 => cnt(9),
      I4 => \cnt[31]_i_15_n_0\,
      O => \S[2]_i_13_n_0\
    );
\S[2]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \S_reg_n_0_[1]\,
      I1 => \S_reg_n_0_[2]\,
      O => \S[2]_i_14_n_0\
    );
\S[2]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000080000000000"
    )
        port map (
      I0 => \S_reg_n_0_[0]\,
      I1 => cnt(1),
      I2 => \S_reg_n_0_[1]\,
      I3 => cnt(5),
      I4 => cnt(3),
      I5 => cnt(4),
      O => \S[2]_i_15_n_0\
    );
\S[2]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => \S_reg_n_0_[0]\,
      I1 => cnt(8),
      I2 => cnt(5),
      I3 => cnt(3),
      I4 => cnt(4),
      O => \S[2]_i_16_n_0\
    );
\S[2]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E0000000"
    )
        port map (
      I0 => \S_reg_n_0_[1]\,
      I1 => \S_reg_n_0_[2]\,
      I2 => cnt(7),
      I3 => cnt(6),
      I4 => cnt(2),
      I5 => \S[2]_i_23_n_0\,
      O => \S[2]_i_17_n_0\
    );
\S[2]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFD"
    )
        port map (
      I0 => cnt(3),
      I1 => cnt(4),
      I2 => vsync_i_5_n_0,
      I3 => \S[2]_i_23_n_0\,
      I4 => cnt(8),
      O => \S[2]_i_18_n_0\
    );
\S[2]_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => v_cnt(23),
      I1 => v_cnt(22),
      I2 => v_cnt(25),
      I3 => v_cnt(24),
      O => \S[2]_i_19_n_0\
    );
\S[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8FFF8FFFFFFF8"
    )
        port map (
      I0 => \S[2]_i_4_n_0\,
      I1 => \S[2]_i_5_n_0\,
      I2 => \S[2]_i_6_n_0\,
      I3 => \S[2]_i_7_n_0\,
      I4 => \S[2]_i_8_n_0\,
      I5 => \S[2]_i_9_n_0\,
      O => \S[2]_i_2_n_0\
    );
\S[2]_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => v_cnt(19),
      I1 => v_cnt(18),
      I2 => v_cnt(21),
      I3 => v_cnt(20),
      O => \S[2]_i_20_n_0\
    );
\S[2]_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => v_cnt(7),
      I1 => v_cnt(6),
      I2 => v_cnt(9),
      I3 => v_cnt(8),
      O => \S[2]_i_21_n_0\
    );
\S[2]_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => v_cnt(15),
      I1 => v_cnt(14),
      I2 => v_cnt(17),
      I3 => v_cnt(16),
      O => \S[2]_i_22_n_0\
    );
\S[2]_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => cnt(13),
      I1 => cnt(10),
      I2 => cnt(9),
      O => \S[2]_i_23_n_0\
    );
\S[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \S[2]_i_10_n_0\,
      I1 => \S[2]_i_11_n_0\,
      I2 => \S[2]_i_12_n_0\,
      I3 => v_cnt(0),
      O => \S[2]_i_3_n_0\
    );
\S[2]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => cnt(8),
      I1 => cnt(4),
      I2 => cnt(3),
      O => \S[2]_i_4_n_0\
    );
\S[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => \S[2]_i_13_n_0\,
      I1 => cnt(5),
      I2 => \^pclk_reg_0\,
      I3 => \cnt[31]_i_4_n_0\,
      I4 => cnt(31),
      I5 => cnt(1),
      O => \S[2]_i_5_n_0\
    );
\S[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5500550057005500"
    )
        port map (
      I0 => \S[2]_i_14_n_0\,
      I1 => cnt(31),
      I2 => \cnt[31]_i_4_n_0\,
      I3 => \^pclk_reg_0\,
      I4 => \S[2]_i_15_n_0\,
      I5 => vsync_i_3_n_0,
      O => \S[2]_i_6_n_0\
    );
\S[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \S[2]_i_16_n_0\,
      I1 => \^pclk_reg_0\,
      I2 => \cnt[31]_i_4_n_0\,
      I3 => cnt(31),
      I4 => cnt(1),
      I5 => \S[2]_i_17_n_0\,
      O => \S[2]_i_7_n_0\
    );
\S[2]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \S_reg_n_0_[0]\,
      I1 => \S_reg_n_0_[1]\,
      O => \S[2]_i_8_n_0\
    );
\S[2]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFEF"
    )
        port map (
      I0 => \S[2]_i_18_n_0\,
      I1 => cnt(5),
      I2 => \^pclk_reg_0\,
      I3 => \cnt[31]_i_4_n_0\,
      I4 => cnt(31),
      I5 => cnt(1),
      O => \S[2]_i_9_n_0\
    );
\S_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \S[0]_i_1_n_0\,
      Q => \S_reg_n_0_[0]\,
      R => '0'
    );
\S_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \S[1]_i_1_n_0\,
      Q => \S_reg_n_0_[1]\,
      R => '0'
    );
\S_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \S[2]_i_1_n_0\,
      Q => \S_reg_n_0_[2]\,
      R => '0'
    );
cnt0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => cnt0_carry_n_0,
      CO(2) => cnt0_carry_n_1,
      CO(1) => cnt0_carry_n_2,
      CO(0) => cnt0_carry_n_3,
      CYINIT => cnt(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => cnt(4 downto 1)
    );
\cnt0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => cnt0_carry_n_0,
      CO(3) => \cnt0_carry__0_n_0\,
      CO(2) => \cnt0_carry__0_n_1\,
      CO(1) => \cnt0_carry__0_n_2\,
      CO(0) => \cnt0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => cnt(8 downto 5)
    );
\cnt0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt0_carry__0_n_0\,
      CO(3) => \cnt0_carry__1_n_0\,
      CO(2) => \cnt0_carry__1_n_1\,
      CO(1) => \cnt0_carry__1_n_2\,
      CO(0) => \cnt0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => cnt(12 downto 9)
    );
\cnt0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt0_carry__1_n_0\,
      CO(3) => \cnt0_carry__2_n_0\,
      CO(2) => \cnt0_carry__2_n_1\,
      CO(1) => \cnt0_carry__2_n_2\,
      CO(0) => \cnt0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3 downto 0) => cnt(16 downto 13)
    );
\cnt0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt0_carry__2_n_0\,
      CO(3) => \cnt0_carry__3_n_0\,
      CO(2) => \cnt0_carry__3_n_1\,
      CO(1) => \cnt0_carry__3_n_2\,
      CO(0) => \cnt0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(20 downto 17),
      S(3 downto 0) => cnt(20 downto 17)
    );
\cnt0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt0_carry__3_n_0\,
      CO(3) => \cnt0_carry__4_n_0\,
      CO(2) => \cnt0_carry__4_n_1\,
      CO(1) => \cnt0_carry__4_n_2\,
      CO(0) => \cnt0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(24 downto 21),
      S(3 downto 0) => cnt(24 downto 21)
    );
\cnt0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt0_carry__4_n_0\,
      CO(3) => \cnt0_carry__5_n_0\,
      CO(2) => \cnt0_carry__5_n_1\,
      CO(1) => \cnt0_carry__5_n_2\,
      CO(0) => \cnt0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(28 downto 25),
      S(3 downto 0) => cnt(28 downto 25)
    );
\cnt0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt0_carry__5_n_0\,
      CO(3 downto 2) => \NLW_cnt0_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \cnt0_carry__6_n_2\,
      CO(0) => \cnt0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_cnt0_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => cnt(31 downto 29)
    );
\cnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"32"
    )
        port map (
      I0 => \cnt[31]_i_5_n_0\,
      I1 => cnt(0),
      I2 => \cnt[0]_i_2_n_0\,
      O => p_0_out(0)
    );
\cnt[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \cnt[31]_i_10_n_0\,
      I1 => \cnt[31]_i_9_n_0\,
      I2 => \cnt[31]_i_8_n_0\,
      I3 => \cnt[31]_i_7_n_0\,
      I4 => \cnt[31]_i_6_n_0\,
      O => \cnt[0]_i_2_n_0\
    );
\cnt[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \cnt[31]_i_4_n_0\,
      I1 => \cnt[31]_i_5_n_0\,
      I2 => data0(10),
      O => p_0_out(10)
    );
\cnt[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \cnt[31]_i_4_n_0\,
      I1 => \cnt[31]_i_5_n_0\,
      I2 => data0(11),
      O => p_0_out(11)
    );
\cnt[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \cnt[31]_i_4_n_0\,
      I1 => \cnt[31]_i_5_n_0\,
      I2 => data0(12),
      O => p_0_out(12)
    );
\cnt[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \cnt[31]_i_4_n_0\,
      I1 => \cnt[31]_i_5_n_0\,
      I2 => data0(13),
      O => p_0_out(13)
    );
\cnt[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \cnt[31]_i_4_n_0\,
      I1 => \cnt[31]_i_5_n_0\,
      I2 => data0(14),
      O => p_0_out(14)
    );
\cnt[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \cnt[31]_i_4_n_0\,
      I1 => \cnt[31]_i_5_n_0\,
      I2 => data0(15),
      O => p_0_out(15)
    );
\cnt[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \cnt[31]_i_4_n_0\,
      I1 => \cnt[31]_i_5_n_0\,
      I2 => data0(16),
      O => p_0_out(16)
    );
\cnt[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \cnt[31]_i_4_n_0\,
      I1 => \cnt[31]_i_5_n_0\,
      I2 => data0(17),
      O => p_0_out(17)
    );
\cnt[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \cnt[31]_i_4_n_0\,
      I1 => \cnt[31]_i_5_n_0\,
      I2 => data0(18),
      O => p_0_out(18)
    );
\cnt[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \cnt[31]_i_4_n_0\,
      I1 => \cnt[31]_i_5_n_0\,
      I2 => data0(19),
      O => p_0_out(19)
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \cnt[31]_i_4_n_0\,
      I1 => \cnt[31]_i_5_n_0\,
      I2 => data0(1),
      O => p_0_out(1)
    );
\cnt[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \cnt[31]_i_4_n_0\,
      I1 => \cnt[31]_i_5_n_0\,
      I2 => data0(20),
      O => p_0_out(20)
    );
\cnt[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \cnt[31]_i_4_n_0\,
      I1 => \cnt[31]_i_5_n_0\,
      I2 => data0(21),
      O => p_0_out(21)
    );
\cnt[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \cnt[31]_i_4_n_0\,
      I1 => \cnt[31]_i_5_n_0\,
      I2 => data0(22),
      O => p_0_out(22)
    );
\cnt[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \cnt[31]_i_4_n_0\,
      I1 => \cnt[31]_i_5_n_0\,
      I2 => data0(23),
      O => p_0_out(23)
    );
\cnt[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \cnt[31]_i_4_n_0\,
      I1 => \cnt[31]_i_5_n_0\,
      I2 => data0(24),
      O => p_0_out(24)
    );
\cnt[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \cnt[31]_i_4_n_0\,
      I1 => \cnt[31]_i_5_n_0\,
      I2 => data0(25),
      O => p_0_out(25)
    );
\cnt[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \cnt[31]_i_4_n_0\,
      I1 => \cnt[31]_i_5_n_0\,
      I2 => data0(26),
      O => p_0_out(26)
    );
\cnt[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \cnt[31]_i_4_n_0\,
      I1 => \cnt[31]_i_5_n_0\,
      I2 => data0(27),
      O => p_0_out(27)
    );
\cnt[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \cnt[31]_i_4_n_0\,
      I1 => \cnt[31]_i_5_n_0\,
      I2 => data0(28),
      O => p_0_out(28)
    );
\cnt[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \cnt[31]_i_4_n_0\,
      I1 => \cnt[31]_i_5_n_0\,
      I2 => data0(29),
      O => p_0_out(29)
    );
\cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \cnt[31]_i_4_n_0\,
      I1 => \cnt[31]_i_5_n_0\,
      I2 => data0(2),
      O => p_0_out(2)
    );
\cnt[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \cnt[31]_i_4_n_0\,
      I1 => \cnt[31]_i_5_n_0\,
      I2 => data0(30),
      O => p_0_out(30)
    );
\cnt[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => p_0_in
    );
\cnt[31]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cnt(14),
      I1 => cnt(12),
      I2 => cnt(16),
      I3 => cnt(15),
      O => \cnt[31]_i_10_n_0\
    );
\cnt[31]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFFFFFFFFEF"
    )
        port map (
      I0 => \cnt[31]_i_14_n_0\,
      I1 => cnt(13),
      I2 => \cnt[31]_i_15_n_0\,
      I3 => \cnt[31]_i_16_n_0\,
      I4 => cnt(9),
      I5 => cnt(10),
      O => \cnt[31]_i_11_n_0\
    );
\cnt[31]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F05FF05FF0FD"
    )
        port map (
      I0 => cnt(8),
      I1 => cnt(5),
      I2 => cnt(2),
      I3 => \S_reg_n_0_[0]\,
      I4 => \S_reg_n_0_[2]\,
      I5 => \S_reg_n_0_[1]\,
      O => \cnt[31]_i_12_n_0\
    );
\cnt[31]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A3BFA3BFFFF0A3F0"
    )
        port map (
      I0 => cnt(8),
      I1 => cnt(5),
      I2 => \S_reg_n_0_[0]\,
      I3 => \S_reg_n_0_[1]\,
      I4 => \S_reg_n_0_[2]\,
      I5 => cnt(1),
      O => \cnt[31]_i_13_n_0\
    );
\cnt[31]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE7FFFFFFFFE7FF"
    )
        port map (
      I0 => href_i_4_n_0,
      I1 => cnt(4),
      I2 => cnt(3),
      I3 => \cnt[31]_i_17_n_0\,
      I4 => cnt(7),
      I5 => cnt(6),
      O => \cnt[31]_i_14_n_0\
    );
\cnt[31]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \S_reg_n_0_[1]\,
      I1 => \S_reg_n_0_[0]\,
      I2 => \S_reg_n_0_[2]\,
      O => \cnt[31]_i_15_n_0\
    );
\cnt[31]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BF30B030"
    )
        port map (
      I0 => cnt(8),
      I1 => cnt(5),
      I2 => \S_reg_n_0_[2]\,
      I3 => \S_reg_n_0_[1]\,
      I4 => cnt(1),
      O => \cnt[31]_i_16_n_0\
    );
\cnt[31]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EB"
    )
        port map (
      I0 => \S_reg_n_0_[0]\,
      I1 => \S_reg_n_0_[2]\,
      I2 => \S_reg_n_0_[1]\,
      O => \cnt[31]_i_17_n_0\
    );
\cnt[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \S_reg_n_0_[2]\,
      I1 => \S_reg_n_0_[1]\,
      I2 => \^pclk_reg_0\,
      O => \cnt[31]_i_2_n_0\
    );
\cnt[31]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \cnt[31]_i_4_n_0\,
      I1 => \cnt[31]_i_5_n_0\,
      I2 => data0(31),
      O => p_0_out(31)
    );
\cnt[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \cnt[31]_i_6_n_0\,
      I1 => \cnt[31]_i_7_n_0\,
      I2 => \cnt[31]_i_8_n_0\,
      I3 => \cnt[31]_i_9_n_0\,
      I4 => \cnt[31]_i_10_n_0\,
      I5 => cnt(0),
      O => \cnt[31]_i_4_n_0\
    );
\cnt[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFEFFFFFFFE"
    )
        port map (
      I0 => \cnt[31]_i_11_n_0\,
      I1 => \cnt[31]_i_12_n_0\,
      I2 => \cnt[31]_i_13_n_0\,
      I3 => cnt(31),
      I4 => cnt(5),
      I5 => href_i_4_n_0,
      O => \cnt[31]_i_5_n_0\
    );
\cnt[31]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cnt(18),
      I1 => cnt(17),
      I2 => cnt(20),
      I3 => cnt(19),
      O => \cnt[31]_i_6_n_0\
    );
\cnt[31]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cnt(22),
      I1 => cnt(21),
      I2 => cnt(24),
      I3 => cnt(23),
      O => \cnt[31]_i_7_n_0\
    );
\cnt[31]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => cnt(30),
      I1 => cnt(29),
      I2 => cnt(11),
      O => \cnt[31]_i_8_n_0\
    );
\cnt[31]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cnt(26),
      I1 => cnt(25),
      I2 => cnt(28),
      I3 => cnt(27),
      O => \cnt[31]_i_9_n_0\
    );
\cnt[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \cnt[31]_i_4_n_0\,
      I1 => \cnt[31]_i_5_n_0\,
      I2 => data0(3),
      O => p_0_out(3)
    );
\cnt[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \cnt[31]_i_4_n_0\,
      I1 => \cnt[31]_i_5_n_0\,
      I2 => data0(4),
      O => p_0_out(4)
    );
\cnt[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \cnt[31]_i_4_n_0\,
      I1 => \cnt[31]_i_5_n_0\,
      I2 => data0(5),
      O => p_0_out(5)
    );
\cnt[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \cnt[31]_i_4_n_0\,
      I1 => \cnt[31]_i_5_n_0\,
      I2 => data0(6),
      O => p_0_out(6)
    );
\cnt[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \cnt[31]_i_4_n_0\,
      I1 => \cnt[31]_i_5_n_0\,
      I2 => data0(7),
      O => p_0_out(7)
    );
\cnt[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \cnt[31]_i_4_n_0\,
      I1 => \cnt[31]_i_5_n_0\,
      I2 => data0(8),
      O => p_0_out(8)
    );
\cnt[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \cnt[31]_i_4_n_0\,
      I1 => \cnt[31]_i_5_n_0\,
      I2 => data0(9),
      O => p_0_out(9)
    );
\cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[31]_i_2_n_0\,
      D => p_0_out(0),
      Q => cnt(0),
      R => p_0_in
    );
\cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[31]_i_2_n_0\,
      D => p_0_out(10),
      Q => cnt(10),
      R => p_0_in
    );
\cnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[31]_i_2_n_0\,
      D => p_0_out(11),
      Q => cnt(11),
      R => p_0_in
    );
\cnt_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[31]_i_2_n_0\,
      D => p_0_out(12),
      Q => cnt(12),
      R => p_0_in
    );
\cnt_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[31]_i_2_n_0\,
      D => p_0_out(13),
      Q => cnt(13),
      R => p_0_in
    );
\cnt_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[31]_i_2_n_0\,
      D => p_0_out(14),
      Q => cnt(14),
      R => p_0_in
    );
\cnt_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[31]_i_2_n_0\,
      D => p_0_out(15),
      Q => cnt(15),
      R => p_0_in
    );
\cnt_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[31]_i_2_n_0\,
      D => p_0_out(16),
      Q => cnt(16),
      R => p_0_in
    );
\cnt_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[31]_i_2_n_0\,
      D => p_0_out(17),
      Q => cnt(17),
      R => p_0_in
    );
\cnt_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[31]_i_2_n_0\,
      D => p_0_out(18),
      Q => cnt(18),
      R => p_0_in
    );
\cnt_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[31]_i_2_n_0\,
      D => p_0_out(19),
      Q => cnt(19),
      R => p_0_in
    );
\cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[31]_i_2_n_0\,
      D => p_0_out(1),
      Q => cnt(1),
      R => p_0_in
    );
\cnt_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[31]_i_2_n_0\,
      D => p_0_out(20),
      Q => cnt(20),
      R => p_0_in
    );
\cnt_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[31]_i_2_n_0\,
      D => p_0_out(21),
      Q => cnt(21),
      R => p_0_in
    );
\cnt_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[31]_i_2_n_0\,
      D => p_0_out(22),
      Q => cnt(22),
      R => p_0_in
    );
\cnt_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[31]_i_2_n_0\,
      D => p_0_out(23),
      Q => cnt(23),
      R => p_0_in
    );
\cnt_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[31]_i_2_n_0\,
      D => p_0_out(24),
      Q => cnt(24),
      R => p_0_in
    );
\cnt_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[31]_i_2_n_0\,
      D => p_0_out(25),
      Q => cnt(25),
      R => p_0_in
    );
\cnt_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[31]_i_2_n_0\,
      D => p_0_out(26),
      Q => cnt(26),
      R => p_0_in
    );
\cnt_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[31]_i_2_n_0\,
      D => p_0_out(27),
      Q => cnt(27),
      R => p_0_in
    );
\cnt_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[31]_i_2_n_0\,
      D => p_0_out(28),
      Q => cnt(28),
      R => p_0_in
    );
\cnt_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[31]_i_2_n_0\,
      D => p_0_out(29),
      Q => cnt(29),
      R => p_0_in
    );
\cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[31]_i_2_n_0\,
      D => p_0_out(2),
      Q => cnt(2),
      R => p_0_in
    );
\cnt_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[31]_i_2_n_0\,
      D => p_0_out(30),
      Q => cnt(30),
      R => p_0_in
    );
\cnt_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[31]_i_2_n_0\,
      D => p_0_out(31),
      Q => cnt(31),
      R => p_0_in
    );
\cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[31]_i_2_n_0\,
      D => p_0_out(3),
      Q => cnt(3),
      R => p_0_in
    );
\cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[31]_i_2_n_0\,
      D => p_0_out(4),
      Q => cnt(4),
      R => p_0_in
    );
\cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[31]_i_2_n_0\,
      D => p_0_out(5),
      Q => cnt(5),
      R => p_0_in
    );
\cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[31]_i_2_n_0\,
      D => p_0_out(6),
      Q => cnt(6),
      R => p_0_in
    );
\cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[31]_i_2_n_0\,
      D => p_0_out(7),
      Q => cnt(7),
      R => p_0_in
    );
\cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[31]_i_2_n_0\,
      D => p_0_out(8),
      Q => cnt(8),
      R => p_0_in
    );
\cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[31]_i_2_n_0\,
      D => p_0_out(9),
      Q => cnt(9),
      R => p_0_in
    );
\data[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data\(0),
      O => \p_0_in__0\(0)
    );
\data[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^data\(0),
      I1 => \^data\(1),
      O => \p_0_in__0\(1)
    );
\data[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^data\(1),
      I1 => \^data\(0),
      I2 => \^data\(2),
      O => \p_0_in__0\(2)
    );
\data[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^data\(2),
      I1 => \^data\(0),
      I2 => \^data\(1),
      I3 => \^data\(3),
      O => \p_0_in__0\(3)
    );
\data[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^data\(3),
      I1 => \^data\(1),
      I2 => \^data\(0),
      I3 => \^data\(2),
      I4 => \^data\(4),
      O => \p_0_in__0\(4)
    );
\data[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^data\(4),
      I1 => \^data\(2),
      I2 => \^data\(0),
      I3 => \^data\(1),
      I4 => \^data\(3),
      I5 => \^data\(5),
      O => \p_0_in__0\(5)
    );
\data[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \data[7]_i_4_n_0\,
      I1 => \^data\(6),
      O => \p_0_in__0\(6)
    );
\data[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => href_i_2_n_0,
      I1 => rst_n,
      O => \data[7]_i_1_n_0\
    );
\data[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^pclk_reg_0\,
      I1 => \S_reg_n_0_[0]\,
      I2 => \S_reg_n_0_[2]\,
      I3 => \S_reg_n_0_[1]\,
      O => href2_out
    );
\data[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => \^data\(6),
      I1 => \data[7]_i_4_n_0\,
      I2 => \^data\(7),
      O => \p_0_in__0\(7)
    );
\data[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^data\(4),
      I1 => \^data\(2),
      I2 => \^data\(0),
      I3 => \^data\(1),
      I4 => \^data\(3),
      I5 => \^data\(5),
      O => \data[7]_i_4_n_0\
    );
\data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => href2_out,
      D => \p_0_in__0\(0),
      Q => \^data\(0),
      R => \data[7]_i_1_n_0\
    );
\data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => href2_out,
      D => \p_0_in__0\(1),
      Q => \^data\(1),
      R => \data[7]_i_1_n_0\
    );
\data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => href2_out,
      D => \p_0_in__0\(2),
      Q => \^data\(2),
      R => \data[7]_i_1_n_0\
    );
\data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => href2_out,
      D => \p_0_in__0\(3),
      Q => \^data\(3),
      R => \data[7]_i_1_n_0\
    );
\data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => href2_out,
      D => \p_0_in__0\(4),
      Q => \^data\(4),
      R => \data[7]_i_1_n_0\
    );
\data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => href2_out,
      D => \p_0_in__0\(5),
      Q => \^data\(5),
      R => \data[7]_i_1_n_0\
    );
\data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => href2_out,
      D => \p_0_in__0\(6),
      Q => \^data\(6),
      R => \data[7]_i_1_n_0\
    );
\data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => href2_out,
      D => \p_0_in__0\(7),
      Q => \^data\(7),
      R => \data[7]_i_1_n_0\
    );
href_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8880"
    )
        port map (
      I0 => href_i_2_n_0,
      I1 => rst_n,
      I2 => href2_out,
      I3 => \^href\,
      O => href_i_1_n_0
    );
href_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFB"
    )
        port map (
      I0 => href_i_3_n_0,
      I1 => cnt(3),
      I2 => cnt(4),
      I3 => vsync_i_3_n_0,
      I4 => href_i_4_n_0,
      O => href_i_2_n_0
    );
href_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => cnt(1),
      I1 => cnt(31),
      I2 => \cnt[31]_i_4_n_0\,
      I3 => \^pclk_reg_0\,
      I4 => cnt(5),
      O => href_i_3_n_0
    );
href_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \S_reg_n_0_[1]\,
      I1 => \S_reg_n_0_[2]\,
      I2 => \S_reg_n_0_[0]\,
      O => href_i_4_n_0
    );
href_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => href_i_1_n_0,
      Q => \^href\,
      R => '0'
    );
pclk_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \^pclk_reg_0\,
      I1 => rst_n,
      O => pclk_i_1_n_0
    );
pclk_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pclk_i_1_n_0,
      Q => \^pclk_reg_0\,
      R => '0'
    );
v_cnt0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => v_cnt0_carry_n_0,
      CO(2) => v_cnt0_carry_n_1,
      CO(1) => v_cnt0_carry_n_2,
      CO(0) => v_cnt0_carry_n_3,
      CYINIT => v_cnt(0),
      DI(3 downto 0) => B"0000",
      O(3) => v_cnt0_carry_n_4,
      O(2) => v_cnt0_carry_n_5,
      O(1) => v_cnt0_carry_n_6,
      O(0) => v_cnt0_carry_n_7,
      S(3 downto 0) => v_cnt(4 downto 1)
    );
\v_cnt0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => v_cnt0_carry_n_0,
      CO(3) => \v_cnt0_carry__0_n_0\,
      CO(2) => \v_cnt0_carry__0_n_1\,
      CO(1) => \v_cnt0_carry__0_n_2\,
      CO(0) => \v_cnt0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \v_cnt0_carry__0_n_4\,
      O(2) => \v_cnt0_carry__0_n_5\,
      O(1) => \v_cnt0_carry__0_n_6\,
      O(0) => \v_cnt0_carry__0_n_7\,
      S(3 downto 0) => v_cnt(8 downto 5)
    );
\v_cnt0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \v_cnt0_carry__0_n_0\,
      CO(3) => \v_cnt0_carry__1_n_0\,
      CO(2) => \v_cnt0_carry__1_n_1\,
      CO(1) => \v_cnt0_carry__1_n_2\,
      CO(0) => \v_cnt0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \v_cnt0_carry__1_n_4\,
      O(2) => \v_cnt0_carry__1_n_5\,
      O(1) => \v_cnt0_carry__1_n_6\,
      O(0) => \v_cnt0_carry__1_n_7\,
      S(3 downto 0) => v_cnt(12 downto 9)
    );
\v_cnt0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \v_cnt0_carry__1_n_0\,
      CO(3) => \v_cnt0_carry__2_n_0\,
      CO(2) => \v_cnt0_carry__2_n_1\,
      CO(1) => \v_cnt0_carry__2_n_2\,
      CO(0) => \v_cnt0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \v_cnt0_carry__2_n_4\,
      O(2) => \v_cnt0_carry__2_n_5\,
      O(1) => \v_cnt0_carry__2_n_6\,
      O(0) => \v_cnt0_carry__2_n_7\,
      S(3 downto 0) => v_cnt(16 downto 13)
    );
\v_cnt0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \v_cnt0_carry__2_n_0\,
      CO(3) => \v_cnt0_carry__3_n_0\,
      CO(2) => \v_cnt0_carry__3_n_1\,
      CO(1) => \v_cnt0_carry__3_n_2\,
      CO(0) => \v_cnt0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \v_cnt0_carry__3_n_4\,
      O(2) => \v_cnt0_carry__3_n_5\,
      O(1) => \v_cnt0_carry__3_n_6\,
      O(0) => \v_cnt0_carry__3_n_7\,
      S(3 downto 0) => v_cnt(20 downto 17)
    );
\v_cnt0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \v_cnt0_carry__3_n_0\,
      CO(3) => \v_cnt0_carry__4_n_0\,
      CO(2) => \v_cnt0_carry__4_n_1\,
      CO(1) => \v_cnt0_carry__4_n_2\,
      CO(0) => \v_cnt0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \v_cnt0_carry__4_n_4\,
      O(2) => \v_cnt0_carry__4_n_5\,
      O(1) => \v_cnt0_carry__4_n_6\,
      O(0) => \v_cnt0_carry__4_n_7\,
      S(3 downto 0) => v_cnt(24 downto 21)
    );
\v_cnt0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \v_cnt0_carry__4_n_0\,
      CO(3) => \v_cnt0_carry__5_n_0\,
      CO(2) => \v_cnt0_carry__5_n_1\,
      CO(1) => \v_cnt0_carry__5_n_2\,
      CO(0) => \v_cnt0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \v_cnt0_carry__5_n_4\,
      O(2) => \v_cnt0_carry__5_n_5\,
      O(1) => \v_cnt0_carry__5_n_6\,
      O(0) => \v_cnt0_carry__5_n_7\,
      S(3 downto 0) => v_cnt(28 downto 25)
    );
\v_cnt0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \v_cnt0_carry__5_n_0\,
      CO(3 downto 2) => \NLW_v_cnt0_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \v_cnt0_carry__6_n_2\,
      CO(0) => \v_cnt0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_v_cnt0_carry__6_O_UNCONNECTED\(3),
      O(2) => \v_cnt0_carry__6_n_5\,
      O(1) => \v_cnt0_carry__6_n_6\,
      O(0) => \v_cnt0_carry__6_n_7\,
      S(3) => '0',
      S(2 downto 0) => v_cnt(31 downto 29)
    );
\v_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v_cnt[0]_i_2_n_0\,
      I1 => v_cnt(0),
      O => v_cnt_1(0)
    );
\v_cnt[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \v_cnt[0]_i_3_n_0\,
      I1 => \v_cnt[0]_i_4_n_0\,
      I2 => v_cnt(1),
      I3 => v_cnt(30),
      I4 => v_cnt(31),
      I5 => \v_cnt[0]_i_5_n_0\,
      O => \v_cnt[0]_i_2_n_0\
    );
\v_cnt[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFB"
    )
        port map (
      I0 => \S[2]_i_21_n_0\,
      I1 => v_cnt(2),
      I2 => v_cnt(3),
      I3 => v_cnt(5),
      I4 => v_cnt(4),
      I5 => \S[2]_i_12_n_0\,
      O => \v_cnt[0]_i_3_n_0\
    );
\v_cnt[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => v_cnt(27),
      I1 => v_cnt(26),
      I2 => v_cnt(29),
      I3 => v_cnt(28),
      O => \v_cnt[0]_i_4_n_0\
    );
\v_cnt[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => v_cnt(20),
      I1 => v_cnt(21),
      I2 => v_cnt(18),
      I3 => v_cnt(19),
      I4 => \S[2]_i_19_n_0\,
      O => \v_cnt[0]_i_5_n_0\
    );
\v_cnt[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \S[2]_i_3_n_0\,
      I1 => \v_cnt0_carry__1_n_6\,
      O => v_cnt_1(10)
    );
\v_cnt[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \S[2]_i_3_n_0\,
      I1 => \v_cnt0_carry__1_n_5\,
      O => v_cnt_1(11)
    );
\v_cnt[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \S[2]_i_3_n_0\,
      I1 => \v_cnt0_carry__1_n_4\,
      O => v_cnt_1(12)
    );
\v_cnt[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \S[2]_i_3_n_0\,
      I1 => \v_cnt0_carry__2_n_7\,
      O => v_cnt_1(13)
    );
\v_cnt[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \S[2]_i_3_n_0\,
      I1 => \v_cnt0_carry__2_n_6\,
      O => v_cnt_1(14)
    );
\v_cnt[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \S[2]_i_3_n_0\,
      I1 => \v_cnt0_carry__2_n_5\,
      O => v_cnt_1(15)
    );
\v_cnt[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \S[2]_i_3_n_0\,
      I1 => \v_cnt0_carry__2_n_4\,
      O => v_cnt_1(16)
    );
\v_cnt[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \S[2]_i_3_n_0\,
      I1 => \v_cnt0_carry__3_n_7\,
      O => v_cnt_1(17)
    );
\v_cnt[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \S[2]_i_3_n_0\,
      I1 => \v_cnt0_carry__3_n_6\,
      O => v_cnt_1(18)
    );
\v_cnt[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \S[2]_i_3_n_0\,
      I1 => \v_cnt0_carry__3_n_5\,
      O => v_cnt_1(19)
    );
\v_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \S[2]_i_3_n_0\,
      I1 => v_cnt0_carry_n_7,
      O => v_cnt_1(1)
    );
\v_cnt[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \S[2]_i_3_n_0\,
      I1 => \v_cnt0_carry__3_n_4\,
      O => v_cnt_1(20)
    );
\v_cnt[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \S[2]_i_3_n_0\,
      I1 => \v_cnt0_carry__4_n_7\,
      O => v_cnt_1(21)
    );
\v_cnt[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \S[2]_i_3_n_0\,
      I1 => \v_cnt0_carry__4_n_6\,
      O => v_cnt_1(22)
    );
\v_cnt[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \S[2]_i_3_n_0\,
      I1 => \v_cnt0_carry__4_n_5\,
      O => v_cnt_1(23)
    );
\v_cnt[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \S[2]_i_3_n_0\,
      I1 => \v_cnt0_carry__4_n_4\,
      O => v_cnt_1(24)
    );
\v_cnt[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \S[2]_i_3_n_0\,
      I1 => \v_cnt0_carry__5_n_7\,
      O => v_cnt_1(25)
    );
\v_cnt[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \S[2]_i_3_n_0\,
      I1 => \v_cnt0_carry__5_n_6\,
      O => v_cnt_1(26)
    );
\v_cnt[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \S[2]_i_3_n_0\,
      I1 => \v_cnt0_carry__5_n_5\,
      O => v_cnt_1(27)
    );
\v_cnt[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \S[2]_i_3_n_0\,
      I1 => \v_cnt0_carry__5_n_4\,
      O => v_cnt_1(28)
    );
\v_cnt[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \S[2]_i_3_n_0\,
      I1 => \v_cnt0_carry__6_n_7\,
      O => v_cnt_1(29)
    );
\v_cnt[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \S[2]_i_3_n_0\,
      I1 => v_cnt0_carry_n_6,
      O => v_cnt_1(2)
    );
\v_cnt[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \S[2]_i_3_n_0\,
      I1 => \v_cnt0_carry__6_n_6\,
      O => v_cnt_1(30)
    );
\v_cnt[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => href_i_2_n_0,
      O => \v_cnt[31]_i_1_n_0\
    );
\v_cnt[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \S[2]_i_3_n_0\,
      I1 => \v_cnt0_carry__6_n_5\,
      O => v_cnt_1(31)
    );
\v_cnt[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \S[2]_i_3_n_0\,
      I1 => v_cnt0_carry_n_5,
      O => v_cnt_1(3)
    );
\v_cnt[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \S[2]_i_3_n_0\,
      I1 => v_cnt0_carry_n_4,
      O => v_cnt_1(4)
    );
\v_cnt[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \S[2]_i_3_n_0\,
      I1 => \v_cnt0_carry__0_n_7\,
      O => v_cnt_1(5)
    );
\v_cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \S[2]_i_3_n_0\,
      I1 => \v_cnt0_carry__0_n_6\,
      O => v_cnt_1(6)
    );
\v_cnt[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \S[2]_i_3_n_0\,
      I1 => \v_cnt0_carry__0_n_5\,
      O => v_cnt_1(7)
    );
\v_cnt[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \S[2]_i_3_n_0\,
      I1 => \v_cnt0_carry__0_n_4\,
      O => v_cnt_1(8)
    );
\v_cnt[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \S[2]_i_3_n_0\,
      I1 => \v_cnt0_carry__1_n_7\,
      O => v_cnt_1(9)
    );
\v_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \v_cnt[31]_i_1_n_0\,
      D => v_cnt_1(0),
      Q => v_cnt(0),
      R => p_0_in
    );
\v_cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \v_cnt[31]_i_1_n_0\,
      D => v_cnt_1(10),
      Q => v_cnt(10),
      R => p_0_in
    );
\v_cnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \v_cnt[31]_i_1_n_0\,
      D => v_cnt_1(11),
      Q => v_cnt(11),
      R => p_0_in
    );
\v_cnt_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \v_cnt[31]_i_1_n_0\,
      D => v_cnt_1(12),
      Q => v_cnt(12),
      R => p_0_in
    );
\v_cnt_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \v_cnt[31]_i_1_n_0\,
      D => v_cnt_1(13),
      Q => v_cnt(13),
      R => p_0_in
    );
\v_cnt_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \v_cnt[31]_i_1_n_0\,
      D => v_cnt_1(14),
      Q => v_cnt(14),
      R => p_0_in
    );
\v_cnt_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \v_cnt[31]_i_1_n_0\,
      D => v_cnt_1(15),
      Q => v_cnt(15),
      R => p_0_in
    );
\v_cnt_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \v_cnt[31]_i_1_n_0\,
      D => v_cnt_1(16),
      Q => v_cnt(16),
      R => p_0_in
    );
\v_cnt_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \v_cnt[31]_i_1_n_0\,
      D => v_cnt_1(17),
      Q => v_cnt(17),
      R => p_0_in
    );
\v_cnt_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \v_cnt[31]_i_1_n_0\,
      D => v_cnt_1(18),
      Q => v_cnt(18),
      R => p_0_in
    );
\v_cnt_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \v_cnt[31]_i_1_n_0\,
      D => v_cnt_1(19),
      Q => v_cnt(19),
      R => p_0_in
    );
\v_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \v_cnt[31]_i_1_n_0\,
      D => v_cnt_1(1),
      Q => v_cnt(1),
      R => p_0_in
    );
\v_cnt_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \v_cnt[31]_i_1_n_0\,
      D => v_cnt_1(20),
      Q => v_cnt(20),
      R => p_0_in
    );
\v_cnt_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \v_cnt[31]_i_1_n_0\,
      D => v_cnt_1(21),
      Q => v_cnt(21),
      R => p_0_in
    );
\v_cnt_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \v_cnt[31]_i_1_n_0\,
      D => v_cnt_1(22),
      Q => v_cnt(22),
      R => p_0_in
    );
\v_cnt_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \v_cnt[31]_i_1_n_0\,
      D => v_cnt_1(23),
      Q => v_cnt(23),
      R => p_0_in
    );
\v_cnt_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \v_cnt[31]_i_1_n_0\,
      D => v_cnt_1(24),
      Q => v_cnt(24),
      R => p_0_in
    );
\v_cnt_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \v_cnt[31]_i_1_n_0\,
      D => v_cnt_1(25),
      Q => v_cnt(25),
      R => p_0_in
    );
\v_cnt_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \v_cnt[31]_i_1_n_0\,
      D => v_cnt_1(26),
      Q => v_cnt(26),
      R => p_0_in
    );
\v_cnt_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \v_cnt[31]_i_1_n_0\,
      D => v_cnt_1(27),
      Q => v_cnt(27),
      R => p_0_in
    );
\v_cnt_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \v_cnt[31]_i_1_n_0\,
      D => v_cnt_1(28),
      Q => v_cnt(28),
      R => p_0_in
    );
\v_cnt_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \v_cnt[31]_i_1_n_0\,
      D => v_cnt_1(29),
      Q => v_cnt(29),
      R => p_0_in
    );
\v_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \v_cnt[31]_i_1_n_0\,
      D => v_cnt_1(2),
      Q => v_cnt(2),
      R => p_0_in
    );
\v_cnt_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \v_cnt[31]_i_1_n_0\,
      D => v_cnt_1(30),
      Q => v_cnt(30),
      R => p_0_in
    );
\v_cnt_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \v_cnt[31]_i_1_n_0\,
      D => v_cnt_1(31),
      Q => v_cnt(31),
      R => p_0_in
    );
\v_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \v_cnt[31]_i_1_n_0\,
      D => v_cnt_1(3),
      Q => v_cnt(3),
      R => p_0_in
    );
\v_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \v_cnt[31]_i_1_n_0\,
      D => v_cnt_1(4),
      Q => v_cnt(4),
      R => p_0_in
    );
\v_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \v_cnt[31]_i_1_n_0\,
      D => v_cnt_1(5),
      Q => v_cnt(5),
      R => p_0_in
    );
\v_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \v_cnt[31]_i_1_n_0\,
      D => v_cnt_1(6),
      Q => v_cnt(6),
      R => p_0_in
    );
\v_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \v_cnt[31]_i_1_n_0\,
      D => v_cnt_1(7),
      Q => v_cnt(7),
      R => p_0_in
    );
\v_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \v_cnt[31]_i_1_n_0\,
      D => v_cnt_1(8),
      Q => v_cnt(8),
      R => p_0_in
    );
\v_cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \v_cnt[31]_i_1_n_0\,
      D => v_cnt_1(9),
      Q => v_cnt(9),
      R => p_0_in
    );
vsync_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEAAA2A00000000"
    )
        port map (
      I0 => \^vsync\,
      I1 => \S_reg_n_0_[0]\,
      I2 => \^pclk_reg_0\,
      I3 => \S_reg_n_0_[1]\,
      I4 => vsync_0,
      I5 => rst_n,
      O => vsync_i_1_n_0
    );
vsync_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFFFFFFFFFF"
    )
        port map (
      I0 => cnt(1),
      I1 => vsync_i_3_n_0,
      I2 => vsync_i_4_n_0,
      I3 => cnt(4),
      I4 => cnt(3),
      I5 => cnt(5),
      O => vsync_0
    );
vsync_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => cnt(8),
      I1 => cnt(13),
      I2 => cnt(10),
      I3 => cnt(9),
      I4 => vsync_i_5_n_0,
      O => vsync_i_3_n_0
    );
vsync_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \cnt[31]_i_4_n_0\,
      I1 => cnt(31),
      O => vsync_i_4_n_0
    );
vsync_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => cnt(7),
      I1 => cnt(6),
      I2 => cnt(2),
      O => vsync_i_5_n_0
    );
vsync_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => vsync_i_1_n_0,
      Q => \^vsync\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_analog_ov_0_0 is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    pclk : out STD_LOGIC;
    vsync : out STD_LOGIC;
    href : out STD_LOGIC;
    data : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_analog_ov_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_analog_ov_0_0 : entity is "design_1_analog_ov_0_0,analog_ov,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_analog_ov_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_analog_ov_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_analog_ov_0_0 : entity is "analog_ov,Vivado 2021.1";
end design_1_analog_ov_0_0;

architecture STRUCTURE of design_1_analog_ov_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 48000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.design_1_analog_ov_0_0_analog_ov
     port map (
      clk => clk,
      data(7 downto 0) => data(7 downto 0),
      href => href,
      pclk_reg_0 => pclk,
      rst_n => rst_n,
      vsync => vsync
    );
end STRUCTURE;
