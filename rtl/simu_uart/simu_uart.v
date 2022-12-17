`timescale 100ns / 100ps

module top_simu;

reg clk = 0;

always #1 clk = ~clk;

wire [7:0]word;
wire wvalid;

reg uin = 1;

UART_RX urx(.clk(clk), .uart_in(uin), .wvalid(wvalid), .word(word));

reg [15:0]cnt = 0;

reg [7:0]data = 8'hA5;

reg [3:0]bitcnt = 0;

localparam PERIOD = 317;

localparam IDLE		= 0;
localparam START 	= 1;
localparam DATA		= 2;
localparam STOP		= 3;

reg [7:0]state = IDLE;

always @(posedge clk)
begin
	case(state)
		IDLE: begin
			cnt <= cnt + 1;
			if(cnt == 5) begin
				state <= START;
				uin <= 0;
				cnt <= 0;
			end
		end
		START: begin 
			cnt <= cnt + 1;
			if(cnt == PERIOD-1) begin
				state <= DATA;
				uin <= data[bitcnt];
				cnt <= 0;
				bitcnt <= 0;
			end
		end
		DATA: begin
			cnt <= cnt + 1;
			uin <= data[bitcnt];
			if(cnt == PERIOD-1) begin
				bitcnt <= bitcnt + 1;
				cnt <= 0;
				if (bitcnt == 7) begin
					state <= STOP;
					uin <= 1;
					bitcnt <= 0;
				end
			end
		end
		STOP: begin
			cnt <= cnt + 1;
			if(cnt == PERIOD-1) begin
				state <= IDLE;
				cnt <= 0;
			end
		end
	endcase
	

end

initial begin
	$dumpfile("uart_sim.vcd");
	$dumpvars(0, top_simu);
	#5000000
	$stop;
	$finish;
end

endmodule
