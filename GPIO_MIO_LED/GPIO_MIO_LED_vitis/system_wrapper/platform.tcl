# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\SUXP\Desktop\GPIO_MIO_LED\GPIO_MIO_LED_vitis\system_wrapper\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\SUXP\Desktop\GPIO_MIO_LED\GPIO_MIO_LED_vitis\system_wrapper\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {system_wrapper}\
-hw {C:\Users\SUXP\Desktop\GPIO_MIO_LED\GPIO_MIO_LED_vitis\system_wrapper.xsa}\
-out {C:/Users/SUXP/Desktop/GPIO_MIO_LED/GPIO_MIO_LED_vitis}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {empty_application}
platform generate -domains 
platform active {system_wrapper}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
platform generate
platform clean
platform generate
platform active {system_wrapper}
domain active {zynq_fsbl}
bsp reload
domain active {standalone_ps7_cortexa9_0}
bsp reload
platform generate -domains 
platform clean
platform generate
