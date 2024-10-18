`timescale 1ns / 1ps

module tb_BLDC_Controller();

reg i_clk               = 1'b0;
reg i_n_reset           = 1'b1;
reg i_enable_control    = 1'b0;
reg i_rot_ccw           = 1'b0;
reg i_bypass            = 1'b1;

reg [11 : 0]        i_reference = 12'h800;
reg [7 : 0]         i_p_gain = 0;
reg [7 : 0]         i_i_gain = 0;
reg [12 : 0]        i_RPM = 0;
reg                 i_valid = 0;

wire [31 : 0] o_time_count;
wire o_get_RPM;

wire signed [23 : 0] o_p_term;
wire signed [23 : 0] o_i_term;

wire signed [14 : 0] o_error;

wire [11 : 0] o_control_input;

reg [2 : 0] i_hall_state = 3'h0;

wire o_U_pos;
wire o_U_neg;
wire o_V_pos;
wire o_V_neg;
wire o_W_pos;
wire o_W_neg;
wire o_U_pwm;
wire o_V_pwm;
wire o_W_pwm;

wire [5 : 0] o_hall_one_hot_state;

 BLDC_Controller DUT(
        .i_clk      (i_clk),
        .i_n_reset      (i_n_reset),
        .i_enable_control       (i_enable_control),
        .i_rot_ccw      (i_rot_ccw),
        .i_bypass       (i_bypass),
        .i_reference        (i_reference),
        .i_p_gain       (i_p_gain),
        .i_i_gain       (i_i_gain),
        .i_RPM      (i_RPM),
        .i_valid        (i_valid),
        .o_time_count       (o_time_count),
        .o_get_RPM      (o_get_RPM),
        .o_p_term       (o_p_term),
        .o_i_term       (o_i_term),
        .o_error        (o_error),
        .o_control_input        (o_control_input),
        .i_hall_state       (i_hall_state),
        .o_U_pos        (o_U_pos),
        .o_U_neg        (o_U_neg),
        .o_V_pos        (o_V_pos),
        .o_V_neg        (o_V_neg),
        .o_W_pos        (o_W_pos),
        .o_W_neg        (o_W_neg),
        .o_U_pwm        (o_U_pwm),
        .o_V_pwm        (o_V_pwm),
        .o_W_pwm        (o_W_pwm),
        .o_hall_one_hot_state       (o_hall_one_hot_state)
 );

always #5 i_clk = ~i_clk;
initial begin
    @(posedge i_clk) i_n_reset = 0;
    @(posedge i_clk) i_n_reset = 1;
    @(posedge i_clk) i_enable_control = 1;
end

endmodule
