onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -L xpm -L v_vid_in_axi4s_v4_0_9 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.v_vid_in_axi4s_0 xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {v_vid_in_axi4s_0.udo}

run -all

quit -force
