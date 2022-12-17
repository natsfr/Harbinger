`default_nettype none

module operator(clk24, trig, 		// Clock and sync trigger for note
				modin,				// Modulation signal
				phaseinc,			// Phase inc input 16 bit
				At_time, At_lvl,	// Attack dual parameter
				De_time, De_lvl,	// Decay dual parameter
				Su_time, Su_lvl,	// Sustain dual parameter
				Re_time, Re_lvl,	// Release dual parameter
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
	
	input wire [15:0]At_time;
	input wire signed [15:0]At_lvl;

	input wire [15:0]De_time;
	input wire signed [15:0]De_lvl;

	input wire [15:0]Su_time;
	input wire signed [15:0]Su_lvl;

	input wire [15:0]Re_time;
	input wire signed [15:0]Re_lvl;

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
		/*if (extmodin < -phaseinc) begin
			modulation = -phaseinc;
		end else if (extmodin > (17'sd65535 - phaseinc)) begin
			modulation = (16'd65535 - phaseinc);
		end else begin
			modulation = modin;
		end
		step = phaseinc + modulation;*/
		step = phaseinc + modin;
	end

	always @(posedge clk24)
	begin
		if(trig) begin
			phasecounter <= 0;
		end else begin
			phasecounter <= phasecounter + step;
		end
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

	reg signed [15:0]fullamp_r = 0;

	always @(posedge clk24)
	begin
		current_sample <= wavetable[wrpointer];
		next_sample <= wavetable[wrpointernext];
		fract <= {{8{1'b0}}, phasecounter[17:0]};
		shot_interp <= interpolation[43:28];
		fullamp_r <= interpolation[43:28] + {current_sample[7:0], {8{1'b0}}};
		fullamp <= fullamp_r;
		soundout <= amp_sample[23:8];
	end

	always @*
	begin
		sample_diff = {next_sample, {18{1'd0}}} - {current_sample, {18{1'd0}}};
		short_diff = next_sample - current_sample;
		interpolation = sample_diff * fract;
		amp_sample = fullamp * amplitude;
	end
	/* Wavetable interpolation */

	initial
	begin
		$readmemh("ram.data", wavetable, 0, 255);
	end

endmodule