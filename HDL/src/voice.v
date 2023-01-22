`timescale 1ns / 1ps
`default_nettype none

module voice(clk24,
    trig, out_mix,
    at_time_0, at_inc_0, de_time_0, de_inc_0, su_time_0, su_lvl_0, re_time_0, re_inc_0, amp_0, freq_0,
    at_time_1, at_inc_1, de_time_1, de_inc_1, su_time_1, su_lvl_1, re_time_1, re_inc_1, amp_1, freq_1,
    at_time_2, at_inc_2, de_time_2, de_inc_2, su_time_2, su_lvl_2, re_time_2, re_inc_2, amp_2, freq_2,
    at_time_3, at_inc_3, de_time_3, de_inc_3, su_time_3, su_lvl_3, re_time_3, re_inc_3, amp_3, freq_3,
    at_time_4, at_inc_4, de_time_4, de_inc_4, su_time_4, su_lvl_4, re_time_4, re_inc_4, amp_4, freq_4,
    at_time_5, at_inc_5, de_time_5, de_inc_5, su_time_5, su_lvl_5, re_time_5, re_inc_5, amp_5, freq_5,
    modsel,
    sound_output
    );
    
    input wire clk24;
    
    input wire trig;
    input wire [5:0]out_mix;

    input wire [31:0]at_time_0;
    input wire signed [31:0]at_inc_0;
    input wire [31:0]de_time_0;
    input wire signed [31:0]de_inc_0;
    input wire [31:0]su_time_0;
    input wire signed [31:0]su_lvl_0;
    input wire [31:0]re_time_0;
    input wire signed [31:0]re_inc_0;
    input wire signed [15:0]amp_0;
    input wire signed [15:0]freq_0;
    
    input wire [31:0]at_time_1;
    input wire signed [31:0]at_inc_1;
    input wire [31:0]de_time_1;
    input wire signed [31:0]de_inc_1;
    input wire [31:0]su_time_1;
    input wire signed [31:0]su_lvl_1;
    input wire [31:0]re_time_1;
    input wire signed [31:0]re_inc_1;
    input wire signed [15:0]amp_1;
    input wire signed [15:0]freq_1;
    
    input wire [31:0]at_time_2;
    input wire signed [31:0]at_inc_2;
    input wire [31:0]de_time_2;
    input wire signed [31:0]de_inc_2;
    input wire [31:0]su_time_2;
    input wire signed [31:0]su_lvl_2;
    input wire [31:0]re_time_2;
    input wire signed [31:0]re_inc_2;
    input wire signed [15:0]amp_2;
    input wire signed [15:0]freq_2;
    
    input wire [31:0]at_time_3;
    input wire signed [31:0]at_inc_3;
    input wire [31:0]de_time_3;
    input wire signed [31:0]de_inc_3;
    input wire [31:0]su_time_3;
    input wire signed [31:0]su_lvl_3;
    input wire [31:0]re_time_3;
    input wire signed [31:0]re_inc_3;
    input wire signed [15:0]amp_3;
    input wire signed [15:0]freq_3;
    
    input wire [31:0]at_time_4;
    input wire signed [31:0]at_inc_4;
    input wire [31:0]de_time_4;
    input wire signed [31:0]de_inc_4;
    input wire [31:0]su_time_4;
    input wire signed [31:0]su_lvl_4;
    input wire [31:0]re_time_4;
    input wire signed [31:0]re_inc_4;
    input wire signed [15:0]amp_4;
    input wire signed [15:0]freq_4;
    
    input wire [31:0]at_time_5;
    input wire signed [31:0]at_inc_5;
    input wire [31:0]de_time_5;
    input wire signed [31:0]de_inc_5;
    input wire [31:0]su_time_5;
    input wire signed [31:0]su_lvl_5;
    input wire [31:0]re_time_5;
    input wire signed [31:0]re_inc_5;
    input wire signed [15:0]amp_5;
    input wire signed [15:0]freq_5;
    
    input wire [17:0]modsel;
    
    output wire signed [15:0]sound_output;
    
    
    // Parameter table
    wire [2:0]op0_modin_sel;
    reg signed [15:0]op0_modin;
    wire signed [15:0]op0_out;
    reg signed [15:0]op0_freq;
    wire signed [15:0]op0_amp;
    
    wire [2:0]op1_modin_sel;
    reg signed [15:0]op1_modin;
    wire signed [15:0]op1_out;
    reg signed [15:0]op1_freq;
    wire signed [15:0]op1_amp;
    
    wire [2:0]op2_modin_sel;
    reg signed [15:0]op2_modin;
    wire signed [15:0]op2_out;
    reg signed [15:0]op2_freq;
    wire signed [15:0]op2_amp;
    
    wire [2:0]op3_modin_sel;
    reg signed [15:0]op3_modin;
    wire signed [15:0]op3_out;
    reg signed [15:0]op3_freq;
    wire signed [15:0]op3_amp;
    
    wire [2:0]op4_modin_sel;
    reg signed [15:0]op4_modin;
    wire signed [15:0]op4_out;
    reg signed [15:0]op4_freq;
    wire signed [15:0]op4_amp;
    
    wire [2:0]op5_modin_sel;
    reg signed [15:0]op5_modin;
    wire signed [15:0]op5_out;
    reg signed [15:0]op5_freq;
    wire signed [15:0]op5_amp;
    
    assign op0_modin_sel = modsel[2:0];
    assign op1_modin_sel = modsel[5:3];
    assign op2_modin_sel = modsel[8:6];
    assign op3_modin_sel = modsel[11:9];
    assign op4_modin_sel = modsel[14:12];
    assign op5_modin_sel = modsel[17:15];
    
    // 6 operator instance
	
	always @*
	begin
	   op0_modin = 0;
	   case(op0_modin_sel)
	       0: begin
	           op0_modin = 0;
	       end
	       1: begin
	           op0_modin = op0_out;
	       end
	       2: begin
	           op0_modin = op1_out;
	       end
	       3: begin
	           op0_modin = op2_out;
	       end
	       4: begin
	           op0_modin = op3_out;
	       end
	       5: begin
	           op0_modin = op4_out;
	       end
	       6: begin
	           op0_modin = op5_out;
	       end
	   endcase
	end
	
	always @*
	begin
	   op1_modin = 0;
	   case(op1_modin_sel)
	       0: begin
	           op1_modin = 0;
	       end
	       1: begin
	           op1_modin = op0_out;
	       end
	       2: begin
	           op1_modin = op1_out;
	       end
	       3: begin
	           op1_modin = op2_out;
	       end
	       4: begin
	           op1_modin = op3_out;
	       end
	       5: begin
	           op1_modin = op4_out;
	       end
	       6: begin
	           op1_modin = op5_out;
	       end
	   endcase
	end

    always @*
	begin
	   op2_modin = 0;
	   case(op2_modin_sel)
	       0: begin
	           op2_modin = 0;
	       end
	       1: begin
	           op2_modin = op0_out;
	       end
	       2: begin
	           op2_modin = op1_out;
	       end
	       3: begin
	           op2_modin = op2_out;
	       end
	       4: begin
	           op2_modin = op3_out;
	       end
	       5: begin
	           op2_modin = op4_out;
	       end
	       6: begin
	           op2_modin = op5_out;
	       end
	   endcase
	end
	
    always @*
	begin
	   op3_modin = 0;
	   case(op3_modin_sel)
	       0: begin
	           op3_modin = 0;
	       end
	       1: begin
	           op3_modin = op0_out;
	       end
	       2: begin
	           op3_modin = op1_out;
	       end
	       3: begin
	           op3_modin = op2_out;
	       end
	       4: begin
	           op3_modin = op3_out;
	       end
	       5: begin
	           op3_modin = op4_out;
	       end
	       6: begin
	           op3_modin = op5_out;
	       end
	   endcase
	end
	
    always @*
	begin
	   op4_modin = 0;
	   case(op4_modin_sel)
	       0: begin
	           op4_modin = 0;
	       end
	       1: begin
	           op4_modin = op0_out;
	       end
	       2: begin
	           op4_modin = op1_out;
	       end
	       3: begin
	           op4_modin = op2_out;
	       end
	       4: begin
	           op4_modin = op3_out;
	       end
	       5: begin
	           op4_modin = op4_out;
	       end
	       6: begin
	           op4_modin = op5_out;
	       end
	   endcase
	end
	
    always @*
	begin
	   op5_modin = 0;
	   case(op5_modin_sel)
	       0: begin
	           op5_modin = 0;
	       end
	       1: begin
	           op5_modin = op0_out;
	       end
	       2: begin
	           op5_modin = op1_out;
	       end
	       3: begin
	           op5_modin = op2_out;
	       end
	       4: begin
	           op5_modin = op3_out;
	       end
	       5: begin
	           op5_modin = op4_out;
	       end
	       6: begin
	           op5_modin = op5_out;
	       end
	   endcase
	end

	operator op0(.clk24(clk24), .trig(trig), .modin(op0_modin), .phaseinc(freq_0), 
		.At_time(at_time_0), .De_time(de_time_0), .Su_time(su_time_0), .Re_time(re_time_0),
		.At_inc(at_inc_0), .De_inc(de_inc_0), .Su_lvl(su_lvl_0), .Re_inc(re_inc_0),
		.amplitude(amp_0), .soundout(op0_out));

	operator op1(.clk24(clk24), .trig(trig), .modin(op1_modin), .phaseinc(freq_1), 
		.At_time(at_time_1), .De_time(de_time_1), .Su_time(su_time_1), .Re_time(re_time_1),
		.At_inc(at_inc_1), .De_inc(de_inc_1), .Su_lvl(su_lvl_1), .Re_inc(re_inc_1),
		.amplitude(amp_1), .soundout(op1_out));
		
    operator op2(.clk24(clk24), .trig(trig), .modin(op2_modin), .phaseinc(freq_2), 
		.At_time(at_time_2), .De_time(de_time_2), .Su_time(su_time_2), .Re_time(re_time_2),
		.At_inc(at_inc_2), .De_inc(de_inc_2), .Su_lvl(su_lvl_2), .Re_inc(re_inc_2),
		.amplitude(amp_2), .soundout(op2_out));
		
    operator op3(.clk24(clk24), .trig(trig), .modin(op3_modin), .phaseinc(freq_3), 
		.At_time(at_time_3), .De_time(de_time_3), .Su_time(su_time_3), .Re_time(re_time_3),
		.At_inc(at_inc_3), .De_inc(de_inc_3), .Su_lvl(su_lvl_3), .Re_inc(re_inc_3),
		.amplitude(amp_3), .soundout(op3_out));
		
    operator op4(.clk24(clk24), .trig(trig), .modin(op4_modin), .phaseinc(freq_4), 
		.At_time(at_time_4), .De_time(de_time_4), .Su_time(su_time_4), .Re_time(re_time_4),
		.At_inc(at_inc_4), .De_inc(de_inc_4), .Su_lvl(su_lvl_4), .Re_inc(re_inc_4),
		.amplitude(amp_4), .soundout(op4_out));
		
    operator op5(.clk24(clk24), .trig(trig), .modin(op5_modin), .phaseinc(freq_5), 
		.At_time(at_time_5), .De_time(de_time_5), .Su_time(su_time_5), .Re_time(re_time_5),
		.At_inc(at_inc_5), .De_inc(de_inc_5), .Su_lvl(su_lvl_5), .Re_inc(re_inc_5),
		.amplitude(amp_5), .soundout(op5_out));
		
	reg signed [17:0]tmp_out;
	reg signed [15:0]op0_tmp_out;
	reg signed [15:0]op1_tmp_out;
	reg signed [15:0]op2_tmp_out;
	reg signed [15:0]op3_tmp_out;
	reg signed [15:0]op4_tmp_out;
	reg signed [15:0]op5_tmp_out;
	
	assign sound_output = tmp_out[17:2];
	
	always @(posedge clk24)
	begin
	   op0_tmp_out <= (out_mix[0] == 1'b1) ? op0_out : 16'd0;
	   op1_tmp_out <= (out_mix[1] == 1'b1) ? op1_out : 16'd0;
	   op2_tmp_out <= (out_mix[2] == 1'b1) ? op2_out : 16'd0;
	   op3_tmp_out <= (out_mix[3] == 1'b1) ? op3_out : 16'd0;
	   op4_tmp_out <= (out_mix[4] == 1'b1) ? op4_out : 16'd0;
	   op5_tmp_out <= (out_mix[5] == 1'b1) ? op5_out : 16'd0;
	   
	   tmp_out <= op0_tmp_out + op1_tmp_out + op2_tmp_out + op3_tmp_out + op4_tmp_out + op5_tmp_out;
	end

endmodule
