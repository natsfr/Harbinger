`timescale 1ns / 1ps
`default_nettype none

module voice(clk24,
    trig, out_mix,
    freq0, freq1, freq2, freq3, freq4, freq5,
    write, addr, param,
    modsel,
    sound_output
    );
    
    input wire clk24;
    
    input wire trig;
    input wire [5:0]out_mix;
    
    input wire signed [15:0]freq0;
    input wire signed [15:0]freq1;
    input wire signed [15:0]freq2;
    input wire signed [15:0]freq3;
    input wire signed [15:0]freq4;
    input wire signed [15:0]freq5;
    
    input wire write;
    input wire [5:0]addr;
    input wire [31:0]param;
    
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
    
    reg [31:0]parameters[0:50]; // repeat 6 times the 8 parameters + 3 times 32 bits (6 times 16 bit) amplitude
    
    assign op0_modin_sel = modsel[2:0];
    assign op1_modin_sel = modsel[5:3];
    assign op2_modin_sel = modsel[8:6];
    assign op3_modin_sel = modsel[11:9];
    assign op4_modin_sel = modsel[14:12];
    assign op5_modin_sel = modsel[17:15];
    
    wire [31:0]amp0 = parameters[48];
    wire [31:0]amp1 = parameters[49];
    wire [31:0]amp2 = parameters[50];
    
    assign op0_amp = amp0[31:16];
    assign op1_amp = amp0[15:0];
    
    assign op2_amp = amp1[31:16];
    assign op3_amp = amp1[15:0];
    
    assign op4_amp = amp2[31:16];
    assign op5_amp = amp2[15:0];
    
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

	operator op0(.clk24(clk24), .trig(trig), .modin(op0_modin), .phaseinc(op0_freq), 
		.At_time(parameters[0]), .De_time(parameters[1]), .Su_time(parameters[2]), .Re_time(parameters[3]),
		.At_inc(parameters[4]), .De_inc(parameters[5]), .Su_lvl(parameters[6]), .Re_inc(parameters[7]),
		.amplitude(op0_amp), .soundout(op0_out));
        
	operator op1(.clk24(clk24), .trig(trig), .modin(op1_modin), .phaseinc(op1_freq), 
		.At_time(parameters[8]), .De_time(parameters[9]), .Su_time(parameters[10]), .Re_time(parameters[11]),
		.At_inc(parameters[12]), .De_inc(parameters[13]), .Su_lvl(parameters[14]), .Re_inc(parameters[15]),
		.amplitude(op1_amp), .soundout(op1_out));
		
    operator op2(.clk24(clk24), .trig(trig), .modin(op2_modin), .phaseinc(op2_freq), 
		.At_time(parameters[16]), .De_time(parameters[17]), .Su_time(parameters[18]), .Re_time(parameters[19]),
		.At_inc(parameters[20]), .De_inc(parameters[21]), .Su_lvl(parameters[22]), .Re_inc(parameters[23]),
		.amplitude(op2_amp), .soundout(op2_out));
		
    operator op3(.clk24(clk24), .trig(trig), .modin(op3_modin), .phaseinc(op3_freq), 
		.At_time(parameters[24]), .De_time(parameters[25]), .Su_time(parameters[26]), .Re_time(parameters[27]),
		.At_inc(parameters[28]), .De_inc(parameters[29]), .Su_lvl(parameters[30]), .Re_inc(parameters[31]),
		.amplitude(op3_amp), .soundout(op3_out));
		
    operator op4(.clk24(clk24), .trig(trig), .modin(op4_modin), .phaseinc(op4_freq), 
		.At_time(parameters[32]), .De_time(parameters[33]), .Su_time(parameters[34]), .Re_time(parameters[35]),
		.At_inc(parameters[36]), .De_inc(parameters[37]), .Su_lvl(parameters[38]), .Re_inc(parameters[39]),
		.amplitude(op4_amp), .soundout(op4_out));
		
    operator op5(.clk24(clk24), .trig(trig), .modin(op5_modin), .phaseinc(op5_freq), 
		.At_time(parameters[40]), .De_time(parameters[41]), .Su_time(parameters[42]), .Re_time(parameters[43]),
		.At_inc(parameters[44]), .De_inc(parameters[45]), .Su_lvl(parameters[46]), .Re_inc(parameters[47]),
		.amplitude(op5_amp), .soundout(op5_out));
		
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
	
	always @(posedge clk24)
	begin
	   if(write == 1'b1) begin
	       parameters[addr] <= param;
	   end
	   op0_freq <= freq0;
	   op1_freq <= freq1;
	   op2_freq <= freq2;
	   op3_freq <= freq3;
	   op4_freq <= freq4;
	   op5_freq <= freq5;
	end
	
    initial begin
        parameters[0] <= 32'd2457500;
        parameters[1] <= 32'd12287;
        parameters[2] <= 32'd2457500;
        parameters[3] <= 32'd24575;
        parameters[4] <= 32'd873;
        parameters[5] <= -32'd87371;
        parameters[6] <= 32'h40000000;
        parameters[7] <= -32'd43689;
        
        parameters[8] <= 32'd2457500;
        parameters[9] <= 32'd12287;
        parameters[10] <= 32'd2457500;
        parameters[11] <= 32'd24575;
        parameters[12] <= 32'd873;
        parameters[13] <= -32'd87371;
        parameters[14] <= 32'h40000000;
        parameters[15] <= -32'd43689;
        
        parameters[16] <= 32'd2457500;
        parameters[17] <= 32'd12287;
        parameters[18] <= 32'd2457500;
        parameters[19] <= 32'd24575;
        parameters[20] <= 32'd873;
        parameters[21] <= -32'd87371;
        parameters[22] <= 32'h40000000;
        parameters[23] <= -32'd43689;
        
        parameters[24] <= 32'd2457500;
        parameters[25] <= 32'd12287;
        parameters[26] <= 32'd2457500;
        parameters[27] <= 32'd24575;
        parameters[28] <= 32'd873;
        parameters[29] <= -32'd87371;
        parameters[30] <= 32'h40000000;
        parameters[31] <= -32'd43689;
        
        parameters[32] <= 32'd2457500;
        parameters[33] <= 32'd12287;
        parameters[34] <= 32'd2457500;
        parameters[35] <= 32'd24575;
        parameters[36] <= 32'd873;
        parameters[37] <= -32'd87371;
        parameters[38] <= 32'h40000000;
        parameters[39] <= -32'd43689;
        
        parameters[40] <= 32'd2457500;
        parameters[41] <= 32'd12287;
        parameters[42] <= 32'd2457500;
        parameters[43] <= 32'd24575;
        parameters[44] <= 32'd873;
        parameters[45] <= -32'd87371;
        parameters[46] <= 32'h40000000;
        parameters[47] <= -32'd43689;
        
        parameters[48] <= 0;
        parameters[49] <= 0;
        parameters[50] <= 0;
    end
endmodule
