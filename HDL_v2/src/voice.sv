`timescale 1ns / 1ps
`default_nettype none

module voice(input wire clk37, FSM_CMD fcmd, input wire cmd_lock, output wire signed [15:0]sample, output reg sample_ready, output reg cmd_detect, output wire trig_debug);

    parameter VOICE_NUM = 0;
	parameter SIZE = 32;
	
	/*
	 * For 32bit:
	 * Fclk = 1.536MHz (36.864MHz / 24)
	 * Fres = Fclk / 2^n = 0.00035762786865234375Hz
	 * For Fout = 24kHz
	 * M = (Fout*2^n)/Fclk = 67108864
	 * For Fout = 440Hz 
	 * 1230329
	 */
	 
	// Cleaner parameter storage
	logic trig;
	logic signed [31:0]freq[0:5]; // Frequency settings
	logic [31:0]at_time[0:5]; // Attack time for each operator
	logic signed [31:0]at_inc[0:5]; // Attack level step
	logic [31:0]de_time[0:5]; // Decay time
	logic signed [31:0]de_inc[0:5]; // Decay level step
	logic [31:0]su_time[0:5]; // Sustain time
	logic signed [31:0]su_lvl[0:5]; // Sustain level
	logic [31:0]re_time[0:5]; // Release time
	logic signed [31:0]re_inc[0:5]; // Release level step
	logic signed [31:0]amplitude[0:5]; // Override the ADSR for an operator (usefull for internal operator)
	
	logic signed [31:0]mod_amp;
	
	logic [31:0]modin_1;
	logic [31:0]modin_2;
	
	logic [5:0]modin_op[0:5];
	
	logic oneshot;
	logic [5:0]shot = 0;
	logic reset_shot = 0;
	
	always_ff @(posedge clk37)
	begin
        modin_op[0] <= modin_1[5:0];
        modin_op[1] <= modin_1[11:6];
        modin_op[2] <= modin_1[17:12];
        modin_op[3] <= modin_1[23:18];
        modin_op[4] <= modin_1[29:24];
        modin_op[5] <= modin_2[5:0];
        oneshot <= modin_1[30];
	end
	
	logic [5:0]outmix = modin_2[11:6];
                                            
    parameter IDLE =        4'd0;
    parameter SET_VOICE =   4'd1;
    parameter TOG_VOICES =  4'd2;
    parameter SETF =        4'd3;
    
    logic [3:0]state = IDLE;
    logic [15:0]counter = 0;
    
    parameter NOP =         4'd0;
    parameter SET_CMD =     4'd1;
    parameter TOGGLE_VC =   4'd2;
    parameter SET_FREQ_CMD =4'd3;
    
    logic [7:0]cmd_word;
    logic [7:0]cmd_voices;
    
    always @*
    begin
        cmd_word = fcmd.cmd_data[31:24];
        cmd_voices = fcmd.cmd_data[23:16];
    end
    
    parameter AT_TIME_SET =     4'd0;
    parameter AT_INC_SET =      4'd1;
    parameter DE_TIME_SET =     4'd2;
    parameter DE_INC_SET =      4'd3;
    parameter SU_TIME_SET =     4'd4;
    parameter SU_LVL_SET =      4'd5;
    parameter RE_TIME_SET =     4'd6;
    parameter RE_INC_SET =      4'd7;
    parameter AMP_SET =         4'd8;
    parameter MODIN_1 =         4'd9;
    
    logic [3:0]set_state = AT_TIME_SET;
    
    always_ff @(posedge fcmd.clk37)
    begin
        if (fcmd.cmd_data_valid) begin
            case(state)
                IDLE: begin
                    cmd_detect <= 0;
                    case(cmd_word)
                        SET_CMD: begin
                            if(cmd_voices[VOICE_NUM] == 1 && cmd_lock == 0) begin
                                cmd_detect <= 1;
                                state <= SET_VOICE;
                            end
                        end
                        TOGGLE_VC: begin
                            if (cmd_lock == 0) begin
                                trig <= (cmd_voices[VOICE_NUM] == 1) ? 1 : 0;
                                if (cmd_voices[VOICE_NUM] == 0) begin
                                    reset_shot <= 1;
                                end else begin
                                    reset_shot <= 0;
                                end
                            end
                        end
                        SET_FREQ_CMD: begin
                            if(cmd_voices[VOICE_NUM] == 1 && cmd_lock == 0) begin
                                cmd_detect <= 1;
                                state <= SETF;
                            end
                        end
                    endcase
                    end
                SET_VOICE: begin
                    counter <= counter + 16'd1;
                    case(set_state)
                        AT_TIME_SET: begin
                            at_time[counter] <= fcmd.cmd_data;
                            if (counter == 5) begin
                                set_state <= AT_INC_SET;
                                counter <= 0;
                            end
                        end
                        AT_INC_SET: begin
                            at_inc[counter] <= fcmd.cmd_data;
                            if (counter == 5) begin
                                set_state <= DE_TIME_SET;
                                counter <= 0;
                            end
                        end
                        DE_TIME_SET: begin
                            de_time[counter] <= fcmd.cmd_data;
                            if (counter == 5) begin
                                set_state <= DE_INC_SET;
                                counter <= 0;
                            end
                        end
                        DE_INC_SET: begin
                            de_inc[counter] <= fcmd.cmd_data;
                            if (counter == 5) begin
                                set_state <= SU_TIME_SET;
                                counter <= 0;
                            end
                        end
                        SU_TIME_SET: begin
                            su_time[counter] <= fcmd.cmd_data;
                            if (counter == 5) begin
                                set_state <= SU_LVL_SET;
                                counter <= 0;
                            end
                        end
                        SU_LVL_SET: begin
                            su_lvl[counter] <= fcmd.cmd_data;
                            if (counter == 5) begin
                                set_state <= RE_TIME_SET;
                                counter <= 0;
                            end
                        end
                        RE_TIME_SET: begin
                            re_time[counter] <= fcmd.cmd_data;
                            if (counter == 5) begin
                                set_state <= RE_INC_SET;
                                counter <= 0;
                            end
                        end
                        RE_INC_SET: begin
                            re_inc[counter] <= fcmd.cmd_data;
                            if (counter == 5) begin
                                set_state <= AMP_SET;
                                counter <= 0;
                            end
                        end
                        AMP_SET: begin
                            amplitude[counter] <= fcmd.cmd_data;
                            if (counter == 5) begin
                                set_state <= MODIN_1;
                                counter <= 0;
                            end
                        end
                        MODIN_1: begin
                            if (counter == 0) begin
                                modin_1 <= fcmd.cmd_data;
                            end else begin
                                modin_2 <= fcmd.cmd_data;
                            end
                            if (counter == 1) begin
                                set_state <= AT_TIME_SET;
                                counter <= 0;
                                state <= IDLE;
                                cmd_detect <= 0;
                            end
                        end
                    endcase
                end
                SETF: begin
                    counter <= counter + 1;
                    
                    if(counter == 6) begin
                        mod_amp <= fcmd.cmd_data;
                    end else if(counter < 6) begin
                        freq[counter] <= fcmd.cmd_data;
                    end
                    if (counter == 6) begin
                        state <= IDLE;
                        counter <= 0;
                        cmd_detect <= 0;
                    end
                end
            endcase
        end
    end
	
	// Main process calculating the 6 operator
	// Each 6 cycle all the operator value are generated and used as input for next sample
	logic [SIZE-1:0]op_pcount[0:5];
	logic signed [SIZE-1:0]op_step[0:5];
	logic [5:0]op_selector = 0;
	logic signed [15:0]op_sample[0:5];
	logic signed [SIZE-1:0]op_modin[0:5];
	logic signed [31:0]samples[0:5];
	logic signed [15:0]reg_samples[0:5];
	logic signed [18:0]mix_out;
	
	logic signed [31:0]modulated_out;
	
	assign modulated_out = $signed(mix_out[18:3]) * $signed(mod_amp[31:16]);
	assign sample = modulated_out[31:16];
	
	logic [31:0]op_adsr_count[0:5];
	logic signed [31:0]op_adsr_amp[0:5];
	
	//localparam IDLE			= 4'd0;
	localparam ATTACK		= 4'd1;
	localparam DECAY		= 4'd2;
	localparam SUSTAIN		= 4'd3;
	localparam RELEASE		= 4'd4;
	
	logic [3:0]op_state[0:5] = {IDLE, IDLE, IDLE, IDLE, IDLE, IDLE};

	
	// Wavetable (could be customized in the future)
	(* ram_style = "block" *)logic signed [7:0]wavetable[0:255];
	(* ram_style = "block" *)logic signed [7:0]wavetable2[0:255];
	
	logic [SIZE-1:0]current_counter = op_pcount[op_selector];
	logic [7:0]wrpointer = current_counter[SIZE-1:SIZE-8];
	logic [7:0]wrpointer_next = wrpointer + 1;
	
	logic trigged = 0;
	
	// Sample buffering
	logic signed [15:0]oldsample;
	
	// Calculate sample value
	logic signed [7:0]current_sample;
	logic signed [7:0]next_sample;
	logic signed [15:0]fract;
	logic signed [15:0]sdiff;
	logic signed [63:0]interpolation;
	logic signed [15:0]sign_adsr_amp;
	
	parameter GET_PAR =        0;
	parameter GET_WAVE =       1;
	parameter CALC =           2;
	parameter STORE =          3;
	
	logic [2:0]calc_state = GET_PAR;
	
	assign trig_debug = trigged;
	
	always_ff @(posedge clk37)
	begin
	   sample_ready <= 0;
	   trigged <= trig;
        case(calc_state)
            GET_PAR: begin
            
                if(op_selector == 0) begin
                    sample_ready <= 1;
                    mix_out <= ((outmix[0] == 1) ? $signed(samples[0][30:15]) : 0) + 
                                ((outmix[1] == 1) ? $signed(samples[1][30:15]) : 0) + 
                                ((outmix[2] == 1) ? $signed(samples[2][30:15]) : 0) + 
                                ((outmix[3] == 1) ? $signed(samples[3][30:15]) : 0) + 
                                ((outmix[4] == 1) ? $signed(samples[4][30:15]) : 0) +
                                ((outmix[5] == 1) ? $signed(samples[5][30:15]) : 0);
                end
                
                op_pcount[op_selector] <= op_pcount[op_selector] + (freq[op_selector] + op_modin[op_selector]);
                
                if (trigged == 0) begin
                    shot[op_selector] <= 0;
                end
                
                case(op_state[op_selector])
                    IDLE: begin
                        op_pcount[op_selector] <= 0;
                        if (trigged && !(oneshot && shot[op_selector])) begin
                            op_state[op_selector] <= ATTACK;
                            shot[op_selector] <= 1;
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
                        
                        if (op_adsr_count[op_selector] == re_time[op_selector] || (op_adsr_amp[op_selector] + re_inc[op_selector]) < 0) begin // Release should always bring back to 0 or close even when releases earlier
                            op_state[op_selector] <= IDLE;
                            op_adsr_count[op_selector] <= 0;
                            op_adsr_amp[op_selector] <= 0;
                        end
                    end
                endcase
                calc_state <= GET_WAVE;
            end
            GET_WAVE: begin
                current_sample <= wavetable[wrpointer];
                //next_sample <= wavetable2[wrpointer_next];
                
                /*fract <= { {8{1'b0}}, op_pcount[op_selector][23:16]};
                interpolation <= {next_sample, {8{1'd0}}} - {current_sample, {8{1'd0}}} * fract;*/
                
                interpolation <= $signed({wavetable2[wrpointer_next], {24{1'd0}}} - {wavetable[wrpointer], {24{1'd0}}}) * $signed({ {8{1'b0}}, op_pcount[op_selector][23:0]});
                
                if (amplitude[op_selector] != 0) begin
                    sign_adsr_amp <= (trigged == 1'b1) ? (amplitude[op_selector][31:16]) : 0;
                end else begin
                    sign_adsr_amp <=  op_adsr_amp[op_selector][31:16];
                end
                calc_state <= CALC;
            end
            CALC: begin
                samples[op_selector] <= $signed({{8'b0} ,interpolation[35:28]} + {current_sample[7:0], {8{1'b0}}}) * sign_adsr_amp;
                //samples[op_selector] <= (({next_sample, {8{1'd0}}} - {current_sample, {8{1'd0}}} * { {8{1'b0}}, op_pcount[op_selector][23:16]}) + {current_sample[7:0], {8{1'b0}}}) * sign_adsr_amp;
                
                calc_state <= STORE;
            end
            STORE: begin
                op_selector <= (op_selector == 5) ? 0 : op_selector + 1;
                
                if(op_selector == 5) begin
                    for (integer k = 0; k < 6; k=k+1) begin
                        op_modin[k] <= ((modin_op[k][0] == 1) ? samples[0][30:15] : 0) +
                                        ((modin_op[k][1] == 1) ? samples[1][30:15] : 0) +
                                        ((modin_op[k][2] == 1) ? samples[2][30:15] : 0) +
                                        ((modin_op[k][3] == 1) ? samples[3][30:15] : 0) +
                                        ((modin_op[k][4] == 1) ? samples[4][30:15] : 0) +
                                        ((modin_op[k][5] == 1) ? samples[5][30:15] : 0);
                    end
                end
                
                calc_state <= GET_PAR;
            end
        endcase
	end
	
    /*generate
        if (VOICE_NUM == 0) begin
           ila_0 deb(.clk(clk37), .probe0(trig_debug), .probe1(calc_state), .probe2(op_state[0]), .probe3(current_sample), .probe4(modulated_out), .probe5(mod_amp), .probe6(fcmd.cmd_data_valid), .probe7(interpolation[35:28]), .probe8(op_adsr_amp[0]), .probe9(mix_out[18:3]));
        end
    endgenerate*/
	
	initial
	begin
		$readmemh("ram.data", wavetable, 0, 255);
		$readmemh("ram.data", wavetable2, 0, 255);
	end
	
endmodule
