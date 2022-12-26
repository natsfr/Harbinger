/*
 * Fres = Fclk / 2^n
 * Fout = (M/2^n) * Fclk
 * M=(Fout*2^n)/Fclk
 * Fclk = 24 576 000Hz @ 26bit => 0.366Hz step
 * Fout ~= 
 */

`default_nettype none

module phase_acc(clk, reset, M, out);
parameter SIZE = 26;
parameter FC = 26'd65535; // Max frequency of 22kHz

	input wire clk;
	input wire reset;
	input wire [SIZE-1:0]M;
	output wire [SIZE-1:0]out;

	reg [SIZE-1:0]counter;
	reg [SIZE-1:0]step;

	always @*
	begin
		step = FC - M;
	end

	assign out = counter;

	always @(posedge clk)
	begin
		if(reset) begin
			counter <= 0;
		end else begin
			counter <= counter + step;
		end
	end
	
	initial
	begin
		counter = 0;		
	end
endmodule
