`timescale 100ns / 100ps

module top_simu;

	reg clk = 0;

	always #1 clk = ~clk;

	reg trig = 1;
	wire [15:0]sample;
	wire [15:0]sample2;

	operator testi2s(.clk24(clk), .trig(trig), .modin(sample), .phaseinc(16'd601), 
		.At_time(32'd0), .De_time(32'd0), .Su_time(32'd0), .Re_time(32'd0),
		.At_inc(32'd0), .De_inc(32'd0), .Su_lvl(32'd0), .Re_inc(32'd0),
		.amplitude(16'd16384), .soundout(sample));

	operator testi2s2(.clk24(clk), .trig(trig), .modin(sample), .phaseinc(16'd2404), 
		.At_time(32'd24575), .De_time(32'd12287), .Su_time(32'd245750), .Re_time(32'd24575),
		.At_inc(32'd87371), .De_inc(-32'd87371), .Su_lvl(32'd16384<<32'd16), .Re_inc(-32'd43689),
		.amplitude(16'd0),  .soundout(sample2));

	reg [15:0]cnt = 0;

	always @(posedge clk)
	begin

	end

	initial begin
		$dumpfile("operator_sim.vcd");
		$dumpvars(0, top_simu);
		#4000000
		//$stop;
		$finish;
	end

endmodule
