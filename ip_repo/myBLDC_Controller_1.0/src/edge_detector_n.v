`timescale 1ns / 1ps

module edge_detector_n(
    input       wire        i_clk,
    input       wire        i_reset,
    input       wire        i_cp,
    output      wire        o_posedge,
    output      wire        o_negedge
);

    reg r_cp;
    reg r_cp_z;

    always @(negedge i_clk or posedge i_reset)begin
        if(i_reset)begin
            r_cp    <= 0;
            r_cp_z  <= 0;
        end
        else begin
            r_cp    <= i_cp;
            r_cp_z  <= r_cp;
        end
    end
    
    assign o_posedge    =   r_cp     &   ~r_cp_z;
    assign o_negedge    =   ~r_cp    &   r_cp_z;
endmodule
