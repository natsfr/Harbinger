`timescale 100ns / 100ps

module top_simu;

	reg clk = 0;

	always #1 clk = ~clk;

	reg trig = 0;
	wire [15:0]sample;
	wire [15:0]sample2;

	operator testi2s(.clk24(clk), .trig(trig), .modin(16'd0), .amplitude(16'd128), .phaseinc(16'd2404), .soundout(sample));

	operator testi2s2(.clk24(clk), .trig(trig), .modin(sample), .amplitude(16'd256), .phaseinc(16'd601), .soundout(sample2));

	reg [15:0]cnt = 0;

	always @(posedge clk)
	begin

	end

	initial begin
		$dumpfile("operator_sim.vcd");
		$dumpvars(0, top_simu);
		#400000
		//$stop;
		$finish;
	end

endmodule
