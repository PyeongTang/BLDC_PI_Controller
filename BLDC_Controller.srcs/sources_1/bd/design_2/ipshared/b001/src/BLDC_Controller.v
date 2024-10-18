`timescale 1ns / 1ps

module BLDC_Controller(
        // System
        input       wire                                    i_clk,
        input       wire                                    i_n_reset,

        // SW
        input       wire                                    i_enable_control,
        input       wire                                    i_rot_ccw,
        input       wire                                    i_bypass,

        // ADC
        input       wire                    [11 : 0]        i_reference,

        // Button2Gain
        input       wire                    [7 : 0]         i_p_gain,
        input       wire                    [7 : 0]         i_i_gain,

        // PS
        input       wire                    [12 : 0]        i_RPM,
        input       wire                                    i_valid,
        output      wire                    [31 : 0]        o_time_count,
        output      wire                                    o_get_RPM,
        output      wire        signed      [23 : 0]        o_p_term,
        output      wire        signed      [23 : 0]        o_i_term,
        output      wire        signed      [14 : 0]        o_error,
        output      wire                    [11 : 0]        o_control_input,

        // BLDC
        input       wire                    [2 : 0]         i_hall_state,

        output      wire                                    o_U_pos,
        output      wire                                    o_U_neg,
        output      wire                                    o_V_pos,
        output      wire                                    o_V_neg,
        output      wire                                    o_W_pos,
        output      wire                                    o_W_neg,

        output      wire                                    o_U_pwm,
        output      wire                                    o_V_pwm,
        output      wire                                    o_W_pwm,

        // LED
        output      wire                    [5 : 0]         o_hall_one_hot_state
    );

                    wire                    [12 : 0]        w_RPM;
                    wire                    [11 : 0]        w_control_input;
                    wire                    [11 : 0]        w_selected_duty;

        Hall_Sequencer                          DETERIMNE_DIRECTION(
            .i_clk                              (i_clk),
            .i_n_reset                          (i_n_reset),
            .i_rot_ccw                          (i_rot_ccw),
            .i_hall_state                       (i_hall_state),
            .o_U_pos                            (o_U_pos),
            .o_U_neg                            (o_U_neg),
            .o_V_pos                            (o_V_pos),
            .o_V_neg                            (o_V_neg),
            .o_W_pos                            (o_W_pos),
            .o_W_neg                            (o_W_neg),
            .i_RPM                              (i_RPM),
            .i_valid                            (i_valid),
            .o_time_count                       (o_time_count),
            .o_get_RPM                          (o_get_RPM),
            .o_RPM                              (w_RPM),
            .o_hall_one_hot_state               (o_hall_one_hot_state)
        );

        PI_Controller                           DETERMINE_DUTY(
            .i_clk                              (i_clk),
            .i_n_reset                          (i_n_reset),
            .i_enable_control                   (i_enable_control),
            .i_p_gain                           (i_p_gain),
            .i_i_gain                           (i_i_gain),
            .i_reference                        (i_reference),
            .i_plant_output                     (w_RPM),
            .o_control_input                    (w_control_input),
            .o_p_term                           (o_p_term),
            .o_i_term                           (o_i_term),
            .o_error                            (o_error)
        );

        PWM                                     #(
            .PWM_FREQ                           (20000),
            .PWM_RESOLUTION                     (4096),
            .BIT_RESOLUTION                     (12)
        )                                       PWM_U_PHASE(
            .i_clk                              (i_clk),
            .i_reset                            (~i_n_reset),
            .i_duty                             (w_selected_duty),
            .o_pwm                              (o_U_pwm)
        );

        PWM                                     #(
            .PWM_FREQ                           (20000),
            .PWM_RESOLUTION                     (4096),
            .BIT_RESOLUTION                     (12)
        )                                       PWM_V_PHASE(
            .i_clk                              (i_clk),
            .i_reset                            (~i_n_reset),
            .i_duty                             (w_selected_duty),
            .o_pwm                              (o_V_pwm)
        );

        PWM                                     #(
            .PWM_FREQ                           (20000),
            .PWM_RESOLUTION                     (4096),
            .BIT_RESOLUTION                     (12)
        )                                       PWM_W_PHASE(
            .i_clk                              (i_clk),
            .i_reset                            (~i_n_reset),
            .i_duty                             (w_selected_duty),
            .o_pwm                              (o_W_pwm)
        );

        assign o_control_input = w_control_input;
        assign w_selected_duty = (i_bypass) ? (i_reference) : (w_control_input);
        
endmodule
