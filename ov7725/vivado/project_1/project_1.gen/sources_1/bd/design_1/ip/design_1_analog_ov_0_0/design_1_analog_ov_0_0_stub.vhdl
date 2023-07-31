-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
-- Date        : Thu Jul 27 20:19:24 2023
-- Host        : LAPTOP-FQ7LLQV0 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/SUXP/Desktop/ov7725/vivado/project_1/project_1.gen/sources_1/bd/design_1/ip/design_1_analog_ov_0_0/design_1_analog_ov_0_0_stub.vhdl
-- Design      : design_1_analog_ov_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_analog_ov_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    pclk : out STD_LOGIC;
    vsync : out STD_LOGIC;
    href : out STD_LOGIC;
    data : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end design_1_analog_ov_0_0;

architecture stub of design_1_analog_ov_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst_n,pclk,vsync,href,data[7:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "analog_ov,Vivado 2021.1";
begin
end;
