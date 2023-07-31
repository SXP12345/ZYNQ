vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xil_defaultlib

vmap xpm modelsim_lib/msim/xpm
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xpm  -incr -mfcu -sv "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" \
"D:/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93 \
"D:/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" \
"../../../bd/design_1/ipshared/8570/sources_1/new/analog_ov.v" \
"../../../bd/design_1/ip/design_1_analog_ov_0_0/sim/design_1_analog_ov_0_0.v" \
"../../../bd/design_1/ipshared/6ae4/src/ov7725_data_sample.v" \
"../../../bd/design_1/ip/design_1_ov7725_data_sample_0_0/sim/design_1_ov7725_data_sample_0_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_3_0/bd_0/ip/ip_0/sim/bd_f6fc_ila_lib_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_3_0/bd_0/sim/bd_f6fc.v" \
"../../../bd/design_1/ip/design_1_system_ila_3_0/sim/design_1_system_ila_3_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_4_0/bd_0/ip/ip_0/sim/bd_374d_ila_lib_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_4_0/bd_0/sim/bd_374d.v" \
"../../../bd/design_1/ip/design_1_system_ila_4_0/sim/design_1_system_ila_4_0.v" \
"../../../bd/design_1/ip/design_1_ila_0_1/sim/design_1_ila_0_1.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

