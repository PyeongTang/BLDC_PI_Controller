`timescale 1ns / 1ps

module PWM #(
    parameter   PWM_FREQ            =   50,
    parameter   PWM_RESOLUTION      =   4096,
    parameter   BIT_RESOLUTION      =   12
)(
    input       wire                                    i_clk,
    input       wire                                    i_reset,
    input       wire        [BIT_RESOLUTION - 1 : 0]    i_duty,
    output      wire                                    o_pwm
);
    localparam                                          SYS_CLK_FREQ        =   100_000_000;
    localparam                                          CLK_DIV_FREQ        =   PWM_FREQ * PWM_RESOLUTION;
    localparam                                          CLK_DIV_TH          =   SYS_CLK_FREQ / CLK_DIV_FREQ;

    // Frequnecy (LED Initial Setting)
    // SYS_CLK_FREQ     =   100     Mhz
    // CLK_DIV_FREQ     =   1.28    Mhz
    // PWM_FREQ         =   10      Khz
    // PWM_RESOLUTION   =   128     steps

    // SYS_CLK_FREQ     :   Clock Frequency of System
    // PWM_FREQ         :   Desired Frequency of Output PWM Pulse
    // PWM_RESOLUTION   :   Number of Steps in Voltage Level with respect to Pulse Width of Output Wave

    // 1. We need 128 time slices in each PWM period
    // 2. As target PWM_FREQ is 10Khz, Frequency of time slice is equal to 10Khz * 128 = 1.28Mhz (PWM_FREQ * PWM_RESOLUTION)
    // 3. We have SYS_CLK_FREQ, 100Mhz, we need clock divider dividing ratio of SYS_CLK_FREQ / Frequency of time slice = 78.125

    // Equation
    // TIME_SLICE_FREQ  =   PWM_FREQ * PWM_RESOLUTION
    // CLK_DIV_TH       =   SYS_CLK_FREQ / TIME_SLICE_FREQ

    // Recommended PWM Frequency
    // LED              :   10      Khz
    // DC Motor         :   100     hz
    // BLDC Motor       :   10      Khz
    // Servo Motor      :   50      hz
    // Step Motor       :   20      Khz

    reg [BIT_RESOLUTION - 1 : 0]        r_count_duty;
    integer                             r_count_freq;
    wire                                w_count_freq_negedge;
    reg                                 r_clk;
    reg                                 r_pwm;

    edge_detector_n                     ED_COUNT_freq(
        .i_clk                          (i_clk),
        .i_reset                        (i_reset),
        .i_cp                           (r_clk), 
        .o_posedge                      (),
        .o_negedge                      (w_count_freq_negedge)
    );

    // r_count_freq - counts upto CLK_DIV_TH
    // r_clk - toggle of r_count_freq, w_count_freq_negedge makes it's tick signal
    always @(posedge i_clk or posedge i_reset) begin
        if (i_reset) begin
            r_count_freq    <=      0;
            r_clk           <=      0;
        end
        else begin
            if (r_count_freq >= CLK_DIV_TH - 1) begin
                r_count_freq    <=      0;
            end
            else begin
                r_count_freq    <=      r_count_freq + 1;
            end
            if (r_count_freq < (CLK_DIV_TH / 2)) begin
                r_clk           <=      0;
            end
            else begin
                r_clk           <=      1;
            end
        end
    end

    // r_count_duty - counts upto RESOLUTION - 1
    // r_pwm
    always @(posedge i_clk or posedge i_reset) begin
        if (i_reset) begin
            r_count_duty    <=  0;
            r_pwm           <=  0;
        end
        else if (w_count_freq_negedge) begin
            // if (r_count_duty >= PWM_RESOLUTION - 1) begin
            //     r_count_duty <= 0;
            // end
            // else begin
                if (r_count_duty < i_duty) begin
                    r_pwm       <=  1;
                end
                else begin
                    r_pwm       <=  0;
                end
                r_count_duty    <=  r_count_duty + 1;
            // end
        end
    end

    assign o_pwm    = r_pwm;

endmodule
