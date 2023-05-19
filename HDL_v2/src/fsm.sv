`timescale 1ns / 1ps
`default_nettype none

module fsm_brain(FSM_CMD cmd, VC_PARAM sel_int, output reg [7:0]selvoice, output reg [7:0]trig);
    
    parameter IDLE =        4'd0;
    parameter SET_VOICE =   4'd1;
    parameter TOG_VOICES =  4'd2;
    
    logic [3:0]state = IDLE;
    logic [15:0]counter = 0;
    
    parameter NOP =         4'd0;
    parameter SET_CMD =     4'd1;
    parameter TOGGLE_VC =   4'd2;
    
    logic [3:0]cmd_word;
    logic [7:0]cmd_voices;
    
    always @*
    begin
        cmd_word = cmd.cmd_data[31:28];
        cmd_voices = cmd.cmd_data[27:20];
    end
    
    logic [7:0]selected_voices = 0;
    
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
        cmd.cmd_data_read <= 1;
        selvoice <= 0;
        if (cmd.cmd_data_valid) begin
            case(state)
                IDLE: begin
                    case(cmd_word)
                        SET_CMD: begin
                            state <= SET_VOICE;
                            selected_voices <= cmd_voices;
                        end
                        TOGGLE_VC: begin
                            trig[0] <= (cmd_voices[0] == 1) ? 1 : 0;
                            trig[1] <= (cmd_voices[1] == 1) ? 1 : 0;
                            trig[2] <= (cmd_voices[2] == 1) ? 1 : 0;
                            trig[3] <= (cmd_voices[3] == 1) ? 1 : 0;
                            trig[4] <= (cmd_voices[4] == 1) ? 1 : 0;
                            trig[5] <= (cmd_voices[5] == 1) ? 1 : 0;
                        end
                    endcase
                end
                SET_VOICE: begin
                    counter <= counter + 16'd1;
                    case(set_state)
                        AT_TIME_SET: begin
                            sel_int.at_time[counter] <= cmd.cmd_data;
                            if (counter == 5) begin
                                set_state <= AT_INC_SET;
                                counter <= 0;
                            end
                        end
                        AT_INC_SET: begin
                            sel_int.at_inc[counter] <= cmd.cmd_data;
                            if (counter == 5) begin
                                set_state <= DE_TIME_SET;
                                counter <= 0;
                            end
                        end
                        DE_TIME_SET: begin
                            sel_int.de_time[counter] <= cmd.cmd_data;
                            if (counter == 5) begin
                                set_state <= DE_INC_SET;
                                counter <= 0;
                            end
                        end
                        DE_INC_SET: begin
                            sel_int.de_inc[counter] <= cmd.cmd_data;
                            if (counter == 5) begin
                                set_state <= SU_TIME_SET;
                                counter <= 0;
                            end
                        end
                        SU_TIME_SET: begin
                            sel_int.su_time[counter] <= cmd.cmd_data;
                            if (counter == 5) begin
                                set_state <= SU_LVL_SET;
                                counter <= 0;
                            end
                        end
                        SU_LVL_SET: begin
                            sel_int.su_lvl[counter] <= cmd.cmd_data;
                            if (counter == 5) begin
                                set_state <= RE_TIME_SET;
                                counter <= 0;
                            end
                        end
                        RE_TIME_SET: begin
                            sel_int.re_time[counter] <= cmd.cmd_data;
                            if (counter == 5) begin
                                set_state <= RE_INC_SET;
                                counter <= 0;
                            end
                        end
                        RE_INC_SET: begin
                            sel_int.re_inc[counter] <= cmd.cmd_data;
                            if (counter == 5) begin
                                set_state <= AMP_SET;
                                counter <= 0;
                            end
                        end
                        AMP_SET: begin
                            sel_int.amplitude[counter] <= cmd.cmd_data;
                            if (counter == 5) begin
                                set_state <= MODIN_1;
                                counter <= 0;
                            end
                        end
                        MODIN_1: begin
                            if (counter == 0) begin
                                sel_int.modin_1 <= cmd.cmd_data;
                            end else begin
                                sel_int.modin_2 <= cmd.cmd_data;
                            end
                            if (counter == 1) begin
                                selvoice <= selected_voices;
                                set_state <= AT_TIME_SET;
                                counter <= 0;
                                state <= IDLE;
                            end
                        end
                    endcase
                end
            endcase
        end
    end
    
endmodule 
