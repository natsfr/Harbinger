harbinger.bin: src/top.v ice40_phys/harbinger.pcf src/uart_rx.v src/i2s.v src/sincos_luts.v src/nco_phase.v src/operator.v src/midi_parser.v
	yosys -p "hierarchy -top top; synth_ice40 -json build/ice40/harbinger.json" src/top.v src/uart_rx.v src/i2s.v src/sincos_luts.v src/nco_phase.v src/operator.v src/midi_parser.v
	nextpnr-ice40 --log build/ice40/top.log --hx8k --package ct256 --json build/ice40/harbinger.json --pcf ice40_phys/harbinger.pcf --pre-pack ice40_phys/pre_pack.py --asc build/ice40/harbinger.asc
	icepack build/ice40/harbinger.asc build/ice40/harbinger.bin

prog: harbinger.bin
	iceprog build/ice40/harbinger.bin

clean:
	rm -f build/ice40/harbinger.asc build/ice40/harbinger.json build/ice40/harbinger.bin build/ice40/harbinger.blif
