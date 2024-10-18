module fndControl(
    input       wire                    i_clk,
    input       wire                    i_reset,
    input       wire        [15 : 0]    i_value,
    output      wire        [7 : 0]     o_fnd,
    output      wire        [3 : 0]     o_fnd_sel
);

    reg     [3 : 0]                     r_hex_value;
    wire    [3 : 0]                     w_hex_value;
    
    decoder7Seg                         FND_VALUE(
        .i_hex_value                    (w_hex_value),
        .o_fnd_value                    (o_fnd)
    );

    ringCounterFnd                      FND_SELECT(
        .i_clk                          (i_clk),
        .i_reset                        (i_reset),
        .o_fnd_sel                      (o_fnd_sel)
    );
    
    always @(posedge i_clk)begin
        case(o_fnd_sel)
            4'b1110 : r_hex_value <= i_value[3   :   0];
            4'b1101 : r_hex_value <= i_value[7   :   4];
            4'b1011 : r_hex_value <= i_value[11  :   8];
            4'b0111 : r_hex_value <= i_value[15  :   12];
        endcase
    end

    assign w_hex_value = r_hex_value;
    
endmodule