`default_nettype none

module midi_fsm(clk, midi_word, midi_valid, midi_clk, trig_out, freq_out, leds);


	input wire clk;
	input wire [7:0]midi_word;
	input wire midi_valid;

	output wire midi_clk;

	output reg [5:0]trig_out;
	output wire [5*32-1:0]freq_out;

	output reg [7:0]leds;


	parameter NBNOTE			= 8'd6;
	parameter MIDI_CHAN			= 4'd02;

	// Midi clock value
	// 24 tick quarter note
	// For now we don't implement a sequencer but can be usefull
	// to integrate a MIDI clock to CV
	// To be use with Song Position message
	localparam TIME_CLOCK		= 8'hF8;
	localparam TIME_START		= 8'hFA;
	localparam TIME_CONT		= 8'hFB;
	localparam TIME_STOP		= 8'hFC;

	localparam MCLOCK_STOP		= 2'd0;
	localparam MCLOCK_RUN		= 2'd1;

	reg [1:0]mclock_state = MCLOCK_STOP;

	always @(posedge clk)
	begin
		midi_clk <= 0;
		if (midi_valid) begin
			if(midi_word == TIME_CLOCK) begin
				midi_clk <= 1;
			end
		end
	end

	// Midi note
	localparam NOTE_ON			= 4'h9;
	localparam NOTE_OFF			= 4'h8;
	localparam PKP				= 4'hA; // Poly Key Pressure
	localparam CC				= 4'hB; // Control change
	localparam PC 				= 4'hC; // Program change
	localparam CP 				= 4'hD; // Channel Pressure
	localparam PITCH_BEND		= 4'hE;

	localparam IDLE				= 4'h0;
	localparam NOTE_ON_STATE	= 4'h1;
	localparam NOTE_OFF_STATE	= 4'h2;

	localparam FETCH_NOTE		= 1'd0;
	localparam FETCH_VELO		= 1'd1;

	reg [3:0]voice_state = IDLE;
	reg [7:0]previous_word = 0;
	reg note_state = FETCH_NOTE;

	always @(posedge clk)
	begin
		if (midi_valid) begin
			previous_word <= midi_word;
			leds <= midi_word;
			case (voice_state)
				IDLE: begin
					if (midi_word[3:0] == MIDI_CHAN) begin
						if (midi_word[7:4] == NOTE_ON) begin
							voice_state <= NOTE_ON_STATE;
							note_state <= FETCH_NOTE;
						end else if (midi_word[7:4] == NOTE_OFF) begin
							voice_state <= NOTE_OFF_STATE;
							note_state <= FETCH_NOTE;
						end
					end
				end

				NOTE_ON_STATE: begin
					leds <= 2;
					if (note_state == FETCH_NOTE) begin
						note_state <= FETCH_VELO;
						trig_out[0] <= 1;
						leds <= 8;
					end else if (note_state == FETCH_VELO) begin
						voice_state <= IDLE;
						note_state <= FETCH_NOTE;
					end
				end

				NOTE_OFF_STATE: begin
					leds <= 4;
					if (note_state == FETCH_NOTE) begin
						note_state <= FETCH_VELO;
						trig_out[0] <= 0;
						leds <= 16;
					end else if (note_state == FETCH_VELO) begin
						voice_state <= IDLE;
						note_state <= FETCH_NOTE;
					end
				end
			endcase
		end
	end

endmodule