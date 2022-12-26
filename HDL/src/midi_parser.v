`default_nettype none

module midi_fsm(clk, midi_word, midi_valid, midi_clk, trig_out, freq_out, leds);


	input wire clk;
	input wire [7:0]midi_word;
	input wire midi_valid;

	output reg midi_clk;

	output reg [5:0]trig_out;
	output wire [6*16-1:0]freq_out;

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

	localparam FETCH_NOTE		= 2'd0;
	localparam FETCH_VELO		= 2'd1;
	localparam RUNNING_STATUS	= 2'd2;

	reg [15:0]note_rom_0[0:127];
	reg [15:0]note_rom_1[0:127];
	reg [15:0]note_rom_2[0:127];
	reg [15:0]note_rom_3[0:127];
	reg [15:0]note_rom_4[0:127];
	reg [15:0]note_rom_5[0:127];
	reg [15:0]freq_0;
	reg [15:0]freq_1;
	reg [15:0]freq_2;
	reg [15:0]freq_3;
	reg [15:0]freq_4;
	reg [15:0]freq_5;

	assign freq_out = {freq_5, freq_4, freq_3, freq_2, freq_1, freq_0};

	reg [7:0]active_note[0:5];

	reg [3:0]voice_state = IDLE;
	reg [7:0]previous_word = 0;
	reg [1:0]note_state = FETCH_NOTE;

	always @(posedge clk)
	begin
		if (midi_valid) begin
			previous_word <= midi_word;
			leds[7] <= trig_out[0];
			leds[6] <= trig_out[1];
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
						
						leds <= 8;

						if(midi_word[7:4] == NOTE_OFF) begin
							note_state <= FETCH_NOTE;
							voice_state <= NOTE_OFF_STATE;
						end else if (midi_word[7] == 1'b1) begin
							note_state <= FETCH_NOTE; // Ignore all status message
						end else if(active_note[0] == 0) begin
							active_note[0] <= midi_word;
							trig_out[0] <= 1;
							freq_0 <= note_rom_0[midi_word];
						end else if(active_note[1] == 0) begin
							active_note[1] <= midi_word;
							trig_out[1] <= 1;
							freq_1 <= note_rom_1[midi_word];
						end else if(active_note[2] == 0) begin
							active_note[2] <= midi_word;
							trig_out[2] <= 1;
							freq_2 <= note_rom_2[midi_word];
						end else if(active_note[3] == 0) begin
							active_note[3] <= midi_word;
							trig_out[3] <= 1;
							freq_3 <= note_rom_3[midi_word];
						end else if(active_note[4] == 0) begin
							active_note[4] <= midi_word;
							trig_out[4] <= 1;
							freq_4 <= note_rom_4[midi_word];
						end else if(active_note[5] == 0) begin
							active_note[5] <= midi_word;
							trig_out[5] <= 1;
							freq_5 <= note_rom_5[midi_word];
						end

					end else if (note_state == FETCH_VELO) begin
						voice_state <= NOTE_ON_STATE; // Running status crap
						note_state <= FETCH_NOTE;
					end
				end

				NOTE_OFF_STATE: begin
					leds <= 4;
					if (note_state == FETCH_NOTE) begin
						note_state <= FETCH_VELO;
						leds <= 16;

						if(midi_word[7:4] == NOTE_ON) begin
							note_state <= FETCH_NOTE;
							voice_state <= NOTE_ON_STATE;
						end else if (midi_word[7] == 1'b1) begin
							note_state <= FETCH_NOTE; // Ignore all status message
						end else if(active_note[0] == midi_word) begin
							active_note[0] <= 0;
							trig_out[0] <= 0;
						end else if(active_note[1] == midi_word) begin
							active_note[1] <= 0;
							trig_out[1] <= 0;
						end else if(active_note[2] == midi_word) begin
							active_note[2] <= 0;
							trig_out[2] <= 0;
						end else if(active_note[3] == midi_word) begin
							active_note[3] <= 0;
							trig_out[3] <= 0;
						end else if(active_note[4] == midi_word) begin
							active_note[4] <= 0;
							trig_out[4] <= 0;
						end else if(active_note[5] == midi_word) begin
							active_note[5] <= 0;
							trig_out[5] <= 0;
						end

					end else if (note_state == FETCH_VELO) begin
						voice_state <= NOTE_OFF_STATE; // Running status crap
						note_state <= FETCH_NOTE;
					end
				end
			endcase
		end
	end

	initial
	begin
		$readmemh("midi_freq.data", note_rom_0, 0, 127);
		$readmemh("midi_freq.data", note_rom_1, 0, 127);
		$readmemh("midi_freq.data", note_rom_2, 0, 127);
		$readmemh("midi_freq.data", note_rom_3, 0, 127);
		$readmemh("midi_freq.data", note_rom_4, 0, 127);
		$readmemh("midi_freq.data", note_rom_5, 0, 127);
		active_note[0] = 0;
		active_note[1] = 0;
		active_note[2] = 0;
		active_note[3] = 0;
		active_note[4] = 0;
		active_note[5] = 0;
	end

endmodule