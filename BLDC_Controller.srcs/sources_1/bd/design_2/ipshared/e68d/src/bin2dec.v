module bin2Dec(
        input       wire        [11 : 0]        i_bin,
        output      wire        [15 : 0]        o_bcd
    );

    reg [3 : 0] i;
    reg [15 : 0] r_bcd;

    always @(*) begin
        r_bcd = 0;
        for (i = 0; i < 12; i = i + 1)begin
            r_bcd = {r_bcd[14:0], i_bin[11-i]};
            if(i < 11 && r_bcd[3:0] > 4)    r_bcd[3:0]      =   r_bcd[3:0]   + 3;
            if(i < 11 && r_bcd[7:4] > 4)    r_bcd[7:4]      =   r_bcd[7:4]   + 3;
            if(i < 11 && r_bcd[11:8] > 4)   r_bcd[11:8]     =   r_bcd[11:8]  + 3;
            if(i < 11 && r_bcd[15:12] > 4)  r_bcd[15:12]    =   r_bcd[15:12] + 3;
        end
    end
    assign o_bcd = r_bcd;
    
endmodule