`timescale 1ns / 1ps
module buttonControl(
    input       wire                    i_clk,
    input       wire                    i_reset,
    input       wire                    i_btn,
    output      wire                    o_btn_posedge,
    output      wire                    o_btn_negedge
);
    
    reg     [16 : 0]                    r_delay_counter;
    wire                                r_delay_counter_posedge;

    reg                                 r_debounced_btn;
    wire                                w_debounced_btn;
    
    edge_detector_n                     ED_DELAY_COUNTER(
        .i_clk                          (i_clk),
        .i_reset                        (i_reset), 
        .i_cp                           (r_delay_counter[16]),
        .o_posedge                      (r_delay_counter_posedge),
        .o_negedge                      ()
    );
    
    edge_detector_n                     ED_BTN(
        .i_clk                          (i_clk),
        .i_reset                        (i_reset),
        .i_cp                           (w_debounced_btn), 
        .o_posedge                      (o_btn_posedge),
        .o_negedge                      (o_btn_negedge)
    );

    always @(posedge i_clk) begin
       r_delay_counter <= r_delay_counter + 1; 
    end
        
    always @(posedge i_clk or posedge i_reset)begin
        if (i_reset) begin
            r_debounced_btn <= 0;
        end
        else if (r_delay_counter_posedge) begin
            r_debounced_btn <= i_btn;
        end
    end

    assign w_debounced_btn = r_debounced_btn;

endmodule

module Button2Gain(
        input       wire                    i_clk,
        input       wire                    i_reset,

        input       wire                    i_btn_inc,
        input       wire                    i_btn_dec,

        output      wire        [7 : 0]     o_gain
    );

                    reg         [7 : 0]     r_gain;
                    wire                    w_btn_inc_posedge;
                    wire                    w_btn_dec_posedge;

        buttonControl                       BTN_INC_CTRL(
            .i_clk                          (i_clk),
            .i_reset                        (i_reset),
            .i_btn                          (i_btn_inc),
            .o_btn_posedge                  (w_btn_inc_posedge),
            .o_btn_negedge                  ()
        );
        
        buttonControl                       BTN_DEC_CTRL(
            .i_clk                          (i_clk),
            .i_reset                        (i_reset),
            .i_btn                          (i_btn_dec),
            .o_btn_posedge                  (w_btn_dec_posedge),
            .o_btn_negedge                  ()
        );

        always @(posedge i_clk) begin
            if (i_reset) begin
                r_gain <= 0;
            end
            else begin
                if (w_btn_inc_posedge) begin
                    r_gain <= r_gain + 1;
                end
                else if (w_btn_dec_posedge) begin
                    if (r_gain <= 0) begin
                        r_gain <= r_gain;
                    end
                    else begin
                        r_gain <= r_gain - 1;
                    end
                end
            end
        end

        assign o_gain = r_gain;

endmodule
