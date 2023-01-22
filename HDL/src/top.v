`default_nettype none

module top(clk, midi_in, sck, lrck, mck, sd, leds,
    sck_in, cs_in, mosi0_in, mosi1_in);

	input wire clk;
	input wire midi_in;
	output wire sck;
	output wire lrck;
	output wire mck;
	output wire sd;
	output wire [7:0]leds;
	
	input wire sck_in;
	input wire cs_in;
	input wire mosi0_in;
	input wire mosi1_in;
	

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

	//wire wvalid;
	//wire [7:0]midi_word;

	//wire [5:0]trig;
	//wire [6*16-1:0]freq;
	
	//UART_RX #(.CLKFREQ(FREQ), .SPEED(31500)) midi_rx(.clk(clk24), .uart_in(midi_in), .wvalid(wvalid), .word(midi_word));

	//midi_fsm zebrain(.clk(clk24), .midi_word(midi_word), .midi_valid(wvalid), .midi_clk(), .trig_out(trig), .freq_out(freq), .leds(leds));
	
	wire [31:0]param_data;
	wire param_valid;
	reg rd_param = 0;
	wire rxing_param;
	
	dual_fast_spi cmd_input(.sck_in(sck_in), .cs_in(cs_in), .mosi0_in(mosi0_in), .mosi1_in(mosi1_in),
	                       .synth_clk(clk24), .synth_data(param_data), .data_valid(param_valid), .read_data(rd_param),
	                       .busy(rxing_param));
    //ila_0 test(.clk(clk24), .probe0(param_data), .probe1(param_valid), .probe2(rd_param), .probe3(rxing_param), .probe4(pcount), .probe5(pcount == 74), .probe6(synth_params[74]));
    
    reg [7:0]pcount = 0;
    reg [31:0]synth_params[0:74];
	// We dispatch parameter here
	always @(posedge clk24)
	begin
	   rd_param <= 1;
	   if (param_valid) begin
           synth_params[pcount] <= param_data;
           pcount <= pcount + 1;
           if (pcount == 74) begin
               pcount <= 0;
           end
	   end
	end
	
	wire i2s_ready;
	reg [31:0]sample = 0;

	i2s channel1(.clkin(clk24), .sound(sample), .ready(i2s_ready), .mck(mck), .sck(sck), .sd(sd), .lrck(lrck));
	
	wire [31:0]at_time_0 = synth_params[18];
	wire [31:0]at_time_1 = synth_params[27];
	wire [31:0]at_time_2 = synth_params[36];
	wire [31:0]at_time_3 = synth_params[45];
	wire [31:0]at_time_4 = synth_params[54];
	wire [31:0]at_time_5 = synth_params[63];
	
	wire signed [31:0]at_inc_0 = synth_params[19];
	wire signed [31:0]at_inc_1 = synth_params[28];
	wire signed [31:0]at_inc_2 = synth_params[37];
	wire signed [31:0]at_inc_3 = synth_params[46];
	wire signed [31:0]at_inc_4 = synth_params[55];
	wire signed [31:0]at_inc_5 = synth_params[64];
	
	wire [31:0]de_time_0 = synth_params[20];
	wire [31:0]de_time_1 = synth_params[29];
	wire [31:0]de_time_2 = synth_params[38];
	wire [31:0]de_time_3 = synth_params[47];
	wire [31:0]de_time_4 = synth_params[56];
	wire [31:0]de_time_5 = synth_params[65];
	
	wire signed [31:0]de_inc_0 = synth_params[21];
	wire signed [31:0]de_inc_1 = synth_params[30];
	wire signed [31:0]de_inc_2 = synth_params[39];
	wire signed [31:0]de_inc_3 = synth_params[48];
	wire signed [31:0]de_inc_4 = synth_params[57];
	wire signed [31:0]de_inc_5 = synth_params[66];
	
	wire [31:0]su_time_0 = synth_params[22];
	wire [31:0]su_time_1 = synth_params[31];
	wire [31:0]su_time_2 = synth_params[40];
	wire [31:0]su_time_3 = synth_params[49];
	wire [31:0]su_time_4 = synth_params[58];
	wire [31:0]su_time_5 = synth_params[67];
	
	wire signed [31:0]su_lvl_0 = synth_params[23];
	wire signed [31:0]su_lvl_1 = synth_params[32];
	wire signed [31:0]su_lvl_2 = synth_params[41];
	wire signed [31:0]su_lvl_3 = synth_params[50];
	wire signed [31:0]su_lvl_4 = synth_params[59];
	wire signed [31:0]su_lvl_5 = synth_params[68];
	
	wire [31:0]re_time_0 = synth_params[24];
	wire [31:0]re_time_1 = synth_params[33];
	wire [31:0]re_time_2 = synth_params[42];
	wire [31:0]re_time_3 = synth_params[51];
	wire [31:0]re_time_4 = synth_params[60];
	wire [31:0]re_time_5 = synth_params[69];
	
	wire signed [31:0]re_inc_0 = synth_params[25];
	wire signed [31:0]re_inc_1 = synth_params[34];
	wire signed [31:0]re_inc_2 = synth_params[43];
	wire signed [31:0]re_inc_3 = synth_params[52];
	wire signed [31:0]re_inc_4 = synth_params[61];
	wire signed [31:0]re_inc_5 = synth_params[70];
	
	wire signed [15:0]amp_0 = synth_params[26][15:0];
	wire signed [15:0]amp_1 = synth_params[35][15:0];
	wire signed [15:0]amp_2 = synth_params[44][15:0];
	wire signed [15:0]amp_3 = synth_params[53][15:0];
	wire signed [15:0]amp_4 = synth_params[62][15:0];
	wire signed [15:0]amp_5 = synth_params[71][15:0];
	
	wire [5:0]omix = synth_params[72][5:0];
	wire [17:0]imod = synth_params[73][17:0];
	wire [2:0]trig = synth_params[74][2:0];
	
	assign leds = { rxing_param, param_valid, (pcount == 74), 2'd0, trig};
	
	wire signed [15:0]freq0_0 = synth_params[0][15:0];
	wire signed [15:0]freq0_1 = synth_params[1][15:0];
	wire signed [15:0]freq0_2 = synth_params[2][15:0];
	wire signed [15:0]freq0_3 = synth_params[3][15:0];
	wire signed [15:0]freq0_4 = synth_params[4][15:0];
	wire signed [15:0]freq0_5 = synth_params[5][15:0];
	
	wire signed [15:0]v0_out;
	voice voice0(.clk24(clk24), .trig(trig[0]), .out_mix(omix), 
	   .freq_0(freq0_0), .freq_1(freq0_1), .freq_2(freq0_2), .freq_3(freq0_3), .freq_4(freq0_4), .freq_5(freq0_5),
	   .at_time_0(at_time_0), .at_time_1(at_time_1), .at_time_2(at_time_2), .at_time_3(at_time_3), .at_time_4(at_time_4), .at_time_5(at_time_5),
	   .at_inc_0(at_inc_0), .at_inc_1(at_inc_1), .at_inc_2(at_inc_2), .at_inc_3(at_inc_3), .at_inc_4(at_inc_4), .at_inc_5(at_inc_5),
	   .de_time_0(de_time_0), .de_time_1(de_time_1), .de_time_2(de_time_2), .de_time_3(de_time_3), .de_time_4(de_time_4), .de_time_5(de_time_5),
	   .de_inc_0(de_inc_0), .de_inc_1(de_inc_1), .de_inc_2(de_inc_2), .de_inc_3(de_inc_3), .de_inc_4(de_inc_4), .de_inc_5(de_inc_5),
	   .su_time_0(su_time_0), .su_time_1(su_time_1), .su_time_2(su_time_2), .su_time_3(su_time_3), .su_time_4(su_time_4), .su_time_5(su_time_5),
	   .su_lvl_0(su_lvl_0), .su_lvl_1(su_lvl_1), .su_lvl_2(su_lvl_2), .su_lvl_3(su_lvl_3), .su_lvl_4(su_lvl_4), .su_lvl_5(su_lvl_5),
	   .re_time_0(re_time_0), .re_time_1(re_time_1), .re_time_2(re_time_2), .re_time_3(re_time_3), .re_time_4(re_time_4), .re_time_5(re_time_5),
	   .re_inc_0(re_inc_0), .re_inc_1(re_inc_1), .re_inc_2(re_inc_2), .re_inc_3(re_inc_3), .re_inc_4(re_inc_4), .re_inc_5(re_inc_5),
	   .amp_0(amp_0), .amp_1(amp_1), .amp_2(amp_2), .amp_3(amp_3), .amp_4(amp_4), .amp_5(amp_5),
	   .modsel(imod), 
	   .sound_output(v0_out));
	   
    wire signed [15:0]freq1_0 = synth_params[6][15:0];
	wire signed [15:0]freq1_1 = synth_params[7][15:0];
	wire signed [15:0]freq1_2 = synth_params[8][15:0];
	wire signed [15:0]freq1_3 = synth_params[9][15:0];
	wire signed [15:0]freq1_4 = synth_params[10][15:0];
	wire signed [15:0]freq1_5 = synth_params[11][15:0];

	wire signed [15:0]v1_out;
	voice voice1(.clk24(clk24), .trig(trig[1]), .out_mix(omix), 
	   .freq_0(freq1_0), .freq_1(freq1_1), .freq_2(freq1_2), .freq_3(freq1_3), .freq_4(freq1_4), .freq_5(freq1_5),
	   .at_time_0(at_time_0), .at_time_1(at_time_1), .at_time_2(at_time_2), .at_time_3(at_time_3), .at_time_4(at_time_4), .at_time_5(at_time_5),
	   .at_inc_0(at_inc_0), .at_inc_1(at_inc_1), .at_inc_2(at_inc_2), .at_inc_3(at_inc_3), .at_inc_4(at_inc_4), .at_inc_5(at_inc_5),
	   .de_time_0(de_time_0), .de_time_1(de_time_1), .de_time_2(de_time_2), .de_time_3(de_time_3), .de_time_4(de_time_4), .de_time_5(de_time_5),
	   .de_inc_0(de_inc_0), .de_inc_1(de_inc_1), .de_inc_2(de_inc_2), .de_inc_3(de_inc_3), .de_inc_4(de_inc_4), .de_inc_5(de_inc_5),
	   .su_time_0(su_time_0), .su_time_1(su_time_1), .su_time_2(su_time_2), .su_time_3(su_time_3), .su_time_4(su_time_4), .su_time_5(su_time_5),
	   .su_lvl_0(su_lvl_0), .su_lvl_1(su_lvl_1), .su_lvl_2(su_lvl_2), .su_lvl_3(su_lvl_3), .su_lvl_4(su_lvl_4), .su_lvl_5(su_lvl_5),
	   .re_time_0(re_time_0), .re_time_1(re_time_1), .re_time_2(re_time_2), .re_time_3(re_time_3), .re_time_4(re_time_4), .re_time_5(re_time_5),
	   .re_inc_0(re_inc_0), .re_inc_1(re_inc_1), .re_inc_2(re_inc_2), .re_inc_3(re_inc_3), .re_inc_4(re_inc_4), .re_inc_5(re_inc_5),
	   .amp_0(amp_0), .amp_1(amp_1), .amp_2(amp_2), .amp_3(amp_3), .amp_4(amp_4), .amp_5(amp_5),
	   .modsel(imod), 
	   .sound_output(v1_out));
	
	wire signed [15:0]freq2_0 = synth_params[12][15:0];
	wire signed [15:0]freq2_1 = synth_params[13][15:0];
	wire signed [15:0]freq2_2 = synth_params[14][15:0];
	wire signed [15:0]freq2_3 = synth_params[15][15:0];
	wire signed [15:0]freq2_4 = synth_params[16][15:0];
	wire signed [15:0]freq2_5 = synth_params[17][15:0];

	wire signed [15:0]v2_out;
	voice voice2(.clk24(clk24), .trig(trig[2]), .out_mix(omix), 
	   .freq_0(freq2_0), .freq_1(freq2_1), .freq_2(freq2_2), .freq_3(freq2_3), .freq_4(freq2_4), .freq_5(freq2_5),
	   .at_time_0(at_time_0), .at_time_1(at_time_1), .at_time_2(at_time_2), .at_time_3(at_time_3), .at_time_4(at_time_4), .at_time_5(at_time_5),
	   .at_inc_0(at_inc_0), .at_inc_1(at_inc_1), .at_inc_2(at_inc_2), .at_inc_3(at_inc_3), .at_inc_4(at_inc_4), .at_inc_5(at_inc_5),
	   .de_time_0(de_time_0), .de_time_1(de_time_1), .de_time_2(de_time_2), .de_time_3(de_time_3), .de_time_4(de_time_4), .de_time_5(de_time_5),
	   .de_inc_0(de_inc_0), .de_inc_1(de_inc_1), .de_inc_2(de_inc_2), .de_inc_3(de_inc_3), .de_inc_4(de_inc_4), .de_inc_5(de_inc_5),
	   .su_time_0(su_time_0), .su_time_1(su_time_1), .su_time_2(su_time_2), .su_time_3(su_time_3), .su_time_4(su_time_4), .su_time_5(su_time_5),
	   .su_lvl_0(su_lvl_0), .su_lvl_1(su_lvl_1), .su_lvl_2(su_lvl_2), .su_lvl_3(su_lvl_3), .su_lvl_4(su_lvl_4), .su_lvl_5(su_lvl_5),
	   .re_time_0(re_time_0), .re_time_1(re_time_1), .re_time_2(re_time_2), .re_time_3(re_time_3), .re_time_4(re_time_4), .re_time_5(re_time_5),
	   .re_inc_0(re_inc_0), .re_inc_1(re_inc_1), .re_inc_2(re_inc_2), .re_inc_3(re_inc_3), .re_inc_4(re_inc_4), .re_inc_5(re_inc_5),
	   .amp_0(amp_0), .amp_1(amp_1), .amp_2(amp_2), .amp_3(amp_3), .amp_4(amp_4), .amp_5(amp_5),
	   .modsel(imod), 
	   .sound_output(v2_out));	
	
	reg signed [15:0]samplemix;

	always @(posedge clk24)
	begin
		if (i2s_ready) begin
			samplemix <= {{2{v0_out[15]}}, v0_out[15:2]} + {{2{v1_out[15]}}, v1_out[15:2]} + {{2{v2_out[15]}}, v2_out[15:2]};
			sample <= {samplemix, samplemix};
		end
	end

endmodule
