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
	
	wire wvalid;
	wire [7:0]midi_word;

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
	
	UART_RX #(.CLKFREQ(24562500), .SPEED(31500)) midi_rx(.clk(clk24), .uart_in(midi_in), .wvalid(wvalid), .word(midi_word));
	
	wire i2s_ready;
	reg [31:0]sample = 0;

	wire int_mck;
	wire int_lrck;
	wire int_sck;
	wire int_sd;

	i2s channel1(.clkin(clk24), .sound(sample), .ready(i2s_ready), .mck(int_mck), .sck(int_sck), .sd(int_sd), .lrck(int_lrck));

	reg [15:0]cnt = 0;

	wire [7:0]sinsample;
	wire [7:0]cossample;

	wire [25:0]accumulator;

	phase_acc nco(.clk(clk24), .reset(0), .M(26'd60060), .out(accumulator));

	lut sinelut(.clk(clk24), .reset(0), .phase(accumulator[25:18]), .sin_out(sinsample), .cos_out(cossample));

	wire [7:0]sin2;
	wire [7:0]cos2;

	wire [25:0]fm = 26'd60074 - {sinsample[7:0], {7{1'b0}}};

	wire [25:0]acc2;

	phase_acc nco2(.clk(clk24), .reset(0), .M(fm), .out(acc2));

	lut sinelut2(.clk(clk24), .reset(0), .phase(acc2[25:18]), .sin_out(sin2), .cos_out(cos2));

	localparam SHIFT = 4'd0;
	localparam TAIL = 4'd8-SHIFT;

	always @(posedge clk24)
	begin
		if (i2s_ready) begin
			sample <= {{SHIFT{sin2[7]}}, sin2[7:0], {TAIL{1'b0}}, {SHIFT{cos2[7]}}, cos2[7:0], {TAIL{1'b0}}};
			//cnt <= cnt + 100;
			//sample <= {acc2};
			leds <= cossample;
		end
	end
endmodule
