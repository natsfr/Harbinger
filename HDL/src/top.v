`default_nettype none

module top(clk, midi_in, sck, lrck, mck, sd, leds);

	input wire clk;
	input wire midi_in;
	output wire sck;
	output wire lrck;
	output wire mck;
	output wire sd;
	output wire [7:0]leds;

	// First prototype use a 12MHz xtal

	wire clk24;
	
	`ifdef SPARTAN7
		// Get 24.576MHz
		localparam FREQ = 32'd24576000;
		clk_wiz_0 audio_clk(.clk_in1(clk), .clk_out1(clk24));
	`else // ICE40
		// We need 24.576MHz we get 24.75MHz
        localparam FREQ = 32'd24750000;
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
	`endif

	wire wvalid;
	wire [7:0]midi_word;

	wire [5:0]trig;
	wire [6*16-1:0]freq;
	
	UART_RX #(.CLKFREQ(FREQ), .SPEED(31500)) midi_rx(.clk(clk24), .uart_in(midi_in), .wvalid(wvalid), .word(midi_word));

	midi_fsm zebrain(.clk(clk24), .midi_word(midi_word), .midi_valid(wvalid), .midi_clk(), .trig_out(trig), .freq_out(freq), .leds(leds));
	
	wire i2s_ready;
	reg [31:0]sample = 0;

	i2s channel1(.clkin(clk24), .sound(sample), .ready(i2s_ready), .mck(mck), .sck(sck), .sd(sd), .lrck(lrck));

	/*wire [15:0]sample1;
	wire [15:0]sample2;

	operator testi2s(.clk24(clk24), .trig(trig[0]), .modin(0), .phaseinc(freq[15:0]), 
		.At_time(32'd2457500), .De_time(32'd12287), .Su_time(32'd2457500), .Re_time(32'd24575),
		.At_inc(32'd873), .De_inc(-32'd87371), .Su_lvl(32'd16384<<32'd16), .Re_inc(-32'd43689),
		.amplitude(16'd0), .soundout(sample1));

	operator testi2s2(.clk24(clk24), .trig(trig[0]), .modin(sample1), .phaseinc(freq[15:0]<<2), 
		.At_time(32'd2457500), .De_time(32'd12287), .Su_time(32'd2457500), .Re_time(32'd24575),
		.At_inc(32'd873), .De_inc(-32'd87371), .Su_lvl(32'd16384<<32'd16), .Re_inc(-32'd43689),
		.amplitude(16'd0),  .soundout(sample2));

	wire [15:0]sample1_v1;
	wire [15:0]sample2_v1;

	operator testi2s_v1(.clk24(clk24), .trig(trig[1]), .modin(0), .phaseinc(freq[31:16]), 
		.At_time(32'd2457500), .De_time(32'd12287), .Su_time(32'd2457500), .Re_time(32'd24575),
		.At_inc(32'd873), .De_inc(-32'd87371), .Su_lvl(32'd16384<<32'd16), .Re_inc(-32'd43689),
		.amplitude(16'd0), .soundout(sample1_v1));

	operator testi2s2_v1(.clk24(clk24), .trig(trig[1]), .modin(sample1_v1), .phaseinc(freq[31:16]<<2), 
		.At_time(32'd2457500), .De_time(32'd12287), .Su_time(32'd2457500), .Re_time(32'd24575),
		.At_inc(32'd873), .De_inc(-32'd87371), .Su_lvl(32'd16384<<32'd16), .Re_inc(-32'd43689),
		.amplitude(16'd0),  .soundout(sample2_v1));*/
		
	wire signed [15:0]v0_out;
	voice voice0(.clk24(clk24), .trig(trig[0]), .out_mix(6'b111111), 
	   .freq0(freq[15:0]), .freq1(freq[15:0] << 2), .freq2(freq[15:0] >> 3), .freq3(freq[15:0]), .freq4(freq[15:0] << 2), .freq5(freq[15:0] >> 3),
	   .modsel(18'h19689), 
	   .sound_output(v0_out));
	   
   
	wire signed [15:0]v1_out;
	voice voice1(.clk24(clk24), .trig(trig[1]), .out_mix(6'b111111), 
	   .freq0(freq[31:16]), .freq1(freq[31:16] << 2), .freq2(freq[31:16] >> 3), .freq3(freq[31:16] >> 4), .freq4(freq[31:16]), .freq5(freq[31:16] >> 3),
	   .modsel(18'h19689), 
	   .sound_output(v1_out));
	
	wire signed [15:0]v2_out;
	voice voice2(.clk24(clk24), .trig(trig[2]), .out_mix(6'b111111), 
	   .freq0(freq[47:32]), .freq1(freq[47:32] << 2), .freq2(freq[47:32] >> 3), .freq3(freq[47:32] >> 4), .freq4(freq[47:32]), .freq5(freq[47:32] >> 3),
	   .modsel(18'h19689), 
	   .sound_output(v2_out));	
	
	reg signed [15:0]samplemix;

	always @(posedge clk24)
	begin
		if (i2s_ready) begin
			samplemix <= {{3{v0_out[15]}}, v0_out[15:3]} + {{3{v1_out[15]}}, v1_out[15:3]} + {{3{v2_out[15]}}, v2_out[15:3]};
			sample <= {samplemix, samplemix};
		end
	end

endmodule
