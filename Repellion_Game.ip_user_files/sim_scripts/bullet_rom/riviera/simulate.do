onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+bullet_rom -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.bullet_rom xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {bullet_rom.udo}

run -all

endsim

quit -force
