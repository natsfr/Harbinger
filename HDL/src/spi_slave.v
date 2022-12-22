`ifndef SIMULATION
`include "generic_macro.vh"
`endif

module spi_slave(clk, sck, mosi, cs, miso,
				data_miso, data_mosi, data_valid, cs_d);

	parameter SIZE = 8;
	
	`ifndef SIMULATION
		parameter DEPTH = `CLOG2(SIZE);
	`endif
	`ifdef SIMULATION
		parameter DEPTH = 4;
	`endif
	
	input wire clk;
	input wire sck;
	input wire cs;
	input wire mosi;
	
	output reg miso;
	
	input wire [SIZE-1:0] data_miso;
	
	output reg [SIZE-1:0] data_mosi = 0;
	
	output reg data_valid = 0;
	output reg cs_d = 0;
	
	// Detect clock edges and latch signals
	reg sck_q = 0;
    reg sck_state = 0;
	reg sck_r_edge = 0;
	reg sck_f_edge = 0;
	
	reg mosi_q = 0;
    reg mosi_state = 0;
    
    reg cs_q = 0;
	
	always @(posedge clk)
	begin
        sck_q <= sck;
		sck_state <= sck_q;
		
		cs_q <= cs;
        cs_d <= cs_q;

		mosi_q <= mosi;
        mosi_state <= mosi_q;
		
		if(!sck) begin
			sck_f_edge <= (!sck_f_edge) ? 1'b1 : 1'b0;
		end else begin
			sck_r_edge <= (!sck_r_edge) ? 1'b1 : 1'b0;
		end
	end
	
	reg [SIZE-1:0]data_mosi_q = 0;
	reg [DEPTH-1:0]rx_cnt = 0;
	
	reg [SIZE-1:0]data_miso_q = 0;
	reg [DEPTH-1:0]tx_cnt = 0;
	
	// Init first bit (skip first edge detection)
	reg init = 0;
	
	// Handle TX and RX
	always @(posedge clk)
	begin
		data_valid <= 0;
		if(!cs) begin
			if(sck_r_edge && init) begin // read on rising
				rx_cnt <= rx_cnt + 1;
				data_mosi_q <= {data_mosi_q[SIZE-2:0], mosi};
				if(rx_cnt == SIZE-1) begin
					data_mosi <= {data_mosi_q[SIZE-2:0], mosi};
					data_valid <= 1'b1;
					rx_cnt <= 0;
				end
			end else if(sck_f_edge) begin // write on falling
				init <= 1; // we tell we already got a low edge
				tx_cnt <= tx_cnt + 1;
				data_miso_q <= {data_miso_q[SIZE-2:0], 1'b0};
				if(tx_cnt == 0) begin
					data_miso_q <= data_miso;
				end else if(tx_cnt == SIZE-1) begin
					tx_cnt <= 0;
				end
			end
		end else begin
			init <= 0;
			tx_cnt <= 0;
			rx_cnt <= 0;
			data_miso_q <= 0;
			data_mosi_q <= 0;
			data_valid <= 0;
		end
	end
	
	// Assign MISO
	always @*
	begin
		miso = data_miso_q[SIZE-1];
	end
	
endmodule
