onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+v_vid_in_axi4s_0 -L xpm -L v_vid_in_axi4s_v4_0_9 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.v_vid_in_axi4s_0 xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {v_vid_in_axi4s_0.udo}

run -all

endsim

quit -force
