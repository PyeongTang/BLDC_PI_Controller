
`timescale 1 ns / 1 ps

	module myBLDC_Controller_v1_0 #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface S00_AXI
		parameter integer C_S00_AXI_DATA_WIDTH	= 32,
		parameter integer C_S00_AXI_ADDR_WIDTH	= 5
	)
	(
		// Users to add ports here
		// ADC
		input		wire					i_vaux6p,
		input		wire					i_vaux6n,

		// SW
		input		wire					i_sw_enable_control,
		input		wire					i_sw_rot_ccw,
		input		wire					i_sw_display_gain,

		// INT
		output		wire					o_get_RPM,

		// BTN 
		input		wire					i_btn_u,
		input		wire					i_btn_d,
		input		wire					i_btn_r,
		input		wire					i_btn_l,

		// BLDC
		input		wire		[2 : 0]		i_hall_state,

		output		wire					o_U_pos,
		output		wire					o_U_neg,
		output		wire					o_V_pos,
		output		wire					o_V_neg,
		output		wire					o_W_pos,

		output		wire					o_W_neg,
		output		wire					o_U_pwm,
		output		wire					o_V_pwm,
		output		wire					o_W_pwm,

		// LED
		output		wire					o_led_enable_control,
		output		wire		[5 : 0]		o_hall_one_hot_state,

		// FND
		output		wire		[7 : 0]		o_fnd,
		output		wire		[3 : 0]		o_fnd_sel,
		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Slave Bus Interface S00_AXI
		input wire  s00_axi_aclk,
		input wire  s00_axi_aresetn,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_awaddr,
		input wire [2 : 0] s00_axi_awprot,
		input wire  s00_axi_awvalid,
		output wire  s00_axi_awready,
		input wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_wdata,
		input wire [(C_S00_AXI_DATA_WIDTH/8)-1 : 0] s00_axi_wstrb,
		input wire  s00_axi_wvalid,
		output wire  s00_axi_wready,
		output wire [1 : 0] s00_axi_bresp,
		output wire  s00_axi_bvalid,
		input wire  s00_axi_bready,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_araddr,
		input wire [2 : 0] s00_axi_arprot,
		input wire  s00_axi_arvalid,
		output wire  s00_axi_arready,
		output wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_rdata,
		output wire [1 : 0] s00_axi_rresp,
		output wire  s00_axi_rvalid,
		input wire  s00_axi_rready
	);
		wire					[11 : 0]		w_ADC;
		wire					[15 : 0]		w_ADC_bcd;
		wire					[31 : 0]		w_time_count;
		wire					[12 : 0]		w_RPM;
		wire									w_valid;
		wire					[7 : 0]			w_p_gain;
		wire					[7 : 0]			w_i_gain;
        wire        signed      [23 : 0]        w_p_term;
        wire        signed      [23 : 0]        w_i_term;
		wire		signed		[14 : 0]		w_error;
        wire                    [11 : 0]        w_control_input;

		wire					[15 : 0]		w_p_gain_bcd;
		wire					[15 : 0]		w_i_gain_bcd;

		wire					[15 : 0]		w_fnd_value;

// Instantiation of Axi Bus Interface S00_AXI
	myBLDC_Controller_v1_0_S00_AXI # ( 
		.C_S_AXI_DATA_WIDTH(C_S00_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_S00_AXI_ADDR_WIDTH)
	) myBLDC_Controller_v1_0_S00_AXI_inst (
		.i_time_count				(w_time_count),
		.o_RPM						(w_RPM),
		.o_valid					(w_valid),
		.i_reference				(w_ADC),
		.i_p_term					(w_p_term),
		.i_i_term					(w_i_term),
		.i_error					(w_error),
		.i_control_input			(w_control_input),

		.S_AXI_ACLK(s00_axi_aclk),
		.S_AXI_ARESETN(s00_axi_aresetn),
		.S_AXI_AWADDR(s00_axi_awaddr),
		.S_AXI_AWPROT(s00_axi_awprot),
		.S_AXI_AWVALID(s00_axi_awvalid),
		.S_AXI_AWREADY(s00_axi_awready),
		.S_AXI_WDATA(s00_axi_wdata),
		.S_AXI_WSTRB(s00_axi_wstrb),
		.S_AXI_WVALID(s00_axi_wvalid),
		.S_AXI_WREADY(s00_axi_wready),
		.S_AXI_BRESP(s00_axi_bresp),
		.S_AXI_BVALID(s00_axi_bvalid),
		.S_AXI_BREADY(s00_axi_bready),
		.S_AXI_ARADDR(s00_axi_araddr),
		.S_AXI_ARPROT(s00_axi_arprot),
		.S_AXI_ARVALID(s00_axi_arvalid),
		.S_AXI_ARREADY(s00_axi_arready),
		.S_AXI_RDATA(s00_axi_rdata),
		.S_AXI_RRESP(s00_axi_rresp),
		.S_AXI_RVALID(s00_axi_rvalid),
		.S_AXI_RREADY(s00_axi_rready)
	);

	// Add user logic here
	Button2Gain					BTN_P_GAIN(
		.i_clk					(s00_axi_aclk),
		.i_reset				(~s00_axi_aresetn),
		.i_btn_inc				(i_btn_u),
		.i_btn_dec				(i_btn_d),
		.o_gain					(w_p_gain)
	);
	
	Button2Gain					BTN_I_GAIN(
		.i_clk					(s00_axi_aclk),
		.i_reset				(~s00_axi_aresetn),
		.i_btn_inc				(i_btn_r),
		.i_btn_dec				(i_btn_l),
		.o_gain					(w_i_gain)
	);

	bin2Dec						BIN2DEC_P_GAIN(
		.i_bin					({4'h0, w_p_gain}),
		.o_bcd					(w_p_gain_bcd)
	);

	bin2Dec						BIN2DEC_I_GAIN(
		.i_bin					({4'h0, w_i_gain}),
		.o_bcd					(w_i_gain_bcd)
	);
	
	bin2Dec						BIN2DEC_REF(
		.i_bin					(w_ADC),
		.o_bcd					(w_ADC_bcd)
	);

	fndControl					FND_CTRL(
		.i_clk					(s00_axi_aclk),
		.i_reset				(~s00_axi_aresetn),
		.i_value				(w_fnd_value),
		.o_fnd					(o_fnd),
		.o_fnd_sel				(o_fnd_sel)
	);

	potentiometer 				POT(
		.i_clk					(s00_axi_aclk),
		.i_n_reset				(s00_axi_aresetn),
		.i_vaux6p				(i_vaux6p),
		.i_vaux6n				(i_vaux6n),
		.o_value				(w_ADC)
	);

	BLDC_Controller 			BLDC_MOTOR_DRIVER(
		.i_clk					(s00_axi_aclk),
		.i_n_reset				(s00_axi_aresetn),

		.i_enable_control		(i_sw_enable_control),
		.i_rot_ccw				(i_sw_rot_ccw),

		.i_reference			(w_ADC),

		.i_p_gain				(w_p_gain),
		.i_i_gain				(w_i_gain),

		.i_RPM					(w_RPM),
		.i_valid				(w_valid),
		.o_time_count			(w_time_count),
		.o_get_RPM				(o_get_RPM),
		.o_p_term				(w_p_term),
		.o_i_term				(w_i_term),
		.o_error				(w_error),
		.o_control_input		(w_control_input),

		.i_hall_state			(i_hall_state),

		.o_U_pos				(o_U_pos),
		.o_U_neg				(o_U_neg),
		.o_V_pos				(o_V_pos),
		.o_V_neg				(o_V_neg),
		.o_W_pos				(o_W_pos),
		.o_W_neg				(o_W_neg),
		
		.o_U_pwm				(o_U_pwm),
		.o_V_pwm				(o_V_pwm),
		.o_W_pwm				(o_W_pwm),

		.o_hall_one_hot_state	(o_hall_one_hot_state)
	);

	assign o_led_enable_control = i_sw_enable_control;
	assign w_fnd_value =  (i_sw_display_gain) ? ({w_p_gain_bcd << 8 | w_i_gain_bcd}) : (w_ADC_bcd);

	// User logic ends

	endmodule
