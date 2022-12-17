`default_nettype none

module UART_RX (clk, uart_in, wvalid, word);

	parameter SPEED = 32'd31500;
	parameter CLKFREQ = 32'd10000000;
	
	localparam EX_PERIOD = CLKFREQ/SPEED-1;
	localparam EX_PER_HALF = CLKFREQ/SPEED/2-1;
	
	input wire clk;
	input wire uart_in;
	output reg wvalid = 0;
	output reg [7:0]word = 0;
	
	reg [15:0]counter = 0;
	
	(* ASYNC_REG = "TRUE" *) reg uin_0 = 1;
	(* ASYNC_REG = "TRUE" *) reg uin_1 = 1;
	
	always @(posedge clk)
	begin
		uin_0 <= uart_in;
		uin_1 <= uin_0;
	end
	
	wire uart_sync = uin_1;
	
	reg [1:0]uedge = 0;
	
	wire redge = (uedge == 2'b01);
	wire fedge = (uedge == 2'b10);
	
	localparam IDLE		= 8'd0;
	localparam START	= 8'd1;
	localparam BITRX	= 8'd2;
	
	reg [7:0]state = IDLE;
	
	reg [3:0]bitcnt = 0;
	
	always @(posedge clk)
	begin
		wvalid <= 0;
		uedge <= {uedge[0], uart_sync}; 
		case (state)
			IDLE: begin
				word <= 0;
				if (fedge) begin
					counter <= 1;
					state <= START;
				end
			end
			
			START: begin
				counter <= counter + 1;
				if (counter == EX_PER_HALF) begin
					if (uedge[0] == 0) begin // We check if was really a start bit and not a glitch
						state <= BITRX;
						counter <= 1;
					end else begin
						state <= IDLE;
						counter <= 0;
					end
				end
			end
			
			BITRX: begin
				counter <= counter + 1;
				if (counter == EX_PERIOD) begin
					counter <= 0;
					bitcnt <= bitcnt + 1;
					word[bitcnt] <= uedge[0];
					if (bitcnt == 7) begin // We should check the stop bit to validate the word
						counter <= 0;
						bitcnt <= 0;
						state <= IDLE;
						wvalid <= 1;
					end
				end
			end
		endcase
	end
	
endmodule
