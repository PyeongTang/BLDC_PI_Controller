`timescale 1ns / 1ps

module PI_Controller(
        input       wire                                i_clk,
        input       wire                                i_n_reset,
        input       wire                                i_enable_control,
        input       wire                [7 : 0]         i_p_gain,
        input       wire                [7 : 0]         i_i_gain,
        input       wire                [11 : 0]        i_reference,
        input       wire                [12 : 0]        i_plant_output,
        output      wire                [11 : 0]        o_control_input,
        output      wire    signed      [14 : 0]        o_error,
        output      wire    signed      [23 : 0]        o_p_term,
        output      wire    signed      [23 : 0]        o_i_term
    );
                    reg     signed      [8 : 0]         r_p_gain;
                    reg     signed      [8 : 0]         r_i_gain;
                    reg     signed      [8 : 0]         r_i_gain_z;
                    reg     signed      [13 : 0]        r_reference;
                    reg     signed      [13 : 0]        r_plant_output;
                
                    reg     signed      [14 : 0]        r_error;
                    reg     signed      [23 : 0]        r_p_term;
                    reg     signed      [63 : 0]        r_p_term_extended;

                    reg     signed      [23 : 0]        r_i_term;
                    reg     signed      [63 : 0]        r_i_term_extended;
                    reg     signed      [63 : 0]        r_integral_component;

                    reg     signed      [24 : 0]        r_control_input;

                    wire                                w_calculate;

        SamplingTimer                                   KHZ_TICK(
            .i_clk                                      (i_clk),
            .i_n_reset                                  (i_n_reset),
            .i_enable                                   (i_enable_control),
            .o_tick                                     (w_calculate)
        );

        always @(posedge i_clk) begin
            if (!i_n_reset) begin
                r_p_gain            <=  0;
                r_i_gain            <=  0;
                r_reference         <=  0;
                r_plant_output      <=  0;
                r_error             <=  0;
                r_i_gain_z          <=  0;
            end
            else if (i_enable_control) begin
                r_p_gain            <=  $signed(i_p_gain);
                r_i_gain            <=  $signed(i_i_gain);
                r_reference         <=  $signed({2'b0, i_reference});
                r_plant_output      <=  $signed({1'b0, i_plant_output});
                r_error             <=  $signed(r_reference - r_plant_output);
                r_i_gain_z          <=  r_i_gain;
            end
        end

        always @(posedge i_clk) begin
            if (!i_n_reset) begin
                r_p_term_extended <= 0;
                r_p_term <= 0;
            end
            else if (w_calculate) begin
                r_p_term_extended <= $signed(r_p_gain * r_error);
                r_p_term <= r_p_term_extended[23 : 0];
            end
        end

        // (X * 1049) >> 20 is simillar to divided by 10
        always @(posedge i_clk) begin
            if (!i_n_reset) begin
                r_i_term_extended <= 0;
                r_integral_component <= 0;
                r_i_term <= 0;
            end
            else if (r_i_gain != r_i_gain_z) begin
                r_i_term_extended <= 0;
                r_integral_component <= 0;
                r_i_term <= 0;
            end
            else if (w_calculate) begin
                r_i_term_extended       <= r_i_term_extended + r_integral_component;
                r_integral_component    <= (r_i_gain * r_error * 1049) >> 20;
                r_i_term                <= r_i_term_extended[23 : 0];
            end
        end

        always @(posedge i_clk) begin
            if (!i_n_reset) begin
                r_control_input <= 0;
            end
            else if (w_calculate) begin
                r_control_input <= r_p_term + r_i_term;
            end
        end

        assign o_p_term = r_p_term;
        assign o_i_term = r_i_term;
        assign o_error = r_error;

        assign o_control_input  =   (!i_enable_control)             ?   (12'h0)     :
                                    (r_control_input > 12'hFFF)     ?   (12'h1)     : 
                                    (r_control_input <= 0)          ?   (12'h2)     :   (r_control_input[11 : 0]);

endmodule
