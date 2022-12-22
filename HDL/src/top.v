`default_nettype none

module top(clk, midi_in, sck, lrck, mck, sd, leds, cl_mck, cl_lrck, cl_sck, cl_sd);

	input wire clk;
	input wire midi_in;
	output wire sck = int_sck;
	output wire lrck = int_lrck;
	output wire mck = int_mck;
	output wire sd = int_sd;
	output wire [7:0]leds;

	output wire cl_mck/* = int_mck*/;
	output wire cl_lrck = int_lrck;
	output wire cl_sck = int_sck;
	output wire cl_sd = int_sd;

	// First prototype use a 12MHz xtal
	// We need 24.576MHz we get 24.75MHz

	wire clk24;

	SB_PLL40_CORE #(
        .FEEDBACK_PATH("SIMPLE"),
        .DIVR(0),
        .DIVF(32),
        .DIVQ(4),
        .FILTER_RANGE(3'b001),
    ) uut (
        .REFERENCECLK   (clk),
        .PLLOUTCORE     (clk24),
        .BYPASS         (0),
        .RESETB         (1)
        //.LOCK (LOCK )
    );

	wire wvalid;
	wire [7:0]midi_word;

	wire [5:0]trig;
	
	UART_RX #(.CLKFREQ(24562500), .SPEED(31500)) midi_rx(.clk(clk24), .uart_in(midi_in), .wvalid(wvalid), .word(midi_word));

	midi_fsm zebrain(.clk(clk), .midi_word(midi_word), .midi_valid(wvalid), .midi_clk(), .trig_out(trig), .freq_out(), .leds(leds));

	/*always @(posedge clk24)
	begin
		if (wvalid) begin
			leds <= midi_word;
		end
	end*/
	
	wire i2s_ready;
	reg [31:0]sample = 0;

	wire int_mck;
	wire int_lrck;
	wire int_sck;
	wire int_sd;

	i2s channel1(.clkin(clk24), .sound(sample), .ready(i2s_ready), .mck(int_mck), .sck(int_sck), .sd(int_sd), .lrck(int_lrck));

	wire [15:0]sample1;
	wire [15:0]sample2;

	operator testi2s(.clk24(clk), .trig(trig[0]), .modin(0), .phaseinc(16'd601), 
		.At_time(32'd2457500), .De_time(32'd12287), .Su_time(32'd2457500), .Re_time(32'd24575),
		.At_inc(32'd873), .De_inc(-32'd87371), .Su_lvl(32'd16384<<32'd16), .Re_inc(32'd43689),
		.amplitude(16'd0), .soundout(sample1));

	operator testi2s2(.clk24(clk), .trig(trig[0]), .modin(sample1), .phaseinc(16'd1202), 
		.At_time(32'd2457500), .De_time(32'd12287), .Su_time(32'd2457500), .Re_time(32'd24575),
		.At_inc(32'd873), .De_inc(-32'd87371), .Su_lvl(32'd16384<<32'd16), .Re_inc(-32'd43689),
		.amplitude(16'd0),  .soundout(sample2));

	always @(posedge clk24)
	begin
		if (i2s_ready) begin
			sample <= {sample2[15:0], sample2[15:0]};
		end
	end
endmodule
