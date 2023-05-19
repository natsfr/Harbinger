`timescale 1ns / 1ps
`default_nettype none

module phase_acc(phaseinc, modinc, dcostep);
	
	parameter SIZE = 26;
	
	input logic signed [15:0] phaseinc;
	input logic signed [15:0] modinc;
	output logic signed [SIZE-1:0]dcostep;
	
	logic signed [16:0]ext_phase = $signed({1'b0, phaseinc});
	
	always_comb begin
		dcostep = ext_phase + modinc;
	end
endmodule
