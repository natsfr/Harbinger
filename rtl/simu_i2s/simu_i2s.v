`timescale 100ns / 100ps

module top_simu;

	reg clk = 0;

	always #1 clk = ~clk;

	wire [7:0]word;
	wire wvalid;

	reg [31:0]sample = 0;
	wire i2s_ready;

	i2s testi2s(.clkin(clk), .sound(sample), .ready(i2s_ready));

	reg [15:0]cnt = 0;

	always @(posedge clk)
	begin
		if (i2s_ready) begin
			cnt <= cnt + 1;
			sample <= {cnt[15:0], 16'hFFFF - cnt[15:0]};
		end
	end

	initial begin
		$dumpfile("i2s_sim.vcd");
		$dumpvars(0, top_simu);
		#65536
		$stop;
		$finish;
	end

endmodule
