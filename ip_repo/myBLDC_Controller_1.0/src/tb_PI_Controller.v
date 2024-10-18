`timescale 1ns / 1ps

module tb_PI_Controller();


reg                                 i_clk                   =       1'b0;
reg                                 i_n_reset               =       1'b1;
reg                                 i_enable_control        =       1'b0;
reg                 [7 : 0]         i_p_gain                =       0;
reg                 [7 : 0]         i_i_gain                =       0;
reg                 [11 : 0]        i_reference             =       0;
reg                 [12 : 0]        i_plant_output          =       0;

wire                [11 : 0]        o_control_input;
wire    signed      [14 : 0]        o_error;
wire    signed      [19 : 0]        o_p_term;
wire    signed      [19 : 0]        o_i_term;

    PI_Controller                   DUT(
        .i_clk                      (i_clk),
        .i_n_reset                  (i_n_reset),
        .i_enable_control           (i_enable_control),
        .i_p_gain                   (i_p_gain),
        .i_i_gain                   (i_i_gain),
        .i_reference                (i_reference),
        .i_plant_output             (i_plant_output),
        .o_control_input            (o_control_input),
        .o_error                    (o_error),
        .o_p_term                   (o_p_term),
        .o_i_term                   (o_i_term)
    );

    always #5 i_clk = ~i_clk;
    initial begin
        @(posedge i_clk) i_n_reset = 0;
        @(posedge i_clk) i_n_reset = 1;
        @(posedge i_clk) i_enable_control = 1; i_i_gain = 100; i_reference = 500;
    end

endmodule
