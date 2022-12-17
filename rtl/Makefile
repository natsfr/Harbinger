harbinger.bin: top.v harbinger.pcf uart_rx.v i2s.v sincos_luts.v nco_phase.v
	yosys -p "hierarchy -top top; synth_ice40 -json harbinger.json" top.v uart_rx.v i2s.v sincos_luts.v nco_phase.v
	nextpnr-ice40 --log top.log --hx8k --package ct256 --json harbinger.json --pcf harbinger.pcf --pre-pack pre_pack.py --asc harbinger.asc
	icepack harbinger.asc harbinger.bin

gui: top.v harbinger.pcf uart_rx.v i2s.v sincos_luts.v nco_phase.v
	yosys -p "hierarchy -top top; synth_ice40 -json harbinger.json" top.v uart_rx.v i2s.v sincos_luts.v nco_phase.v
	nextpnr-ice40 --log top.log --hx8k --package ct256 --json harbinger.json --pcf harbinger.pcf --pre-pack pre_pack.py --asc harbinger.asc --gui
	icepack harbinger.asc harbinger.bin


prog: harbinger.bin
	iceprog harbinger.bin

clean:
	rm -f harbinger.asc harbinger.json harbinger.bin harbinger.blif
