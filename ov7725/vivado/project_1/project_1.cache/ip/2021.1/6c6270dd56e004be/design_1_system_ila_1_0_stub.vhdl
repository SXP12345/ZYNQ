-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
-- Date        : Fri Jul 28 08:49:52 2023
-- Host        : LAPTOP-FQ7LLQV0 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_system_ila_1_0_stub.vhdl
-- Design      : design_1_system_ila_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk : in STD_LOGIC;
    SLOT_0_VID_IO_data : in STD_LOGIC_VECTOR ( 23 downto 0 );
    SLOT_0_VID_IO_active_video : in STD_LOGIC;
    SLOT_0_VID_IO_vsync : in STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,SLOT_0_VID_IO_data[23:0],SLOT_0_VID_IO_active_video,SLOT_0_VID_IO_vsync";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "bd_365d,Vivado 2021.1";
begin
end;
