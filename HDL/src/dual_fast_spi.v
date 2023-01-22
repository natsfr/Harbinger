`timescale 1ns / 1ps
`default_nettype none

module dual_fast_spi(
    sck_in, cs_in, mosi0_in, mosi1_in,
    synth_clk, synth_data, data_valid, read_data,
    busy
    );
    
    input wire sck_in;
    input wire cs_in;
    input wire mosi0_in;
    input wire mosi1_in;
    
    input wire synth_clk;
    input wire read_data;
    output wire [31:0]synth_data;
    output wire data_valid;
    
    output reg busy = 0;
    
    reg [31:0]spi_data;
    wire fifo_full;
    
    wire fifo_empty;
    //assign data_valid = !fifo_empty;
    
    wire real_valid;
    assign data_valid = real_valid;
    
    reg write_data = 0;
    
    // Fifo interface
    `ifdef SPARTAN7
        fifo_generator_0 cc_fifo(.wr_clk(sck_in), .din(spi_data), .full(fifo_full), .wr_en(write_data),
                                .rd_clk(synth_clk), .dout(synth_data), .empty(fifo_empty), .rd_en(read_data), .valid(real_valid), .rst(0));
	`else // ICE40

	`endif
	
	reg [7:0]bitcnt = 0;
	
	localparam NB_BIT = 32;
	
	always @(posedge sck_in)
	begin
	   bitcnt <= 0;
	   write_data <= 0;
	   spi_data <= 0;
	   if (!cs_in) begin
	       spi_data <= {spi_data[29:0], mosi1_in, mosi0_in};
	       bitcnt <= bitcnt + 1;
	       if(bitcnt == ((NB_BIT >> 1) - 1)) begin
	           bitcnt <= 0;
	           write_data <= 1;
	       end
	   end else begin
	   
	   end
	end
	
	(* ASYNC_REG = "TRUE" *)reg reg_0;
	
	always @(posedge synth_clk)
	begin
	   reg_0 <= !cs_in;
	   busy <= reg_0;
	end
	
endmodule
