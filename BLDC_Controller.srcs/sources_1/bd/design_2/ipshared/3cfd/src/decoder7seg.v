module decoder7Seg(
    input       wire        [3 : 0]     i_hex_value,
    output      wire        [7 : 0]     o_fnd_value
);
    
    reg [7 : 0] r_fnd_value;

    //abcd_efgp  
    always @(i_hex_value)begin
        case(i_hex_value)
            4'h0    : r_fnd_value = 8'b0000_0011;  // 0
            4'h1    : r_fnd_value = 8'b1001_1111;  // 1
            4'h2    : r_fnd_value = 8'b0010_0101;  // 2
            4'h3    : r_fnd_value = 8'b0000_1101;  // 3
            4'h4    : r_fnd_value = 8'b1001_1001;  // 4
            4'h5    : r_fnd_value = 8'b0100_1001;  // 5
            4'h6    : r_fnd_value = 8'b0100_0001;  // 6
            4'h7    : r_fnd_value = 8'b0001_1111;  // 7
            4'h8    : r_fnd_value = 8'b0000_0001;  // 8
            4'h9    : r_fnd_value = 8'b0001_1001;  // 9
            4'hA    : r_fnd_value = 8'b0001_0001;  // A
            4'hB    : r_fnd_value = 8'b1100_0001;  // b
            4'hC    : r_fnd_value = 8'b0110_0011;  // C
            4'hD    : r_fnd_value = 8'b1000_0101;  // d
            4'hE    : r_fnd_value = 8'b0110_0001;  // E
            4'hF    : r_fnd_value = 8'b0111_0001;  // F
            default : r_fnd_value = 8'b1111_1101;  // Middle Bar (Error)
        endcase
    end

    assign o_fnd_value = r_fnd_value;

endmodule