`timescale 1ns / 1ps

module potentiometer(
      input         wire                    i_clk,
      input         wire                    i_n_reset,
      input         wire                    i_vaux6p,
      input         wire                    i_vaux6n,
      output        wire        [11 : 0]    o_value
    );
      
                    wire        [6 : 0]     w_daddr_in;
                    wire        [4 : 0]     w_channel_out;
                    wire                    w_eoc_out;
                    wire                    w_eoc_out_negedge;
                    wire        [15 : 0]    w_do_out;
                    reg         [11 : 0]    r_value;

        xadc_wiz_0                          adc_ch6(
            .daddr_in                       (w_daddr_in),            // Address bus for the dynamic reconfiguration port
            .dclk_in                        (i_clk),             // Clock input for the dynamic reconfiguration port
            .den_in                         (w_eoc_out),              // Enable Signal for the dynamic reconfiguration port
            .reset_in                       (~i_n_reset),            // Reset signal for the System Monitor control logic
            .vauxp6                         (i_vaux6p),              // Auxiliary channel 6
            .vauxn6                         (i_vaux6n),
            .channel_out                    (w_channel_out),         // Channel Selection Outputs
            .do_out                         (w_do_out),              // Output data bus for dynamic reconfiguration port
            .eoc_out                        (w_eoc_out)             // End of Conversion Signal
        );
      
        edge_detector_n                     ED_EOC(
            .i_clk                          (i_clk),
            .i_reset                        (~i_n_reset),
            .i_cp                           (w_eoc_out),
            .o_posedge                      (),
            .o_negedge                      (w_eoc_out_negedge)
        );
            
      always@ (posedge i_clk) begin
            if (!i_n_reset) begin
                r_value <= 0;
            end      
            else if (w_eoc_out_negedge)begin
                r_value <= w_do_out[15 -: 12];
            end
      end     
      
      assign w_daddr_in = {2'h0, w_channel_out};
      assign o_value    = r_value;

endmodule