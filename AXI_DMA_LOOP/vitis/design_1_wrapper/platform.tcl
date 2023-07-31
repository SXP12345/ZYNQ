# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\SUXP\Desktop\AXI_DMA_LOOP\vitis\design_1_wrapper\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\SUXP\Desktop\AXI_DMA_LOOP\vitis\design_1_wrapper\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {design_1_wrapper}\
-hw {C:\Users\SUXP\Desktop\AXI_DMA_LOOP\vitis\design_1_wrapper.xsa}\
-out {C:/Users/SUXP/Desktop/AXI_DMA_LOOP/vitis}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {hello_world}
platform generate -domains 
platform active {design_1_wrapper}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
bsp reload
platform generate
platform active {design_1_wrapper}
platform config -updatehw {C:/Users/SUXP/Desktop/AXI_DMA_LOOP/vivado/project_1/design_1_wrapper.xsa}
platform generate -domains 
platform active {design_1_wrapper}
platform config -updatehw {C:/Users/SUXP/Desktop/AXI_DMA_LOOP/vivado/project_1/design_1_wrapper.xsa}
platform generate -domains 
platform active {design_1_wrapper}
platform config -updatehw {C:/Users/SUXP/Desktop/AXI_DMA_LOOP/vivado/project_1/design_1_wrapper_.xsa}
platform generate -domains 
platform generate -domains 
