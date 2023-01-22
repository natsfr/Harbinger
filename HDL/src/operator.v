`default_nettype none

module operator(clk24, trig, 		// Clock and sync trigger for note
				modin,				// Modulation signal
				phaseinc,			// Phase inc input 16 bit
				At_time, At_inc,	// Attack dual parameter
				De_time, De_inc,	// Decay dual parameter
				Su_time, Su_lvl,	// Sustain dual parameter
				Re_time, Re_inc,	// Release dual parameter
				amplitude,			// Output level

				WT_write, WT_value,	// Interface to update the Wavetable

				fullamp,			// Operator output ignoring amplitude
				soundout			// Operator output fixed point
				);

parameter SIZE = 26;				// NCO bit size
parameter FC = 26'd65535;			// 0.3662109375Hz step => 23999.6337890625kHz maximum freq

	/* Size of LUT 8bit
	 * We use Q8.18 format
	 */

	input wire clk24;
	input wire trig;
	input wire signed [15:0]modin;
	input wire signed [15:0]phaseinc;
	
	input wire [31:0]At_time;
	input wire signed [31:0]At_inc;

	input wire [31:0]De_time;
	input wire signed [31:0]De_inc;

	input wire [31:0]Su_time;
	input wire signed [31:0]Su_lvl;

	input wire [31:0]Re_time;
	input wire signed [31:0]Re_inc;

	input wire signed [15:0]amplitude;

	input wire WT_write;
	input wire [7:0]WT_value;

	output reg signed [15:0]fullamp = 0;

	output reg signed [15:0]soundout = 0;


	reg [SIZE-1:0]phasecounter = 0;
	
	reg [SIZE-1:0]modulation = 0;

	reg signed [SIZE-1:0]step = 0;

	wire signed [SIZE-1:0]extmodin = $signed(modin);

	always @*
	begin
		step = phaseinc + modin;
	end

	/* Wavetable interpolation */
	reg signed [7:0]wavetable[255:0];
	wire [7:0]wrpointer = phasecounter[SIZE-1:SIZE-8];
	wire [7:0]wrpointernext = wrpointer + 8'd1;

	reg signed [25:0]fract = 0;

	reg signed [7:0]current_sample = 0;
	reg signed [7:0]next_sample = 0;

	reg signed [25:0]sample_diff = 0;
	reg signed [51:0]interpolation = 0;

	reg signed [7:0]short_diff = 0;
	reg signed [15:0]shot_interp = 0;

	reg signed [31:0]amp_sample = 0;
	reg signed [31:0]amp_sample2 = 0;

	reg signed [15:0]fullamp_r = 0;

	reg [31:0]adsr_counter = 32'd0;

	reg signed [31:0]adsr_amp = 32'd0;

	localparam IDLE			= 4'd0;
	localparam ATTACK		= 4'd1;
	localparam DECAY		= 4'd2;
	localparam SUSTAIN		= 4'd3;
	localparam RELEASE		= 4'd4;
	reg [3:0]adsr_state = IDLE;

	always @(posedge clk24)
	begin
		current_sample <= wavetable[wrpointer];
		next_sample <= wavetable[wrpointernext];
		fract <= {{8{1'b0}}, phasecounter[17:0]};
		shot_interp <= interpolation[43:28];
		fullamp_r <= interpolation[43:28] + {current_sample[7:0], {8{1'b0}}};
		fullamp <= fullamp_r;
		soundout <= amp_sample[30:15];

		/* Implementing ADSR */

		phasecounter <= phasecounter + step;

		adsr_counter <= 0;
		if(amplitude == 16'd0) begin
			case(adsr_state)
				IDLE: begin
					phasecounter <= 0;
					if (trig == 1'b1) begin
						adsr_state <= ATTACK;
					end
				end
				ATTACK: begin
					adsr_counter <= adsr_counter + 32'd1;
					adsr_amp <= adsr_amp + At_inc;
					if (trig == 1'b0) begin
						adsr_state <= RELEASE;
						adsr_counter <= 0;
					end else if (adsr_counter == At_time) begin
						adsr_state <= DECAY;
						adsr_counter <= 0;
					end
				end
				DECAY: begin
					adsr_counter <= adsr_counter + 32'd1;
					adsr_amp <= adsr_amp + De_inc;
					if (trig == 1'b0) begin
						adsr_state <= RELEASE;
						adsr_counter <= 0;
					end else if (adsr_counter == De_time) begin
						adsr_state <= SUSTAIN;
						adsr_counter <= 0;
					end
				end
				SUSTAIN: begin
					adsr_counter <= adsr_counter + 32'd1;
					adsr_amp <= Su_lvl;
					if (trig == 1'b0) begin
						adsr_state <= RELEASE;
						adsr_counter <= 0;
					end else if (adsr_counter == Su_time) begin
						adsr_state <= RELEASE;
						adsr_counter <= 0;
					end
				end
				RELEASE: begin
					adsr_counter <= adsr_counter + 32'd1;
					adsr_amp <= adsr_amp + Re_inc;
					if (adsr_counter == Re_time) begin
						adsr_state <= IDLE;
						adsr_counter <= 0;
						adsr_amp <= 0;
					end
				end
			endcase
		end
	end

	reg signed [15:0]signed_adsramp = 0;

	always @*
	begin
		sample_diff = {next_sample, {18{1'd0}}} - {current_sample, {18{1'd0}}};
		short_diff = next_sample - current_sample;
		interpolation = sample_diff * fract;
		if (amplitude != 16'd0) begin
			signed_adsramp = (trig == 1'b1) ? amplitude : 0;
		end else begin
			signed_adsramp = adsr_amp[31:16];
		end
		amp_sample = fullamp * signed_adsramp;
	end
	/* Wavetable interpolation */

	initial
	begin
		$readmemh("ram.data", wavetable, 0, 255);
	end

endmodule