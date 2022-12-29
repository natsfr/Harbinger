`default_nettype none

module i2s(clkin, sound, ready, mck, sck, sd, lrck);

	input wire clkin;

	input wire [31:0]sound;

	output reg ready = 0;

	output wire mck;
	output wire sck;
	output wire sd;
	output wire lrck;

	parameter ENABLE_SCK		= 1'd1;

	reg sck_reg = 0;
	reg lrck_reg = 0;
	reg sd_reg = 0;

	assign sck = sck_reg & ENABLE_SCK;
	assign lrck = lrck_reg;
	assign sd = sd_reg;

    `ifdef SPARTAN7
        ODDR #(
            .DDR_CLK_EDGE("SAME_EDGE"), // "OPPOSITE_EDGE" or "SAME_EDGE" 
            .INIT(1'b0),    // Initial value of Q: 1'b0 or 1'b1
            .SRTYPE("SYNC") // Set/Reset type: "SYNC" or "ASYNC" 
        ) ODDR_mck (
            .Q(mck),   // 1-bit DDR output
            .C(clkin),   // 1-bit clock input
            .CE(1'b1), // 1-bit clock enable input
            .D1(1'b1), // 1-bit data input (positive edge)
            .D2(1'b0) // 1-bit data input (negative edge)
        );
    `else // ICE40
     	SB_IO	#(
            .PIN_TYPE(6'b0100_01)
        ) oddr(
            .OUTPUT_CLK(clkin),
            .CLOCK_ENABLE(1'b1),
            .D_OUT_0(1),
            .D_OUT_1(0),
            .OUTPUT_ENABLE(1'b1),
            .PACKAGE_PIN(mck)
        );
    `endif

	// Beware all ratio should be integer
	// This is the ratio between MCK and LRCK
	parameter LRCK_RATIO = 16'd256;
	parameter SCK_RATIO = 16'd8;

	reg [15:0]lrck_counter = 0;
	reg [2:0]sck_counter = 0;
	reg [7:0]bit_counter = 0;

	// LRCK and SD should be set on falling edge of SCK when SCK is activated
	reg [31:0]sound_reg = 0;

	always @ (posedge clkin)
	begin
		ready <= 0;

		lrck_counter <= lrck_counter + 1;
		sck_counter <= sck_counter + 1;

		if (sck_counter == SCK_RATIO/2-1) begin
			sck_reg <= 1;
		end else if (sck_counter == SCK_RATIO-1) begin
			sck_reg <= 0;
			sck_counter <= 0;
			bit_counter <= bit_counter + 1;
			sd_reg <= sound_reg[31-bit_counter];
			if (bit_counter == 31) begin
				bit_counter <= 0;
			end
		end

		if (lrck_counter == LRCK_RATIO/2-1) begin // Right channel
			ready <= 1; // We ask for the next sample
			lrck_reg <= 1;
		end else if (lrck_counter == LRCK_RATIO-1) begin // Left channel
			lrck_reg <= 0;
			lrck_counter <= 0;

			sound_reg <= sound;
		end
	end

endmodule