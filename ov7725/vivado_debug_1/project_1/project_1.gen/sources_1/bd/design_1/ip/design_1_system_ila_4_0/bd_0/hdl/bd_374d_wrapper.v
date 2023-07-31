//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_374d_wrapper.bd
//Design : bd_374d_wrapper
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_374d_wrapper
   (SLOT_0_VID_IO_active_video,
    SLOT_0_VID_IO_data,
    SLOT_0_VID_IO_vsync,
    clk);
  input SLOT_0_VID_IO_active_video;
  input [23:0]SLOT_0_VID_IO_data;
  input SLOT_0_VID_IO_vsync;
  input clk;

  wire SLOT_0_VID_IO_active_video;
  wire [23:0]SLOT_0_VID_IO_data;
  wire SLOT_0_VID_IO_vsync;
  wire clk;

  bd_374d bd_374d_i
       (.SLOT_0_VID_IO_active_video(SLOT_0_VID_IO_active_video),
        .SLOT_0_VID_IO_data(SLOT_0_VID_IO_data),
        .SLOT_0_VID_IO_vsync(SLOT_0_VID_IO_vsync),
        .clk(clk));
endmodule
