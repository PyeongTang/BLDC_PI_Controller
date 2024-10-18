module ringCounterFnd(
    input       wire                i_clk,
    input       wire                i_reset,
    output      wire    [3 : 0]     o_fnd_sel
);
    
    reg     [16 : 0]                r_delay_counter;
    reg     [3 : 0]                 r_fnd_sel;
    wire                            w_delay_counter_posedge;
    
    edge_detector_n                 ED_DELAY_COUNTER(
        .i_clk                      (i_clk),
        .i_reset                    (i_reset),
        .i_cp                       (r_delay_counter[16]),
        .o_posedge                  (w_delay_counter_posedge),
        .o_negedge                  ()
    );

    always @(posedge i_clk) begin
        r_delay_counter <= r_delay_counter + 1;
    end
    
    always @(posedge i_clk or posedge i_reset)begin
        if (i_reset) begin
            r_fnd_sel <= 4'b1110;
        end
        else if (w_delay_counter_posedge) begin
            if (r_fnd_sel == 4'b0111) begin
                r_fnd_sel <= 4'b1110;
            end
            else begin
                r_fnd_sel <= {r_fnd_sel[2 : 0], 1'b1};
            end
        end
    end

    assign o_fnd_sel = r_fnd_sel;
endmodule