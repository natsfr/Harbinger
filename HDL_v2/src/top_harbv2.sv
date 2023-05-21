`default_nettype none
 
 interface FSM_CMD (clk37);
    input logic clk37;
    
    logic cmd_data_valid;
    logic [31:0]cmd_data;
    logic cmd_data_read = 1;
    
    modport fsm(input clk37, input cmd_data_valid, input cmd_data);
 endinterface
 
 module top(clk, midi_in, sck, lrck, mck, sd, leds,
    sck_in, cs_in, mosi0_in, mosi1_in,
    ILED, RGBLEDS);
    
	input wire clk;
	input wire midi_in;
	output wire sck;
	output wire lrck;
	output wire mck;
	output wire sd;
	output wire [7:0]leds;
	
	input wire sck_in;
	input wire cs_in;
	input wire mosi0_in;
	input wire mosi1_in;
	
	output wire [3:0]ILED;
	output wire [2:0]RGBLEDS;
	
	assign ILED = 0;
	assign RGBLEDS = 3'b111;
	
	/*
	 * Clock spec
	 * Codec frequency is 192kHz
	 * 2 main clock 24.576MHz and 36.864MHz
	 * Each oscillator runs at 1.536MHz (36.864/24 <= 4 step per oscillator * 6 oscillator)
	 * 
	 */
	
	wire clk37;
	wire clk37out;
	wire mmcm_lock_37;
	wire mmcm_fb_37;
	
	wire mmcm_lock;
	wire mmcm_fb;
	wire clk24;
	wire clk24buf;
	wire clk24fan;

	MMCME2_BASE #(
		.BANDWIDTH("OPTIMIZED"),   // Jitter programming (OPTIMIZED, HIGH, LOW)
		.CLKFBOUT_MULT_F(64),     // Multiply value for all CLKOUT (2.000-64.000).
		.CLKFBOUT_PHASE(0.0),      // Phase offset in degrees of CLKFB (-360.000-360.000).
		.CLKIN1_PERIOD(83.333),       // Input clock period in ns to ps resolution (i.e. 33.333 is 30 MHz).
		.CLKOUT0_DIVIDE_F(31.250),    // Divide amount for CLKOUT0 (1.000-128.000).

		.DIVCLK_DIVIDE(1),         // Master division value (1-106)
		.REF_JITTER1(0.0),         // Reference input jitter in UI (0.000-0.999).
		.STARTUP_WAIT("FALSE")     // Delays DONE until MMCM is locked (FALSE, TRUE)
	)
	MMCME2_24 (
		// Clock Outputs: 1-bit (each) output: User configurable clock outputs
		.CLKOUT0(clk24),     // 1-bit output: CLKOUT0
		// Feedback Clocks: 1-bit (each) output: Clock feedback ports
		.CLKFBOUT(mmcm_fb),   // 1-bit output: Feedback clock
		.CLKFBOUTB(), // 1-bit output: Inverted CLKFBOUT
		// Status Ports: 1-bit (each) output: MMCM status ports
		.LOCKED(mmcm_lock),       // 1-bit output: LOCK
		// Clock Inputs: 1-bit (each) input: Clock input
		.CLKIN1(clk),       // 1-bit input: Clock
		// Control Ports: 1-bit (each) input: MMCM control ports
		.PWRDWN(0),       // 1-bit input: Power-down
		.RST(0),             // 1-bit input: Reset
		// Feedback Clocks: 1-bit (each) input: Clock feedback ports
		.CLKFBIN(mmcm_fb)      // 1-bit input: Feedback clock
	);
	
	BUFG BUFG_24_inst (
      .O(clk24buf), // 1-bit output: Clock output
      .I(clk24)  // 1-bit input: Clock input
   );
   
   BUFG BUFG_24_fan_inst (
      .O(clk24fan), // 1-bit output: Clock output
      .I(clk24)  // 1-bit input: Clock input
   );
	
	MMCME2_BASE #(
		.BANDWIDTH("OPTIMIZED"),   // Jitter programming (OPTIMIZED, HIGH, LOW)
		.CLKFBOUT_MULT_F(36),     // Multiply value for all CLKOUT (2.000-64.000).
		.CLKFBOUT_PHASE(0.0),      // Phase offset in degrees of CLKFB (-360.000-360.000).
		.CLKIN1_PERIOD(40.690),       // Input clock period in ns to ps resolution (i.e. 33.333 is 30 MHz).
		.CLKOUT0_DIVIDE_F(24),    // Divide amount for CLKOUT0 (1.000-128.000).

		.DIVCLK_DIVIDE(1),         // Master division value (1-106)
		.REF_JITTER1(0.0),         // Reference input jitter in UI (0.000-0.999).
		.STARTUP_WAIT("FALSE")     // Delays DONE until MMCM is locked (FALSE, TRUE)
	)
	MMCME2_147 (
		// Clock Outputs: 1-bit (each) output: User configurable clock outputs
		.CLKOUT0(clk37out),     // 1-bit output: CLKOUT0
		// Feedback Clocks: 1-bit (each) output: Clock feedback ports
		.CLKFBOUT(mmcm_fb_37),   // 1-bit output: Feedback clock
		.CLKFBOUTB(), // 1-bit output: Inverted CLKFBOUT
		// Status Ports: 1-bit (each) output: MMCM status ports
		.LOCKED(mmcm_lock_37),       // 1-bit output: LOCK
		// Clock Inputs: 1-bit (each) input: Clock input
		.CLKIN1(clk24buf),       // 1-bit input: Clock
		// Control Ports: 1-bit (each) input: MMCM control ports
		.PWRDWN(0),       // 1-bit input: Power-down
		.RST(0),             // 1-bit input: Reset
		// Feedback Clocks: 1-bit (each) input: Clock feedback ports
		.CLKFBIN(mmcm_fb_37)      // 1-bit input: Feedback clock
	);
	
	BUFG BUFG_147_fan_inst (
      .O(clk37), // 1-bit output: Clock output
      .I(clk37out)  // 1-bit input: Clock input
   );
	
    logic [31:0]param_data;
	logic param_valid;
	logic rd_param;
	logic rxing_param;
	
	dual_fast_spi cmd_input(.sck_in(sck_in), .cs_in(cs_in), .mosi0_in(mosi0_in), .mosi1_in(mosi1_in),
	                       .synth_clk(clk37), .synth_data(param_data), .data_valid(param_valid), .read_data(1/*rd_param*/),
	                       .busy(rxing_param));
	                       
    FSM_CMD cmd(clk37);
    assign cmd.clk37 = clk37;
    assign cmd.cmd_data_valid = param_valid;
    assign cmd.cmd_data = param_data;
    assign rd_param = cmd.cmd_data_read;
    
    logic signed [15:0]vout[0:5];
    logic [7:0]selvoice;
    logic [7:0]trig;
    
    logic sample_ready;
    
    logic lock0, lock1, lock2, lock3, lock4, lock5;
    logic locked_cmd = lock0 | lock1 | lock2 | lock3 | lock4 | lock5;
    
    logic td;
	
	voice #(.VOICE_NUM(0)) voice0(.clk37(clk37), .fcmd(cmd.fsm), .cmd_lock(locked_cmd), .sample(vout[0]), .sample_ready(sample_ready), .cmd_detect(lock0), .trig_debug(td));
	voice #(.VOICE_NUM(1)) voice1(.clk37(clk37), .fcmd(cmd.fsm), .cmd_lock(locked_cmd), .sample(vout[1]), .sample_ready(), .cmd_detect(lock1));
	voice #(.VOICE_NUM(2)) voice2(.clk37(clk37), .fcmd(cmd.fsm), .cmd_lock(locked_cmd), .sample(vout[2]), .sample_ready(), .cmd_detect(lock2));
	voice #(.VOICE_NUM(3)) voice3(.clk37(clk37), .fcmd(cmd.fsm), .cmd_lock(locked_cmd), .sample(vout[3]), .sample_ready(), .cmd_detect(lock3));
	voice #(.VOICE_NUM(4)) voice4(.clk37(clk37), .fcmd(cmd.fsm), .cmd_lock(locked_cmd), .sample(vout[4]), .sample_ready(), .cmd_detect(lock4));
	voice #(.VOICE_NUM(5)) voice5(.clk37(clk37), .fcmd(cmd.fsm), .cmd_lock(locked_cmd), .sample(vout[5]), .sample_ready(), .cmd_detect(lock5));
	
	//ila_0 deb(.clk(clk37), .probe0(td), .probe1(locked_cmd), .probe2(param_valid), .probe3(lock0), .probe4(vout[0]), .probe5(param_data), .probe6(locked_cmd));
	
    logic i2s_ready;
	logic [31:0]stereo_out = 0;
	(*USE_DSP48="yes"*)logic signed [18:0]samp_acc = 0;
	i2s channel1(.clkin(clk24fan), .sound(stereo_out), .ready(i2s_ready), .mck(mck), .sck(sck), .sd(sd), .lrck(lrck));
	
	logic [3:0]add_counter = 0;
	
	parameter IDLE =       4'd0;
	parameter RUN_SUM =    4'd1;
	
	logic [3:0]state = IDLE;
	
	logic signed [15:0]samp_buf; 
    
    always_ff @(posedge clk37)
    begin
        case(state)
            IDLE: begin
                samp_buf <= samp_acc[18:3];
                if (sample_ready) begin
                    state <= RUN_SUM;
                    samp_acc <= vout[0] + vout[1];
                    add_counter <= 0;
                end
            end
            RUN_SUM: begin
                add_counter <= add_counter + 2;
                samp_acc <= samp_acc + vout[add_counter + 2] + vout[add_counter + 3];
                if (add_counter == 2) begin
                    add_counter <= 0;
                    state <= IDLE;
                end
            end
        endcase
    end
    
    always_ff @(posedge clk24fan)
    begin
        if (i2s_ready) begin
            stereo_out <= {samp_buf, samp_buf};
        end
    end
    
    assign leds[0] = sd;
    assign leds[1] = param_valid;
    assign leds[2] = cs_in;
    assign leds[3] = rxing_param;
    assign leds[4] = mosi1_in;
    assign leds[5] = mosi0_in;
    assign leds[6] = sample_ready;
    assign leds[7] = i2s_ready;
endmodule
