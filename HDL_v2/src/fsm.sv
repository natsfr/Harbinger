`timescale 1ns / 1ps
`default_nettype none

module fsm_brain(FSM_CMD cmd,  
    output reg signed [31:0]freq[0:5],
    output reg [31:0]at_time[0:5],
    output reg signed [31:0]at_inc[0:5],
    output reg [31:0]de_time[0:5],
    output reg signed [31:0]de_inc[0:5],
    output reg [31:0]su_time[0:5],
    output reg signed [31:0]su_lvl[0:5],
    output reg [31:0]re_time[0:5],
    output reg signed [31:0]re_inc[0:5],
    output reg signed [31:0]amplitude[0:5],
    output reg [31:0]modin_1,
    output reg [31:0]modin_2,
    output reg trig);

    parameter VOICE_NUM =   0;
    
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
    
    logic [3:0]cmd_word;
    logic [7:0]cmd_voices;
    
    always @*
    begin
        cmd_word = cmd.cmd_data[31:28];
        cmd_voices = cmd.cmd_data[27:20];
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
    
    always_ff @(posedge cmd.clk147)
    begin
        if (cmd.cmd_data_valid) begin
            case(state)
                IDLE: begin
                    if(cmd_voices[VOICE_NUM] == 1) begin
                        case(cmd_word)
                            SET_CMD: begin
                                state <= SET_VOICE;
                            end
                            TOGGLE_VC: begin
                                trig <= (cmd_voices[VOICE_NUM] == 1) ? 1 : 0;
                            end
                            SET_FREQ_CMD: begin
                                state <= SETF;
                            end
                        endcase
                    end
                end
                SET_VOICE: begin
                    counter <= counter + 16'd1;
                    case(set_state)
                        AT_TIME_SET: begin
                            at_time[counter] <= cmd.cmd_data;
                            if (counter == 5) begin
                                set_state <= AT_INC_SET;
                                counter <= 0;
                            end
                        end
                        AT_INC_SET: begin
                            at_inc[counter] <= cmd.cmd_data;
                            if (counter == 5) begin
                                set_state <= DE_TIME_SET;
                                counter <= 0;
                            end
                        end
                        DE_TIME_SET: begin
                            de_time[counter] <= cmd.cmd_data;
                            if (counter == 5) begin
                                set_state <= DE_INC_SET;
                                counter <= 0;
                            end
                        end
                        DE_INC_SET: begin
                            de_inc[counter] <= cmd.cmd_data;
                            if (counter == 5) begin
                                set_state <= SU_TIME_SET;
                                counter <= 0;
                            end
                        end
                        SU_TIME_SET: begin
                            su_time[counter] <= cmd.cmd_data;
                            if (counter == 5) begin
                                set_state <= SU_LVL_SET;
                                counter <= 0;
                            end
                        end
                        SU_LVL_SET: begin
                            su_lvl[counter] <= cmd.cmd_data;
                            if (counter == 5) begin
                                set_state <= RE_TIME_SET;
                                counter <= 0;
                            end
                        end
                        RE_TIME_SET: begin
                            re_time[counter] <= cmd.cmd_data;
                            if (counter == 5) begin
                                set_state <= RE_INC_SET;
                                counter <= 0;
                            end
                        end
                        RE_INC_SET: begin
                            re_inc[counter] <= cmd.cmd_data;
                            if (counter == 5) begin
                                set_state <= AMP_SET;
                                counter <= 0;
                            end
                        end
                        AMP_SET: begin
                            amplitude[counter] <= cmd.cmd_data;
                            if (counter == 5) begin
                                set_state <= MODIN_1;
                                counter <= 0;
                            end
                        end
                        MODIN_1: begin
                            if (counter == 0) begin
                                modin_1 <= cmd.cmd_data;
                            end else begin
                                modin_2 <= cmd.cmd_data;
                            end
                            if (counter == 1) begin
                                set_state <= AT_TIME_SET;
                                counter <= 0;
                                state <= IDLE;
                            end
                        end
                    endcase
                end
                SETF: begin
                    counter <= counter + 1;
                    freq[counter] <= cmd.cmd_data;
                    if (counter == 5) begin
                        state <= IDLE;
                        counter <= 0;
                    end
                end
            endcase
        end
    end
    
endmodule 
