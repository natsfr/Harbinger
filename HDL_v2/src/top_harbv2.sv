`default_nettype none
 
 interface VC_PARAM ();

    
    logic signed [32-1:0]freq[0:5]; // Frequency settings
    logic [31:0]at_time[0:5]; // Attack time for each operator
    logic signed [31:0]at_inc[0:5]; // Attack level step
    logic [31:0]de_time[0:5]; // Decay time
    logic signed [31:0]de_inc[0:5]; // Decay level step
    logic [31:0]su_time[0:5]; // Sustain time
    logic signed [31:0]su_lvl[0:5]; // Sustain level
    logic [31:0]re_time[0:5]; // Release time
    logic signed [31:0]re_inc[0:5]; // Release level step
    
    logic signed [31:0]amplitude[0:5]; // Override the ADSR for an operator (usefull for internal operator)
    
    logic signed [31:0]modin_1; // Contains modulation input of operator 0,1,2,3,4
    logic signed [31:0]modin_2; // Containe modulation input of operator 5 & OUTPUT MIXER
    
    modport voice(input freq, at_time, at_inc, de_time, de_inc, su_time, su_lvl, re_time, re_inc, amplitude, modin_1, modin_2);
    modport fsm(output freq, at_time, at_inc, de_time, de_inc, su_time, su_lvl, re_time, re_inc, amplitude, modin_1, modin_2);
 
 endinterface
 
 interface FSM_CMD (clk147);
    input logic clk147;
    
    logic cmd_data_valid;
    logic [31:0]cmd_data;
    logic cmd_data_read;
    
    modport fsm(input clk147, input cmd_data_valid, input cmd_data, output cmd_data_read);
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
	 * Each oscillator runs at 24.576MHz (128*192kHz)
	 * Each voise funs 6 oscillator at 147.456MHz
	 */
	
	wire clk147;
	wire mmcm_lock_147;
	wire mmcm_fb_147;
	
	wire mmcm_lock;
	wire mmcm_fb;
	wire clk24;
	wire clk24buf;

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
	
	BUFG BUFG_inst (
      .O(clk24buf), // 1-bit output: Clock output
      .I(clk24)  // 1-bit input: Clock input
   );
	
	MMCME2_BASE #(
		.BANDWIDTH("OPTIMIZED"),   // Jitter programming (OPTIMIZED, HIGH, LOW)
		.CLKFBOUT_MULT_F(36),     // Multiply value for all CLKOUT (2.000-64.000).
		.CLKFBOUT_PHASE(0.0),      // Phase offset in degrees of CLKFB (-360.000-360.000).
		.CLKIN1_PERIOD(40.690),       // Input clock period in ns to ps resolution (i.e. 33.333 is 30 MHz).
		.CLKOUT0_DIVIDE_F(6),    // Divide amount for CLKOUT0 (1.000-128.000).

		.DIVCLK_DIVIDE(1),         // Master division value (1-106)
		.REF_JITTER1(0.0),         // Reference input jitter in UI (0.000-0.999).
		.STARTUP_WAIT("FALSE")     // Delays DONE until MMCM is locked (FALSE, TRUE)
	)
	MMCME2_147 (
		// Clock Outputs: 1-bit (each) output: User configurable clock outputs
		.CLKOUT0(clk147),     // 1-bit output: CLKOUT0
		// Feedback Clocks: 1-bit (each) output: Clock feedback ports
		.CLKFBOUT(mmcm_fb_147),   // 1-bit output: Feedback clock
		.CLKFBOUTB(), // 1-bit output: Inverted CLKFBOUT
		// Status Ports: 1-bit (each) output: MMCM status ports
		.LOCKED(mmcm_lock_147),       // 1-bit output: LOCK
		// Clock Inputs: 1-bit (each) input: Clock input
		.CLKIN1(clk24buf),       // 1-bit input: Clock
		// Control Ports: 1-bit (each) input: MMCM control ports
		.PWRDWN(0),       // 1-bit input: Power-down
		.RST(0),             // 1-bit input: Reset
		// Feedback Clocks: 1-bit (each) input: Clock feedback ports
		.CLKFBIN(mmcm_fb_147)      // 1-bit input: Feedback clock
	);
	
    logic [31:0]param_data;
	logic param_valid;
	logic rd_param;
	logic rxing_param;
	
	dual_fast_spi cmd_input(.sck_in(sck_in), .cs_in(cs_in), .mosi0_in(mosi0_in), .mosi1_in(mosi1_in),
	                       .synth_clk(clk147), .synth_data(param_data), .data_valid(param_valid), .read_data(rd_param),
	                       .busy(rxing_param));
	                       
    FSM_CMD cmd(clk147);
    assign cmd.clk147 = clk147;
    assign cmd.cmd_data_valid = param_valid;
    assign cmd.cmd_data = param_data;
    assign rd_param = cmd.cmd_data_read;
    
    logic signed [15:0]vout[0:5];
    logic [7:0]selvoice;
    logic [7:0]trig;

	VC_PARAM vc_conf();
	
	voice voice0(.clk147(clk147), .trig(trig[0]), .select(selvoice[0]), .vc(vc_conf.voice), .sample(vout[0]));
	voice voice1(.clk147(clk147), .trig(trig[1]), .select(selvoice[1]), .vc(vc_conf.voice), .sample(vout[1]));
	voice voice2(.clk147(clk147), .trig(trig[2]), .select(selvoice[2]), .vc(vc_conf.voice), .sample(vout[2]));
	voice voice3(.clk147(clk147), .trig(trig[3]), .select(selvoice[3]), .vc(vc_conf.voice), .sample(vout[3]));
	voice voice4(.clk147(clk147), .trig(trig[4]), .select(selvoice[4]), .vc(vc_conf.voice), .sample(vout[4]));
	voice voice5(.clk147(clk147), .trig(trig[5]), .select(selvoice[5]), .vc(vc_conf.voice), .sample(vout[5]));
	
	fsm_brain cmd_fsm(.cmd(cmd.fsm), .sel_int(vc_conf.fsm), .selvoice(selvoice), .trig(trig));
	
    logic i2s_ready;
	logic [31:0]stereo_out = 0;
	logic [18:0]samp_acc = 0;
	i2s channel1(.clkin(clk24), .sound(stereo_out), .ready(i2s_ready), .mck(mck), .sck(sck), .sd(sd), .lrck(lrck));
    
    always_ff @(posedge clk147)
    begin
        if (i2s_ready) begin
            samp_acc <= vout[0] +vout[1] +vout[2] +vout[3] +vout[4] +vout[5];
            stereo_out <= {samp_acc[18:3], samp_acc[18:3]};
        end
    end
endmodule
