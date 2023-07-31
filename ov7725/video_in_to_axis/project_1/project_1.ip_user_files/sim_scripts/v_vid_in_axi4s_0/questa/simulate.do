onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib v_vid_in_axi4s_0_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {v_vid_in_axi4s_0.udo}

run -all

quit -force
