`timescale 1ns / 1ps
`default_nettype none

module voice(input wire clk147, input wire trig, input wire select, VC_PARAM vc, output wire signed [15:0]sample);

	parameter SIZE = 32;
	
	/*
	 * For 32bit:
	 * Fclk = 24.576MHz (147.456MHz / 6)
	 * Fres = Fclk / 2^n = 0.0057220458984375Hz
	 * For Fout = 24kHz
	 * M = (Fout*2^n)/Fclk = 4194304
	 */
	 
	
	// Cleaner parameter storage
	logic signed [SIZE-1:0]freq[0:5]; // Frequency settings
	logic [31:0]at_time[0:5]; // Attack time for each operator
	logic signed [31:0]at_inc[0:5]; // Attack level step
	logic [31:0]de_time[0:5]; // Decay time
	logic signed [31:0]de_inc[0:5]; // Decay level step
	logic [31:0]su_time[0:5]; // Sustain time
	logic signed [31:0]su_lvl[0:5]; // Sustain level
	logic [31:0]re_time[0:5]; // Release time
	logic signed [31:0]re_inc[0:5]; // Release level step
	
	logic signed [31:0]amplitude[0:5]; // Override the ADSR for an operator (usefull for internal operator)
	
	logic [31:0]modin_1;
	logic [31:0]modin_2;
	
	logic [5:0]modin_op[0:5];
	
	assign modin_op[0] = modin_1[5:0];
	assign modin_op[1] = modin_1[11:6];
	assign modin_op[2] = modin_1[17:12];
	assign modin_op[3] = modin_1[23:18];
	assign modin_op[4] = modin_1[29:24];
	assign modin_op[5] = modin_2[5:0];
	logic [5:0]outmix = modin_2[11:6];
	
	// Why those fucking interface can't be linked directly ?
	always_ff @(posedge clk147)
	begin
	   if (select) begin
           freq <= vc.freq;
           at_time <= vc.at_time;
           at_inc <= vc.at_inc;
           de_time <= vc.de_time;
           de_inc <= vc.de_inc;
           su_time <= vc.su_time;
           su_lvl <= vc.su_lvl;
           re_time <= vc.re_time;
           re_inc <= vc.re_inc;
           amplitude <= vc.amplitude;
           modin_1 <= vc.modin_1;
           modin_2 <= vc.modin_2;
	   end
	end
	
	// Main process calculating the 6 operator
	// Each 6 cycle all the operator value are generated and used as input for next sample
	logic [SIZE-1:0]op_pcount[0:5];
	logic signed [SIZE-1:0]op_step[0:5];
	logic [5:0]op_selector = 0;
	logic signed [15:0]op_sample[0:5];
	logic signed [SIZE-1:0]op_modin[0:5];
	logic signed [15:0]samples[0:5];
	logic signed [15:0]reg_samples[0:5];
	logic signed [18:0]mix_out;
	
	assign sample = mix_out[18:3];
	
	logic [31:0]op_adsr_count[0:5];
	logic signed [31:0]op_adsr_amp[0:5];
	
	localparam IDLE			= 4'd0;
	localparam ATTACK		= 4'd1;
	localparam DECAY		= 4'd2;
	localparam SUSTAIN		= 4'd3;
	localparam RELEASE		= 4'd4;
	
	logic [3:0]op_state[0:5] = {IDLE, IDLE, IDLE, IDLE, IDLE, IDLE};
	
	always @*
	begin
	   op_step[op_selector] = freq[op_selector] + op_modin[op_selector];
	end
	
	// Wavetable (could be customized in the future)
	logic signed [7:0]wavetable[0:255];
	logic signed [7:0]wavetable2[0:255];
	
	logic [SIZE-1:0]current_counter = op_pcount[op_selector];
	logic [7:0]wrpointer = current_counter[SIZE-1:SIZE-8];
	logic [7:0]wrpointer_next = wrpointer + 1;
	
	logic trigged = 0;
	
	// Calculate phase counter and ADSR
	always_ff @(posedge clk147)
	begin
		// Continuous cycling through operator
		op_selector <= op_selector + 1;
		op_pcount[op_selector] <= op_pcount[op_selector] + op_step[op_selector];
		trigged <= trig;
		
		// Back each operator output to use them for sample output and internal modulation
		if (op_selector == 0) begin
		    reg_samples[0] <= (outmix[0] == 1) ? samples[0] : 0;
            reg_samples[1] <= (outmix[1] == 1) ? samples[1] : 0;
            reg_samples[2] <= (outmix[2] == 1) ? samples[2] : 0;
            reg_samples[3] <= (outmix[3] == 1) ? samples[3] : 0;
            reg_samples[4] <= (outmix[4] == 1) ? samples[4] : 0;
            reg_samples[5] <= (outmix[5] == 1) ? samples[5] : 0;
		end else if(op_selector == 1) begin
		    mix_out <= reg_samples[0] + reg_samples[1] + reg_samples[2] + reg_samples[3] + reg_samples[4] + reg_samples[5];
		end
		
		// Calculate modulation input
		op_modin[op_selector] <= ((modin_op[op_selector][0] == 1) ? reg_samples[0] : 0) +
		                          ((modin_op[op_selector][1] == 1) ? reg_samples[1] : 0) +
		                          ((modin_op[op_selector][2] == 1) ? reg_samples[2] : 0) +
		                          ((modin_op[op_selector][3] == 1) ? reg_samples[3] : 0) +
		                          ((modin_op[op_selector][4] == 1) ? reg_samples[4] : 0) +
		                          ((modin_op[op_selector][5] == 1) ? reg_samples[5] : 0); 
		
		case(op_state[op_selector])
			IDLE: begin
				op_pcount[op_selector] <= 0;
				if (trigged) begin
					op_state[op_selector] <= ATTACK;
				end
			end
			ATTACK: begin
				op_adsr_count[op_selector] <= op_adsr_count[op_selector] + 1;
				op_adsr_amp[op_selector] <= op_adsr_amp[op_selector] + at_inc[op_selector];
				
				if (trigged == 1'b0) begin
					op_state[op_selector] <= RELEASE;
					op_adsr_count[op_selector] <= 0;
				end else if (op_adsr_count[op_selector] == at_time[op_selector]) begin
					op_state[op_selector] <= DECAY;
					op_adsr_count[op_selector] <= 0;
				end
			end
			DECAY: begin
				op_adsr_count[op_selector] <= op_adsr_count[op_selector] + 1;
				op_adsr_amp[op_selector] <= op_adsr_amp[op_selector] + de_inc[op_selector];
				
				if (trigged == 1'b0) begin
					op_state[op_selector] <= RELEASE;
					op_adsr_count[op_selector] <= 0;
				end else if (op_adsr_count[op_selector] == de_time[op_selector]) begin
					op_state[op_selector] <= SUSTAIN;
					op_adsr_count[op_selector] <= 0;
				end
			end
			SUSTAIN: begin
				op_adsr_count[op_selector] <= op_adsr_count[op_selector] + 1;
				op_adsr_amp[op_selector] <= su_lvl[op_selector];
				
				if (trigged == 1'b0) begin
					op_state[op_selector] <= RELEASE;
					op_adsr_count[op_selector] <= 0;
				end else if (op_adsr_count[op_selector] == su_time[op_selector]) begin
					op_state[op_selector] <= RELEASE;
					op_adsr_count[op_selector] <= 0;
				end
			end
			RELEASE: begin
				op_adsr_count[op_selector] <= op_adsr_count[op_selector] + 1;
				op_adsr_amp[op_selector] <= op_adsr_amp[op_selector] + re_inc[op_selector];
				
				if (op_adsr_count[op_selector] == re_time[op_selector]) begin
					op_state[op_selector] <= IDLE;
					op_adsr_count[op_selector] <= 0;
					op_adsr_amp[op_selector] <= 0;
				end
			end
		endcase
	end
	
	// Calculate sample value
	logic signed [7:0]current_sample;
	logic signed [7:0]next_sample;
	logic signed [15:0]fract;
	logic signed [15:0]sdiff;
	logic signed [31:0]interpolation;
	logic signed [15:0]sign_adsr_amp;
	
	always @*
	begin
	   current_sample = wavetable[wrpointer];
	   next_sample = wavetable2[wrpointer_next];
	   fract = { {8{1'b0}}, op_pcount[op_selector][23:16]};
	   sdiff = {next_sample, {8{1'd0}}} - {current_sample, {8{1'd0}}};
	   interpolation = sdiff * fract;
	   
	   if (amplitude[op_selector] != 0) begin
	       sign_adsr_amp = (trig == 1'b1) ? amplitude[op_selector] : 0;
	   end else begin
	       sign_adsr_amp = op_adsr_amp[op_selector][31:16];
	   end
	   
	   samples[op_selector] = (interpolation[15:8] + {current_sample[7:0], {8{1'b0}}}) * sign_adsr_amp;
	end
	
	initial
	begin
		$readmemh("ram.data", wavetable, 0, 255);
		$readmemh("ram.data", wavetable2, 0, 255);
	end
	
endmodule
