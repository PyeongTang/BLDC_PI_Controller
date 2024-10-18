`timescale 1ns / 1ps

module clock_div_100(
   input        wire                i_clk,
   input        wire                i_reset,
   output       wire                o_cp,
   output       wire                o_tick_posedge,
   output       wire                o_tick_negedge
);

    reg     [6 : 0]                 r_count;

    edge_detector_n                 ED_OUTPUT_TICK(
        .i_clk                      (i_clk),
        .i_reset                    (i_reset),
        .i_cp                       (o_cp), 
        .o_posedge                  (o_tick_posedge),
        .o_negedge                  (o_tick_negedge)
    );

    always @(posedge i_clk or posedge i_reset) begin
        if(i_reset) begin
            r_count = 0;
        end
        else begin 
            if(r_count >= 100 - 1) begin
                r_count = 0;
            end
            else begin
                r_count = r_count + 1;
            end
        end
    end

    assign o_cp    = (r_count < (100 / 2))  ? 0 : 1;

endmodule
module clock_div_1000(
   input        wire                i_clk,
   input        wire                i_reset,
   input        wire                i_cp,
   output       wire                o_cp,
   output       wire                o_tick_posedge,
   output       wire                o_tick_negedge
);

    reg     [9 : 0]                 r_count;
    wire                            w_negedge_tick;
    wire                            w_posedge_tick;

    edge_detector_n                 ED_INPUT_CP(
        .i_clk                      (i_clk),
        .i_reset                    (i_reset),
        .i_cp                       (i_cp), 
        .o_posedge                  (w_posedge_tick),
        .o_negedge                  (w_negedge_tick)
    );

    edge_detector_n                 ED_OUTPUT_TICK(
        .i_clk                      (i_clk),
        .i_reset                    (i_reset),
        .i_cp                       (o_cp), 
        .o_posedge                  (o_tick_posedge),
        .o_negedge                  (o_tick_negedge)
    );

   always @(negedge i_clk or posedge i_reset) begin
        if (i_reset) begin
            r_count = 0;
        end
        else if (w_negedge_tick) begin 
            if(r_count >= 1000 - 1) begin
                r_count = 0;
            end
            else begin
                r_count = r_count + 1;
            end
        end
   end

   assign o_cp = (r_count < (1000 / 2))  ? 0 : 1;
endmodule

module SamplingTimer(
        input           wire            i_clk,
        input           wire            i_n_reset,
        input           wire            i_enable,
        output          wire            o_tick
    );

                        wire            w_clk_us_posedge;
                        wire            w_clk_ms_posedge;

        clock_div_100                   CLK_DIV_US(
            .i_clk                      (i_clk),
            .i_reset                    (~i_n_reset),
            .o_cp                       (),
            .o_tick_posedge             (w_clk_us_posedge),
            .o_tick_negedge             ()
        );
        clock_div_1000                  CLK_DIV_MS(
            .i_clk                      (i_clk),
            .i_reset                    (~i_n_reset),
            .i_cp                       (w_clk_us_posedge),
            .o_cp                       (),
            .o_tick_posedge             (w_clk_ms_posedge),
            .o_tick_negedge             ()
        );

        assign o_tick = (i_enable) ? (w_clk_ms_posedge) : (1'b0);

endmodule
