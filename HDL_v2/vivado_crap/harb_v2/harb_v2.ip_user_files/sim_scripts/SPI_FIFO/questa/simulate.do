onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib SPI_FIFO_opt

do {wave.do}

view wave
view structure
view signals

do {SPI_FIFO.udo}

run -all

quit -force
