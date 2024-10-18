// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu Oct 17 22:45:11 2024
// Host        : LeeJP running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_2_myBLDC_Controller_0_0_sim_netlist.v
// Design      : design_2_myBLDC_Controller_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_BLDC_Controller
   (P,
    AR,
    o_U_pos,
    o_U_neg,
    o_V_pos,
    o_V_neg,
    o_W_pos,
    o_W_neg,
    o_W_pwm,
    w_time_count,
    Q,
    o_get_RPM,
    data5,
    \r_error_reg[13] ,
    o_hall_one_hot_state,
    i_sw_enable_control,
    E,
    s00_axi_aclk,
    r_p_term_reg,
    r_integral_component2,
    r_integral_component2_0,
    \r_time_count_reg[31] ,
    s00_axi_aresetn,
    i_hall_state,
    i_sw_rot_ccw,
    \r_reference_reg[11] ,
    i_sw_bypass,
    \r_RPM_reg[0] ,
    r_get_RPM_i_3,
    \r_i_gain_reg[7] );
  output [14:0]P;
  output [0:0]AR;
  output o_U_pos;
  output o_U_neg;
  output o_V_pos;
  output o_V_neg;
  output o_W_pos;
  output o_W_neg;
  output o_W_pwm;
  output [31:0]w_time_count;
  output [23:0]Q;
  output o_get_RPM;
  output [11:0]data5;
  output [13:0]\r_error_reg[13] ;
  output [5:0]o_hall_one_hot_state;
  input i_sw_enable_control;
  input [0:0]E;
  input s00_axi_aclk;
  input [7:0]r_p_term_reg;
  input [0:0]r_integral_component2;
  input [7:0]r_integral_component2_0;
  input \r_time_count_reg[31] ;
  input s00_axi_aresetn;
  input [2:0]i_hall_state;
  input i_sw_rot_ccw;
  input [11:0]\r_reference_reg[11] ;
  input i_sw_bypass;
  input [13:0]\r_RPM_reg[0] ;
  input r_get_RPM_i_3;
  input [7:0]\r_i_gain_reg[7] ;

  wire [0:0]AR;
  wire DETERMINE_DUTY_n_40;
  wire DETERMINE_DUTY_n_41;
  wire DETERMINE_DUTY_n_42;
  wire DETERMINE_DUTY_n_43;
  wire DETERMINE_DUTY_n_44;
  wire DETERMINE_DUTY_n_45;
  wire DETERMINE_DUTY_n_46;
  wire DETERMINE_DUTY_n_47;
  wire DETERMINE_DUTY_n_48;
  wire DETERMINE_DUTY_n_49;
  wire DETERMINE_DUTY_n_50;
  wire DETERMINE_DUTY_n_51;
  wire [0:0]E;
  wire [14:0]P;
  wire [23:0]Q;
  wire [11:0]data5;
  wire [2:0]i_hall_state;
  wire i_sw_bypass;
  wire i_sw_enable_control;
  wire i_sw_rot_ccw;
  wire o_U_neg;
  wire o_U_pos;
  wire o_V_neg;
  wire o_V_pos;
  wire o_W_neg;
  wire o_W_pos;
  wire o_W_pwm;
  wire o_get_RPM;
  wire [5:0]o_hall_one_hot_state;
  wire [12:0]r_RPM;
  wire [13:0]\r_RPM_reg[0] ;
  wire [11:0]r_count_duty_reg;
  wire [13:0]\r_error_reg[13] ;
  wire r_get_RPM_i_3;
  wire [7:0]\r_i_gain_reg[7] ;
  wire [0:0]r_integral_component2;
  wire [7:0]r_integral_component2_0;
  wire [7:0]r_p_term_reg;
  wire [11:0]\r_reference_reg[11] ;
  wire \r_time_count_reg[31] ;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire [31:0]w_time_count;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Hall_Sequencer DETERIMNE_DIRECTION
       (.Q(r_RPM),
        .i_hall_state(i_hall_state),
        .i_sw_rot_ccw(i_sw_rot_ccw),
        .o_U_neg(o_U_neg),
        .o_U_pos(o_U_pos),
        .o_V_neg(o_V_neg),
        .o_V_pos(o_V_pos),
        .o_W_neg(o_W_neg),
        .o_W_pos(o_W_pos),
        .o_get_RPM(o_get_RPM),
        .o_hall_one_hot_state(o_hall_one_hot_state),
        .\r_RPM_reg[0]_0 (\r_RPM_reg[0] ),
        .r_get_RPM_i_3_0(r_get_RPM_i_3),
        .r_get_RPM_reg_0(AR),
        .\r_time_count_reg[31]_0 (\r_time_count_reg[31] ),
        .s00_axi_aclk(s00_axi_aclk),
        .w_time_count(w_time_count));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PI_Controller DETERMINE_DUTY
       (.D(r_RPM),
        .DI({DETERMINE_DUTY_n_44,DETERMINE_DUTY_n_45,DETERMINE_DUTY_n_46,DETERMINE_DUTY_n_47}),
        .E(E),
        .P(P),
        .Q(Q),
        .S({DETERMINE_DUTY_n_40,DETERMINE_DUTY_n_41,DETERMINE_DUTY_n_42,DETERMINE_DUTY_n_43}),
        .data5(data5),
        .i_sw_bypass(i_sw_bypass),
        .i_sw_enable_control(i_sw_enable_control),
        .out(r_count_duty_reg),
        .\r_count_duty_reg[10] ({DETERMINE_DUTY_n_48,DETERMINE_DUTY_n_49}),
        .\r_count_duty_reg[10]_0 ({DETERMINE_DUTY_n_50,DETERMINE_DUTY_n_51}),
        .\r_error_reg[13]_0 (\r_error_reg[13] ),
        .\r_i_gain_reg[7]_0 (\r_i_gain_reg[7] ),
        .r_integral_component2_0(r_integral_component2),
        .r_integral_component2_1(r_integral_component2_0),
        .r_p_term_reg_0(r_p_term_reg),
        .\r_reference_reg[11]_0 (\r_reference_reg[11] ),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_aresetn_0(AR));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PWM PWM_U_PHASE
       (.DI({DETERMINE_DUTY_n_44,DETERMINE_DUTY_n_45,DETERMINE_DUTY_n_46,DETERMINE_DUTY_n_47}),
        .S({DETERMINE_DUTY_n_40,DETERMINE_DUTY_n_41,DETERMINE_DUTY_n_42,DETERMINE_DUTY_n_43}),
        .o_W_pwm(o_W_pwm),
        .out(r_count_duty_reg),
        .r_cp_reg(AR),
        .r_pwm_reg_0({DETERMINE_DUTY_n_50,DETERMINE_DUTY_n_51}),
        .r_pwm_reg_1({DETERMINE_DUTY_n_48,DETERMINE_DUTY_n_49}),
        .s00_axi_aclk(s00_axi_aclk));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Button2Gain
   (E,
    Q,
    \r_gain_reg[5]_0 ,
    \r_gain_reg[1]_0 ,
    w_i_gain_bcd,
    \r_gain_reg[2]_0 ,
    i_sw_display_gain_0,
    s00_axi_aclk,
    SR,
    w_delay_counter_posedge,
    i_btn_r,
    i_btn_l,
    \r_hex_value[1]_i_3 ,
    \r_hex_value[1]_i_3_0 ,
    \r_hex_value_reg[3] ,
    i_sw_display_gain,
    \r_hex_value_reg[3]_0 );
  output [0:0]E;
  output [7:0]Q;
  output [7:0]\r_gain_reg[5]_0 ;
  output \r_gain_reg[1]_0 ;
  output [5:0]w_i_gain_bcd;
  output \r_gain_reg[2]_0 ;
  output i_sw_display_gain_0;
  input s00_axi_aclk;
  input [0:0]SR;
  input w_delay_counter_posedge;
  input i_btn_r;
  input i_btn_l;
  input \r_hex_value[1]_i_3 ;
  input [0:0]\r_hex_value[1]_i_3_0 ;
  input \r_hex_value_reg[3] ;
  input i_sw_display_gain;
  input [0:0]\r_hex_value_reg[3]_0 ;

  wire BTN_INC_CTRL_n_1;
  wire BTN_INC_CTRL_n_2;
  wire BTN_INC_CTRL_n_3;
  wire BTN_INC_CTRL_n_4;
  wire BTN_INC_CTRL_n_5;
  wire BTN_INC_CTRL_n_6;
  wire BTN_INC_CTRL_n_7;
  wire [0:0]E;
  wire \ED_BTN/r_cp ;
  wire \ED_BTN/r_cp_z ;
  wire [7:0]Q;
  wire [0:0]SR;
  wire i_btn_l;
  wire i_btn_r;
  wire i_sw_display_gain;
  wire i_sw_display_gain_0;
  wire \r_gain[4]_i_2__0_n_0 ;
  wire \r_gain[4]_i_3__0_n_0 ;
  wire \r_gain[4]_i_4__0_n_0 ;
  wire \r_gain[4]_i_5__0_n_0 ;
  wire \r_gain[7]_i_2__0_n_0 ;
  wire \r_gain[7]_i_3__0_n_0 ;
  wire \r_gain[7]_i_4__0_n_0 ;
  wire \r_gain_reg[1]_0 ;
  wire \r_gain_reg[2]_0 ;
  wire [7:0]\r_gain_reg[5]_0 ;
  wire \r_hex_value[1]_i_11_n_0 ;
  wire \r_hex_value[1]_i_12_n_0 ;
  wire \r_hex_value[1]_i_13_n_0 ;
  wire \r_hex_value[1]_i_3 ;
  wire [0:0]\r_hex_value[1]_i_3_0 ;
  wire \r_hex_value[3]_i_15_n_0 ;
  wire \r_hex_value[3]_i_16_n_0 ;
  wire \r_hex_value[3]_i_38_n_0 ;
  wire \r_hex_value[3]_i_39_n_0 ;
  wire \r_hex_value[3]_i_40_n_0 ;
  wire \r_hex_value_reg[3] ;
  wire [0:0]\r_hex_value_reg[3]_0 ;
  wire r_integral_component2_i_10_n_0;
  wire r_integral_component2_i_11_n_0;
  wire r_integral_component2_i_12_n_0;
  wire r_integral_component2_i_13_n_0;
  wire r_integral_component2_i_15_n_0;
  wire r_integral_component2_i_6_n_0;
  wire r_integral_component2_i_7_n_0;
  wire r_integral_component2_i_8_n_0;
  wire r_integral_component2_i_9_n_0;
  wire s00_axi_aclk;
  wire w_delay_counter_posedge;
  wire [5:0]w_i_gain_bcd;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_buttonControl_5 BTN_DEC_CTRL
       (.SR(SR),
        .i_btn_l(i_btn_l),
        .r_cp(\ED_BTN/r_cp ),
        .r_cp_z(\ED_BTN/r_cp_z ),
        .s00_axi_aclk(s00_axi_aclk),
        .w_delay_counter_posedge(w_delay_counter_posedge));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_buttonControl_6 BTN_INC_CTRL
       (.D({BTN_INC_CTRL_n_1,BTN_INC_CTRL_n_2,BTN_INC_CTRL_n_3,BTN_INC_CTRL_n_4,BTN_INC_CTRL_n_5,BTN_INC_CTRL_n_6,BTN_INC_CTRL_n_7}),
        .DI(\r_gain[4]_i_2__0_n_0 ),
        .E(E),
        .Q(Q[5:0]),
        .S({\r_gain[4]_i_3__0_n_0 ,\r_gain[4]_i_4__0_n_0 ,\r_gain[4]_i_5__0_n_0 }),
        .SR(SR),
        .i_btn_r(i_btn_r),
        .r_cp(\ED_BTN/r_cp ),
        .r_cp_z(\ED_BTN/r_cp_z ),
        .\r_gain_reg[5] (\r_gain_reg[5]_0 [7:1]),
        .\r_gain_reg[7] (r_integral_component2_i_6_n_0),
        .\r_gain_reg[7]_0 ({\r_gain[7]_i_2__0_n_0 ,\r_gain[7]_i_3__0_n_0 ,\r_gain[7]_i_4__0_n_0 }),
        .r_integral_component2(r_integral_component2_i_10_n_0),
        .r_integral_component2_0({r_integral_component2_i_11_n_0,r_integral_component2_i_12_n_0,r_integral_component2_i_13_n_0}),
        .r_integral_component2_1({r_integral_component2_i_7_n_0,r_integral_component2_i_8_n_0,r_integral_component2_i_9_n_0}),
        .s00_axi_aclk(s00_axi_aclk),
        .w_delay_counter_posedge(w_delay_counter_posedge));
  LUT1 #(
    .INIT(2'h1)) 
    \r_gain[4]_i_2__0 
       (.I0(Q[1]),
        .O(\r_gain[4]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r_gain[4]_i_3__0 
       (.I0(Q[3]),
        .I1(Q[4]),
        .O(\r_gain[4]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r_gain[4]_i_4__0 
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(\r_gain[4]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r_gain[4]_i_5__0 
       (.I0(Q[1]),
        .I1(Q[2]),
        .O(\r_gain[4]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r_gain[7]_i_2__0 
       (.I0(Q[6]),
        .I1(Q[7]),
        .O(\r_gain[7]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r_gain[7]_i_3__0 
       (.I0(Q[6]),
        .I1(Q[5]),
        .O(\r_gain[7]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r_gain[7]_i_4__0 
       (.I0(Q[4]),
        .I1(Q[5]),
        .O(\r_gain[7]_i_4__0_n_0 ));
  FDRE \r_gain_reg[0] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\r_gain_reg[5]_0 [0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \r_gain_reg[1] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(BTN_INC_CTRL_n_7),
        .Q(Q[1]),
        .R(SR));
  FDRE \r_gain_reg[2] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(BTN_INC_CTRL_n_6),
        .Q(Q[2]),
        .R(SR));
  FDRE \r_gain_reg[3] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(BTN_INC_CTRL_n_5),
        .Q(Q[3]),
        .R(SR));
  FDRE \r_gain_reg[4] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(BTN_INC_CTRL_n_4),
        .Q(Q[4]),
        .R(SR));
  FDRE \r_gain_reg[5] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(BTN_INC_CTRL_n_3),
        .Q(Q[5]),
        .R(SR));
  FDRE \r_gain_reg[6] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(BTN_INC_CTRL_n_2),
        .Q(Q[6]),
        .R(SR));
  FDRE \r_gain_reg[7] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(BTN_INC_CTRL_n_1),
        .Q(Q[7]),
        .R(SR));
  LUT6 #(
    .INIT(64'h00FFFE0003FF0000)) 
    \r_hex_value[0]_i_11 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(Q[6]),
        .I4(Q[7]),
        .I5(Q[5]),
        .O(w_i_gain_bcd[5]));
  LUT6 #(
    .INIT(64'h609F996600FF9F60)) 
    \r_hex_value[0]_i_7 
       (.I0(Q[3]),
        .I1(\r_hex_value[3]_i_40_n_0 ),
        .I2(Q[2]),
        .I3(\r_hex_value[3]_i_38_n_0 ),
        .I4(\r_hex_value[3]_i_39_n_0 ),
        .I5(Q[1]),
        .O(w_i_gain_bcd[1]));
  LUT6 #(
    .INIT(64'h0F1FC08380070FE0)) 
    \r_hex_value[1]_i_10 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(Q[6]),
        .I4(Q[7]),
        .I5(Q[5]),
        .O(w_i_gain_bcd[2]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \r_hex_value[1]_i_11 
       (.I0(Q[5]),
        .I1(Q[6]),
        .I2(Q[7]),
        .O(\r_hex_value[1]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hD242)) 
    \r_hex_value[1]_i_12 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(Q[6]),
        .I3(Q[4]),
        .O(\r_hex_value[1]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h3C9E1C86)) 
    \r_hex_value[1]_i_13 
       (.I0(Q[6]),
        .I1(Q[7]),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(\r_hex_value[1]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hF6F6F666)) 
    \r_hex_value[1]_i_9 
       (.I0(\r_hex_value[1]_i_3 ),
        .I1(\r_hex_value[1]_i_3_0 ),
        .I2(\r_hex_value[1]_i_11_n_0 ),
        .I3(\r_hex_value[1]_i_12_n_0 ),
        .I4(\r_hex_value[1]_i_13_n_0 ),
        .O(\r_gain_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h693C)) 
    \r_hex_value[2]_i_13 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(\r_hex_value[3]_i_39_n_0 ),
        .I3(\r_gain_reg[2]_0 ),
        .O(w_i_gain_bcd[0]));
  LUT6 #(
    .INIT(64'hF01F00FC00F80F00)) 
    \r_hex_value[2]_i_14 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(Q[6]),
        .I4(Q[7]),
        .I5(Q[5]),
        .O(w_i_gain_bcd[3]));
  LUT6 #(
    .INIT(64'h6E6EF776F7766E6E)) 
    \r_hex_value[3]_i_14 
       (.I0(\r_hex_value[3]_i_38_n_0 ),
        .I1(\r_hex_value[3]_i_39_n_0 ),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(\r_hex_value[3]_i_40_n_0 ),
        .O(\r_gain_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h9296499296249296)) 
    \r_hex_value[3]_i_15 
       (.I0(Q[3]),
        .I1(Q[5]),
        .I2(Q[7]),
        .I3(Q[6]),
        .I4(Q[4]),
        .I5(Q[2]),
        .O(\r_hex_value[3]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hBE)) 
    \r_hex_value[3]_i_16 
       (.I0(Q[1]),
        .I1(\r_hex_value[3]_i_39_n_0 ),
        .I2(Q[2]),
        .O(\r_hex_value[3]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h00E001000300F000)) 
    \r_hex_value[3]_i_17 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(Q[6]),
        .I4(Q[7]),
        .I5(Q[5]),
        .O(w_i_gain_bcd[4]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h26926426)) 
    \r_hex_value[3]_i_38 
       (.I0(Q[4]),
        .I1(Q[6]),
        .I2(Q[7]),
        .I3(Q[5]),
        .I4(Q[3]),
        .O(\r_hex_value[3]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h66B66D6664264964)) 
    \r_hex_value[3]_i_39 
       (.I0(Q[4]),
        .I1(Q[6]),
        .I2(Q[7]),
        .I3(Q[5]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\r_hex_value[3]_i_39_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h66D64694)) 
    \r_hex_value[3]_i_40 
       (.I0(Q[5]),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(\r_hex_value[3]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h000000002EE2EE22)) 
    \r_hex_value[3]_i_5 
       (.I0(\r_hex_value_reg[3] ),
        .I1(i_sw_display_gain),
        .I2(\r_gain_reg[2]_0 ),
        .I3(\r_hex_value[3]_i_15_n_0 ),
        .I4(\r_hex_value[3]_i_16_n_0 ),
        .I5(\r_hex_value_reg[3]_0 ),
        .O(i_sw_display_gain_0));
  LUT1 #(
    .INIT(2'h1)) 
    r_integral_component2_i_10
       (.I0(Q[1]),
        .O(r_integral_component2_i_10_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r_integral_component2_i_11
       (.I0(Q[3]),
        .I1(Q[4]),
        .O(r_integral_component2_i_11_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r_integral_component2_i_12
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(r_integral_component2_i_12_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r_integral_component2_i_13
       (.I0(Q[1]),
        .I1(Q[2]),
        .O(r_integral_component2_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    r_integral_component2_i_15
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[7]),
        .I3(Q[6]),
        .O(r_integral_component2_i_15_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    r_integral_component2_i_5
       (.I0(Q[0]),
        .O(\r_gain_reg[5]_0 [0]));
  LUT5 #(
    .INIT(32'h00000001)) 
    r_integral_component2_i_6
       (.I0(r_integral_component2_i_15_n_0),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[0]),
        .O(r_integral_component2_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r_integral_component2_i_7
       (.I0(Q[6]),
        .I1(Q[7]),
        .O(r_integral_component2_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r_integral_component2_i_8
       (.I0(Q[6]),
        .I1(Q[5]),
        .O(r_integral_component2_i_8_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r_integral_component2_i_9
       (.I0(Q[4]),
        .I1(Q[5]),
        .O(r_integral_component2_i_9_n_0));
endmodule

(* ORIG_REF_NAME = "Button2Gain" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Button2Gain_0
   (w_delay_counter_posedge,
    E,
    Q,
    \r_gain_reg[5]_0 ,
    \r_gain_reg[0]_0 ,
    \r_gain_reg[2]_0 ,
    \r_gain_reg[2]_1 ,
    i_sw_display_gain_0,
    i_sw_display_gain_1,
    s00_axi_aclk,
    SR,
    i_btn_u,
    i_btn_d,
    w_i_gain_bcd,
    \r_hex_value_reg[1] ,
    i_sw_display_gain,
    \r_hex_value_reg[3] );
  output w_delay_counter_posedge;
  output [0:0]E;
  output [0:0]Q;
  output [7:0]\r_gain_reg[5]_0 ;
  output \r_gain_reg[0]_0 ;
  output [3:0]\r_gain_reg[2]_0 ;
  output \r_gain_reg[2]_1 ;
  output i_sw_display_gain_0;
  output i_sw_display_gain_1;
  input s00_axi_aclk;
  input [0:0]SR;
  input i_btn_u;
  input i_btn_d;
  input [0:0]w_i_gain_bcd;
  input \r_hex_value_reg[1] ;
  input i_sw_display_gain;
  input [0:0]\r_hex_value_reg[3] ;

  wire BTN_INC_CTRL_n_2;
  wire BTN_INC_CTRL_n_3;
  wire BTN_INC_CTRL_n_4;
  wire BTN_INC_CTRL_n_5;
  wire BTN_INC_CTRL_n_6;
  wire BTN_INC_CTRL_n_7;
  wire BTN_INC_CTRL_n_8;
  wire [0:0]E;
  wire \ED_BTN/r_cp ;
  wire \ED_BTN/r_cp_z ;
  wire [0:0]Q;
  wire [0:0]SR;
  wire i_btn_d;
  wire i_btn_u;
  wire i_sw_display_gain;
  wire i_sw_display_gain_0;
  wire i_sw_display_gain_1;
  wire r_bcd1;
  wire [1:1]r_bcd3_out;
  wire \r_gain[4]_i_2_n_0 ;
  wire \r_gain[4]_i_3_n_0 ;
  wire \r_gain[4]_i_4_n_0 ;
  wire \r_gain[4]_i_5_n_0 ;
  wire \r_gain[7]_i_2_n_0 ;
  wire \r_gain[7]_i_3_n_0 ;
  wire \r_gain[7]_i_4_n_0 ;
  wire \r_gain_reg[0]_0 ;
  wire [3:0]\r_gain_reg[2]_0 ;
  wire \r_gain_reg[2]_1 ;
  wire [7:0]\r_gain_reg[5]_0 ;
  wire \r_hex_value[1]_i_7_n_0 ;
  wire \r_hex_value[3]_i_22_n_0 ;
  wire \r_hex_value[3]_i_23_n_0 ;
  wire \r_hex_value_reg[1] ;
  wire [0:0]\r_hex_value_reg[3] ;
  wire r_p_term_reg_i_10_n_0;
  wire r_p_term_reg_i_11_n_0;
  wire r_p_term_reg_i_12_n_0;
  wire r_p_term_reg_i_13_n_0;
  wire r_p_term_reg_i_14_n_0;
  wire r_p_term_reg_i_16_n_0;
  wire r_p_term_reg_i_7_n_0;
  wire r_p_term_reg_i_8_n_0;
  wire r_p_term_reg_i_9_n_0;
  wire s00_axi_aclk;
  wire w_delay_counter_posedge;
  wire [0:0]w_i_gain_bcd;
  wire [7:0]w_p_gain;
  wire [7:7]w_p_gain_bcd;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_buttonControl BTN_DEC_CTRL
       (.SR(SR),
        .i_btn_d(i_btn_d),
        .r_cp(\ED_BTN/r_cp ),
        .r_cp_z(\ED_BTN/r_cp_z ),
        .s00_axi_aclk(s00_axi_aclk),
        .w_delay_counter_posedge(w_delay_counter_posedge));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_buttonControl_1 BTN_INC_CTRL
       (.D({BTN_INC_CTRL_n_2,BTN_INC_CTRL_n_3,BTN_INC_CTRL_n_4,BTN_INC_CTRL_n_5,BTN_INC_CTRL_n_6,BTN_INC_CTRL_n_7,BTN_INC_CTRL_n_8}),
        .DI(\r_gain[4]_i_2_n_0 ),
        .E(E),
        .Q({w_p_gain[5:2],Q,w_p_gain[0]}),
        .S({\r_gain[4]_i_3_n_0 ,\r_gain[4]_i_4_n_0 ,\r_gain[4]_i_5_n_0 }),
        .SR(SR),
        .i_btn_u(i_btn_u),
        .r_cp(\ED_BTN/r_cp ),
        .r_cp_z(\ED_BTN/r_cp_z ),
        .\r_gain_reg[5] (\r_gain_reg[5]_0 [7:1]),
        .\r_gain_reg[7] (r_p_term_reg_i_7_n_0),
        .\r_gain_reg[7]_0 ({\r_gain[7]_i_2_n_0 ,\r_gain[7]_i_3_n_0 ,\r_gain[7]_i_4_n_0 }),
        .r_p_term_reg(r_p_term_reg_i_11_n_0),
        .r_p_term_reg_0({r_p_term_reg_i_12_n_0,r_p_term_reg_i_13_n_0,r_p_term_reg_i_14_n_0}),
        .r_p_term_reg_1({r_p_term_reg_i_8_n_0,r_p_term_reg_i_9_n_0,r_p_term_reg_i_10_n_0}),
        .s00_axi_aclk(s00_axi_aclk),
        .w_delay_counter_posedge(w_delay_counter_posedge));
  LUT1 #(
    .INIT(2'h1)) 
    \r_gain[4]_i_2 
       (.I0(Q),
        .O(\r_gain[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r_gain[4]_i_3 
       (.I0(w_p_gain[3]),
        .I1(w_p_gain[4]),
        .O(\r_gain[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r_gain[4]_i_4 
       (.I0(w_p_gain[2]),
        .I1(w_p_gain[3]),
        .O(\r_gain[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r_gain[4]_i_5 
       (.I0(Q),
        .I1(w_p_gain[2]),
        .O(\r_gain[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r_gain[7]_i_2 
       (.I0(w_p_gain[6]),
        .I1(w_p_gain[7]),
        .O(\r_gain[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r_gain[7]_i_3 
       (.I0(w_p_gain[6]),
        .I1(w_p_gain[5]),
        .O(\r_gain[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r_gain[7]_i_4 
       (.I0(w_p_gain[4]),
        .I1(w_p_gain[5]),
        .O(\r_gain[7]_i_4_n_0 ));
  FDRE \r_gain_reg[0] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\r_gain_reg[5]_0 [0]),
        .Q(w_p_gain[0]),
        .R(SR));
  FDRE \r_gain_reg[1] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(BTN_INC_CTRL_n_8),
        .Q(Q),
        .R(SR));
  FDRE \r_gain_reg[2] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(BTN_INC_CTRL_n_7),
        .Q(w_p_gain[2]),
        .R(SR));
  FDRE \r_gain_reg[3] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(BTN_INC_CTRL_n_6),
        .Q(w_p_gain[3]),
        .R(SR));
  FDRE \r_gain_reg[4] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(BTN_INC_CTRL_n_5),
        .Q(w_p_gain[4]),
        .R(SR));
  FDRE \r_gain_reg[5] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(BTN_INC_CTRL_n_4),
        .Q(w_p_gain[5]),
        .R(SR));
  FDRE \r_gain_reg[6] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(BTN_INC_CTRL_n_3),
        .Q(w_p_gain[6]),
        .R(SR));
  FDRE \r_gain_reg[7] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(BTN_INC_CTRL_n_2),
        .Q(w_p_gain[7]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h26926426)) 
    \r_hex_value[0]_i_10 
       (.I0(w_p_gain[4]),
        .I1(w_p_gain[6]),
        .I2(w_p_gain[7]),
        .I3(w_p_gain[5]),
        .I4(w_p_gain[3]),
        .O(r_bcd3_out));
  LUT6 #(
    .INIT(64'h609F996600FF9F60)) 
    \r_hex_value[0]_i_5 
       (.I0(w_p_gain[3]),
        .I1(\r_hex_value[3]_i_22_n_0 ),
        .I2(w_p_gain[2]),
        .I3(r_bcd3_out),
        .I4(\r_hex_value[3]_i_23_n_0 ),
        .I5(Q),
        .O(\r_gain_reg[2]_0 [2]));
  LUT2 #(
    .INIT(4'hE)) 
    \r_hex_value[0]_i_6 
       (.I0(w_p_gain[0]),
        .I1(w_i_gain_bcd),
        .O(\r_gain_reg[0]_0 ));
  LUT5 #(
    .INIT(32'h00002EE2)) 
    \r_hex_value[1]_i_2 
       (.I0(\r_hex_value_reg[1] ),
        .I1(i_sw_display_gain),
        .I2(\r_hex_value[1]_i_7_n_0 ),
        .I3(r_bcd1),
        .I4(\r_hex_value_reg[3] ),
        .O(i_sw_display_gain_0));
  LUT6 #(
    .INIT(64'h4FB42DF20DB024D2)) 
    \r_hex_value[1]_i_7 
       (.I0(w_p_gain[5]),
        .I1(w_p_gain[7]),
        .I2(w_p_gain[6]),
        .I3(w_p_gain[4]),
        .I4(w_p_gain[3]),
        .I5(w_p_gain[2]),
        .O(\r_hex_value[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00FFFE0003FF0000)) 
    \r_hex_value[1]_i_8 
       (.I0(w_p_gain[2]),
        .I1(w_p_gain[3]),
        .I2(w_p_gain[4]),
        .I3(w_p_gain[6]),
        .I4(w_p_gain[7]),
        .I5(w_p_gain[5]),
        .O(r_bcd1));
  LUT4 #(
    .INIT(16'h693C)) 
    \r_hex_value[2]_i_10 
       (.I0(Q),
        .I1(w_p_gain[2]),
        .I2(\r_hex_value[3]_i_23_n_0 ),
        .I3(\r_gain_reg[2]_1 ),
        .O(\r_gain_reg[2]_0 [0]));
  LUT6 #(
    .INIT(64'hF01F00FC00F80F00)) 
    \r_hex_value[2]_i_9 
       (.I0(w_p_gain[2]),
        .I1(w_p_gain[3]),
        .I2(w_p_gain[4]),
        .I3(w_p_gain[6]),
        .I4(w_p_gain[7]),
        .I5(w_p_gain[5]),
        .O(\r_gain_reg[2]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h66D64694)) 
    \r_hex_value[3]_i_22 
       (.I0(w_p_gain[5]),
        .I1(w_p_gain[7]),
        .I2(w_p_gain[6]),
        .I3(w_p_gain[4]),
        .I4(w_p_gain[3]),
        .O(\r_hex_value[3]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h66B66D6664264964)) 
    \r_hex_value[3]_i_23 
       (.I0(w_p_gain[4]),
        .I1(w_p_gain[6]),
        .I2(w_p_gain[7]),
        .I3(w_p_gain[5]),
        .I4(w_p_gain[3]),
        .I5(w_p_gain[2]),
        .O(\r_hex_value[3]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h6E6EF776F7766E6E)) 
    \r_hex_value[3]_i_24 
       (.I0(r_bcd3_out),
        .I1(\r_hex_value[3]_i_23_n_0 ),
        .I2(w_p_gain[2]),
        .I3(Q),
        .I4(w_p_gain[3]),
        .I5(\r_hex_value[3]_i_22_n_0 ),
        .O(\r_gain_reg[2]_1 ));
  LUT3 #(
    .INIT(8'h08)) 
    \r_hex_value[3]_i_3 
       (.I0(w_p_gain_bcd),
        .I1(i_sw_display_gain),
        .I2(\r_hex_value_reg[3] ),
        .O(i_sw_display_gain_1));
  LUT6 #(
    .INIT(64'h00E001000300F000)) 
    \r_hex_value[3]_i_7 
       (.I0(w_p_gain[2]),
        .I1(w_p_gain[3]),
        .I2(w_p_gain[4]),
        .I3(w_p_gain[6]),
        .I4(w_p_gain[7]),
        .I5(w_p_gain[5]),
        .O(w_p_gain_bcd));
  LUT6 #(
    .INIT(64'h8778E11E3CC30FF0)) 
    \r_hex_value[3]_i_8 
       (.I0(Q),
        .I1(w_p_gain[2]),
        .I2(w_p_gain[3]),
        .I3(\r_hex_value[3]_i_22_n_0 ),
        .I4(\r_hex_value[3]_i_23_n_0 ),
        .I5(\r_gain_reg[2]_1 ),
        .O(\r_gain_reg[2]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    r_p_term_reg_i_10
       (.I0(w_p_gain[4]),
        .I1(w_p_gain[5]),
        .O(r_p_term_reg_i_10_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    r_p_term_reg_i_11
       (.I0(Q),
        .O(r_p_term_reg_i_11_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r_p_term_reg_i_12
       (.I0(w_p_gain[3]),
        .I1(w_p_gain[4]),
        .O(r_p_term_reg_i_12_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r_p_term_reg_i_13
       (.I0(w_p_gain[2]),
        .I1(w_p_gain[3]),
        .O(r_p_term_reg_i_13_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r_p_term_reg_i_14
       (.I0(Q),
        .I1(w_p_gain[2]),
        .O(r_p_term_reg_i_14_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    r_p_term_reg_i_16
       (.I0(w_p_gain[5]),
        .I1(w_p_gain[4]),
        .I2(w_p_gain[7]),
        .I3(w_p_gain[6]),
        .O(r_p_term_reg_i_16_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    r_p_term_reg_i_6
       (.I0(w_p_gain[0]),
        .O(\r_gain_reg[5]_0 [0]));
  LUT5 #(
    .INIT(32'h00000001)) 
    r_p_term_reg_i_7
       (.I0(r_p_term_reg_i_16_n_0),
        .I1(Q),
        .I2(w_p_gain[3]),
        .I3(w_p_gain[2]),
        .I4(w_p_gain[0]),
        .O(r_p_term_reg_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r_p_term_reg_i_8
       (.I0(w_p_gain[6]),
        .I1(w_p_gain[7]),
        .O(r_p_term_reg_i_8_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r_p_term_reg_i_9
       (.I0(w_p_gain[6]),
        .I1(w_p_gain[5]),
        .O(r_p_term_reg_i_9_n_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Hall_Sequencer
   (o_U_pos,
    o_U_neg,
    o_V_pos,
    o_V_neg,
    o_W_pos,
    o_W_neg,
    w_time_count,
    o_get_RPM,
    Q,
    o_hall_one_hot_state,
    r_get_RPM_reg_0,
    s00_axi_aclk,
    \r_time_count_reg[31]_0 ,
    i_hall_state,
    i_sw_rot_ccw,
    \r_RPM_reg[0]_0 ,
    r_get_RPM_i_3_0);
  output o_U_pos;
  output o_U_neg;
  output o_V_pos;
  output o_V_neg;
  output o_W_pos;
  output o_W_neg;
  output [31:0]w_time_count;
  output o_get_RPM;
  output [12:0]Q;
  output [5:0]o_hall_one_hot_state;
  input r_get_RPM_reg_0;
  input s00_axi_aclk;
  input \r_time_count_reg[31]_0 ;
  input [2:0]i_hall_state;
  input i_sw_rot_ccw;
  input [13:0]\r_RPM_reg[0]_0 ;
  input r_get_RPM_i_3_0;

  wire [12:0]Q;
  wire [2:0]i_hall_state;
  wire i_sw_rot_ccw;
  wire o_U_neg;
  wire o_U_pos;
  wire o_V_neg;
  wire o_V_pos;
  wire o_W_neg;
  wire o_W_pos;
  wire o_get_RPM;
  wire [5:0]o_hall_one_hot_state;
  wire [13:0]\r_RPM_reg[0]_0 ;
  wire r_U_neg_i_1_n_0;
  wire r_U_pos_i_1_n_0;
  wire r_V_neg_i_1_n_0;
  wire r_V_pos_i_1_n_0;
  wire r_W_neg_i_1_n_0;
  wire r_W_pos_i_1_n_0;
  wire r_get_RPM_i_2_n_0;
  wire r_get_RPM_i_3_0;
  wire r_get_RPM_reg_0;
  wire [5:0]r_hall_one_hot_state;
  wire [2:0]r_hall_state;
  wire [2:0]r_hall_state__0;
  wire \r_hall_state_tristate_oe_reg_n_0_[0] ;
  wire \r_hall_state_tristate_oe_reg_n_0_[1] ;
  wire \r_hall_state_tristate_oe_reg_n_0_[2] ;
  wire r_time_count;
  wire \r_time_count[0]_i_10_n_0 ;
  wire \r_time_count[0]_i_11_n_0 ;
  wire \r_time_count[0]_i_12_n_0 ;
  wire \r_time_count[0]_i_4_n_0 ;
  wire \r_time_count[0]_i_5_n_0 ;
  wire \r_time_count[0]_i_6_n_0 ;
  wire \r_time_count[0]_i_7_n_0 ;
  wire \r_time_count[0]_i_8_n_0 ;
  wire \r_time_count[0]_i_9_n_0 ;
  wire \r_time_count_reg[0]_i_3_n_0 ;
  wire \r_time_count_reg[0]_i_3_n_1 ;
  wire \r_time_count_reg[0]_i_3_n_2 ;
  wire \r_time_count_reg[0]_i_3_n_3 ;
  wire \r_time_count_reg[0]_i_3_n_4 ;
  wire \r_time_count_reg[0]_i_3_n_5 ;
  wire \r_time_count_reg[0]_i_3_n_6 ;
  wire \r_time_count_reg[0]_i_3_n_7 ;
  wire \r_time_count_reg[12]_i_1_n_0 ;
  wire \r_time_count_reg[12]_i_1_n_1 ;
  wire \r_time_count_reg[12]_i_1_n_2 ;
  wire \r_time_count_reg[12]_i_1_n_3 ;
  wire \r_time_count_reg[12]_i_1_n_4 ;
  wire \r_time_count_reg[12]_i_1_n_5 ;
  wire \r_time_count_reg[12]_i_1_n_6 ;
  wire \r_time_count_reg[12]_i_1_n_7 ;
  wire \r_time_count_reg[16]_i_1_n_0 ;
  wire \r_time_count_reg[16]_i_1_n_1 ;
  wire \r_time_count_reg[16]_i_1_n_2 ;
  wire \r_time_count_reg[16]_i_1_n_3 ;
  wire \r_time_count_reg[16]_i_1_n_4 ;
  wire \r_time_count_reg[16]_i_1_n_5 ;
  wire \r_time_count_reg[16]_i_1_n_6 ;
  wire \r_time_count_reg[16]_i_1_n_7 ;
  wire \r_time_count_reg[20]_i_1_n_0 ;
  wire \r_time_count_reg[20]_i_1_n_1 ;
  wire \r_time_count_reg[20]_i_1_n_2 ;
  wire \r_time_count_reg[20]_i_1_n_3 ;
  wire \r_time_count_reg[20]_i_1_n_4 ;
  wire \r_time_count_reg[20]_i_1_n_5 ;
  wire \r_time_count_reg[20]_i_1_n_6 ;
  wire \r_time_count_reg[20]_i_1_n_7 ;
  wire \r_time_count_reg[24]_i_1_n_0 ;
  wire \r_time_count_reg[24]_i_1_n_1 ;
  wire \r_time_count_reg[24]_i_1_n_2 ;
  wire \r_time_count_reg[24]_i_1_n_3 ;
  wire \r_time_count_reg[24]_i_1_n_4 ;
  wire \r_time_count_reg[24]_i_1_n_5 ;
  wire \r_time_count_reg[24]_i_1_n_6 ;
  wire \r_time_count_reg[24]_i_1_n_7 ;
  wire \r_time_count_reg[28]_i_1_n_1 ;
  wire \r_time_count_reg[28]_i_1_n_2 ;
  wire \r_time_count_reg[28]_i_1_n_3 ;
  wire \r_time_count_reg[28]_i_1_n_4 ;
  wire \r_time_count_reg[28]_i_1_n_5 ;
  wire \r_time_count_reg[28]_i_1_n_6 ;
  wire \r_time_count_reg[28]_i_1_n_7 ;
  wire \r_time_count_reg[31]_0 ;
  wire \r_time_count_reg[4]_i_1_n_0 ;
  wire \r_time_count_reg[4]_i_1_n_1 ;
  wire \r_time_count_reg[4]_i_1_n_2 ;
  wire \r_time_count_reg[4]_i_1_n_3 ;
  wire \r_time_count_reg[4]_i_1_n_4 ;
  wire \r_time_count_reg[4]_i_1_n_5 ;
  wire \r_time_count_reg[4]_i_1_n_6 ;
  wire \r_time_count_reg[4]_i_1_n_7 ;
  wire \r_time_count_reg[8]_i_1_n_0 ;
  wire \r_time_count_reg[8]_i_1_n_1 ;
  wire \r_time_count_reg[8]_i_1_n_2 ;
  wire \r_time_count_reg[8]_i_1_n_3 ;
  wire \r_time_count_reg[8]_i_1_n_4 ;
  wire \r_time_count_reg[8]_i_1_n_5 ;
  wire \r_time_count_reg[8]_i_1_n_6 ;
  wire \r_time_count_reg[8]_i_1_n_7 ;
  wire s00_axi_aclk;
  wire w_get_RPM;
  wire [31:0]w_time_count;
  wire [3:3]\NLW_r_time_count_reg[28]_i_1_CO_UNCONNECTED ;

  FDRE \r_RPM_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\r_RPM_reg[0]_0 [13]),
        .D(\r_RPM_reg[0]_0 [0]),
        .Q(Q[0]),
        .R(r_get_RPM_reg_0));
  FDRE \r_RPM_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\r_RPM_reg[0]_0 [13]),
        .D(\r_RPM_reg[0]_0 [10]),
        .Q(Q[10]),
        .R(r_get_RPM_reg_0));
  FDRE \r_RPM_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\r_RPM_reg[0]_0 [13]),
        .D(\r_RPM_reg[0]_0 [11]),
        .Q(Q[11]),
        .R(r_get_RPM_reg_0));
  FDRE \r_RPM_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\r_RPM_reg[0]_0 [13]),
        .D(\r_RPM_reg[0]_0 [12]),
        .Q(Q[12]),
        .R(r_get_RPM_reg_0));
  FDRE \r_RPM_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\r_RPM_reg[0]_0 [13]),
        .D(\r_RPM_reg[0]_0 [1]),
        .Q(Q[1]),
        .R(r_get_RPM_reg_0));
  FDRE \r_RPM_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\r_RPM_reg[0]_0 [13]),
        .D(\r_RPM_reg[0]_0 [2]),
        .Q(Q[2]),
        .R(r_get_RPM_reg_0));
  FDRE \r_RPM_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\r_RPM_reg[0]_0 [13]),
        .D(\r_RPM_reg[0]_0 [3]),
        .Q(Q[3]),
        .R(r_get_RPM_reg_0));
  FDRE \r_RPM_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\r_RPM_reg[0]_0 [13]),
        .D(\r_RPM_reg[0]_0 [4]),
        .Q(Q[4]),
        .R(r_get_RPM_reg_0));
  FDRE \r_RPM_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\r_RPM_reg[0]_0 [13]),
        .D(\r_RPM_reg[0]_0 [5]),
        .Q(Q[5]),
        .R(r_get_RPM_reg_0));
  FDRE \r_RPM_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\r_RPM_reg[0]_0 [13]),
        .D(\r_RPM_reg[0]_0 [6]),
        .Q(Q[6]),
        .R(r_get_RPM_reg_0));
  FDRE \r_RPM_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\r_RPM_reg[0]_0 [13]),
        .D(\r_RPM_reg[0]_0 [7]),
        .Q(Q[7]),
        .R(r_get_RPM_reg_0));
  FDRE \r_RPM_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\r_RPM_reg[0]_0 [13]),
        .D(\r_RPM_reg[0]_0 [8]),
        .Q(Q[8]),
        .R(r_get_RPM_reg_0));
  FDRE \r_RPM_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\r_RPM_reg[0]_0 [13]),
        .D(\r_RPM_reg[0]_0 [9]),
        .Q(Q[9]),
        .R(r_get_RPM_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h3044)) 
    r_U_neg_i_1
       (.I0(i_hall_state[2]),
        .I1(i_hall_state[1]),
        .I2(i_hall_state[0]),
        .I3(i_sw_rot_ccw),
        .O(r_U_neg_i_1_n_0));
  FDRE r_U_neg_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(r_U_neg_i_1_n_0),
        .Q(o_U_neg),
        .R(r_get_RPM_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h4430)) 
    r_U_pos_i_1
       (.I0(i_hall_state[0]),
        .I1(i_hall_state[1]),
        .I2(i_hall_state[2]),
        .I3(i_sw_rot_ccw),
        .O(r_U_pos_i_1_n_0));
  FDRE r_U_pos_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(r_U_pos_i_1_n_0),
        .Q(o_U_pos),
        .R(r_get_RPM_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h3044)) 
    r_V_neg_i_1
       (.I0(i_hall_state[1]),
        .I1(i_hall_state[0]),
        .I2(i_hall_state[2]),
        .I3(i_sw_rot_ccw),
        .O(r_V_neg_i_1_n_0));
  FDRE r_V_neg_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(r_V_neg_i_1_n_0),
        .Q(o_V_neg),
        .R(r_get_RPM_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h4430)) 
    r_V_pos_i_1
       (.I0(i_hall_state[2]),
        .I1(i_hall_state[0]),
        .I2(i_hall_state[1]),
        .I3(i_sw_rot_ccw),
        .O(r_V_pos_i_1_n_0));
  FDRE r_V_pos_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(r_V_pos_i_1_n_0),
        .Q(o_V_pos),
        .R(r_get_RPM_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h3044)) 
    r_W_neg_i_1
       (.I0(i_hall_state[0]),
        .I1(i_hall_state[2]),
        .I2(i_hall_state[1]),
        .I3(i_sw_rot_ccw),
        .O(r_W_neg_i_1_n_0));
  FDRE r_W_neg_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(r_W_neg_i_1_n_0),
        .Q(o_W_neg),
        .R(r_get_RPM_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h4430)) 
    r_W_pos_i_1
       (.I0(i_hall_state[1]),
        .I1(i_hall_state[2]),
        .I2(i_hall_state[0]),
        .I3(i_sw_rot_ccw),
        .O(r_W_pos_i_1_n_0));
  FDRE r_W_pos_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(r_W_pos_i_1_n_0),
        .Q(o_W_pos),
        .R(r_get_RPM_reg_0));
  LUT3 #(
    .INIT(8'hBA)) 
    r_get_RPM_i_2
       (.I0(w_get_RPM),
        .I1(\r_RPM_reg[0]_0 [13]),
        .I2(o_get_RPM),
        .O(r_get_RPM_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    r_get_RPM_i_3
       (.I0(i_hall_state[0]),
        .I1(r_hall_state[0]),
        .I2(r_hall_state[2]),
        .I3(i_hall_state[2]),
        .I4(r_hall_state[1]),
        .I5(i_hall_state[1]),
        .O(w_get_RPM));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    r_get_RPM_i_4
       (.I0(\r_hall_state_tristate_oe_reg_n_0_[0] ),
        .I1(r_get_RPM_i_3_0),
        .O(r_hall_state[0]));
  LUT2 #(
    .INIT(4'h8)) 
    r_get_RPM_i_5
       (.I0(\r_hall_state_tristate_oe_reg_n_0_[2] ),
        .I1(r_get_RPM_i_3_0),
        .O(r_hall_state[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    r_get_RPM_i_6
       (.I0(\r_hall_state_tristate_oe_reg_n_0_[1] ),
        .I1(r_get_RPM_i_3_0),
        .O(r_hall_state[1]));
  FDRE r_get_RPM_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(r_get_RPM_i_2_n_0),
        .Q(o_get_RPM),
        .R(r_get_RPM_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hC191)) 
    \r_hall_one_hot_state[0]_i_1 
       (.I0(i_hall_state[2]),
        .I1(i_hall_state[1]),
        .I2(i_hall_state[0]),
        .I3(i_sw_rot_ccw),
        .O(r_hall_one_hot_state[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h91C1)) 
    \r_hall_one_hot_state[1]_i_1 
       (.I0(i_hall_state[2]),
        .I1(i_hall_state[1]),
        .I2(i_hall_state[0]),
        .I3(i_sw_rot_ccw),
        .O(r_hall_one_hot_state[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hA815)) 
    \r_hall_one_hot_state[2]_i_1 
       (.I0(i_hall_state[2]),
        .I1(i_sw_rot_ccw),
        .I2(i_hall_state[1]),
        .I3(i_hall_state[0]),
        .O(r_hall_one_hot_state[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hC04B)) 
    \r_hall_one_hot_state[3]_i_1 
       (.I0(i_sw_rot_ccw),
        .I1(i_hall_state[2]),
        .I2(i_hall_state[1]),
        .I3(i_hall_state[0]),
        .O(r_hall_one_hot_state[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hC087)) 
    \r_hall_one_hot_state[4]_i_1 
       (.I0(i_sw_rot_ccw),
        .I1(i_hall_state[2]),
        .I2(i_hall_state[1]),
        .I3(i_hall_state[0]),
        .O(r_hall_one_hot_state[4]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hA245)) 
    \r_hall_one_hot_state[5]_i_1 
       (.I0(i_hall_state[2]),
        .I1(i_sw_rot_ccw),
        .I2(i_hall_state[1]),
        .I3(i_hall_state[0]),
        .O(r_hall_one_hot_state[5]));
  FDRE \r_hall_one_hot_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(r_hall_one_hot_state[0]),
        .Q(o_hall_one_hot_state[0]),
        .R(r_get_RPM_reg_0));
  FDRE \r_hall_one_hot_state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(r_hall_one_hot_state[1]),
        .Q(o_hall_one_hot_state[1]),
        .R(r_get_RPM_reg_0));
  FDRE \r_hall_one_hot_state_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(r_hall_one_hot_state[2]),
        .Q(o_hall_one_hot_state[2]),
        .R(r_get_RPM_reg_0));
  FDRE \r_hall_one_hot_state_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(r_hall_one_hot_state[3]),
        .Q(o_hall_one_hot_state[3]),
        .R(r_get_RPM_reg_0));
  FDRE \r_hall_one_hot_state_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(r_hall_one_hot_state[4]),
        .Q(o_hall_one_hot_state[4]),
        .R(r_get_RPM_reg_0));
  FDRE \r_hall_one_hot_state_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(r_hall_one_hot_state[5]),
        .Q(o_hall_one_hot_state[5]),
        .R(r_get_RPM_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h5751)) 
    \r_hall_state_tristate_oe[0]_i_1 
       (.I0(i_hall_state[2]),
        .I1(i_hall_state[1]),
        .I2(i_sw_rot_ccw),
        .I3(i_hall_state[0]),
        .O(r_hall_state__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h8EAA)) 
    \r_hall_state_tristate_oe[1]_i_1 
       (.I0(i_hall_state[2]),
        .I1(i_hall_state[1]),
        .I2(i_hall_state[0]),
        .I3(i_sw_rot_ccw),
        .O(r_hall_state__0[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \r_hall_state_tristate_oe[2]_i_1 
       (.I0(i_hall_state[1]),
        .I1(i_sw_rot_ccw),
        .O(r_hall_state__0[2]));
  FDRE \r_hall_state_tristate_oe_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(r_hall_state__0[0]),
        .Q(\r_hall_state_tristate_oe_reg_n_0_[0] ),
        .R(r_get_RPM_reg_0));
  FDRE \r_hall_state_tristate_oe_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(r_hall_state__0[1]),
        .Q(\r_hall_state_tristate_oe_reg_n_0_[1] ),
        .R(r_get_RPM_reg_0));
  FDRE \r_hall_state_tristate_oe_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(r_hall_state__0[2]),
        .Q(\r_hall_state_tristate_oe_reg_n_0_[2] ),
        .R(r_get_RPM_reg_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \r_time_count[0]_i_10 
       (.I0(w_time_count[30]),
        .I1(w_time_count[29]),
        .I2(w_time_count[0]),
        .I3(w_time_count[31]),
        .O(\r_time_count[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \r_time_count[0]_i_11 
       (.I0(w_time_count[6]),
        .I1(w_time_count[5]),
        .I2(w_time_count[8]),
        .I3(w_time_count[7]),
        .O(\r_time_count[0]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \r_time_count[0]_i_12 
       (.I0(w_time_count[14]),
        .I1(w_time_count[13]),
        .I2(w_time_count[16]),
        .I3(w_time_count[15]),
        .O(\r_time_count[0]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h55555554)) 
    \r_time_count[0]_i_2 
       (.I0(o_get_RPM),
        .I1(\r_time_count[0]_i_4_n_0 ),
        .I2(\r_time_count[0]_i_5_n_0 ),
        .I3(\r_time_count[0]_i_6_n_0 ),
        .I4(\r_time_count[0]_i_7_n_0 ),
        .O(r_time_count));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \r_time_count[0]_i_4 
       (.I0(w_time_count[19]),
        .I1(w_time_count[20]),
        .I2(w_time_count[17]),
        .I3(w_time_count[18]),
        .I4(\r_time_count[0]_i_9_n_0 ),
        .O(\r_time_count[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \r_time_count[0]_i_5 
       (.I0(w_time_count[27]),
        .I1(w_time_count[28]),
        .I2(w_time_count[25]),
        .I3(w_time_count[26]),
        .I4(\r_time_count[0]_i_10_n_0 ),
        .O(\r_time_count[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \r_time_count[0]_i_6 
       (.I0(w_time_count[3]),
        .I1(w_time_count[4]),
        .I2(w_time_count[1]),
        .I3(w_time_count[2]),
        .I4(\r_time_count[0]_i_11_n_0 ),
        .O(\r_time_count[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \r_time_count[0]_i_7 
       (.I0(w_time_count[11]),
        .I1(w_time_count[12]),
        .I2(w_time_count[9]),
        .I3(w_time_count[10]),
        .I4(\r_time_count[0]_i_12_n_0 ),
        .O(\r_time_count[0]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \r_time_count[0]_i_8 
       (.I0(w_time_count[0]),
        .O(\r_time_count[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \r_time_count[0]_i_9 
       (.I0(w_time_count[22]),
        .I1(w_time_count[21]),
        .I2(w_time_count[24]),
        .I3(w_time_count[23]),
        .O(\r_time_count[0]_i_9_n_0 ));
  FDRE \r_time_count_reg[0] 
       (.C(s00_axi_aclk),
        .CE(r_time_count),
        .D(\r_time_count_reg[0]_i_3_n_7 ),
        .Q(w_time_count[0]),
        .R(\r_time_count_reg[31]_0 ));
  CARRY4 \r_time_count_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\r_time_count_reg[0]_i_3_n_0 ,\r_time_count_reg[0]_i_3_n_1 ,\r_time_count_reg[0]_i_3_n_2 ,\r_time_count_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\r_time_count_reg[0]_i_3_n_4 ,\r_time_count_reg[0]_i_3_n_5 ,\r_time_count_reg[0]_i_3_n_6 ,\r_time_count_reg[0]_i_3_n_7 }),
        .S({w_time_count[3:1],\r_time_count[0]_i_8_n_0 }));
  FDRE \r_time_count_reg[10] 
       (.C(s00_axi_aclk),
        .CE(r_time_count),
        .D(\r_time_count_reg[8]_i_1_n_5 ),
        .Q(w_time_count[10]),
        .R(\r_time_count_reg[31]_0 ));
  FDRE \r_time_count_reg[11] 
       (.C(s00_axi_aclk),
        .CE(r_time_count),
        .D(\r_time_count_reg[8]_i_1_n_4 ),
        .Q(w_time_count[11]),
        .R(\r_time_count_reg[31]_0 ));
  FDRE \r_time_count_reg[12] 
       (.C(s00_axi_aclk),
        .CE(r_time_count),
        .D(\r_time_count_reg[12]_i_1_n_7 ),
        .Q(w_time_count[12]),
        .R(\r_time_count_reg[31]_0 ));
  CARRY4 \r_time_count_reg[12]_i_1 
       (.CI(\r_time_count_reg[8]_i_1_n_0 ),
        .CO({\r_time_count_reg[12]_i_1_n_0 ,\r_time_count_reg[12]_i_1_n_1 ,\r_time_count_reg[12]_i_1_n_2 ,\r_time_count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_time_count_reg[12]_i_1_n_4 ,\r_time_count_reg[12]_i_1_n_5 ,\r_time_count_reg[12]_i_1_n_6 ,\r_time_count_reg[12]_i_1_n_7 }),
        .S(w_time_count[15:12]));
  FDRE \r_time_count_reg[13] 
       (.C(s00_axi_aclk),
        .CE(r_time_count),
        .D(\r_time_count_reg[12]_i_1_n_6 ),
        .Q(w_time_count[13]),
        .R(\r_time_count_reg[31]_0 ));
  FDRE \r_time_count_reg[14] 
       (.C(s00_axi_aclk),
        .CE(r_time_count),
        .D(\r_time_count_reg[12]_i_1_n_5 ),
        .Q(w_time_count[14]),
        .R(\r_time_count_reg[31]_0 ));
  FDRE \r_time_count_reg[15] 
       (.C(s00_axi_aclk),
        .CE(r_time_count),
        .D(\r_time_count_reg[12]_i_1_n_4 ),
        .Q(w_time_count[15]),
        .R(\r_time_count_reg[31]_0 ));
  FDRE \r_time_count_reg[16] 
       (.C(s00_axi_aclk),
        .CE(r_time_count),
        .D(\r_time_count_reg[16]_i_1_n_7 ),
        .Q(w_time_count[16]),
        .R(\r_time_count_reg[31]_0 ));
  CARRY4 \r_time_count_reg[16]_i_1 
       (.CI(\r_time_count_reg[12]_i_1_n_0 ),
        .CO({\r_time_count_reg[16]_i_1_n_0 ,\r_time_count_reg[16]_i_1_n_1 ,\r_time_count_reg[16]_i_1_n_2 ,\r_time_count_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_time_count_reg[16]_i_1_n_4 ,\r_time_count_reg[16]_i_1_n_5 ,\r_time_count_reg[16]_i_1_n_6 ,\r_time_count_reg[16]_i_1_n_7 }),
        .S(w_time_count[19:16]));
  FDRE \r_time_count_reg[17] 
       (.C(s00_axi_aclk),
        .CE(r_time_count),
        .D(\r_time_count_reg[16]_i_1_n_6 ),
        .Q(w_time_count[17]),
        .R(\r_time_count_reg[31]_0 ));
  FDRE \r_time_count_reg[18] 
       (.C(s00_axi_aclk),
        .CE(r_time_count),
        .D(\r_time_count_reg[16]_i_1_n_5 ),
        .Q(w_time_count[18]),
        .R(\r_time_count_reg[31]_0 ));
  FDRE \r_time_count_reg[19] 
       (.C(s00_axi_aclk),
        .CE(r_time_count),
        .D(\r_time_count_reg[16]_i_1_n_4 ),
        .Q(w_time_count[19]),
        .R(\r_time_count_reg[31]_0 ));
  FDRE \r_time_count_reg[1] 
       (.C(s00_axi_aclk),
        .CE(r_time_count),
        .D(\r_time_count_reg[0]_i_3_n_6 ),
        .Q(w_time_count[1]),
        .R(\r_time_count_reg[31]_0 ));
  FDRE \r_time_count_reg[20] 
       (.C(s00_axi_aclk),
        .CE(r_time_count),
        .D(\r_time_count_reg[20]_i_1_n_7 ),
        .Q(w_time_count[20]),
        .R(\r_time_count_reg[31]_0 ));
  CARRY4 \r_time_count_reg[20]_i_1 
       (.CI(\r_time_count_reg[16]_i_1_n_0 ),
        .CO({\r_time_count_reg[20]_i_1_n_0 ,\r_time_count_reg[20]_i_1_n_1 ,\r_time_count_reg[20]_i_1_n_2 ,\r_time_count_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_time_count_reg[20]_i_1_n_4 ,\r_time_count_reg[20]_i_1_n_5 ,\r_time_count_reg[20]_i_1_n_6 ,\r_time_count_reg[20]_i_1_n_7 }),
        .S(w_time_count[23:20]));
  FDRE \r_time_count_reg[21] 
       (.C(s00_axi_aclk),
        .CE(r_time_count),
        .D(\r_time_count_reg[20]_i_1_n_6 ),
        .Q(w_time_count[21]),
        .R(\r_time_count_reg[31]_0 ));
  FDRE \r_time_count_reg[22] 
       (.C(s00_axi_aclk),
        .CE(r_time_count),
        .D(\r_time_count_reg[20]_i_1_n_5 ),
        .Q(w_time_count[22]),
        .R(\r_time_count_reg[31]_0 ));
  FDRE \r_time_count_reg[23] 
       (.C(s00_axi_aclk),
        .CE(r_time_count),
        .D(\r_time_count_reg[20]_i_1_n_4 ),
        .Q(w_time_count[23]),
        .R(\r_time_count_reg[31]_0 ));
  FDRE \r_time_count_reg[24] 
       (.C(s00_axi_aclk),
        .CE(r_time_count),
        .D(\r_time_count_reg[24]_i_1_n_7 ),
        .Q(w_time_count[24]),
        .R(\r_time_count_reg[31]_0 ));
  CARRY4 \r_time_count_reg[24]_i_1 
       (.CI(\r_time_count_reg[20]_i_1_n_0 ),
        .CO({\r_time_count_reg[24]_i_1_n_0 ,\r_time_count_reg[24]_i_1_n_1 ,\r_time_count_reg[24]_i_1_n_2 ,\r_time_count_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_time_count_reg[24]_i_1_n_4 ,\r_time_count_reg[24]_i_1_n_5 ,\r_time_count_reg[24]_i_1_n_6 ,\r_time_count_reg[24]_i_1_n_7 }),
        .S(w_time_count[27:24]));
  FDRE \r_time_count_reg[25] 
       (.C(s00_axi_aclk),
        .CE(r_time_count),
        .D(\r_time_count_reg[24]_i_1_n_6 ),
        .Q(w_time_count[25]),
        .R(\r_time_count_reg[31]_0 ));
  FDRE \r_time_count_reg[26] 
       (.C(s00_axi_aclk),
        .CE(r_time_count),
        .D(\r_time_count_reg[24]_i_1_n_5 ),
        .Q(w_time_count[26]),
        .R(\r_time_count_reg[31]_0 ));
  FDRE \r_time_count_reg[27] 
       (.C(s00_axi_aclk),
        .CE(r_time_count),
        .D(\r_time_count_reg[24]_i_1_n_4 ),
        .Q(w_time_count[27]),
        .R(\r_time_count_reg[31]_0 ));
  FDRE \r_time_count_reg[28] 
       (.C(s00_axi_aclk),
        .CE(r_time_count),
        .D(\r_time_count_reg[28]_i_1_n_7 ),
        .Q(w_time_count[28]),
        .R(\r_time_count_reg[31]_0 ));
  CARRY4 \r_time_count_reg[28]_i_1 
       (.CI(\r_time_count_reg[24]_i_1_n_0 ),
        .CO({\NLW_r_time_count_reg[28]_i_1_CO_UNCONNECTED [3],\r_time_count_reg[28]_i_1_n_1 ,\r_time_count_reg[28]_i_1_n_2 ,\r_time_count_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_time_count_reg[28]_i_1_n_4 ,\r_time_count_reg[28]_i_1_n_5 ,\r_time_count_reg[28]_i_1_n_6 ,\r_time_count_reg[28]_i_1_n_7 }),
        .S(w_time_count[31:28]));
  FDRE \r_time_count_reg[29] 
       (.C(s00_axi_aclk),
        .CE(r_time_count),
        .D(\r_time_count_reg[28]_i_1_n_6 ),
        .Q(w_time_count[29]),
        .R(\r_time_count_reg[31]_0 ));
  FDRE \r_time_count_reg[2] 
       (.C(s00_axi_aclk),
        .CE(r_time_count),
        .D(\r_time_count_reg[0]_i_3_n_5 ),
        .Q(w_time_count[2]),
        .R(\r_time_count_reg[31]_0 ));
  FDRE \r_time_count_reg[30] 
       (.C(s00_axi_aclk),
        .CE(r_time_count),
        .D(\r_time_count_reg[28]_i_1_n_5 ),
        .Q(w_time_count[30]),
        .R(\r_time_count_reg[31]_0 ));
  FDRE \r_time_count_reg[31] 
       (.C(s00_axi_aclk),
        .CE(r_time_count),
        .D(\r_time_count_reg[28]_i_1_n_4 ),
        .Q(w_time_count[31]),
        .R(\r_time_count_reg[31]_0 ));
  FDRE \r_time_count_reg[3] 
       (.C(s00_axi_aclk),
        .CE(r_time_count),
        .D(\r_time_count_reg[0]_i_3_n_4 ),
        .Q(w_time_count[3]),
        .R(\r_time_count_reg[31]_0 ));
  FDRE \r_time_count_reg[4] 
       (.C(s00_axi_aclk),
        .CE(r_time_count),
        .D(\r_time_count_reg[4]_i_1_n_7 ),
        .Q(w_time_count[4]),
        .R(\r_time_count_reg[31]_0 ));
  CARRY4 \r_time_count_reg[4]_i_1 
       (.CI(\r_time_count_reg[0]_i_3_n_0 ),
        .CO({\r_time_count_reg[4]_i_1_n_0 ,\r_time_count_reg[4]_i_1_n_1 ,\r_time_count_reg[4]_i_1_n_2 ,\r_time_count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_time_count_reg[4]_i_1_n_4 ,\r_time_count_reg[4]_i_1_n_5 ,\r_time_count_reg[4]_i_1_n_6 ,\r_time_count_reg[4]_i_1_n_7 }),
        .S(w_time_count[7:4]));
  FDRE \r_time_count_reg[5] 
       (.C(s00_axi_aclk),
        .CE(r_time_count),
        .D(\r_time_count_reg[4]_i_1_n_6 ),
        .Q(w_time_count[5]),
        .R(\r_time_count_reg[31]_0 ));
  FDRE \r_time_count_reg[6] 
       (.C(s00_axi_aclk),
        .CE(r_time_count),
        .D(\r_time_count_reg[4]_i_1_n_5 ),
        .Q(w_time_count[6]),
        .R(\r_time_count_reg[31]_0 ));
  FDRE \r_time_count_reg[7] 
       (.C(s00_axi_aclk),
        .CE(r_time_count),
        .D(\r_time_count_reg[4]_i_1_n_4 ),
        .Q(w_time_count[7]),
        .R(\r_time_count_reg[31]_0 ));
  FDRE \r_time_count_reg[8] 
       (.C(s00_axi_aclk),
        .CE(r_time_count),
        .D(\r_time_count_reg[8]_i_1_n_7 ),
        .Q(w_time_count[8]),
        .R(\r_time_count_reg[31]_0 ));
  CARRY4 \r_time_count_reg[8]_i_1 
       (.CI(\r_time_count_reg[4]_i_1_n_0 ),
        .CO({\r_time_count_reg[8]_i_1_n_0 ,\r_time_count_reg[8]_i_1_n_1 ,\r_time_count_reg[8]_i_1_n_2 ,\r_time_count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_time_count_reg[8]_i_1_n_4 ,\r_time_count_reg[8]_i_1_n_5 ,\r_time_count_reg[8]_i_1_n_6 ,\r_time_count_reg[8]_i_1_n_7 }),
        .S(w_time_count[11:8]));
  FDRE \r_time_count_reg[9] 
       (.C(s00_axi_aclk),
        .CE(r_time_count),
        .D(\r_time_count_reg[8]_i_1_n_6 ),
        .Q(w_time_count[9]),
        .R(\r_time_count_reg[31]_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PI_Controller
   (P,
    s00_axi_aresetn_0,
    Q,
    S,
    DI,
    \r_count_duty_reg[10] ,
    \r_count_duty_reg[10]_0 ,
    data5,
    \r_error_reg[13]_0 ,
    i_sw_enable_control,
    E,
    s00_axi_aclk,
    r_p_term_reg_0,
    r_integral_component2_0,
    r_integral_component2_1,
    s00_axi_aresetn,
    out,
    \r_reference_reg[11]_0 ,
    i_sw_bypass,
    D,
    \r_i_gain_reg[7]_0 );
  output [14:0]P;
  output s00_axi_aresetn_0;
  output [23:0]Q;
  output [3:0]S;
  output [3:0]DI;
  output [1:0]\r_count_duty_reg[10] ;
  output [1:0]\r_count_duty_reg[10]_0 ;
  output [11:0]data5;
  output [13:0]\r_error_reg[13]_0 ;
  input i_sw_enable_control;
  input [0:0]E;
  input s00_axi_aclk;
  input [7:0]r_p_term_reg_0;
  input [0:0]r_integral_component2_0;
  input [7:0]r_integral_component2_1;
  input s00_axi_aresetn;
  input [11:0]out;
  input [11:0]\r_reference_reg[11]_0 ;
  input i_sw_bypass;
  input [12:0]D;
  input [7:0]\r_i_gain_reg[7]_0 ;

  wire [7:0]B;
  wire [12:0]D;
  wire [3:0]DI;
  wire [0:0]E;
  wire [14:0]P;
  wire [23:0]Q;
  wire [3:0]S;
  wire [11:0]data5;
  wire i_sw_bypass;
  wire i_sw_enable_control;
  wire [23:0]in;
  wire o_control_input2;
  wire o_control_input3;
  wire o_control_input3_carry__0_i_1_n_0;
  wire o_control_input3_carry__0_i_2_n_0;
  wire o_control_input3_carry__0_i_3_n_0;
  wire o_control_input3_carry__0_i_4_n_0;
  wire o_control_input3_carry__0_n_0;
  wire o_control_input3_carry__0_n_1;
  wire o_control_input3_carry__0_n_2;
  wire o_control_input3_carry__0_n_3;
  wire o_control_input3_carry__1_i_1_n_0;
  wire o_control_input3_carry__1_i_2_n_0;
  wire o_control_input3_carry__1_i_3_n_0;
  wire o_control_input3_carry__1_i_4_n_0;
  wire o_control_input3_carry__1_n_0;
  wire o_control_input3_carry__1_n_1;
  wire o_control_input3_carry__1_n_2;
  wire o_control_input3_carry__1_n_3;
  wire o_control_input3_carry__2_i_1_n_0;
  wire o_control_input3_carry_i_1_n_0;
  wire o_control_input3_carry_i_2_n_0;
  wire o_control_input3_carry_i_3_n_0;
  wire o_control_input3_carry_i_4_n_0;
  wire o_control_input3_carry_n_0;
  wire o_control_input3_carry_n_1;
  wire o_control_input3_carry_n_2;
  wire o_control_input3_carry_n_3;
  wire [11:0]out;
  wire r_control_input0_carry__0_i_1_n_0;
  wire r_control_input0_carry__0_i_2_n_0;
  wire r_control_input0_carry__0_i_3_n_0;
  wire r_control_input0_carry__0_i_4_n_0;
  wire r_control_input0_carry__0_n_0;
  wire r_control_input0_carry__0_n_1;
  wire r_control_input0_carry__0_n_2;
  wire r_control_input0_carry__0_n_3;
  wire r_control_input0_carry__0_n_4;
  wire r_control_input0_carry__0_n_5;
  wire r_control_input0_carry__0_n_6;
  wire r_control_input0_carry__0_n_7;
  wire r_control_input0_carry__1_i_1_n_0;
  wire r_control_input0_carry__1_i_2_n_0;
  wire r_control_input0_carry__1_i_3_n_0;
  wire r_control_input0_carry__1_i_4_n_0;
  wire r_control_input0_carry__1_n_0;
  wire r_control_input0_carry__1_n_1;
  wire r_control_input0_carry__1_n_2;
  wire r_control_input0_carry__1_n_3;
  wire r_control_input0_carry__1_n_4;
  wire r_control_input0_carry__1_n_5;
  wire r_control_input0_carry__1_n_6;
  wire r_control_input0_carry__1_n_7;
  wire r_control_input0_carry__2_i_1_n_0;
  wire r_control_input0_carry__2_i_2_n_0;
  wire r_control_input0_carry__2_i_3_n_0;
  wire r_control_input0_carry__2_i_4_n_0;
  wire r_control_input0_carry__2_i_5_n_0;
  wire r_control_input0_carry__2_n_0;
  wire r_control_input0_carry__2_n_1;
  wire r_control_input0_carry__2_n_2;
  wire r_control_input0_carry__2_n_3;
  wire r_control_input0_carry__2_n_4;
  wire r_control_input0_carry__2_n_5;
  wire r_control_input0_carry__2_n_6;
  wire r_control_input0_carry__2_n_7;
  wire r_control_input0_carry__3_i_1_n_0;
  wire r_control_input0_carry__3_i_2_n_0;
  wire r_control_input0_carry__3_i_3_n_0;
  wire r_control_input0_carry__3_i_4_n_0;
  wire r_control_input0_carry__3_n_0;
  wire r_control_input0_carry__3_n_1;
  wire r_control_input0_carry__3_n_2;
  wire r_control_input0_carry__3_n_3;
  wire r_control_input0_carry__3_n_4;
  wire r_control_input0_carry__3_n_5;
  wire r_control_input0_carry__3_n_6;
  wire r_control_input0_carry__3_n_7;
  wire r_control_input0_carry__4_i_1_n_0;
  wire r_control_input0_carry__4_i_2_n_0;
  wire r_control_input0_carry__4_i_3_n_0;
  wire r_control_input0_carry__4_i_4_n_0;
  wire r_control_input0_carry__4_n_0;
  wire r_control_input0_carry__4_n_1;
  wire r_control_input0_carry__4_n_2;
  wire r_control_input0_carry__4_n_3;
  wire r_control_input0_carry__4_n_4;
  wire r_control_input0_carry__4_n_5;
  wire r_control_input0_carry__4_n_6;
  wire r_control_input0_carry__4_n_7;
  wire r_control_input0_carry__5_n_7;
  wire r_control_input0_carry_i_1_n_0;
  wire r_control_input0_carry_i_2_n_0;
  wire r_control_input0_carry_i_3_n_0;
  wire r_control_input0_carry_i_4_n_0;
  wire r_control_input0_carry_n_0;
  wire r_control_input0_carry_n_1;
  wire r_control_input0_carry_n_2;
  wire r_control_input0_carry_n_3;
  wire r_control_input0_carry_n_4;
  wire r_control_input0_carry_n_5;
  wire r_control_input0_carry_n_6;
  wire r_control_input0_carry_n_7;
  wire \r_control_input_reg_n_0_[0] ;
  wire \r_control_input_reg_n_0_[10] ;
  wire \r_control_input_reg_n_0_[11] ;
  wire \r_control_input_reg_n_0_[12] ;
  wire \r_control_input_reg_n_0_[13] ;
  wire \r_control_input_reg_n_0_[14] ;
  wire \r_control_input_reg_n_0_[15] ;
  wire \r_control_input_reg_n_0_[16] ;
  wire \r_control_input_reg_n_0_[17] ;
  wire \r_control_input_reg_n_0_[18] ;
  wire \r_control_input_reg_n_0_[19] ;
  wire \r_control_input_reg_n_0_[1] ;
  wire \r_control_input_reg_n_0_[20] ;
  wire \r_control_input_reg_n_0_[21] ;
  wire \r_control_input_reg_n_0_[22] ;
  wire \r_control_input_reg_n_0_[23] ;
  wire \r_control_input_reg_n_0_[24] ;
  wire \r_control_input_reg_n_0_[2] ;
  wire \r_control_input_reg_n_0_[3] ;
  wire \r_control_input_reg_n_0_[4] ;
  wire \r_control_input_reg_n_0_[5] ;
  wire \r_control_input_reg_n_0_[6] ;
  wire \r_control_input_reg_n_0_[7] ;
  wire \r_control_input_reg_n_0_[8] ;
  wire \r_control_input_reg_n_0_[9] ;
  wire [1:0]\r_count_duty_reg[10] ;
  wire [1:0]\r_count_duty_reg[10]_0 ;
  wire r_error0_carry__0_i_1_n_0;
  wire r_error0_carry__0_i_2_n_0;
  wire r_error0_carry__0_i_3_n_0;
  wire r_error0_carry__0_i_4_n_0;
  wire r_error0_carry__0_n_0;
  wire r_error0_carry__0_n_1;
  wire r_error0_carry__0_n_2;
  wire r_error0_carry__0_n_3;
  wire r_error0_carry__0_n_4;
  wire r_error0_carry__0_n_5;
  wire r_error0_carry__0_n_6;
  wire r_error0_carry__0_n_7;
  wire r_error0_carry__1_i_1_n_0;
  wire r_error0_carry__1_i_2_n_0;
  wire r_error0_carry__1_i_3_n_0;
  wire r_error0_carry__1_i_4_n_0;
  wire r_error0_carry__1_n_0;
  wire r_error0_carry__1_n_1;
  wire r_error0_carry__1_n_2;
  wire r_error0_carry__1_n_3;
  wire r_error0_carry__1_n_4;
  wire r_error0_carry__1_n_5;
  wire r_error0_carry__1_n_6;
  wire r_error0_carry__1_n_7;
  wire r_error0_carry__2_i_1_n_0;
  wire r_error0_carry__2_n_3;
  wire r_error0_carry__2_n_6;
  wire r_error0_carry__2_n_7;
  wire r_error0_carry_i_1_n_0;
  wire r_error0_carry_i_2_n_0;
  wire r_error0_carry_i_3_n_0;
  wire r_error0_carry_i_4_n_0;
  wire r_error0_carry_n_0;
  wire r_error0_carry_n_1;
  wire r_error0_carry_n_2;
  wire r_error0_carry_n_3;
  wire r_error0_carry_n_4;
  wire r_error0_carry_n_5;
  wire r_error0_carry_n_6;
  wire r_error0_carry_n_7;
  wire [13:0]\r_error_reg[13]_0 ;
  wire [7:0]\r_i_gain_reg[7]_0 ;
  wire [7:0]r_i_gain_z;
  wire r_i_term_extended0_carry_i_1_n_0;
  wire r_i_term_extended0_carry_i_2_n_0;
  wire r_i_term_extended0_carry_i_3_n_0;
  wire r_i_term_extended0_carry_n_1;
  wire r_i_term_extended0_carry_n_2;
  wire r_i_term_extended0_carry_n_3;
  wire \r_i_term_extended[0]_i_2_n_0 ;
  wire \r_i_term_extended[0]_i_3_n_0 ;
  wire \r_i_term_extended[0]_i_4_n_0 ;
  wire \r_i_term_extended[0]_i_5_n_0 ;
  wire \r_i_term_extended[12]_i_2_n_0 ;
  wire \r_i_term_extended[12]_i_3_n_0 ;
  wire \r_i_term_extended[12]_i_4_n_0 ;
  wire \r_i_term_extended[12]_i_5_n_0 ;
  wire \r_i_term_extended[16]_i_2_n_0 ;
  wire \r_i_term_extended[16]_i_3_n_0 ;
  wire \r_i_term_extended[16]_i_4_n_0 ;
  wire \r_i_term_extended[16]_i_5_n_0 ;
  wire \r_i_term_extended[20]_i_2_n_0 ;
  wire \r_i_term_extended[20]_i_3_n_0 ;
  wire \r_i_term_extended[20]_i_4_n_0 ;
  wire \r_i_term_extended[20]_i_5_n_0 ;
  wire \r_i_term_extended[4]_i_2_n_0 ;
  wire \r_i_term_extended[4]_i_3_n_0 ;
  wire \r_i_term_extended[4]_i_4_n_0 ;
  wire \r_i_term_extended[4]_i_5_n_0 ;
  wire \r_i_term_extended[8]_i_2_n_0 ;
  wire \r_i_term_extended[8]_i_3_n_0 ;
  wire \r_i_term_extended[8]_i_4_n_0 ;
  wire \r_i_term_extended[8]_i_5_n_0 ;
  wire [23:0]r_i_term_extended_reg;
  wire \r_i_term_extended_reg[0]_i_1_n_0 ;
  wire \r_i_term_extended_reg[0]_i_1_n_1 ;
  wire \r_i_term_extended_reg[0]_i_1_n_2 ;
  wire \r_i_term_extended_reg[0]_i_1_n_3 ;
  wire \r_i_term_extended_reg[0]_i_1_n_4 ;
  wire \r_i_term_extended_reg[0]_i_1_n_5 ;
  wire \r_i_term_extended_reg[0]_i_1_n_6 ;
  wire \r_i_term_extended_reg[0]_i_1_n_7 ;
  wire \r_i_term_extended_reg[12]_i_1_n_0 ;
  wire \r_i_term_extended_reg[12]_i_1_n_1 ;
  wire \r_i_term_extended_reg[12]_i_1_n_2 ;
  wire \r_i_term_extended_reg[12]_i_1_n_3 ;
  wire \r_i_term_extended_reg[12]_i_1_n_4 ;
  wire \r_i_term_extended_reg[12]_i_1_n_5 ;
  wire \r_i_term_extended_reg[12]_i_1_n_6 ;
  wire \r_i_term_extended_reg[12]_i_1_n_7 ;
  wire \r_i_term_extended_reg[16]_i_1_n_0 ;
  wire \r_i_term_extended_reg[16]_i_1_n_1 ;
  wire \r_i_term_extended_reg[16]_i_1_n_2 ;
  wire \r_i_term_extended_reg[16]_i_1_n_3 ;
  wire \r_i_term_extended_reg[16]_i_1_n_4 ;
  wire \r_i_term_extended_reg[16]_i_1_n_5 ;
  wire \r_i_term_extended_reg[16]_i_1_n_6 ;
  wire \r_i_term_extended_reg[16]_i_1_n_7 ;
  wire \r_i_term_extended_reg[20]_i_1_n_1 ;
  wire \r_i_term_extended_reg[20]_i_1_n_2 ;
  wire \r_i_term_extended_reg[20]_i_1_n_3 ;
  wire \r_i_term_extended_reg[20]_i_1_n_4 ;
  wire \r_i_term_extended_reg[20]_i_1_n_5 ;
  wire \r_i_term_extended_reg[20]_i_1_n_6 ;
  wire \r_i_term_extended_reg[20]_i_1_n_7 ;
  wire \r_i_term_extended_reg[4]_i_1_n_0 ;
  wire \r_i_term_extended_reg[4]_i_1_n_1 ;
  wire \r_i_term_extended_reg[4]_i_1_n_2 ;
  wire \r_i_term_extended_reg[4]_i_1_n_3 ;
  wire \r_i_term_extended_reg[4]_i_1_n_4 ;
  wire \r_i_term_extended_reg[4]_i_1_n_5 ;
  wire \r_i_term_extended_reg[4]_i_1_n_6 ;
  wire \r_i_term_extended_reg[4]_i_1_n_7 ;
  wire \r_i_term_extended_reg[8]_i_1_n_0 ;
  wire \r_i_term_extended_reg[8]_i_1_n_1 ;
  wire \r_i_term_extended_reg[8]_i_1_n_2 ;
  wire \r_i_term_extended_reg[8]_i_1_n_3 ;
  wire \r_i_term_extended_reg[8]_i_1_n_4 ;
  wire \r_i_term_extended_reg[8]_i_1_n_5 ;
  wire \r_i_term_extended_reg[8]_i_1_n_6 ;
  wire \r_i_term_extended_reg[8]_i_1_n_7 ;
  wire r_integral_component1_i_1_n_0;
  wire r_integral_component1_n_100;
  wire r_integral_component1_n_101;
  wire r_integral_component1_n_102;
  wire r_integral_component1_n_103;
  wire r_integral_component1_n_104;
  wire r_integral_component1_n_105;
  wire r_integral_component1_n_86;
  wire r_integral_component1_n_87;
  wire r_integral_component1_n_88;
  wire r_integral_component1_n_89;
  wire r_integral_component1_n_90;
  wire r_integral_component1_n_91;
  wire r_integral_component1_n_92;
  wire r_integral_component1_n_93;
  wire r_integral_component1_n_94;
  wire r_integral_component1_n_95;
  wire r_integral_component1_n_96;
  wire r_integral_component1_n_97;
  wire r_integral_component1_n_98;
  wire r_integral_component1_n_99;
  wire [0:0]r_integral_component2_0;
  wire [7:0]r_integral_component2_1;
  wire r_integral_component2_n_100;
  wire r_integral_component2_n_101;
  wire r_integral_component2_n_102;
  wire r_integral_component2_n_103;
  wire r_integral_component2_n_104;
  wire r_integral_component2_n_105;
  wire r_integral_component2_n_82;
  wire r_integral_component2_n_83;
  wire r_integral_component2_n_84;
  wire r_integral_component2_n_85;
  wire r_integral_component2_n_86;
  wire r_integral_component2_n_87;
  wire r_integral_component2_n_88;
  wire r_integral_component2_n_89;
  wire r_integral_component2_n_90;
  wire r_integral_component2_n_91;
  wire r_integral_component2_n_92;
  wire r_integral_component2_n_93;
  wire r_integral_component2_n_94;
  wire r_integral_component2_n_95;
  wire r_integral_component2_n_96;
  wire r_integral_component2_n_97;
  wire r_integral_component2_n_98;
  wire r_integral_component2_n_99;
  wire [7:0]r_p_term_reg_0;
  wire [12:0]r_plant_output;
  wire r_pwm0_carry_i_18_n_0;
  wire r_pwm0_carry_i_19_n_0;
  wire [11:0]r_reference;
  wire [11:0]\r_reference_reg[11]_0 ;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire s00_axi_aresetn_0;
  wire w_calculate;
  wire [11:0]w_selected_duty;
  wire [3:0]NLW_o_control_input3_carry_O_UNCONNECTED;
  wire [3:0]NLW_o_control_input3_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_o_control_input3_carry__1_O_UNCONNECTED;
  wire [3:1]NLW_o_control_input3_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_o_control_input3_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_r_control_input0_carry__5_CO_UNCONNECTED;
  wire [3:1]NLW_r_control_input0_carry__5_O_UNCONNECTED;
  wire [3:1]NLW_r_error0_carry__2_CO_UNCONNECTED;
  wire [3:2]NLW_r_error0_carry__2_O_UNCONNECTED;
  wire [3:3]NLW_r_i_term_extended0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_r_i_term_extended0_carry_O_UNCONNECTED;
  wire [3:3]\NLW_r_i_term_extended_reg[20]_i_1_CO_UNCONNECTED ;
  wire NLW_r_integral_component1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_r_integral_component1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_r_integral_component1_OVERFLOW_UNCONNECTED;
  wire NLW_r_integral_component1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_r_integral_component1_PATTERNDETECT_UNCONNECTED;
  wire NLW_r_integral_component1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_r_integral_component1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_r_integral_component1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_r_integral_component1_CARRYOUT_UNCONNECTED;
  wire [47:36]NLW_r_integral_component1_P_UNCONNECTED;
  wire [47:0]NLW_r_integral_component1_PCOUT_UNCONNECTED;
  wire NLW_r_integral_component2_CARRYCASCOUT_UNCONNECTED;
  wire NLW_r_integral_component2_MULTSIGNOUT_UNCONNECTED;
  wire NLW_r_integral_component2_OVERFLOW_UNCONNECTED;
  wire NLW_r_integral_component2_PATTERNBDETECT_UNCONNECTED;
  wire NLW_r_integral_component2_PATTERNDETECT_UNCONNECTED;
  wire NLW_r_integral_component2_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_r_integral_component2_ACOUT_UNCONNECTED;
  wire [17:0]NLW_r_integral_component2_BCOUT_UNCONNECTED;
  wire [3:0]NLW_r_integral_component2_CARRYOUT_UNCONNECTED;
  wire [47:24]NLW_r_integral_component2_P_UNCONNECTED;
  wire [47:0]NLW_r_integral_component2_PCOUT_UNCONNECTED;
  wire NLW_r_p_term_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_r_p_term_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_r_p_term_reg_OVERFLOW_UNCONNECTED;
  wire NLW_r_p_term_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_r_p_term_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_r_p_term_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_r_p_term_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_r_p_term_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_r_p_term_reg_CARRYOUT_UNCONNECTED;
  wire [47:15]NLW_r_p_term_reg_P_UNCONNECTED;
  wire [47:0]NLW_r_p_term_reg_PCOUT_UNCONNECTED;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SamplingTimer KHZ_TICK
       (.AR(s00_axi_aresetn_0),
        .i_sw_enable_control(i_sw_enable_control),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .w_calculate(w_calculate));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hAA08)) 
    \axi_rdata[0]_i_4 
       (.I0(i_sw_enable_control),
        .I1(\r_control_input_reg_n_0_[0] ),
        .I2(o_control_input3),
        .I3(o_control_input2),
        .O(data5[0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \axi_rdata[10]_i_4 
       (.I0(i_sw_enable_control),
        .I1(o_control_input2),
        .I2(\r_control_input_reg_n_0_[10] ),
        .I3(o_control_input3),
        .O(data5[10]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \axi_rdata[11]_i_4 
       (.I0(i_sw_enable_control),
        .I1(o_control_input2),
        .I2(\r_control_input_reg_n_0_[11] ),
        .I3(o_control_input3),
        .O(data5[11]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h2220)) 
    \axi_rdata[1]_i_4 
       (.I0(i_sw_enable_control),
        .I1(o_control_input2),
        .I2(o_control_input3),
        .I3(\r_control_input_reg_n_0_[1] ),
        .O(data5[1]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \axi_rdata[2]_i_4 
       (.I0(i_sw_enable_control),
        .I1(o_control_input2),
        .I2(\r_control_input_reg_n_0_[2] ),
        .I3(o_control_input3),
        .O(data5[2]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \axi_rdata[3]_i_4 
       (.I0(i_sw_enable_control),
        .I1(o_control_input2),
        .I2(\r_control_input_reg_n_0_[3] ),
        .I3(o_control_input3),
        .O(data5[3]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \axi_rdata[4]_i_4 
       (.I0(i_sw_enable_control),
        .I1(o_control_input2),
        .I2(\r_control_input_reg_n_0_[4] ),
        .I3(o_control_input3),
        .O(data5[4]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \axi_rdata[5]_i_4 
       (.I0(i_sw_enable_control),
        .I1(o_control_input2),
        .I2(\r_control_input_reg_n_0_[5] ),
        .I3(o_control_input3),
        .O(data5[5]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \axi_rdata[6]_i_4 
       (.I0(i_sw_enable_control),
        .I1(o_control_input2),
        .I2(\r_control_input_reg_n_0_[6] ),
        .I3(o_control_input3),
        .O(data5[6]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \axi_rdata[7]_i_4 
       (.I0(i_sw_enable_control),
        .I1(o_control_input2),
        .I2(\r_control_input_reg_n_0_[7] ),
        .I3(o_control_input3),
        .O(data5[7]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \axi_rdata[8]_i_4 
       (.I0(i_sw_enable_control),
        .I1(o_control_input2),
        .I2(\r_control_input_reg_n_0_[8] ),
        .I3(o_control_input3),
        .O(data5[8]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \axi_rdata[9]_i_4 
       (.I0(i_sw_enable_control),
        .I1(o_control_input2),
        .I2(\r_control_input_reg_n_0_[9] ),
        .I3(o_control_input3),
        .O(data5[9]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 o_control_input3_carry
       (.CI(1'b0),
        .CO({o_control_input3_carry_n_0,o_control_input3_carry_n_1,o_control_input3_carry_n_2,o_control_input3_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_o_control_input3_carry_O_UNCONNECTED[3:0]),
        .S({o_control_input3_carry_i_1_n_0,o_control_input3_carry_i_2_n_0,o_control_input3_carry_i_3_n_0,o_control_input3_carry_i_4_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 o_control_input3_carry__0
       (.CI(o_control_input3_carry_n_0),
        .CO({o_control_input3_carry__0_n_0,o_control_input3_carry__0_n_1,o_control_input3_carry__0_n_2,o_control_input3_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_o_control_input3_carry__0_O_UNCONNECTED[3:0]),
        .S({o_control_input3_carry__0_i_1_n_0,o_control_input3_carry__0_i_2_n_0,o_control_input3_carry__0_i_3_n_0,o_control_input3_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    o_control_input3_carry__0_i_1
       (.I0(\r_control_input_reg_n_0_[14] ),
        .I1(\r_control_input_reg_n_0_[15] ),
        .O(o_control_input3_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    o_control_input3_carry__0_i_2
       (.I0(\r_control_input_reg_n_0_[12] ),
        .I1(\r_control_input_reg_n_0_[13] ),
        .O(o_control_input3_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    o_control_input3_carry__0_i_3
       (.I0(\r_control_input_reg_n_0_[10] ),
        .I1(\r_control_input_reg_n_0_[11] ),
        .O(o_control_input3_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    o_control_input3_carry__0_i_4
       (.I0(\r_control_input_reg_n_0_[8] ),
        .I1(\r_control_input_reg_n_0_[9] ),
        .O(o_control_input3_carry__0_i_4_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 o_control_input3_carry__1
       (.CI(o_control_input3_carry__0_n_0),
        .CO({o_control_input3_carry__1_n_0,o_control_input3_carry__1_n_1,o_control_input3_carry__1_n_2,o_control_input3_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_o_control_input3_carry__1_O_UNCONNECTED[3:0]),
        .S({o_control_input3_carry__1_i_1_n_0,o_control_input3_carry__1_i_2_n_0,o_control_input3_carry__1_i_3_n_0,o_control_input3_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    o_control_input3_carry__1_i_1
       (.I0(\r_control_input_reg_n_0_[22] ),
        .I1(\r_control_input_reg_n_0_[23] ),
        .O(o_control_input3_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    o_control_input3_carry__1_i_2
       (.I0(\r_control_input_reg_n_0_[20] ),
        .I1(\r_control_input_reg_n_0_[21] ),
        .O(o_control_input3_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    o_control_input3_carry__1_i_3
       (.I0(\r_control_input_reg_n_0_[18] ),
        .I1(\r_control_input_reg_n_0_[19] ),
        .O(o_control_input3_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    o_control_input3_carry__1_i_4
       (.I0(\r_control_input_reg_n_0_[16] ),
        .I1(\r_control_input_reg_n_0_[17] ),
        .O(o_control_input3_carry__1_i_4_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 o_control_input3_carry__2
       (.CI(o_control_input3_carry__1_n_0),
        .CO({NLW_o_control_input3_carry__2_CO_UNCONNECTED[3:1],o_control_input3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\r_control_input_reg_n_0_[24] }),
        .O(NLW_o_control_input3_carry__2_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,o_control_input3_carry__2_i_1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    o_control_input3_carry__2_i_1
       (.I0(\r_control_input_reg_n_0_[24] ),
        .O(o_control_input3_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    o_control_input3_carry_i_1
       (.I0(\r_control_input_reg_n_0_[6] ),
        .I1(\r_control_input_reg_n_0_[7] ),
        .O(o_control_input3_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    o_control_input3_carry_i_2
       (.I0(\r_control_input_reg_n_0_[4] ),
        .I1(\r_control_input_reg_n_0_[5] ),
        .O(o_control_input3_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    o_control_input3_carry_i_3
       (.I0(\r_control_input_reg_n_0_[2] ),
        .I1(\r_control_input_reg_n_0_[3] ),
        .O(o_control_input3_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    o_control_input3_carry_i_4
       (.I0(\r_control_input_reg_n_0_[0] ),
        .I1(\r_control_input_reg_n_0_[1] ),
        .O(o_control_input3_carry_i_4_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 r_control_input0_carry
       (.CI(1'b0),
        .CO({r_control_input0_carry_n_0,r_control_input0_carry_n_1,r_control_input0_carry_n_2,r_control_input0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(P[3:0]),
        .O({r_control_input0_carry_n_4,r_control_input0_carry_n_5,r_control_input0_carry_n_6,r_control_input0_carry_n_7}),
        .S({r_control_input0_carry_i_1_n_0,r_control_input0_carry_i_2_n_0,r_control_input0_carry_i_3_n_0,r_control_input0_carry_i_4_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 r_control_input0_carry__0
       (.CI(r_control_input0_carry_n_0),
        .CO({r_control_input0_carry__0_n_0,r_control_input0_carry__0_n_1,r_control_input0_carry__0_n_2,r_control_input0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(P[7:4]),
        .O({r_control_input0_carry__0_n_4,r_control_input0_carry__0_n_5,r_control_input0_carry__0_n_6,r_control_input0_carry__0_n_7}),
        .S({r_control_input0_carry__0_i_1_n_0,r_control_input0_carry__0_i_2_n_0,r_control_input0_carry__0_i_3_n_0,r_control_input0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    r_control_input0_carry__0_i_1
       (.I0(P[7]),
        .I1(Q[7]),
        .O(r_control_input0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    r_control_input0_carry__0_i_2
       (.I0(P[6]),
        .I1(Q[6]),
        .O(r_control_input0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    r_control_input0_carry__0_i_3
       (.I0(P[5]),
        .I1(Q[5]),
        .O(r_control_input0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    r_control_input0_carry__0_i_4
       (.I0(P[4]),
        .I1(Q[4]),
        .O(r_control_input0_carry__0_i_4_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 r_control_input0_carry__1
       (.CI(r_control_input0_carry__0_n_0),
        .CO({r_control_input0_carry__1_n_0,r_control_input0_carry__1_n_1,r_control_input0_carry__1_n_2,r_control_input0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(P[11:8]),
        .O({r_control_input0_carry__1_n_4,r_control_input0_carry__1_n_5,r_control_input0_carry__1_n_6,r_control_input0_carry__1_n_7}),
        .S({r_control_input0_carry__1_i_1_n_0,r_control_input0_carry__1_i_2_n_0,r_control_input0_carry__1_i_3_n_0,r_control_input0_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    r_control_input0_carry__1_i_1
       (.I0(P[11]),
        .I1(Q[11]),
        .O(r_control_input0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    r_control_input0_carry__1_i_2
       (.I0(P[10]),
        .I1(Q[10]),
        .O(r_control_input0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    r_control_input0_carry__1_i_3
       (.I0(P[9]),
        .I1(Q[9]),
        .O(r_control_input0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    r_control_input0_carry__1_i_4
       (.I0(P[8]),
        .I1(Q[8]),
        .O(r_control_input0_carry__1_i_4_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 r_control_input0_carry__2
       (.CI(r_control_input0_carry__1_n_0),
        .CO({r_control_input0_carry__2_n_0,r_control_input0_carry__2_n_1,r_control_input0_carry__2_n_2,r_control_input0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({Q[14],r_control_input0_carry__2_i_1_n_0,P[13:12]}),
        .O({r_control_input0_carry__2_n_4,r_control_input0_carry__2_n_5,r_control_input0_carry__2_n_6,r_control_input0_carry__2_n_7}),
        .S({r_control_input0_carry__2_i_2_n_0,r_control_input0_carry__2_i_3_n_0,r_control_input0_carry__2_i_4_n_0,r_control_input0_carry__2_i_5_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    r_control_input0_carry__2_i_1
       (.I0(Q[14]),
        .O(r_control_input0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r_control_input0_carry__2_i_2
       (.I0(Q[14]),
        .I1(Q[15]),
        .O(r_control_input0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    r_control_input0_carry__2_i_3
       (.I0(Q[14]),
        .I1(P[14]),
        .O(r_control_input0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    r_control_input0_carry__2_i_4
       (.I0(P[13]),
        .I1(Q[13]),
        .O(r_control_input0_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    r_control_input0_carry__2_i_5
       (.I0(P[12]),
        .I1(Q[12]),
        .O(r_control_input0_carry__2_i_5_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 r_control_input0_carry__3
       (.CI(r_control_input0_carry__2_n_0),
        .CO({r_control_input0_carry__3_n_0,r_control_input0_carry__3_n_1,r_control_input0_carry__3_n_2,r_control_input0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(Q[18:15]),
        .O({r_control_input0_carry__3_n_4,r_control_input0_carry__3_n_5,r_control_input0_carry__3_n_6,r_control_input0_carry__3_n_7}),
        .S({r_control_input0_carry__3_i_1_n_0,r_control_input0_carry__3_i_2_n_0,r_control_input0_carry__3_i_3_n_0,r_control_input0_carry__3_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    r_control_input0_carry__3_i_1
       (.I0(Q[18]),
        .I1(Q[19]),
        .O(r_control_input0_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r_control_input0_carry__3_i_2
       (.I0(Q[17]),
        .I1(Q[18]),
        .O(r_control_input0_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r_control_input0_carry__3_i_3
       (.I0(Q[16]),
        .I1(Q[17]),
        .O(r_control_input0_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r_control_input0_carry__3_i_4
       (.I0(Q[15]),
        .I1(Q[16]),
        .O(r_control_input0_carry__3_i_4_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 r_control_input0_carry__4
       (.CI(r_control_input0_carry__3_n_0),
        .CO({r_control_input0_carry__4_n_0,r_control_input0_carry__4_n_1,r_control_input0_carry__4_n_2,r_control_input0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(Q[22:19]),
        .O({r_control_input0_carry__4_n_4,r_control_input0_carry__4_n_5,r_control_input0_carry__4_n_6,r_control_input0_carry__4_n_7}),
        .S({r_control_input0_carry__4_i_1_n_0,r_control_input0_carry__4_i_2_n_0,r_control_input0_carry__4_i_3_n_0,r_control_input0_carry__4_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    r_control_input0_carry__4_i_1
       (.I0(Q[22]),
        .I1(Q[23]),
        .O(r_control_input0_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r_control_input0_carry__4_i_2
       (.I0(Q[21]),
        .I1(Q[22]),
        .O(r_control_input0_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r_control_input0_carry__4_i_3
       (.I0(Q[20]),
        .I1(Q[21]),
        .O(r_control_input0_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r_control_input0_carry__4_i_4
       (.I0(Q[19]),
        .I1(Q[20]),
        .O(r_control_input0_carry__4_i_4_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 r_control_input0_carry__5
       (.CI(r_control_input0_carry__4_n_0),
        .CO(NLW_r_control_input0_carry__5_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_r_control_input0_carry__5_O_UNCONNECTED[3:1],r_control_input0_carry__5_n_7}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT2 #(
    .INIT(4'h6)) 
    r_control_input0_carry_i_1
       (.I0(P[3]),
        .I1(Q[3]),
        .O(r_control_input0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    r_control_input0_carry_i_2
       (.I0(P[2]),
        .I1(Q[2]),
        .O(r_control_input0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    r_control_input0_carry_i_3
       (.I0(P[1]),
        .I1(Q[1]),
        .O(r_control_input0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    r_control_input0_carry_i_4
       (.I0(P[0]),
        .I1(Q[0]),
        .O(r_control_input0_carry_i_4_n_0));
  FDRE \r_control_input_reg[0] 
       (.C(s00_axi_aclk),
        .CE(w_calculate),
        .D(r_control_input0_carry_n_7),
        .Q(\r_control_input_reg_n_0_[0] ),
        .R(s00_axi_aresetn_0));
  FDRE \r_control_input_reg[10] 
       (.C(s00_axi_aclk),
        .CE(w_calculate),
        .D(r_control_input0_carry__1_n_5),
        .Q(\r_control_input_reg_n_0_[10] ),
        .R(s00_axi_aresetn_0));
  FDRE \r_control_input_reg[11] 
       (.C(s00_axi_aclk),
        .CE(w_calculate),
        .D(r_control_input0_carry__1_n_4),
        .Q(\r_control_input_reg_n_0_[11] ),
        .R(s00_axi_aresetn_0));
  FDRE \r_control_input_reg[12] 
       (.C(s00_axi_aclk),
        .CE(w_calculate),
        .D(r_control_input0_carry__2_n_7),
        .Q(\r_control_input_reg_n_0_[12] ),
        .R(s00_axi_aresetn_0));
  FDRE \r_control_input_reg[13] 
       (.C(s00_axi_aclk),
        .CE(w_calculate),
        .D(r_control_input0_carry__2_n_6),
        .Q(\r_control_input_reg_n_0_[13] ),
        .R(s00_axi_aresetn_0));
  FDRE \r_control_input_reg[14] 
       (.C(s00_axi_aclk),
        .CE(w_calculate),
        .D(r_control_input0_carry__2_n_5),
        .Q(\r_control_input_reg_n_0_[14] ),
        .R(s00_axi_aresetn_0));
  FDRE \r_control_input_reg[15] 
       (.C(s00_axi_aclk),
        .CE(w_calculate),
        .D(r_control_input0_carry__2_n_4),
        .Q(\r_control_input_reg_n_0_[15] ),
        .R(s00_axi_aresetn_0));
  FDRE \r_control_input_reg[16] 
       (.C(s00_axi_aclk),
        .CE(w_calculate),
        .D(r_control_input0_carry__3_n_7),
        .Q(\r_control_input_reg_n_0_[16] ),
        .R(s00_axi_aresetn_0));
  FDRE \r_control_input_reg[17] 
       (.C(s00_axi_aclk),
        .CE(w_calculate),
        .D(r_control_input0_carry__3_n_6),
        .Q(\r_control_input_reg_n_0_[17] ),
        .R(s00_axi_aresetn_0));
  FDRE \r_control_input_reg[18] 
       (.C(s00_axi_aclk),
        .CE(w_calculate),
        .D(r_control_input0_carry__3_n_5),
        .Q(\r_control_input_reg_n_0_[18] ),
        .R(s00_axi_aresetn_0));
  FDRE \r_control_input_reg[19] 
       (.C(s00_axi_aclk),
        .CE(w_calculate),
        .D(r_control_input0_carry__3_n_4),
        .Q(\r_control_input_reg_n_0_[19] ),
        .R(s00_axi_aresetn_0));
  FDRE \r_control_input_reg[1] 
       (.C(s00_axi_aclk),
        .CE(w_calculate),
        .D(r_control_input0_carry_n_6),
        .Q(\r_control_input_reg_n_0_[1] ),
        .R(s00_axi_aresetn_0));
  FDRE \r_control_input_reg[20] 
       (.C(s00_axi_aclk),
        .CE(w_calculate),
        .D(r_control_input0_carry__4_n_7),
        .Q(\r_control_input_reg_n_0_[20] ),
        .R(s00_axi_aresetn_0));
  FDRE \r_control_input_reg[21] 
       (.C(s00_axi_aclk),
        .CE(w_calculate),
        .D(r_control_input0_carry__4_n_6),
        .Q(\r_control_input_reg_n_0_[21] ),
        .R(s00_axi_aresetn_0));
  FDRE \r_control_input_reg[22] 
       (.C(s00_axi_aclk),
        .CE(w_calculate),
        .D(r_control_input0_carry__4_n_5),
        .Q(\r_control_input_reg_n_0_[22] ),
        .R(s00_axi_aresetn_0));
  FDRE \r_control_input_reg[23] 
       (.C(s00_axi_aclk),
        .CE(w_calculate),
        .D(r_control_input0_carry__4_n_4),
        .Q(\r_control_input_reg_n_0_[23] ),
        .R(s00_axi_aresetn_0));
  FDRE \r_control_input_reg[24] 
       (.C(s00_axi_aclk),
        .CE(w_calculate),
        .D(r_control_input0_carry__5_n_7),
        .Q(\r_control_input_reg_n_0_[24] ),
        .R(s00_axi_aresetn_0));
  FDRE \r_control_input_reg[2] 
       (.C(s00_axi_aclk),
        .CE(w_calculate),
        .D(r_control_input0_carry_n_5),
        .Q(\r_control_input_reg_n_0_[2] ),
        .R(s00_axi_aresetn_0));
  FDRE \r_control_input_reg[3] 
       (.C(s00_axi_aclk),
        .CE(w_calculate),
        .D(r_control_input0_carry_n_4),
        .Q(\r_control_input_reg_n_0_[3] ),
        .R(s00_axi_aresetn_0));
  FDRE \r_control_input_reg[4] 
       (.C(s00_axi_aclk),
        .CE(w_calculate),
        .D(r_control_input0_carry__0_n_7),
        .Q(\r_control_input_reg_n_0_[4] ),
        .R(s00_axi_aresetn_0));
  FDRE \r_control_input_reg[5] 
       (.C(s00_axi_aclk),
        .CE(w_calculate),
        .D(r_control_input0_carry__0_n_6),
        .Q(\r_control_input_reg_n_0_[5] ),
        .R(s00_axi_aresetn_0));
  FDRE \r_control_input_reg[6] 
       (.C(s00_axi_aclk),
        .CE(w_calculate),
        .D(r_control_input0_carry__0_n_5),
        .Q(\r_control_input_reg_n_0_[6] ),
        .R(s00_axi_aresetn_0));
  FDRE \r_control_input_reg[7] 
       (.C(s00_axi_aclk),
        .CE(w_calculate),
        .D(r_control_input0_carry__0_n_4),
        .Q(\r_control_input_reg_n_0_[7] ),
        .R(s00_axi_aresetn_0));
  FDRE \r_control_input_reg[8] 
       (.C(s00_axi_aclk),
        .CE(w_calculate),
        .D(r_control_input0_carry__1_n_7),
        .Q(\r_control_input_reg_n_0_[8] ),
        .R(s00_axi_aresetn_0));
  FDRE \r_control_input_reg[9] 
       (.C(s00_axi_aclk),
        .CE(w_calculate),
        .D(r_control_input0_carry__1_n_6),
        .Q(\r_control_input_reg_n_0_[9] ),
        .R(s00_axi_aresetn_0));
  CARRY4 r_error0_carry
       (.CI(1'b0),
        .CO({r_error0_carry_n_0,r_error0_carry_n_1,r_error0_carry_n_2,r_error0_carry_n_3}),
        .CYINIT(1'b1),
        .DI(r_reference[3:0]),
        .O({r_error0_carry_n_4,r_error0_carry_n_5,r_error0_carry_n_6,r_error0_carry_n_7}),
        .S({r_error0_carry_i_1_n_0,r_error0_carry_i_2_n_0,r_error0_carry_i_3_n_0,r_error0_carry_i_4_n_0}));
  CARRY4 r_error0_carry__0
       (.CI(r_error0_carry_n_0),
        .CO({r_error0_carry__0_n_0,r_error0_carry__0_n_1,r_error0_carry__0_n_2,r_error0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(r_reference[7:4]),
        .O({r_error0_carry__0_n_4,r_error0_carry__0_n_5,r_error0_carry__0_n_6,r_error0_carry__0_n_7}),
        .S({r_error0_carry__0_i_1_n_0,r_error0_carry__0_i_2_n_0,r_error0_carry__0_i_3_n_0,r_error0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    r_error0_carry__0_i_1
       (.I0(r_reference[7]),
        .I1(r_plant_output[7]),
        .O(r_error0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r_error0_carry__0_i_2
       (.I0(r_reference[6]),
        .I1(r_plant_output[6]),
        .O(r_error0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r_error0_carry__0_i_3
       (.I0(r_reference[5]),
        .I1(r_plant_output[5]),
        .O(r_error0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r_error0_carry__0_i_4
       (.I0(r_reference[4]),
        .I1(r_plant_output[4]),
        .O(r_error0_carry__0_i_4_n_0));
  CARRY4 r_error0_carry__1
       (.CI(r_error0_carry__0_n_0),
        .CO({r_error0_carry__1_n_0,r_error0_carry__1_n_1,r_error0_carry__1_n_2,r_error0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(r_reference[11:8]),
        .O({r_error0_carry__1_n_4,r_error0_carry__1_n_5,r_error0_carry__1_n_6,r_error0_carry__1_n_7}),
        .S({r_error0_carry__1_i_1_n_0,r_error0_carry__1_i_2_n_0,r_error0_carry__1_i_3_n_0,r_error0_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    r_error0_carry__1_i_1
       (.I0(r_reference[11]),
        .I1(r_plant_output[11]),
        .O(r_error0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r_error0_carry__1_i_2
       (.I0(r_reference[10]),
        .I1(r_plant_output[10]),
        .O(r_error0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r_error0_carry__1_i_3
       (.I0(r_reference[9]),
        .I1(r_plant_output[9]),
        .O(r_error0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r_error0_carry__1_i_4
       (.I0(r_reference[8]),
        .I1(r_plant_output[8]),
        .O(r_error0_carry__1_i_4_n_0));
  CARRY4 r_error0_carry__2
       (.CI(r_error0_carry__1_n_0),
        .CO({NLW_r_error0_carry__2_CO_UNCONNECTED[3:1],r_error0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_r_error0_carry__2_O_UNCONNECTED[3:2],r_error0_carry__2_n_6,r_error0_carry__2_n_7}),
        .S({1'b0,1'b0,1'b1,r_error0_carry__2_i_1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    r_error0_carry__2_i_1
       (.I0(r_plant_output[12]),
        .O(r_error0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r_error0_carry_i_1
       (.I0(r_reference[3]),
        .I1(r_plant_output[3]),
        .O(r_error0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r_error0_carry_i_2
       (.I0(r_reference[2]),
        .I1(r_plant_output[2]),
        .O(r_error0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r_error0_carry_i_3
       (.I0(r_reference[1]),
        .I1(r_plant_output[1]),
        .O(r_error0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r_error0_carry_i_4
       (.I0(r_reference[0]),
        .I1(r_plant_output[0]),
        .O(r_error0_carry_i_4_n_0));
  FDRE \r_error_reg[0] 
       (.C(s00_axi_aclk),
        .CE(i_sw_enable_control),
        .D(r_error0_carry_n_7),
        .Q(\r_error_reg[13]_0 [0]),
        .R(s00_axi_aresetn_0));
  FDRE \r_error_reg[10] 
       (.C(s00_axi_aclk),
        .CE(i_sw_enable_control),
        .D(r_error0_carry__1_n_5),
        .Q(\r_error_reg[13]_0 [10]),
        .R(s00_axi_aresetn_0));
  FDRE \r_error_reg[11] 
       (.C(s00_axi_aclk),
        .CE(i_sw_enable_control),
        .D(r_error0_carry__1_n_4),
        .Q(\r_error_reg[13]_0 [11]),
        .R(s00_axi_aresetn_0));
  FDRE \r_error_reg[12] 
       (.C(s00_axi_aclk),
        .CE(i_sw_enable_control),
        .D(r_error0_carry__2_n_7),
        .Q(\r_error_reg[13]_0 [12]),
        .R(s00_axi_aresetn_0));
  FDRE \r_error_reg[13] 
       (.C(s00_axi_aclk),
        .CE(i_sw_enable_control),
        .D(r_error0_carry__2_n_6),
        .Q(\r_error_reg[13]_0 [13]),
        .R(s00_axi_aresetn_0));
  FDRE \r_error_reg[1] 
       (.C(s00_axi_aclk),
        .CE(i_sw_enable_control),
        .D(r_error0_carry_n_6),
        .Q(\r_error_reg[13]_0 [1]),
        .R(s00_axi_aresetn_0));
  FDRE \r_error_reg[2] 
       (.C(s00_axi_aclk),
        .CE(i_sw_enable_control),
        .D(r_error0_carry_n_5),
        .Q(\r_error_reg[13]_0 [2]),
        .R(s00_axi_aresetn_0));
  FDRE \r_error_reg[3] 
       (.C(s00_axi_aclk),
        .CE(i_sw_enable_control),
        .D(r_error0_carry_n_4),
        .Q(\r_error_reg[13]_0 [3]),
        .R(s00_axi_aresetn_0));
  FDRE \r_error_reg[4] 
       (.C(s00_axi_aclk),
        .CE(i_sw_enable_control),
        .D(r_error0_carry__0_n_7),
        .Q(\r_error_reg[13]_0 [4]),
        .R(s00_axi_aresetn_0));
  FDRE \r_error_reg[5] 
       (.C(s00_axi_aclk),
        .CE(i_sw_enable_control),
        .D(r_error0_carry__0_n_6),
        .Q(\r_error_reg[13]_0 [5]),
        .R(s00_axi_aresetn_0));
  FDRE \r_error_reg[6] 
       (.C(s00_axi_aclk),
        .CE(i_sw_enable_control),
        .D(r_error0_carry__0_n_5),
        .Q(\r_error_reg[13]_0 [6]),
        .R(s00_axi_aresetn_0));
  FDRE \r_error_reg[7] 
       (.C(s00_axi_aclk),
        .CE(i_sw_enable_control),
        .D(r_error0_carry__0_n_4),
        .Q(\r_error_reg[13]_0 [7]),
        .R(s00_axi_aresetn_0));
  FDRE \r_error_reg[8] 
       (.C(s00_axi_aclk),
        .CE(i_sw_enable_control),
        .D(r_error0_carry__1_n_7),
        .Q(\r_error_reg[13]_0 [8]),
        .R(s00_axi_aresetn_0));
  FDRE \r_error_reg[9] 
       (.C(s00_axi_aclk),
        .CE(i_sw_enable_control),
        .D(r_error0_carry__1_n_6),
        .Q(\r_error_reg[13]_0 [9]),
        .R(s00_axi_aresetn_0));
  FDRE \r_i_gain_reg[0] 
       (.C(s00_axi_aclk),
        .CE(i_sw_enable_control),
        .D(\r_i_gain_reg[7]_0 [0]),
        .Q(B[0]),
        .R(s00_axi_aresetn_0));
  FDRE \r_i_gain_reg[1] 
       (.C(s00_axi_aclk),
        .CE(i_sw_enable_control),
        .D(\r_i_gain_reg[7]_0 [1]),
        .Q(B[1]),
        .R(s00_axi_aresetn_0));
  FDRE \r_i_gain_reg[2] 
       (.C(s00_axi_aclk),
        .CE(i_sw_enable_control),
        .D(\r_i_gain_reg[7]_0 [2]),
        .Q(B[2]),
        .R(s00_axi_aresetn_0));
  FDRE \r_i_gain_reg[3] 
       (.C(s00_axi_aclk),
        .CE(i_sw_enable_control),
        .D(\r_i_gain_reg[7]_0 [3]),
        .Q(B[3]),
        .R(s00_axi_aresetn_0));
  FDRE \r_i_gain_reg[4] 
       (.C(s00_axi_aclk),
        .CE(i_sw_enable_control),
        .D(\r_i_gain_reg[7]_0 [4]),
        .Q(B[4]),
        .R(s00_axi_aresetn_0));
  FDRE \r_i_gain_reg[5] 
       (.C(s00_axi_aclk),
        .CE(i_sw_enable_control),
        .D(\r_i_gain_reg[7]_0 [5]),
        .Q(B[5]),
        .R(s00_axi_aresetn_0));
  FDRE \r_i_gain_reg[6] 
       (.C(s00_axi_aclk),
        .CE(i_sw_enable_control),
        .D(\r_i_gain_reg[7]_0 [6]),
        .Q(B[6]),
        .R(s00_axi_aresetn_0));
  FDRE \r_i_gain_reg[7] 
       (.C(s00_axi_aclk),
        .CE(i_sw_enable_control),
        .D(\r_i_gain_reg[7]_0 [7]),
        .Q(B[7]),
        .R(s00_axi_aresetn_0));
  FDRE \r_i_gain_z_reg[0] 
       (.C(s00_axi_aclk),
        .CE(i_sw_enable_control),
        .D(B[0]),
        .Q(r_i_gain_z[0]),
        .R(s00_axi_aresetn_0));
  FDRE \r_i_gain_z_reg[1] 
       (.C(s00_axi_aclk),
        .CE(i_sw_enable_control),
        .D(B[1]),
        .Q(r_i_gain_z[1]),
        .R(s00_axi_aresetn_0));
  FDRE \r_i_gain_z_reg[2] 
       (.C(s00_axi_aclk),
        .CE(i_sw_enable_control),
        .D(B[2]),
        .Q(r_i_gain_z[2]),
        .R(s00_axi_aresetn_0));
  FDRE \r_i_gain_z_reg[3] 
       (.C(s00_axi_aclk),
        .CE(i_sw_enable_control),
        .D(B[3]),
        .Q(r_i_gain_z[3]),
        .R(s00_axi_aresetn_0));
  FDRE \r_i_gain_z_reg[4] 
       (.C(s00_axi_aclk),
        .CE(i_sw_enable_control),
        .D(B[4]),
        .Q(r_i_gain_z[4]),
        .R(s00_axi_aresetn_0));
  FDRE \r_i_gain_z_reg[5] 
       (.C(s00_axi_aclk),
        .CE(i_sw_enable_control),
        .D(B[5]),
        .Q(r_i_gain_z[5]),
        .R(s00_axi_aresetn_0));
  FDRE \r_i_gain_z_reg[6] 
       (.C(s00_axi_aclk),
        .CE(i_sw_enable_control),
        .D(B[6]),
        .Q(r_i_gain_z[6]),
        .R(s00_axi_aresetn_0));
  FDRE \r_i_gain_z_reg[7] 
       (.C(s00_axi_aclk),
        .CE(i_sw_enable_control),
        .D(B[7]),
        .Q(r_i_gain_z[7]),
        .R(s00_axi_aresetn_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 r_i_term_extended0_carry
       (.CI(1'b0),
        .CO({NLW_r_i_term_extended0_carry_CO_UNCONNECTED[3],r_i_term_extended0_carry_n_1,r_i_term_extended0_carry_n_2,r_i_term_extended0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O(NLW_r_i_term_extended0_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,r_i_term_extended0_carry_i_1_n_0,r_i_term_extended0_carry_i_2_n_0,r_i_term_extended0_carry_i_3_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    r_i_term_extended0_carry_i_1
       (.I0(B[6]),
        .I1(r_i_gain_z[6]),
        .I2(B[7]),
        .I3(r_i_gain_z[7]),
        .O(r_i_term_extended0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    r_i_term_extended0_carry_i_2
       (.I0(B[3]),
        .I1(r_i_gain_z[3]),
        .I2(r_i_gain_z[5]),
        .I3(B[5]),
        .I4(r_i_gain_z[4]),
        .I5(B[4]),
        .O(r_i_term_extended0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    r_i_term_extended0_carry_i_3
       (.I0(B[0]),
        .I1(r_i_gain_z[0]),
        .I2(r_i_gain_z[2]),
        .I3(B[2]),
        .I4(r_i_gain_z[1]),
        .I5(B[1]),
        .O(r_i_term_extended0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    \r_i_term_extended[0]_i_2 
       (.I0(in[3]),
        .I1(r_i_term_extended_reg[3]),
        .O(\r_i_term_extended[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r_i_term_extended[0]_i_3 
       (.I0(in[2]),
        .I1(r_i_term_extended_reg[2]),
        .O(\r_i_term_extended[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r_i_term_extended[0]_i_4 
       (.I0(in[1]),
        .I1(r_i_term_extended_reg[1]),
        .O(\r_i_term_extended[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r_i_term_extended[0]_i_5 
       (.I0(in[0]),
        .I1(r_i_term_extended_reg[0]),
        .O(\r_i_term_extended[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r_i_term_extended[12]_i_2 
       (.I0(in[23]),
        .I1(r_i_term_extended_reg[15]),
        .O(\r_i_term_extended[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r_i_term_extended[12]_i_3 
       (.I0(in[14]),
        .I1(r_i_term_extended_reg[14]),
        .O(\r_i_term_extended[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r_i_term_extended[12]_i_4 
       (.I0(in[13]),
        .I1(r_i_term_extended_reg[13]),
        .O(\r_i_term_extended[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r_i_term_extended[12]_i_5 
       (.I0(in[12]),
        .I1(r_i_term_extended_reg[12]),
        .O(\r_i_term_extended[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r_i_term_extended[16]_i_2 
       (.I0(in[23]),
        .I1(r_i_term_extended_reg[19]),
        .O(\r_i_term_extended[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r_i_term_extended[16]_i_3 
       (.I0(in[23]),
        .I1(r_i_term_extended_reg[18]),
        .O(\r_i_term_extended[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r_i_term_extended[16]_i_4 
       (.I0(in[23]),
        .I1(r_i_term_extended_reg[17]),
        .O(\r_i_term_extended[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r_i_term_extended[16]_i_5 
       (.I0(in[23]),
        .I1(r_i_term_extended_reg[16]),
        .O(\r_i_term_extended[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r_i_term_extended[20]_i_2 
       (.I0(in[23]),
        .I1(r_i_term_extended_reg[23]),
        .O(\r_i_term_extended[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r_i_term_extended[20]_i_3 
       (.I0(in[23]),
        .I1(r_i_term_extended_reg[22]),
        .O(\r_i_term_extended[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r_i_term_extended[20]_i_4 
       (.I0(in[23]),
        .I1(r_i_term_extended_reg[21]),
        .O(\r_i_term_extended[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r_i_term_extended[20]_i_5 
       (.I0(in[23]),
        .I1(r_i_term_extended_reg[20]),
        .O(\r_i_term_extended[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r_i_term_extended[4]_i_2 
       (.I0(in[7]),
        .I1(r_i_term_extended_reg[7]),
        .O(\r_i_term_extended[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r_i_term_extended[4]_i_3 
       (.I0(in[6]),
        .I1(r_i_term_extended_reg[6]),
        .O(\r_i_term_extended[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r_i_term_extended[4]_i_4 
       (.I0(in[5]),
        .I1(r_i_term_extended_reg[5]),
        .O(\r_i_term_extended[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r_i_term_extended[4]_i_5 
       (.I0(in[4]),
        .I1(r_i_term_extended_reg[4]),
        .O(\r_i_term_extended[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r_i_term_extended[8]_i_2 
       (.I0(in[11]),
        .I1(r_i_term_extended_reg[11]),
        .O(\r_i_term_extended[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r_i_term_extended[8]_i_3 
       (.I0(in[10]),
        .I1(r_i_term_extended_reg[10]),
        .O(\r_i_term_extended[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r_i_term_extended[8]_i_4 
       (.I0(in[9]),
        .I1(r_i_term_extended_reg[9]),
        .O(\r_i_term_extended[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r_i_term_extended[8]_i_5 
       (.I0(in[8]),
        .I1(r_i_term_extended_reg[8]),
        .O(\r_i_term_extended[8]_i_5_n_0 ));
  FDRE \r_i_term_extended_reg[0] 
       (.C(s00_axi_aclk),
        .CE(w_calculate),
        .D(\r_i_term_extended_reg[0]_i_1_n_7 ),
        .Q(r_i_term_extended_reg[0]),
        .R(r_integral_component1_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \r_i_term_extended_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\r_i_term_extended_reg[0]_i_1_n_0 ,\r_i_term_extended_reg[0]_i_1_n_1 ,\r_i_term_extended_reg[0]_i_1_n_2 ,\r_i_term_extended_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[3:0]),
        .O({\r_i_term_extended_reg[0]_i_1_n_4 ,\r_i_term_extended_reg[0]_i_1_n_5 ,\r_i_term_extended_reg[0]_i_1_n_6 ,\r_i_term_extended_reg[0]_i_1_n_7 }),
        .S({\r_i_term_extended[0]_i_2_n_0 ,\r_i_term_extended[0]_i_3_n_0 ,\r_i_term_extended[0]_i_4_n_0 ,\r_i_term_extended[0]_i_5_n_0 }));
  FDRE \r_i_term_extended_reg[10] 
       (.C(s00_axi_aclk),
        .CE(w_calculate),
        .D(\r_i_term_extended_reg[8]_i_1_n_5 ),
        .Q(r_i_term_extended_reg[10]),
        .R(r_integral_component1_i_1_n_0));
  FDRE \r_i_term_extended_reg[11] 
       (.C(s00_axi_aclk),
        .CE(w_calculate),
        .D(\r_i_term_extended_reg[8]_i_1_n_4 ),
        .Q(r_i_term_extended_reg[11]),
        .R(r_integral_component1_i_1_n_0));
  FDRE \r_i_term_extended_reg[12] 
       (.C(s00_axi_aclk),
        .CE(w_calculate),
        .D(\r_i_term_extended_reg[12]_i_1_n_7 ),
        .Q(r_i_term_extended_reg[12]),
        .R(r_integral_component1_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \r_i_term_extended_reg[12]_i_1 
       (.CI(\r_i_term_extended_reg[8]_i_1_n_0 ),
        .CO({\r_i_term_extended_reg[12]_i_1_n_0 ,\r_i_term_extended_reg[12]_i_1_n_1 ,\r_i_term_extended_reg[12]_i_1_n_2 ,\r_i_term_extended_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({in[23],in[14:12]}),
        .O({\r_i_term_extended_reg[12]_i_1_n_4 ,\r_i_term_extended_reg[12]_i_1_n_5 ,\r_i_term_extended_reg[12]_i_1_n_6 ,\r_i_term_extended_reg[12]_i_1_n_7 }),
        .S({\r_i_term_extended[12]_i_2_n_0 ,\r_i_term_extended[12]_i_3_n_0 ,\r_i_term_extended[12]_i_4_n_0 ,\r_i_term_extended[12]_i_5_n_0 }));
  FDRE \r_i_term_extended_reg[13] 
       (.C(s00_axi_aclk),
        .CE(w_calculate),
        .D(\r_i_term_extended_reg[12]_i_1_n_6 ),
        .Q(r_i_term_extended_reg[13]),
        .R(r_integral_component1_i_1_n_0));
  FDRE \r_i_term_extended_reg[14] 
       (.C(s00_axi_aclk),
        .CE(w_calculate),
        .D(\r_i_term_extended_reg[12]_i_1_n_5 ),
        .Q(r_i_term_extended_reg[14]),
        .R(r_integral_component1_i_1_n_0));
  FDRE \r_i_term_extended_reg[15] 
       (.C(s00_axi_aclk),
        .CE(w_calculate),
        .D(\r_i_term_extended_reg[12]_i_1_n_4 ),
        .Q(r_i_term_extended_reg[15]),
        .R(r_integral_component1_i_1_n_0));
  FDRE \r_i_term_extended_reg[16] 
       (.C(s00_axi_aclk),
        .CE(w_calculate),
        .D(\r_i_term_extended_reg[16]_i_1_n_7 ),
        .Q(r_i_term_extended_reg[16]),
        .R(r_integral_component1_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \r_i_term_extended_reg[16]_i_1 
       (.CI(\r_i_term_extended_reg[12]_i_1_n_0 ),
        .CO({\r_i_term_extended_reg[16]_i_1_n_0 ,\r_i_term_extended_reg[16]_i_1_n_1 ,\r_i_term_extended_reg[16]_i_1_n_2 ,\r_i_term_extended_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({in[23],in[23],in[23],in[23]}),
        .O({\r_i_term_extended_reg[16]_i_1_n_4 ,\r_i_term_extended_reg[16]_i_1_n_5 ,\r_i_term_extended_reg[16]_i_1_n_6 ,\r_i_term_extended_reg[16]_i_1_n_7 }),
        .S({\r_i_term_extended[16]_i_2_n_0 ,\r_i_term_extended[16]_i_3_n_0 ,\r_i_term_extended[16]_i_4_n_0 ,\r_i_term_extended[16]_i_5_n_0 }));
  FDRE \r_i_term_extended_reg[17] 
       (.C(s00_axi_aclk),
        .CE(w_calculate),
        .D(\r_i_term_extended_reg[16]_i_1_n_6 ),
        .Q(r_i_term_extended_reg[17]),
        .R(r_integral_component1_i_1_n_0));
  FDRE \r_i_term_extended_reg[18] 
       (.C(s00_axi_aclk),
        .CE(w_calculate),
        .D(\r_i_term_extended_reg[16]_i_1_n_5 ),
        .Q(r_i_term_extended_reg[18]),
        .R(r_integral_component1_i_1_n_0));
  FDRE \r_i_term_extended_reg[19] 
       (.C(s00_axi_aclk),
        .CE(w_calculate),
        .D(\r_i_term_extended_reg[16]_i_1_n_4 ),
        .Q(r_i_term_extended_reg[19]),
        .R(r_integral_component1_i_1_n_0));
  FDRE \r_i_term_extended_reg[1] 
       (.C(s00_axi_aclk),
        .CE(w_calculate),
        .D(\r_i_term_extended_reg[0]_i_1_n_6 ),
        .Q(r_i_term_extended_reg[1]),
        .R(r_integral_component1_i_1_n_0));
  FDRE \r_i_term_extended_reg[20] 
       (.C(s00_axi_aclk),
        .CE(w_calculate),
        .D(\r_i_term_extended_reg[20]_i_1_n_7 ),
        .Q(r_i_term_extended_reg[20]),
        .R(r_integral_component1_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \r_i_term_extended_reg[20]_i_1 
       (.CI(\r_i_term_extended_reg[16]_i_1_n_0 ),
        .CO({\NLW_r_i_term_extended_reg[20]_i_1_CO_UNCONNECTED [3],\r_i_term_extended_reg[20]_i_1_n_1 ,\r_i_term_extended_reg[20]_i_1_n_2 ,\r_i_term_extended_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,in[23],in[23],in[23]}),
        .O({\r_i_term_extended_reg[20]_i_1_n_4 ,\r_i_term_extended_reg[20]_i_1_n_5 ,\r_i_term_extended_reg[20]_i_1_n_6 ,\r_i_term_extended_reg[20]_i_1_n_7 }),
        .S({\r_i_term_extended[20]_i_2_n_0 ,\r_i_term_extended[20]_i_3_n_0 ,\r_i_term_extended[20]_i_4_n_0 ,\r_i_term_extended[20]_i_5_n_0 }));
  FDRE \r_i_term_extended_reg[21] 
       (.C(s00_axi_aclk),
        .CE(w_calculate),
        .D(\r_i_term_extended_reg[20]_i_1_n_6 ),
        .Q(r_i_term_extended_reg[21]),
        .R(r_integral_component1_i_1_n_0));
  FDRE \r_i_term_extended_reg[22] 
       (.C(s00_axi_aclk),
        .CE(w_calculate),
        .D(\r_i_term_extended_reg[20]_i_1_n_5 ),
        .Q(r_i_term_extended_reg[22]),
        .R(r_integral_component1_i_1_n_0));
  FDRE \r_i_term_extended_reg[23] 
       (.C(s00_axi_aclk),
        .CE(w_calculate),
        .D(\r_i_term_extended_reg[20]_i_1_n_4 ),
        .Q(r_i_term_extended_reg[23]),
        .R(r_integral_component1_i_1_n_0));
  FDRE \r_i_term_extended_reg[2] 
       (.C(s00_axi_aclk),
        .CE(w_calculate),
        .D(\r_i_term_extended_reg[0]_i_1_n_5 ),
        .Q(r_i_term_extended_reg[2]),
        .R(r_integral_component1_i_1_n_0));
  FDRE \r_i_term_extended_reg[3] 
       (.C(s00_axi_aclk),
        .CE(w_calculate),
        .D(\r_i_term_extended_reg[0]_i_1_n_4 ),
        .Q(r_i_term_extended_reg[3]),
        .R(r_integral_component1_i_1_n_0));
  FDRE \r_i_term_extended_reg[4] 
       (.C(s00_axi_aclk),
        .CE(w_calculate),
        .D(\r_i_term_extended_reg[4]_i_1_n_7 ),
        .Q(r_i_term_extended_reg[4]),
        .R(r_integral_component1_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \r_i_term_extended_reg[4]_i_1 
       (.CI(\r_i_term_extended_reg[0]_i_1_n_0 ),
        .CO({\r_i_term_extended_reg[4]_i_1_n_0 ,\r_i_term_extended_reg[4]_i_1_n_1 ,\r_i_term_extended_reg[4]_i_1_n_2 ,\r_i_term_extended_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[7:4]),
        .O({\r_i_term_extended_reg[4]_i_1_n_4 ,\r_i_term_extended_reg[4]_i_1_n_5 ,\r_i_term_extended_reg[4]_i_1_n_6 ,\r_i_term_extended_reg[4]_i_1_n_7 }),
        .S({\r_i_term_extended[4]_i_2_n_0 ,\r_i_term_extended[4]_i_3_n_0 ,\r_i_term_extended[4]_i_4_n_0 ,\r_i_term_extended[4]_i_5_n_0 }));
  FDRE \r_i_term_extended_reg[5] 
       (.C(s00_axi_aclk),
        .CE(w_calculate),
        .D(\r_i_term_extended_reg[4]_i_1_n_6 ),
        .Q(r_i_term_extended_reg[5]),
        .R(r_integral_component1_i_1_n_0));
  FDRE \r_i_term_extended_reg[6] 
       (.C(s00_axi_aclk),
        .CE(w_calculate),
        .D(\r_i_term_extended_reg[4]_i_1_n_5 ),
        .Q(r_i_term_extended_reg[6]),
        .R(r_integral_component1_i_1_n_0));
  FDRE \r_i_term_extended_reg[7] 
       (.C(s00_axi_aclk),
        .CE(w_calculate),
        .D(\r_i_term_extended_reg[4]_i_1_n_4 ),
        .Q(r_i_term_extended_reg[7]),
        .R(r_integral_component1_i_1_n_0));
  FDRE \r_i_term_extended_reg[8] 
       (.C(s00_axi_aclk),
        .CE(w_calculate),
        .D(\r_i_term_extended_reg[8]_i_1_n_7 ),
        .Q(r_i_term_extended_reg[8]),
        .R(r_integral_component1_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \r_i_term_extended_reg[8]_i_1 
       (.CI(\r_i_term_extended_reg[4]_i_1_n_0 ),
        .CO({\r_i_term_extended_reg[8]_i_1_n_0 ,\r_i_term_extended_reg[8]_i_1_n_1 ,\r_i_term_extended_reg[8]_i_1_n_2 ,\r_i_term_extended_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[11:8]),
        .O({\r_i_term_extended_reg[8]_i_1_n_4 ,\r_i_term_extended_reg[8]_i_1_n_5 ,\r_i_term_extended_reg[8]_i_1_n_6 ,\r_i_term_extended_reg[8]_i_1_n_7 }),
        .S({\r_i_term_extended[8]_i_2_n_0 ,\r_i_term_extended[8]_i_3_n_0 ,\r_i_term_extended[8]_i_4_n_0 ,\r_i_term_extended[8]_i_5_n_0 }));
  FDRE \r_i_term_extended_reg[9] 
       (.C(s00_axi_aclk),
        .CE(w_calculate),
        .D(\r_i_term_extended_reg[8]_i_1_n_6 ),
        .Q(r_i_term_extended_reg[9]),
        .R(r_integral_component1_i_1_n_0));
  FDRE \r_i_term_reg[0] 
       (.C(s00_axi_aclk),
        .CE(w_calculate),
        .D(r_i_term_extended_reg[0]),
        .Q(Q[0]),
        .R(r_integral_component1_i_1_n_0));
  FDRE \r_i_term_reg[10] 
       (.C(s00_axi_aclk),
        .CE(w_calculate),
        .D(r_i_term_extended_reg[10]),
        .Q(Q[10]),
        .R(r_integral_component1_i_1_n_0));
  FDRE \r_i_term_reg[11] 
       (.C(s00_axi_aclk),
        .CE(w_calculate),
        .D(r_i_term_extended_reg[11]),
        .Q(Q[11]),
        .R(r_integral_component1_i_1_n_0));
  FDRE \r_i_term_reg[12] 
       (.C(s00_axi_aclk),
        .CE(w_calculate),
        .D(r_i_term_extended_reg[12]),
        .Q(Q[12]),
        .R(r_integral_component1_i_1_n_0));
  FDRE \r_i_term_reg[13] 
       (.C(s00_axi_aclk),
        .CE(w_calculate),
        .D(r_i_term_extended_reg[13]),
        .Q(Q[13]),
        .R(r_integral_component1_i_1_n_0));
  FDRE \r_i_term_reg[14] 
       (.C(s00_axi_aclk),
        .CE(w_calculate),
        .D(r_i_term_extended_reg[14]),
        .Q(Q[14]),
        .R(r_integral_component1_i_1_n_0));
  FDRE \r_i_term_reg[15] 
       (.C(s00_axi_aclk),
        .CE(w_calculate),
        .D(r_i_term_extended_reg[15]),
        .Q(Q[15]),
        .R(r_integral_component1_i_1_n_0));
  FDRE \r_i_term_reg[16] 
       (.C(s00_axi_aclk),
        .CE(w_calculate),
        .D(r_i_term_extended_reg[16]),
        .Q(Q[16]),
        .R(r_integral_component1_i_1_n_0));
  FDRE \r_i_term_reg[17] 
       (.C(s00_axi_aclk),
        .CE(w_calculate),
        .D(r_i_term_extended_reg[17]),
        .Q(Q[17]),
        .R(r_integral_component1_i_1_n_0));
  FDRE \r_i_term_reg[18] 
       (.C(s00_axi_aclk),
        .CE(w_calculate),
        .D(r_i_term_extended_reg[18]),
        .Q(Q[18]),
        .R(r_integral_component1_i_1_n_0));
  FDRE \r_i_term_reg[19] 
       (.C(s00_axi_aclk),
        .CE(w_calculate),
        .D(r_i_term_extended_reg[19]),
        .Q(Q[19]),
        .R(r_integral_component1_i_1_n_0));
  FDRE \r_i_term_reg[1] 
       (.C(s00_axi_aclk),
        .CE(w_calculate),
        .D(r_i_term_extended_reg[1]),
        .Q(Q[1]),
        .R(r_integral_component1_i_1_n_0));
  FDRE \r_i_term_reg[20] 
       (.C(s00_axi_aclk),
        .CE(w_calculate),
        .D(r_i_term_extended_reg[20]),
        .Q(Q[20]),
        .R(r_integral_component1_i_1_n_0));
  FDRE \r_i_term_reg[21] 
       (.C(s00_axi_aclk),
        .CE(w_calculate),
        .D(r_i_term_extended_reg[21]),
        .Q(Q[21]),
        .R(r_integral_component1_i_1_n_0));
  FDRE \r_i_term_reg[22] 
       (.C(s00_axi_aclk),
        .CE(w_calculate),
        .D(r_i_term_extended_reg[22]),
        .Q(Q[22]),
        .R(r_integral_component1_i_1_n_0));
  FDRE \r_i_term_reg[23] 
       (.C(s00_axi_aclk),
        .CE(w_calculate),
        .D(r_i_term_extended_reg[23]),
        .Q(Q[23]),
        .R(r_integral_component1_i_1_n_0));
  FDRE \r_i_term_reg[2] 
       (.C(s00_axi_aclk),
        .CE(w_calculate),
        .D(r_i_term_extended_reg[2]),
        .Q(Q[2]),
        .R(r_integral_component1_i_1_n_0));
  FDRE \r_i_term_reg[3] 
       (.C(s00_axi_aclk),
        .CE(w_calculate),
        .D(r_i_term_extended_reg[3]),
        .Q(Q[3]),
        .R(r_integral_component1_i_1_n_0));
  FDRE \r_i_term_reg[4] 
       (.C(s00_axi_aclk),
        .CE(w_calculate),
        .D(r_i_term_extended_reg[4]),
        .Q(Q[4]),
        .R(r_integral_component1_i_1_n_0));
  FDRE \r_i_term_reg[5] 
       (.C(s00_axi_aclk),
        .CE(w_calculate),
        .D(r_i_term_extended_reg[5]),
        .Q(Q[5]),
        .R(r_integral_component1_i_1_n_0));
  FDRE \r_i_term_reg[6] 
       (.C(s00_axi_aclk),
        .CE(w_calculate),
        .D(r_i_term_extended_reg[6]),
        .Q(Q[6]),
        .R(r_integral_component1_i_1_n_0));
  FDRE \r_i_term_reg[7] 
       (.C(s00_axi_aclk),
        .CE(w_calculate),
        .D(r_i_term_extended_reg[7]),
        .Q(Q[7]),
        .R(r_integral_component1_i_1_n_0));
  FDRE \r_i_term_reg[8] 
       (.C(s00_axi_aclk),
        .CE(w_calculate),
        .D(r_i_term_extended_reg[8]),
        .Q(Q[8]),
        .R(r_integral_component1_i_1_n_0));
  FDRE \r_i_term_reg[9] 
       (.C(s00_axi_aclk),
        .CE(w_calculate),
        .D(r_i_term_extended_reg[9]),
        .Q(Q[9]),
        .R(r_integral_component1_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    r_integral_component1
       (.A({r_integral_component2_n_82,r_integral_component2_n_82,r_integral_component2_n_82,r_integral_component2_n_82,r_integral_component2_n_82,r_integral_component2_n_82,r_integral_component2_n_82,r_integral_component2_n_83,r_integral_component2_n_84,r_integral_component2_n_85,r_integral_component2_n_86,r_integral_component2_n_87,r_integral_component2_n_88,r_integral_component2_n_89,r_integral_component2_n_90,r_integral_component2_n_91,r_integral_component2_n_92,r_integral_component2_n_93,r_integral_component2_n_94,r_integral_component2_n_95,r_integral_component2_n_96,r_integral_component2_n_97,r_integral_component2_n_98,r_integral_component2_n_99,r_integral_component2_n_100,r_integral_component2_n_101,r_integral_component2_n_102,r_integral_component2_n_103,r_integral_component2_n_104,r_integral_component2_n_105}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_r_integral_component1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_r_integral_component1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_r_integral_component1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_r_integral_component1_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(w_calculate),
        .CLK(s00_axi_aclk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_r_integral_component1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_r_integral_component1_OVERFLOW_UNCONNECTED),
        .P({NLW_r_integral_component1_P_UNCONNECTED[47:36],in[23],in[14:0],r_integral_component1_n_86,r_integral_component1_n_87,r_integral_component1_n_88,r_integral_component1_n_89,r_integral_component1_n_90,r_integral_component1_n_91,r_integral_component1_n_92,r_integral_component1_n_93,r_integral_component1_n_94,r_integral_component1_n_95,r_integral_component1_n_96,r_integral_component1_n_97,r_integral_component1_n_98,r_integral_component1_n_99,r_integral_component1_n_100,r_integral_component1_n_101,r_integral_component1_n_102,r_integral_component1_n_103,r_integral_component1_n_104,r_integral_component1_n_105}),
        .PATTERNBDETECT(NLW_r_integral_component1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_r_integral_component1_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_r_integral_component1_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(r_integral_component1_i_1_n_0),
        .UNDERFLOW(NLW_r_integral_component1_UNDERFLOW_UNCONNECTED));
  LUT2 #(
    .INIT(4'hB)) 
    r_integral_component1_i_1
       (.I0(r_i_term_extended0_carry_n_1),
        .I1(s00_axi_aresetn),
        .O(r_integral_component1_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    r_integral_component2
       (.A({r_error0_carry__2_n_6,r_error0_carry__2_n_6,r_error0_carry__2_n_6,r_error0_carry__2_n_6,r_error0_carry__2_n_6,r_error0_carry__2_n_6,r_error0_carry__2_n_6,r_error0_carry__2_n_6,r_error0_carry__2_n_6,r_error0_carry__2_n_6,r_error0_carry__2_n_6,r_error0_carry__2_n_6,r_error0_carry__2_n_6,r_error0_carry__2_n_6,r_error0_carry__2_n_6,r_error0_carry__2_n_6,r_error0_carry__2_n_6,r_error0_carry__2_n_7,r_error0_carry__1_n_4,r_error0_carry__1_n_5,r_error0_carry__1_n_6,r_error0_carry__1_n_7,r_error0_carry__0_n_4,r_error0_carry__0_n_5,r_error0_carry__0_n_6,r_error0_carry__0_n_7,r_error0_carry_n_4,r_error0_carry_n_5,r_error0_carry_n_6,r_error0_carry_n_7}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_r_integral_component2_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({r_integral_component2_1[7],r_integral_component2_1[7],r_integral_component2_1[7],r_integral_component2_1[7],r_integral_component2_1[7],r_integral_component2_1[7],r_integral_component2_1[7],r_integral_component2_1[7],r_integral_component2_1[7],r_integral_component2_1[7],r_integral_component2_1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_r_integral_component2_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_r_integral_component2_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_r_integral_component2_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(i_sw_enable_control),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(r_integral_component2_0),
        .CEB2(i_sw_enable_control),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(s00_axi_aclk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_r_integral_component2_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_r_integral_component2_OVERFLOW_UNCONNECTED),
        .P({NLW_r_integral_component2_P_UNCONNECTED[47:24],r_integral_component2_n_82,r_integral_component2_n_83,r_integral_component2_n_84,r_integral_component2_n_85,r_integral_component2_n_86,r_integral_component2_n_87,r_integral_component2_n_88,r_integral_component2_n_89,r_integral_component2_n_90,r_integral_component2_n_91,r_integral_component2_n_92,r_integral_component2_n_93,r_integral_component2_n_94,r_integral_component2_n_95,r_integral_component2_n_96,r_integral_component2_n_97,r_integral_component2_n_98,r_integral_component2_n_99,r_integral_component2_n_100,r_integral_component2_n_101,r_integral_component2_n_102,r_integral_component2_n_103,r_integral_component2_n_104,r_integral_component2_n_105}),
        .PATTERNBDETECT(NLW_r_integral_component2_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_r_integral_component2_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_r_integral_component2_PCOUT_UNCONNECTED[47:0]),
        .RSTA(s00_axi_aresetn_0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(s00_axi_aresetn_0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_r_integral_component2_UNDERFLOW_UNCONNECTED));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    r_p_term_reg
       (.A({r_error0_carry__2_n_6,r_error0_carry__2_n_6,r_error0_carry__2_n_6,r_error0_carry__2_n_6,r_error0_carry__2_n_6,r_error0_carry__2_n_6,r_error0_carry__2_n_6,r_error0_carry__2_n_6,r_error0_carry__2_n_6,r_error0_carry__2_n_6,r_error0_carry__2_n_6,r_error0_carry__2_n_6,r_error0_carry__2_n_6,r_error0_carry__2_n_6,r_error0_carry__2_n_6,r_error0_carry__2_n_6,r_error0_carry__2_n_6,r_error0_carry__2_n_7,r_error0_carry__1_n_4,r_error0_carry__1_n_5,r_error0_carry__1_n_6,r_error0_carry__1_n_7,r_error0_carry__0_n_4,r_error0_carry__0_n_5,r_error0_carry__0_n_6,r_error0_carry__0_n_7,r_error0_carry_n_4,r_error0_carry_n_5,r_error0_carry_n_6,r_error0_carry_n_7}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_r_p_term_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({r_p_term_reg_0[7],r_p_term_reg_0[7],r_p_term_reg_0[7],r_p_term_reg_0[7],r_p_term_reg_0[7],r_p_term_reg_0[7],r_p_term_reg_0[7],r_p_term_reg_0[7],r_p_term_reg_0[7],r_p_term_reg_0[7],r_p_term_reg_0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_r_p_term_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_r_p_term_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_r_p_term_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(i_sw_enable_control),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(E),
        .CEB2(i_sw_enable_control),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(w_calculate),
        .CEP(w_calculate),
        .CLK(s00_axi_aclk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_r_p_term_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_r_p_term_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_r_p_term_reg_P_UNCONNECTED[47:15],P}),
        .PATTERNBDETECT(NLW_r_p_term_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_r_p_term_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_r_p_term_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(s00_axi_aresetn_0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(s00_axi_aresetn_0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(s00_axi_aresetn_0),
        .RSTP(s00_axi_aresetn_0),
        .UNDERFLOW(NLW_r_p_term_reg_UNDERFLOW_UNCONNECTED));
  FDRE \r_plant_output_reg[0] 
       (.C(s00_axi_aclk),
        .CE(i_sw_enable_control),
        .D(D[0]),
        .Q(r_plant_output[0]),
        .R(s00_axi_aresetn_0));
  FDRE \r_plant_output_reg[10] 
       (.C(s00_axi_aclk),
        .CE(i_sw_enable_control),
        .D(D[10]),
        .Q(r_plant_output[10]),
        .R(s00_axi_aresetn_0));
  FDRE \r_plant_output_reg[11] 
       (.C(s00_axi_aclk),
        .CE(i_sw_enable_control),
        .D(D[11]),
        .Q(r_plant_output[11]),
        .R(s00_axi_aresetn_0));
  FDRE \r_plant_output_reg[12] 
       (.C(s00_axi_aclk),
        .CE(i_sw_enable_control),
        .D(D[12]),
        .Q(r_plant_output[12]),
        .R(s00_axi_aresetn_0));
  FDRE \r_plant_output_reg[1] 
       (.C(s00_axi_aclk),
        .CE(i_sw_enable_control),
        .D(D[1]),
        .Q(r_plant_output[1]),
        .R(s00_axi_aresetn_0));
  FDRE \r_plant_output_reg[2] 
       (.C(s00_axi_aclk),
        .CE(i_sw_enable_control),
        .D(D[2]),
        .Q(r_plant_output[2]),
        .R(s00_axi_aresetn_0));
  FDRE \r_plant_output_reg[3] 
       (.C(s00_axi_aclk),
        .CE(i_sw_enable_control),
        .D(D[3]),
        .Q(r_plant_output[3]),
        .R(s00_axi_aresetn_0));
  FDRE \r_plant_output_reg[4] 
       (.C(s00_axi_aclk),
        .CE(i_sw_enable_control),
        .D(D[4]),
        .Q(r_plant_output[4]),
        .R(s00_axi_aresetn_0));
  FDRE \r_plant_output_reg[5] 
       (.C(s00_axi_aclk),
        .CE(i_sw_enable_control),
        .D(D[5]),
        .Q(r_plant_output[5]),
        .R(s00_axi_aresetn_0));
  FDRE \r_plant_output_reg[6] 
       (.C(s00_axi_aclk),
        .CE(i_sw_enable_control),
        .D(D[6]),
        .Q(r_plant_output[6]),
        .R(s00_axi_aresetn_0));
  FDRE \r_plant_output_reg[7] 
       (.C(s00_axi_aclk),
        .CE(i_sw_enable_control),
        .D(D[7]),
        .Q(r_plant_output[7]),
        .R(s00_axi_aresetn_0));
  FDRE \r_plant_output_reg[8] 
       (.C(s00_axi_aclk),
        .CE(i_sw_enable_control),
        .D(D[8]),
        .Q(r_plant_output[8]),
        .R(s00_axi_aresetn_0));
  FDRE \r_plant_output_reg[9] 
       (.C(s00_axi_aclk),
        .CE(i_sw_enable_control),
        .D(D[9]),
        .Q(r_plant_output[9]),
        .R(s00_axi_aresetn_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    r_pwm0_carry__0_i_1
       (.I0(w_selected_duty[10]),
        .I1(out[10]),
        .I2(out[11]),
        .I3(w_selected_duty[11]),
        .O(\r_count_duty_reg[10]_0 [1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    r_pwm0_carry__0_i_2
       (.I0(w_selected_duty[8]),
        .I1(out[8]),
        .I2(out[9]),
        .I3(w_selected_duty[9]),
        .O(\r_count_duty_reg[10]_0 [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    r_pwm0_carry__0_i_3
       (.I0(w_selected_duty[10]),
        .I1(out[10]),
        .I2(w_selected_duty[11]),
        .I3(out[11]),
        .O(\r_count_duty_reg[10] [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    r_pwm0_carry__0_i_4
       (.I0(w_selected_duty[8]),
        .I1(out[8]),
        .I2(w_selected_duty[9]),
        .I3(out[9]),
        .O(\r_count_duty_reg[10] [0]));
  LUT6 #(
    .INIT(64'hAAAAAAAA00000C00)) 
    r_pwm0_carry__0_i_5
       (.I0(\r_reference_reg[11]_0 [10]),
        .I1(i_sw_enable_control),
        .I2(o_control_input2),
        .I3(\r_control_input_reg_n_0_[10] ),
        .I4(o_control_input3),
        .I5(i_sw_bypass),
        .O(w_selected_duty[10]));
  LUT6 #(
    .INIT(64'hAAAAAAAA00000C00)) 
    r_pwm0_carry__0_i_6
       (.I0(\r_reference_reg[11]_0 [11]),
        .I1(i_sw_enable_control),
        .I2(o_control_input2),
        .I3(\r_control_input_reg_n_0_[11] ),
        .I4(o_control_input3),
        .I5(i_sw_bypass),
        .O(w_selected_duty[11]));
  LUT6 #(
    .INIT(64'hAAAAAAAA00000C00)) 
    r_pwm0_carry__0_i_7
       (.I0(\r_reference_reg[11]_0 [8]),
        .I1(i_sw_enable_control),
        .I2(o_control_input2),
        .I3(\r_control_input_reg_n_0_[8] ),
        .I4(o_control_input3),
        .I5(i_sw_bypass),
        .O(w_selected_duty[8]));
  LUT6 #(
    .INIT(64'hAAAAAAAA00000C00)) 
    r_pwm0_carry__0_i_8
       (.I0(\r_reference_reg[11]_0 [9]),
        .I1(i_sw_enable_control),
        .I2(o_control_input2),
        .I3(\r_control_input_reg_n_0_[9] ),
        .I4(o_control_input3),
        .I5(i_sw_bypass),
        .O(w_selected_duty[9]));
  LUT4 #(
    .INIT(16'h2F02)) 
    r_pwm0_carry_i_1
       (.I0(w_selected_duty[6]),
        .I1(out[6]),
        .I2(out[7]),
        .I3(w_selected_duty[7]),
        .O(DI[3]));
  LUT6 #(
    .INIT(64'hAAAAAAAA00000C00)) 
    r_pwm0_carry_i_10
       (.I0(\r_reference_reg[11]_0 [7]),
        .I1(i_sw_enable_control),
        .I2(o_control_input2),
        .I3(\r_control_input_reg_n_0_[7] ),
        .I4(o_control_input3),
        .I5(i_sw_bypass),
        .O(w_selected_duty[7]));
  LUT6 #(
    .INIT(64'hAAAAAAAA00000C00)) 
    r_pwm0_carry_i_11
       (.I0(\r_reference_reg[11]_0 [4]),
        .I1(i_sw_enable_control),
        .I2(o_control_input2),
        .I3(\r_control_input_reg_n_0_[4] ),
        .I4(o_control_input3),
        .I5(i_sw_bypass),
        .O(w_selected_duty[4]));
  LUT6 #(
    .INIT(64'hAAAAAAAA00000C00)) 
    r_pwm0_carry_i_12
       (.I0(\r_reference_reg[11]_0 [5]),
        .I1(i_sw_enable_control),
        .I2(o_control_input2),
        .I3(\r_control_input_reg_n_0_[5] ),
        .I4(o_control_input3),
        .I5(i_sw_bypass),
        .O(w_selected_duty[5]));
  LUT6 #(
    .INIT(64'hAAAAAAAA00000C00)) 
    r_pwm0_carry_i_13
       (.I0(\r_reference_reg[11]_0 [2]),
        .I1(i_sw_enable_control),
        .I2(o_control_input2),
        .I3(\r_control_input_reg_n_0_[2] ),
        .I4(o_control_input3),
        .I5(i_sw_bypass),
        .O(w_selected_duty[2]));
  LUT6 #(
    .INIT(64'hAAAAAAAA00000C00)) 
    r_pwm0_carry_i_14
       (.I0(\r_reference_reg[11]_0 [3]),
        .I1(i_sw_enable_control),
        .I2(o_control_input2),
        .I3(\r_control_input_reg_n_0_[3] ),
        .I4(o_control_input3),
        .I5(i_sw_bypass),
        .O(w_selected_duty[3]));
  LUT6 #(
    .INIT(64'hAAAAAAAACCCC00C0)) 
    r_pwm0_carry_i_15
       (.I0(\r_reference_reg[11]_0 [0]),
        .I1(i_sw_enable_control),
        .I2(\r_control_input_reg_n_0_[0] ),
        .I3(o_control_input3),
        .I4(o_control_input2),
        .I5(i_sw_bypass),
        .O(w_selected_duty[0]));
  LUT6 #(
    .INIT(64'hAAAAAAAA0C0C0C00)) 
    r_pwm0_carry_i_16
       (.I0(\r_reference_reg[11]_0 [1]),
        .I1(i_sw_enable_control),
        .I2(o_control_input2),
        .I3(o_control_input3),
        .I4(\r_control_input_reg_n_0_[1] ),
        .I5(i_sw_bypass),
        .O(w_selected_duty[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    r_pwm0_carry_i_17
       (.I0(r_pwm0_carry_i_18_n_0),
        .I1(r_pwm0_carry_i_19_n_0),
        .I2(\r_control_input_reg_n_0_[18] ),
        .I3(\r_control_input_reg_n_0_[17] ),
        .I4(\r_control_input_reg_n_0_[20] ),
        .I5(\r_control_input_reg_n_0_[19] ),
        .O(o_control_input2));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    r_pwm0_carry_i_18
       (.I0(\r_control_input_reg_n_0_[12] ),
        .I1(\r_control_input_reg_n_0_[15] ),
        .I2(\r_control_input_reg_n_0_[16] ),
        .I3(\r_control_input_reg_n_0_[13] ),
        .I4(\r_control_input_reg_n_0_[14] ),
        .O(r_pwm0_carry_i_18_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    r_pwm0_carry_i_19
       (.I0(\r_control_input_reg_n_0_[22] ),
        .I1(\r_control_input_reg_n_0_[21] ),
        .I2(\r_control_input_reg_n_0_[24] ),
        .I3(\r_control_input_reg_n_0_[23] ),
        .O(r_pwm0_carry_i_19_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    r_pwm0_carry_i_2
       (.I0(w_selected_duty[4]),
        .I1(out[4]),
        .I2(out[5]),
        .I3(w_selected_duty[5]),
        .O(DI[2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    r_pwm0_carry_i_3
       (.I0(w_selected_duty[2]),
        .I1(out[2]),
        .I2(out[3]),
        .I3(w_selected_duty[3]),
        .O(DI[1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    r_pwm0_carry_i_4
       (.I0(w_selected_duty[0]),
        .I1(out[0]),
        .I2(out[1]),
        .I3(w_selected_duty[1]),
        .O(DI[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    r_pwm0_carry_i_5
       (.I0(w_selected_duty[6]),
        .I1(out[6]),
        .I2(w_selected_duty[7]),
        .I3(out[7]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    r_pwm0_carry_i_6
       (.I0(w_selected_duty[4]),
        .I1(out[4]),
        .I2(w_selected_duty[5]),
        .I3(out[5]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    r_pwm0_carry_i_7
       (.I0(w_selected_duty[2]),
        .I1(out[2]),
        .I2(w_selected_duty[3]),
        .I3(out[3]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    r_pwm0_carry_i_8
       (.I0(w_selected_duty[0]),
        .I1(out[0]),
        .I2(w_selected_duty[1]),
        .I3(out[1]),
        .O(S[0]));
  LUT6 #(
    .INIT(64'hAAAAAAAA00000C00)) 
    r_pwm0_carry_i_9
       (.I0(\r_reference_reg[11]_0 [6]),
        .I1(i_sw_enable_control),
        .I2(o_control_input2),
        .I3(\r_control_input_reg_n_0_[6] ),
        .I4(o_control_input3),
        .I5(i_sw_bypass),
        .O(w_selected_duty[6]));
  FDRE \r_reference_reg[0] 
       (.C(s00_axi_aclk),
        .CE(i_sw_enable_control),
        .D(\r_reference_reg[11]_0 [0]),
        .Q(r_reference[0]),
        .R(s00_axi_aresetn_0));
  FDRE \r_reference_reg[10] 
       (.C(s00_axi_aclk),
        .CE(i_sw_enable_control),
        .D(\r_reference_reg[11]_0 [10]),
        .Q(r_reference[10]),
        .R(s00_axi_aresetn_0));
  FDRE \r_reference_reg[11] 
       (.C(s00_axi_aclk),
        .CE(i_sw_enable_control),
        .D(\r_reference_reg[11]_0 [11]),
        .Q(r_reference[11]),
        .R(s00_axi_aresetn_0));
  FDRE \r_reference_reg[1] 
       (.C(s00_axi_aclk),
        .CE(i_sw_enable_control),
        .D(\r_reference_reg[11]_0 [1]),
        .Q(r_reference[1]),
        .R(s00_axi_aresetn_0));
  FDRE \r_reference_reg[2] 
       (.C(s00_axi_aclk),
        .CE(i_sw_enable_control),
        .D(\r_reference_reg[11]_0 [2]),
        .Q(r_reference[2]),
        .R(s00_axi_aresetn_0));
  FDRE \r_reference_reg[3] 
       (.C(s00_axi_aclk),
        .CE(i_sw_enable_control),
        .D(\r_reference_reg[11]_0 [3]),
        .Q(r_reference[3]),
        .R(s00_axi_aresetn_0));
  FDRE \r_reference_reg[4] 
       (.C(s00_axi_aclk),
        .CE(i_sw_enable_control),
        .D(\r_reference_reg[11]_0 [4]),
        .Q(r_reference[4]),
        .R(s00_axi_aresetn_0));
  FDRE \r_reference_reg[5] 
       (.C(s00_axi_aclk),
        .CE(i_sw_enable_control),
        .D(\r_reference_reg[11]_0 [5]),
        .Q(r_reference[5]),
        .R(s00_axi_aresetn_0));
  FDRE \r_reference_reg[6] 
       (.C(s00_axi_aclk),
        .CE(i_sw_enable_control),
        .D(\r_reference_reg[11]_0 [6]),
        .Q(r_reference[6]),
        .R(s00_axi_aresetn_0));
  FDRE \r_reference_reg[7] 
       (.C(s00_axi_aclk),
        .CE(i_sw_enable_control),
        .D(\r_reference_reg[11]_0 [7]),
        .Q(r_reference[7]),
        .R(s00_axi_aresetn_0));
  FDRE \r_reference_reg[8] 
       (.C(s00_axi_aclk),
        .CE(i_sw_enable_control),
        .D(\r_reference_reg[11]_0 [8]),
        .Q(r_reference[8]),
        .R(s00_axi_aresetn_0));
  FDRE \r_reference_reg[9] 
       (.C(s00_axi_aclk),
        .CE(i_sw_enable_control),
        .D(\r_reference_reg[11]_0 [9]),
        .Q(r_reference[9]),
        .R(s00_axi_aresetn_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PWM
   (o_W_pwm,
    out,
    s00_axi_aclk,
    r_cp_reg,
    DI,
    S,
    r_pwm_reg_0,
    r_pwm_reg_1);
  output o_W_pwm;
  output [11:0]out;
  input s00_axi_aclk;
  input r_cp_reg;
  input [3:0]DI;
  input [3:0]S;
  input [1:0]r_pwm_reg_0;
  input [1:0]r_pwm_reg_1;

  wire [3:0]DI;
  wire [3:0]S;
  wire o_W_pwm;
  wire [11:0]out;
  wire r_clk;
  wire \r_count_duty[0]_i_2_n_0 ;
  wire \r_count_duty_reg[0]_i_1_n_0 ;
  wire \r_count_duty_reg[0]_i_1_n_1 ;
  wire \r_count_duty_reg[0]_i_1_n_2 ;
  wire \r_count_duty_reg[0]_i_1_n_3 ;
  wire \r_count_duty_reg[0]_i_1_n_4 ;
  wire \r_count_duty_reg[0]_i_1_n_5 ;
  wire \r_count_duty_reg[0]_i_1_n_6 ;
  wire \r_count_duty_reg[0]_i_1_n_7 ;
  wire \r_count_duty_reg[4]_i_1_n_0 ;
  wire \r_count_duty_reg[4]_i_1_n_1 ;
  wire \r_count_duty_reg[4]_i_1_n_2 ;
  wire \r_count_duty_reg[4]_i_1_n_3 ;
  wire \r_count_duty_reg[4]_i_1_n_4 ;
  wire \r_count_duty_reg[4]_i_1_n_5 ;
  wire \r_count_duty_reg[4]_i_1_n_6 ;
  wire \r_count_duty_reg[4]_i_1_n_7 ;
  wire \r_count_duty_reg[8]_i_1_n_1 ;
  wire \r_count_duty_reg[8]_i_1_n_2 ;
  wire \r_count_duty_reg[8]_i_1_n_3 ;
  wire \r_count_duty_reg[8]_i_1_n_4 ;
  wire \r_count_duty_reg[8]_i_1_n_5 ;
  wire \r_count_duty_reg[8]_i_1_n_6 ;
  wire \r_count_duty_reg[8]_i_1_n_7 ;
  wire r_cp_reg;
  wire r_pwm0_carry__0_n_2;
  wire r_pwm0_carry__0_n_3;
  wire r_pwm0_carry_n_0;
  wire r_pwm0_carry_n_1;
  wire r_pwm0_carry_n_2;
  wire r_pwm0_carry_n_3;
  wire [1:0]r_pwm_reg_0;
  wire [1:0]r_pwm_reg_1;
  wire s00_axi_aclk;
  wire w_count_freq_negedge;
  wire [3:3]\NLW_r_count_duty_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:0]NLW_r_pwm0_carry_O_UNCONNECTED;
  wire [3:2]NLW_r_pwm0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_r_pwm0_carry__0_O_UNCONNECTED;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_9 ED_COUNT_freq
       (.r_clk(r_clk),
        .r_cp_reg_0(r_cp_reg),
        .s00_axi_aclk(s00_axi_aclk),
        .sel(w_count_freq_negedge));
  FDCE r_clk_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(r_cp_reg),
        .D(1'b1),
        .Q(r_clk));
  LUT1 #(
    .INIT(2'h1)) 
    \r_count_duty[0]_i_2 
       (.I0(out[0]),
        .O(\r_count_duty[0]_i_2_n_0 ));
  FDCE \r_count_duty_reg[0] 
       (.C(s00_axi_aclk),
        .CE(w_count_freq_negedge),
        .CLR(r_cp_reg),
        .D(\r_count_duty_reg[0]_i_1_n_7 ),
        .Q(out[0]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \r_count_duty_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\r_count_duty_reg[0]_i_1_n_0 ,\r_count_duty_reg[0]_i_1_n_1 ,\r_count_duty_reg[0]_i_1_n_2 ,\r_count_duty_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\r_count_duty_reg[0]_i_1_n_4 ,\r_count_duty_reg[0]_i_1_n_5 ,\r_count_duty_reg[0]_i_1_n_6 ,\r_count_duty_reg[0]_i_1_n_7 }),
        .S({out[3:1],\r_count_duty[0]_i_2_n_0 }));
  FDCE \r_count_duty_reg[10] 
       (.C(s00_axi_aclk),
        .CE(w_count_freq_negedge),
        .CLR(r_cp_reg),
        .D(\r_count_duty_reg[8]_i_1_n_5 ),
        .Q(out[10]));
  FDCE \r_count_duty_reg[11] 
       (.C(s00_axi_aclk),
        .CE(w_count_freq_negedge),
        .CLR(r_cp_reg),
        .D(\r_count_duty_reg[8]_i_1_n_4 ),
        .Q(out[11]));
  FDCE \r_count_duty_reg[1] 
       (.C(s00_axi_aclk),
        .CE(w_count_freq_negedge),
        .CLR(r_cp_reg),
        .D(\r_count_duty_reg[0]_i_1_n_6 ),
        .Q(out[1]));
  FDCE \r_count_duty_reg[2] 
       (.C(s00_axi_aclk),
        .CE(w_count_freq_negedge),
        .CLR(r_cp_reg),
        .D(\r_count_duty_reg[0]_i_1_n_5 ),
        .Q(out[2]));
  FDCE \r_count_duty_reg[3] 
       (.C(s00_axi_aclk),
        .CE(w_count_freq_negedge),
        .CLR(r_cp_reg),
        .D(\r_count_duty_reg[0]_i_1_n_4 ),
        .Q(out[3]));
  FDCE \r_count_duty_reg[4] 
       (.C(s00_axi_aclk),
        .CE(w_count_freq_negedge),
        .CLR(r_cp_reg),
        .D(\r_count_duty_reg[4]_i_1_n_7 ),
        .Q(out[4]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \r_count_duty_reg[4]_i_1 
       (.CI(\r_count_duty_reg[0]_i_1_n_0 ),
        .CO({\r_count_duty_reg[4]_i_1_n_0 ,\r_count_duty_reg[4]_i_1_n_1 ,\r_count_duty_reg[4]_i_1_n_2 ,\r_count_duty_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_count_duty_reg[4]_i_1_n_4 ,\r_count_duty_reg[4]_i_1_n_5 ,\r_count_duty_reg[4]_i_1_n_6 ,\r_count_duty_reg[4]_i_1_n_7 }),
        .S(out[7:4]));
  FDCE \r_count_duty_reg[5] 
       (.C(s00_axi_aclk),
        .CE(w_count_freq_negedge),
        .CLR(r_cp_reg),
        .D(\r_count_duty_reg[4]_i_1_n_6 ),
        .Q(out[5]));
  FDCE \r_count_duty_reg[6] 
       (.C(s00_axi_aclk),
        .CE(w_count_freq_negedge),
        .CLR(r_cp_reg),
        .D(\r_count_duty_reg[4]_i_1_n_5 ),
        .Q(out[6]));
  FDCE \r_count_duty_reg[7] 
       (.C(s00_axi_aclk),
        .CE(w_count_freq_negedge),
        .CLR(r_cp_reg),
        .D(\r_count_duty_reg[4]_i_1_n_4 ),
        .Q(out[7]));
  FDCE \r_count_duty_reg[8] 
       (.C(s00_axi_aclk),
        .CE(w_count_freq_negedge),
        .CLR(r_cp_reg),
        .D(\r_count_duty_reg[8]_i_1_n_7 ),
        .Q(out[8]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \r_count_duty_reg[8]_i_1 
       (.CI(\r_count_duty_reg[4]_i_1_n_0 ),
        .CO({\NLW_r_count_duty_reg[8]_i_1_CO_UNCONNECTED [3],\r_count_duty_reg[8]_i_1_n_1 ,\r_count_duty_reg[8]_i_1_n_2 ,\r_count_duty_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_count_duty_reg[8]_i_1_n_4 ,\r_count_duty_reg[8]_i_1_n_5 ,\r_count_duty_reg[8]_i_1_n_6 ,\r_count_duty_reg[8]_i_1_n_7 }),
        .S(out[11:8]));
  FDCE \r_count_duty_reg[9] 
       (.C(s00_axi_aclk),
        .CE(w_count_freq_negedge),
        .CLR(r_cp_reg),
        .D(\r_count_duty_reg[8]_i_1_n_6 ),
        .Q(out[9]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 r_pwm0_carry
       (.CI(1'b0),
        .CO({r_pwm0_carry_n_0,r_pwm0_carry_n_1,r_pwm0_carry_n_2,r_pwm0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(DI),
        .O(NLW_r_pwm0_carry_O_UNCONNECTED[3:0]),
        .S(S));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 r_pwm0_carry__0
       (.CI(r_pwm0_carry_n_0),
        .CO({NLW_r_pwm0_carry__0_CO_UNCONNECTED[3:2],r_pwm0_carry__0_n_2,r_pwm0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,r_pwm_reg_0}),
        .O(NLW_r_pwm0_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,r_pwm_reg_1}));
  FDCE r_pwm_reg
       (.C(s00_axi_aclk),
        .CE(w_count_freq_negedge),
        .CLR(r_cp_reg),
        .D(r_pwm0_carry__0_n_2),
        .Q(o_W_pwm));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SamplingTimer
   (AR,
    w_calculate,
    s00_axi_aclk,
    i_sw_enable_control,
    s00_axi_aresetn);
  output [0:0]AR;
  output w_calculate;
  input s00_axi_aclk;
  input i_sw_enable_control;
  input s00_axi_aresetn;

  wire [0:0]AR;
  wire i_sw_enable_control;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire w_calculate;
  wire w_clk_us_posedge;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_div_1000 CLK_DIV_MS
       (.i_sw_enable_control(i_sw_enable_control),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_aresetn_0(AR),
        .w_calculate(w_calculate),
        .w_clk_us_posedge(w_clk_us_posedge));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_div_100 CLK_DIV_US
       (.AR(AR),
        .s00_axi_aclk(s00_axi_aclk),
        .w_clk_us_posedge(w_clk_us_posedge));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_buttonControl
   (r_cp,
    r_cp_z,
    s00_axi_aclk,
    SR,
    w_delay_counter_posedge,
    i_btn_d);
  output r_cp;
  output r_cp_z;
  input s00_axi_aclk;
  input [0:0]SR;
  input w_delay_counter_posedge;
  input i_btn_d;

  wire [0:0]SR;
  wire i_btn_d;
  wire r_cp;
  wire r_cp_z;
  wire r_debounced_btn_reg_n_0;
  wire s00_axi_aclk;
  wire w_delay_counter_posedge;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_4 ED_BTN
       (.SR(SR),
        .r_cp(r_cp),
        .r_cp_reg_0(r_debounced_btn_reg_n_0),
        .r_cp_z(r_cp_z),
        .s00_axi_aclk(s00_axi_aclk));
  FDCE r_debounced_btn_reg
       (.C(s00_axi_aclk),
        .CE(w_delay_counter_posedge),
        .CLR(SR),
        .D(i_btn_d),
        .Q(r_debounced_btn_reg_n_0));
endmodule

(* ORIG_REF_NAME = "buttonControl" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_buttonControl_1
   (w_delay_counter_posedge,
    E,
    D,
    \r_gain_reg[5] ,
    s00_axi_aclk,
    SR,
    i_btn_u,
    \r_gain_reg[7] ,
    r_cp,
    r_cp_z,
    Q,
    DI,
    S,
    \r_gain_reg[7]_0 ,
    r_p_term_reg,
    r_p_term_reg_0,
    r_p_term_reg_1);
  output w_delay_counter_posedge;
  output [0:0]E;
  output [6:0]D;
  output [6:0]\r_gain_reg[5] ;
  input s00_axi_aclk;
  input [0:0]SR;
  input i_btn_u;
  input \r_gain_reg[7] ;
  input r_cp;
  input r_cp_z;
  input [5:0]Q;
  input [0:0]DI;
  input [2:0]S;
  input [2:0]\r_gain_reg[7]_0 ;
  input [0:0]r_p_term_reg;
  input [2:0]r_p_term_reg_0;
  input [2:0]r_p_term_reg_1;

  wire [6:0]D;
  wire [0:0]DI;
  wire [0:0]E;
  wire [5:0]Q;
  wire [2:0]S;
  wire [0:0]SR;
  wire i_btn_u;
  wire i_cp;
  wire r_cp;
  wire r_cp_z;
  wire r_debounced_btn;
  wire \r_delay_counter[0]_i_2_n_0 ;
  wire \r_delay_counter_reg[0]_i_1_n_0 ;
  wire \r_delay_counter_reg[0]_i_1_n_1 ;
  wire \r_delay_counter_reg[0]_i_1_n_2 ;
  wire \r_delay_counter_reg[0]_i_1_n_3 ;
  wire \r_delay_counter_reg[0]_i_1_n_4 ;
  wire \r_delay_counter_reg[0]_i_1_n_5 ;
  wire \r_delay_counter_reg[0]_i_1_n_6 ;
  wire \r_delay_counter_reg[0]_i_1_n_7 ;
  wire \r_delay_counter_reg[12]_i_1_n_0 ;
  wire \r_delay_counter_reg[12]_i_1_n_1 ;
  wire \r_delay_counter_reg[12]_i_1_n_2 ;
  wire \r_delay_counter_reg[12]_i_1_n_3 ;
  wire \r_delay_counter_reg[12]_i_1_n_4 ;
  wire \r_delay_counter_reg[12]_i_1_n_5 ;
  wire \r_delay_counter_reg[12]_i_1_n_6 ;
  wire \r_delay_counter_reg[12]_i_1_n_7 ;
  wire \r_delay_counter_reg[16]_i_1_n_7 ;
  wire \r_delay_counter_reg[4]_i_1_n_0 ;
  wire \r_delay_counter_reg[4]_i_1_n_1 ;
  wire \r_delay_counter_reg[4]_i_1_n_2 ;
  wire \r_delay_counter_reg[4]_i_1_n_3 ;
  wire \r_delay_counter_reg[4]_i_1_n_4 ;
  wire \r_delay_counter_reg[4]_i_1_n_5 ;
  wire \r_delay_counter_reg[4]_i_1_n_6 ;
  wire \r_delay_counter_reg[4]_i_1_n_7 ;
  wire \r_delay_counter_reg[8]_i_1_n_0 ;
  wire \r_delay_counter_reg[8]_i_1_n_1 ;
  wire \r_delay_counter_reg[8]_i_1_n_2 ;
  wire \r_delay_counter_reg[8]_i_1_n_3 ;
  wire \r_delay_counter_reg[8]_i_1_n_4 ;
  wire \r_delay_counter_reg[8]_i_1_n_5 ;
  wire \r_delay_counter_reg[8]_i_1_n_6 ;
  wire \r_delay_counter_reg[8]_i_1_n_7 ;
  wire \r_delay_counter_reg_n_0_[0] ;
  wire \r_delay_counter_reg_n_0_[10] ;
  wire \r_delay_counter_reg_n_0_[11] ;
  wire \r_delay_counter_reg_n_0_[12] ;
  wire \r_delay_counter_reg_n_0_[13] ;
  wire \r_delay_counter_reg_n_0_[14] ;
  wire \r_delay_counter_reg_n_0_[15] ;
  wire \r_delay_counter_reg_n_0_[1] ;
  wire \r_delay_counter_reg_n_0_[2] ;
  wire \r_delay_counter_reg_n_0_[3] ;
  wire \r_delay_counter_reg_n_0_[4] ;
  wire \r_delay_counter_reg_n_0_[5] ;
  wire \r_delay_counter_reg_n_0_[6] ;
  wire \r_delay_counter_reg_n_0_[7] ;
  wire \r_delay_counter_reg_n_0_[8] ;
  wire \r_delay_counter_reg_n_0_[9] ;
  wire [6:0]\r_gain_reg[5] ;
  wire \r_gain_reg[7] ;
  wire [2:0]\r_gain_reg[7]_0 ;
  wire [0:0]r_p_term_reg;
  wire [2:0]r_p_term_reg_0;
  wire [2:0]r_p_term_reg_1;
  wire s00_axi_aclk;
  wire w_delay_counter_posedge;
  wire [3:0]\NLW_r_delay_counter_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_r_delay_counter_reg[16]_i_1_O_UNCONNECTED ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_2 ED_BTN
       (.D(D),
        .DI(DI),
        .E(E),
        .Q(Q),
        .S(S),
        .SR(SR),
        .r_cp(r_cp),
        .r_cp_z(r_cp_z),
        .r_debounced_btn(r_debounced_btn),
        .\r_gain_reg[5] (\r_gain_reg[5] ),
        .\r_gain_reg[7] (\r_gain_reg[7] ),
        .\r_gain_reg[7]_0 (\r_gain_reg[7]_0 ),
        .r_p_term_reg(r_p_term_reg),
        .r_p_term_reg_0(r_p_term_reg_0),
        .r_p_term_reg_1(r_p_term_reg_1),
        .s00_axi_aclk(s00_axi_aclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_3 ED_DELAY_COUNTER
       (.S(i_cp),
        .SR(SR),
        .s00_axi_aclk(s00_axi_aclk),
        .w_delay_counter_posedge(w_delay_counter_posedge));
  FDCE r_debounced_btn_reg
       (.C(s00_axi_aclk),
        .CE(w_delay_counter_posedge),
        .CLR(SR),
        .D(i_btn_u),
        .Q(r_debounced_btn));
  LUT1 #(
    .INIT(2'h1)) 
    \r_delay_counter[0]_i_2 
       (.I0(\r_delay_counter_reg_n_0_[0] ),
        .O(\r_delay_counter[0]_i_2_n_0 ));
  FDRE \r_delay_counter_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_delay_counter_reg[0]_i_1_n_7 ),
        .Q(\r_delay_counter_reg_n_0_[0] ),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \r_delay_counter_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\r_delay_counter_reg[0]_i_1_n_0 ,\r_delay_counter_reg[0]_i_1_n_1 ,\r_delay_counter_reg[0]_i_1_n_2 ,\r_delay_counter_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\r_delay_counter_reg[0]_i_1_n_4 ,\r_delay_counter_reg[0]_i_1_n_5 ,\r_delay_counter_reg[0]_i_1_n_6 ,\r_delay_counter_reg[0]_i_1_n_7 }),
        .S({\r_delay_counter_reg_n_0_[3] ,\r_delay_counter_reg_n_0_[2] ,\r_delay_counter_reg_n_0_[1] ,\r_delay_counter[0]_i_2_n_0 }));
  FDRE \r_delay_counter_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_delay_counter_reg[8]_i_1_n_5 ),
        .Q(\r_delay_counter_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \r_delay_counter_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_delay_counter_reg[8]_i_1_n_4 ),
        .Q(\r_delay_counter_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \r_delay_counter_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_delay_counter_reg[12]_i_1_n_7 ),
        .Q(\r_delay_counter_reg_n_0_[12] ),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \r_delay_counter_reg[12]_i_1 
       (.CI(\r_delay_counter_reg[8]_i_1_n_0 ),
        .CO({\r_delay_counter_reg[12]_i_1_n_0 ,\r_delay_counter_reg[12]_i_1_n_1 ,\r_delay_counter_reg[12]_i_1_n_2 ,\r_delay_counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_delay_counter_reg[12]_i_1_n_4 ,\r_delay_counter_reg[12]_i_1_n_5 ,\r_delay_counter_reg[12]_i_1_n_6 ,\r_delay_counter_reg[12]_i_1_n_7 }),
        .S({\r_delay_counter_reg_n_0_[15] ,\r_delay_counter_reg_n_0_[14] ,\r_delay_counter_reg_n_0_[13] ,\r_delay_counter_reg_n_0_[12] }));
  FDRE \r_delay_counter_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_delay_counter_reg[12]_i_1_n_6 ),
        .Q(\r_delay_counter_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \r_delay_counter_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_delay_counter_reg[12]_i_1_n_5 ),
        .Q(\r_delay_counter_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \r_delay_counter_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_delay_counter_reg[12]_i_1_n_4 ),
        .Q(\r_delay_counter_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \r_delay_counter_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_delay_counter_reg[16]_i_1_n_7 ),
        .Q(i_cp),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \r_delay_counter_reg[16]_i_1 
       (.CI(\r_delay_counter_reg[12]_i_1_n_0 ),
        .CO(\NLW_r_delay_counter_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_r_delay_counter_reg[16]_i_1_O_UNCONNECTED [3:1],\r_delay_counter_reg[16]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,i_cp}));
  FDRE \r_delay_counter_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_delay_counter_reg[0]_i_1_n_6 ),
        .Q(\r_delay_counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \r_delay_counter_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_delay_counter_reg[0]_i_1_n_5 ),
        .Q(\r_delay_counter_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \r_delay_counter_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_delay_counter_reg[0]_i_1_n_4 ),
        .Q(\r_delay_counter_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \r_delay_counter_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_delay_counter_reg[4]_i_1_n_7 ),
        .Q(\r_delay_counter_reg_n_0_[4] ),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \r_delay_counter_reg[4]_i_1 
       (.CI(\r_delay_counter_reg[0]_i_1_n_0 ),
        .CO({\r_delay_counter_reg[4]_i_1_n_0 ,\r_delay_counter_reg[4]_i_1_n_1 ,\r_delay_counter_reg[4]_i_1_n_2 ,\r_delay_counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_delay_counter_reg[4]_i_1_n_4 ,\r_delay_counter_reg[4]_i_1_n_5 ,\r_delay_counter_reg[4]_i_1_n_6 ,\r_delay_counter_reg[4]_i_1_n_7 }),
        .S({\r_delay_counter_reg_n_0_[7] ,\r_delay_counter_reg_n_0_[6] ,\r_delay_counter_reg_n_0_[5] ,\r_delay_counter_reg_n_0_[4] }));
  FDRE \r_delay_counter_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_delay_counter_reg[4]_i_1_n_6 ),
        .Q(\r_delay_counter_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \r_delay_counter_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_delay_counter_reg[4]_i_1_n_5 ),
        .Q(\r_delay_counter_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \r_delay_counter_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_delay_counter_reg[4]_i_1_n_4 ),
        .Q(\r_delay_counter_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \r_delay_counter_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_delay_counter_reg[8]_i_1_n_7 ),
        .Q(\r_delay_counter_reg_n_0_[8] ),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \r_delay_counter_reg[8]_i_1 
       (.CI(\r_delay_counter_reg[4]_i_1_n_0 ),
        .CO({\r_delay_counter_reg[8]_i_1_n_0 ,\r_delay_counter_reg[8]_i_1_n_1 ,\r_delay_counter_reg[8]_i_1_n_2 ,\r_delay_counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_delay_counter_reg[8]_i_1_n_4 ,\r_delay_counter_reg[8]_i_1_n_5 ,\r_delay_counter_reg[8]_i_1_n_6 ,\r_delay_counter_reg[8]_i_1_n_7 }),
        .S({\r_delay_counter_reg_n_0_[11] ,\r_delay_counter_reg_n_0_[10] ,\r_delay_counter_reg_n_0_[9] ,\r_delay_counter_reg_n_0_[8] }));
  FDRE \r_delay_counter_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_delay_counter_reg[8]_i_1_n_6 ),
        .Q(\r_delay_counter_reg_n_0_[9] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "buttonControl" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_buttonControl_5
   (r_cp,
    r_cp_z,
    s00_axi_aclk,
    SR,
    w_delay_counter_posedge,
    i_btn_l);
  output r_cp;
  output r_cp_z;
  input s00_axi_aclk;
  input [0:0]SR;
  input w_delay_counter_posedge;
  input i_btn_l;

  wire [0:0]SR;
  wire i_btn_l;
  wire r_cp;
  wire r_cp_z;
  wire r_debounced_btn_reg_n_0;
  wire s00_axi_aclk;
  wire w_delay_counter_posedge;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_8 ED_BTN
       (.SR(SR),
        .r_cp(r_cp),
        .r_cp_reg_0(r_debounced_btn_reg_n_0),
        .r_cp_z(r_cp_z),
        .s00_axi_aclk(s00_axi_aclk));
  FDCE r_debounced_btn_reg
       (.C(s00_axi_aclk),
        .CE(w_delay_counter_posedge),
        .CLR(SR),
        .D(i_btn_l),
        .Q(r_debounced_btn_reg_n_0));
endmodule

(* ORIG_REF_NAME = "buttonControl" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_buttonControl_6
   (E,
    D,
    \r_gain_reg[5] ,
    s00_axi_aclk,
    SR,
    w_delay_counter_posedge,
    i_btn_r,
    \r_gain_reg[7] ,
    r_cp,
    r_cp_z,
    Q,
    DI,
    S,
    \r_gain_reg[7]_0 ,
    r_integral_component2,
    r_integral_component2_0,
    r_integral_component2_1);
  output [0:0]E;
  output [6:0]D;
  output [6:0]\r_gain_reg[5] ;
  input s00_axi_aclk;
  input [0:0]SR;
  input w_delay_counter_posedge;
  input i_btn_r;
  input \r_gain_reg[7] ;
  input r_cp;
  input r_cp_z;
  input [5:0]Q;
  input [0:0]DI;
  input [2:0]S;
  input [2:0]\r_gain_reg[7]_0 ;
  input [0:0]r_integral_component2;
  input [2:0]r_integral_component2_0;
  input [2:0]r_integral_component2_1;

  wire [6:0]D;
  wire [0:0]DI;
  wire [0:0]E;
  wire [5:0]Q;
  wire [2:0]S;
  wire [0:0]SR;
  wire i_btn_r;
  wire r_cp;
  wire r_cp_z;
  wire r_debounced_btn_reg_n_0;
  wire [6:0]\r_gain_reg[5] ;
  wire \r_gain_reg[7] ;
  wire [2:0]\r_gain_reg[7]_0 ;
  wire [0:0]r_integral_component2;
  wire [2:0]r_integral_component2_0;
  wire [2:0]r_integral_component2_1;
  wire s00_axi_aclk;
  wire w_delay_counter_posedge;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_7 ED_BTN
       (.D(D),
        .DI(DI),
        .E(E),
        .Q(Q),
        .S(S),
        .SR(SR),
        .r_cp(r_cp),
        .r_cp_reg_0(r_debounced_btn_reg_n_0),
        .r_cp_z(r_cp_z),
        .\r_gain_reg[5] (\r_gain_reg[5] ),
        .\r_gain_reg[7] (\r_gain_reg[7] ),
        .\r_gain_reg[7]_0 (\r_gain_reg[7]_0 ),
        .r_integral_component2(r_integral_component2),
        .r_integral_component2_0(r_integral_component2_0),
        .r_integral_component2_1(r_integral_component2_1),
        .s00_axi_aclk(s00_axi_aclk));
  FDCE r_debounced_btn_reg
       (.C(s00_axi_aclk),
        .CE(w_delay_counter_posedge),
        .CLR(SR),
        .D(i_btn_r),
        .Q(r_debounced_btn_reg_n_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_div_100
   (w_clk_us_posedge,
    s00_axi_aclk,
    AR);
  output w_clk_us_posedge;
  input s00_axi_aclk;
  input [0:0]AR;

  wire [0:0]AR;
  wire load;
  wire \r_count[0]_i_1__0_n_0 ;
  wire \r_count[1]_i_1_n_0 ;
  wire \r_count[2]_i_1_n_0 ;
  wire \r_count[3]_i_1_n_0 ;
  wire \r_count[4]_i_1_n_0 ;
  wire \r_count[5]_i_1_n_0 ;
  wire \r_count[6]_i_1_n_0 ;
  wire \r_count[6]_i_2_n_0 ;
  wire [6:0]r_count_reg;
  wire s00_axi_aclk;
  wire w_clk_us_posedge;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_10 ED_OUTPUT_TICK
       (.AR(AR),
        .Q(r_count_reg[6:1]),
        .s00_axi_aclk(s00_axi_aclk),
        .w_clk_us_posedge(w_clk_us_posedge));
  LUT2 #(
    .INIT(4'h1)) 
    \r_count[0]_i_1__0 
       (.I0(r_count_reg[0]),
        .I1(load),
        .O(\r_count[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \r_count[1]_i_1 
       (.I0(r_count_reg[1]),
        .I1(r_count_reg[0]),
        .I2(load),
        .O(\r_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \r_count[2]_i_1 
       (.I0(r_count_reg[2]),
        .I1(r_count_reg[1]),
        .I2(r_count_reg[0]),
        .I3(load),
        .O(\r_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \r_count[3]_i_1 
       (.I0(r_count_reg[3]),
        .I1(r_count_reg[2]),
        .I2(r_count_reg[0]),
        .I3(r_count_reg[1]),
        .I4(load),
        .O(\r_count[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000006AAAAAAA)) 
    \r_count[4]_i_1 
       (.I0(r_count_reg[4]),
        .I1(r_count_reg[3]),
        .I2(r_count_reg[1]),
        .I3(r_count_reg[0]),
        .I4(r_count_reg[2]),
        .I5(load),
        .O(\r_count[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA800000000)) 
    \r_count[4]_i_2 
       (.I0(r_count_reg[5]),
        .I1(r_count_reg[3]),
        .I2(r_count_reg[2]),
        .I3(\r_count[6]_i_2_n_0 ),
        .I4(r_count_reg[4]),
        .I5(r_count_reg[6]),
        .O(load));
  LUT6 #(
    .INIT(64'h15555557C0000000)) 
    \r_count[5]_i_1 
       (.I0(r_count_reg[6]),
        .I1(r_count_reg[4]),
        .I2(\r_count[6]_i_2_n_0 ),
        .I3(r_count_reg[2]),
        .I4(r_count_reg[3]),
        .I5(r_count_reg[5]),
        .O(\r_count[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h40000002AAAAAAAA)) 
    \r_count[6]_i_1 
       (.I0(r_count_reg[6]),
        .I1(r_count_reg[4]),
        .I2(\r_count[6]_i_2_n_0 ),
        .I3(r_count_reg[2]),
        .I4(r_count_reg[3]),
        .I5(r_count_reg[5]),
        .O(\r_count[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_count[6]_i_2 
       (.I0(r_count_reg[1]),
        .I1(r_count_reg[0]),
        .O(\r_count[6]_i_2_n_0 ));
  FDCE \r_count_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\r_count[0]_i_1__0_n_0 ),
        .Q(r_count_reg[0]));
  FDCE \r_count_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\r_count[1]_i_1_n_0 ),
        .Q(r_count_reg[1]));
  FDCE \r_count_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\r_count[2]_i_1_n_0 ),
        .Q(r_count_reg[2]));
  FDCE \r_count_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\r_count[3]_i_1_n_0 ),
        .Q(r_count_reg[3]));
  FDCE \r_count_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\r_count[4]_i_1_n_0 ),
        .Q(r_count_reg[4]));
  FDCE \r_count_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\r_count[5]_i_1_n_0 ),
        .Q(r_count_reg[5]));
  FDCE \r_count_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\r_count[6]_i_1_n_0 ),
        .Q(r_count_reg[6]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_div_1000
   (s00_axi_aresetn_0,
    w_calculate,
    w_clk_us_posedge,
    s00_axi_aclk,
    i_sw_enable_control,
    s00_axi_aresetn);
  output s00_axi_aresetn_0;
  output w_calculate;
  input w_clk_us_posedge;
  input s00_axi_aclk;
  input i_sw_enable_control;
  input s00_axi_aresetn;

  wire i_sw_enable_control;
  wire \r_count[0]_i_1_n_0 ;
  wire \r_count[1]_i_1__0_n_0 ;
  wire \r_count[2]_i_1__0_n_0 ;
  wire \r_count[3]_i_1__0_n_0 ;
  wire \r_count[4]_i_1__0_n_0 ;
  wire \r_count[5]_i_1__0_n_0 ;
  wire \r_count[5]_i_2_n_0 ;
  wire \r_count[6]_i_1__0_n_0 ;
  wire \r_count[7]_i_1_n_0 ;
  wire \r_count[8]_i_1_n_0 ;
  wire \r_count[9]_i_2_n_0 ;
  wire \r_count[9]_i_3_n_0 ;
  wire \r_count[9]_i_4_n_0 ;
  wire \r_count[9]_i_5_n_0 ;
  wire [9:0]r_count_reg;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire s00_axi_aresetn_0;
  wire w_calculate;
  wire w_clk_us_posedge;
  wire w_negedge_tick;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_11 ED_INPUT_CP
       (.AR(s00_axi_aresetn_0),
        .E(w_negedge_tick),
        .s00_axi_aclk(s00_axi_aclk),
        .w_clk_us_posedge(w_clk_us_posedge));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_12 ED_OUTPUT_TICK
       (.AR(s00_axi_aresetn_0),
        .Q(r_count_reg[9:2]),
        .i_sw_enable_control(i_sw_enable_control),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .w_calculate(w_calculate));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \r_count[0]_i_1 
       (.I0(r_count_reg[0]),
        .I1(\r_count[9]_i_4_n_0 ),
        .O(\r_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \r_count[1]_i_1__0 
       (.I0(r_count_reg[1]),
        .I1(r_count_reg[0]),
        .I2(\r_count[9]_i_4_n_0 ),
        .O(\r_count[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \r_count[2]_i_1__0 
       (.I0(r_count_reg[2]),
        .I1(r_count_reg[1]),
        .I2(r_count_reg[0]),
        .I3(\r_count[9]_i_4_n_0 ),
        .O(\r_count[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \r_count[3]_i_1__0 
       (.I0(r_count_reg[3]),
        .I1(r_count_reg[2]),
        .I2(r_count_reg[0]),
        .I3(r_count_reg[1]),
        .I4(\r_count[9]_i_4_n_0 ),
        .O(\r_count[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h000000006AAAAAAA)) 
    \r_count[4]_i_1__0 
       (.I0(r_count_reg[4]),
        .I1(r_count_reg[3]),
        .I2(r_count_reg[1]),
        .I3(r_count_reg[0]),
        .I4(r_count_reg[2]),
        .I5(\r_count[9]_i_4_n_0 ),
        .O(\r_count[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \r_count[5]_i_1__0 
       (.I0(r_count_reg[5]),
        .I1(\r_count[5]_i_2_n_0 ),
        .I2(\r_count[9]_i_4_n_0 ),
        .O(\r_count[5]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \r_count[5]_i_2 
       (.I0(r_count_reg[4]),
        .I1(r_count_reg[2]),
        .I2(r_count_reg[0]),
        .I3(r_count_reg[1]),
        .I4(r_count_reg[3]),
        .O(\r_count[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \r_count[6]_i_1__0 
       (.I0(r_count_reg[6]),
        .I1(\r_count[9]_i_3_n_0 ),
        .I2(\r_count[9]_i_4_n_0 ),
        .O(\r_count[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \r_count[7]_i_1 
       (.I0(r_count_reg[7]),
        .I1(r_count_reg[6]),
        .I2(\r_count[9]_i_3_n_0 ),
        .I3(\r_count[9]_i_4_n_0 ),
        .O(\r_count[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \r_count[8]_i_1 
       (.I0(r_count_reg[8]),
        .I1(r_count_reg[7]),
        .I2(\r_count[9]_i_3_n_0 ),
        .I3(r_count_reg[6]),
        .I4(\r_count[9]_i_4_n_0 ),
        .O(\r_count[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000006AAAAAAA)) 
    \r_count[9]_i_2 
       (.I0(r_count_reg[9]),
        .I1(r_count_reg[8]),
        .I2(r_count_reg[6]),
        .I3(\r_count[9]_i_3_n_0 ),
        .I4(r_count_reg[7]),
        .I5(\r_count[9]_i_4_n_0 ),
        .O(\r_count[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \r_count[9]_i_3 
       (.I0(r_count_reg[5]),
        .I1(r_count_reg[3]),
        .I2(r_count_reg[1]),
        .I3(r_count_reg[0]),
        .I4(r_count_reg[2]),
        .I5(r_count_reg[4]),
        .O(\r_count[9]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h08000000)) 
    \r_count[9]_i_4 
       (.I0(r_count_reg[6]),
        .I1(r_count_reg[5]),
        .I2(\r_count[9]_i_5_n_0 ),
        .I3(r_count_reg[7]),
        .I4(r_count_reg[8]),
        .O(\r_count[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5555555557777777)) 
    \r_count[9]_i_5 
       (.I0(r_count_reg[9]),
        .I1(r_count_reg[4]),
        .I2(r_count_reg[2]),
        .I3(r_count_reg[0]),
        .I4(r_count_reg[1]),
        .I5(r_count_reg[3]),
        .O(\r_count[9]_i_5_n_0 ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \r_count_reg[0] 
       (.C(s00_axi_aclk),
        .CE(w_negedge_tick),
        .CLR(s00_axi_aresetn_0),
        .D(\r_count[0]_i_1_n_0 ),
        .Q(r_count_reg[0]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \r_count_reg[1] 
       (.C(s00_axi_aclk),
        .CE(w_negedge_tick),
        .CLR(s00_axi_aresetn_0),
        .D(\r_count[1]_i_1__0_n_0 ),
        .Q(r_count_reg[1]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \r_count_reg[2] 
       (.C(s00_axi_aclk),
        .CE(w_negedge_tick),
        .CLR(s00_axi_aresetn_0),
        .D(\r_count[2]_i_1__0_n_0 ),
        .Q(r_count_reg[2]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \r_count_reg[3] 
       (.C(s00_axi_aclk),
        .CE(w_negedge_tick),
        .CLR(s00_axi_aresetn_0),
        .D(\r_count[3]_i_1__0_n_0 ),
        .Q(r_count_reg[3]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \r_count_reg[4] 
       (.C(s00_axi_aclk),
        .CE(w_negedge_tick),
        .CLR(s00_axi_aresetn_0),
        .D(\r_count[4]_i_1__0_n_0 ),
        .Q(r_count_reg[4]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \r_count_reg[5] 
       (.C(s00_axi_aclk),
        .CE(w_negedge_tick),
        .CLR(s00_axi_aresetn_0),
        .D(\r_count[5]_i_1__0_n_0 ),
        .Q(r_count_reg[5]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \r_count_reg[6] 
       (.C(s00_axi_aclk),
        .CE(w_negedge_tick),
        .CLR(s00_axi_aresetn_0),
        .D(\r_count[6]_i_1__0_n_0 ),
        .Q(r_count_reg[6]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \r_count_reg[7] 
       (.C(s00_axi_aclk),
        .CE(w_negedge_tick),
        .CLR(s00_axi_aresetn_0),
        .D(\r_count[7]_i_1_n_0 ),
        .Q(r_count_reg[7]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \r_count_reg[8] 
       (.C(s00_axi_aclk),
        .CE(w_negedge_tick),
        .CLR(s00_axi_aresetn_0),
        .D(\r_count[8]_i_1_n_0 ),
        .Q(r_count_reg[8]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \r_count_reg[9] 
       (.C(s00_axi_aclk),
        .CE(w_negedge_tick),
        .CLR(s00_axi_aresetn_0),
        .D(\r_count[9]_i_2_n_0 ),
        .Q(r_count_reg[9]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_decoder7Seg
   (o_fnd,
    Q);
  output [6:0]o_fnd;
  input [3:0]Q;

  wire [3:0]Q;
  wire [6:0]o_fnd;

  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h4025)) 
    \o_fnd[1]_INST_0 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(o_fnd[0]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h5190)) 
    \o_fnd[2]_INST_0 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(o_fnd[1]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h5710)) 
    \o_fnd[3]_INST_0 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .O(o_fnd[2]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hC234)) 
    \o_fnd[4]_INST_0 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(o_fnd[3]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hA210)) 
    \o_fnd[5]_INST_0 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(o_fnd[4]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hAC48)) 
    \o_fnd[6]_INST_0 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(o_fnd[5]));
  LUT4 #(
    .INIT(16'h2094)) 
    \o_fnd[7]_INST_0 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(o_fnd[6]));
endmodule

(* CHECK_LICENSE_TYPE = "design_2_myBLDC_Controller_0_0,myBLDC_Controller_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "myBLDC_Controller_v1_0,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (i_vaux6p,
    i_vaux6n,
    i_sw_enable_control,
    i_sw_rot_ccw,
    i_sw_display_gain,
    i_sw_bypass,
    o_get_RPM,
    i_btn_u,
    i_btn_d,
    i_btn_r,
    i_btn_l,
    i_hall_state,
    o_U_pos,
    o_U_neg,
    o_V_pos,
    o_V_neg,
    o_W_pos,
    o_W_neg,
    o_U_pwm,
    o_V_pwm,
    o_W_pwm,
    o_led_enable_control,
    o_hall_one_hot_state,
    o_fnd,
    o_fnd_sel,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready);
  input i_vaux6p;
  input i_vaux6n;
  input i_sw_enable_control;
  input i_sw_rot_ccw;
  input i_sw_display_gain;
  input i_sw_bypass;
  output o_get_RPM;
  input i_btn_u;
  input i_btn_d;
  input i_btn_r;
  input i_btn_l;
  input [2:0]i_hall_state;
  output o_U_pos;
  output o_U_neg;
  output o_V_pos;
  output o_V_neg;
  output o_W_pos;
  output o_W_neg;
  output o_U_pwm;
  output o_V_pwm;
  output o_W_pwm;
  output o_led_enable_control;
  output [5:0]o_hall_one_hot_state;
  output [7:0]o_fnd;
  output [3:0]o_fnd_sel;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [4:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [4:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 8, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s00_axi_rready;

  wire \<const0> ;
  wire \<const1> ;
  wire i_btn_d;
  wire i_btn_l;
  wire i_btn_r;
  wire i_btn_u;
  wire [2:0]i_hall_state;
  wire i_sw_bypass;
  wire i_sw_display_gain;
  wire i_sw_enable_control;
  wire i_sw_rot_ccw;
  wire i_vaux6n;
  wire i_vaux6p;
  wire inst_n_0;
  wire o_U_neg;
  wire o_U_pos;
  wire o_V_neg;
  wire o_V_pos;
  wire o_W_neg;
  wire o_W_pos;
  wire o_W_pwm;
  wire [7:1]\^o_fnd ;
  wire [3:0]o_fnd_sel;
  wire o_get_RPM;
  wire [5:0]o_hall_one_hot_state;
  wire r_get_RPM_i_8_n_0;
  wire r_get_RPM_reg_i_7_n_0;
  wire s00_axi_aclk;
  wire [4:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [4:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign o_U_pwm = o_W_pwm;
  assign o_V_pwm = o_W_pwm;
  assign o_fnd[7:1] = \^o_fnd [7:1];
  assign o_fnd[0] = \<const1> ;
  assign o_led_enable_control = i_sw_enable_control;
  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myBLDC_Controller_v1_0 inst
       (.axi_arready_reg(s00_axi_arready),
        .axi_awready_reg(s00_axi_awready),
        .axi_wready_reg(s00_axi_wready),
        .i_btn_d(i_btn_d),
        .i_btn_l(i_btn_l),
        .i_btn_r(i_btn_r),
        .i_btn_u(i_btn_u),
        .i_hall_state(i_hall_state),
        .i_sw_bypass(i_sw_bypass),
        .i_sw_display_gain(i_sw_display_gain),
        .i_sw_enable_control(i_sw_enable_control),
        .i_sw_rot_ccw(i_sw_rot_ccw),
        .i_vaux6n(i_vaux6n),
        .i_vaux6p(i_vaux6p),
        .o_U_neg(o_U_neg),
        .o_U_pos(o_U_pos),
        .o_V_neg(o_V_neg),
        .o_V_pos(o_V_pos),
        .o_W_neg(o_W_neg),
        .o_W_pos(o_W_pos),
        .o_W_pwm(o_W_pwm),
        .o_fnd(\^o_fnd ),
        .o_fnd_sel(o_fnd_sel),
        .o_get_RPM(o_get_RPM),
        .o_hall_one_hot_state(o_hall_one_hot_state),
        .r_get_RPM_i_3(r_get_RPM_reg_i_7_n_0),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[4:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_aresetn_0(inst_n_0),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[4:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
  LUT3 #(
    .INIT(8'h7E)) 
    r_get_RPM_i_8
       (.I0(i_hall_state[0]),
        .I1(i_hall_state[1]),
        .I2(i_hall_state[2]),
        .O(r_get_RPM_i_8_n_0));
  FDSE #(
    .INIT(1'b1)) 
    r_get_RPM_reg_i_7
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(r_get_RPM_i_8_n_0),
        .Q(r_get_RPM_reg_i_7_n_0),
        .S(inst_n_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n
   (E,
    eoc_out,
    s00_axi_aclk,
    AR);
  output [0:0]E;
  input eoc_out;
  input s00_axi_aclk;
  input [0:0]AR;

  wire [0:0]AR;
  wire [0:0]E;
  wire eoc_out;
  wire r_cp;
  wire r_cp_z;
  wire s00_axi_aclk;

  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    r_cp_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(eoc_out),
        .Q(r_cp));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    r_cp_z_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(r_cp),
        .Q(r_cp_z));
  LUT2 #(
    .INIT(4'h2)) 
    \r_value[11]_i_1 
       (.I0(r_cp_z),
        .I1(r_cp),
        .O(E));
endmodule

(* ORIG_REF_NAME = "edge_detector_n" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_10
   (w_clk_us_posedge,
    s00_axi_aclk,
    AR,
    Q);
  output w_clk_us_posedge;
  input s00_axi_aclk;
  input [0:0]AR;
  input [5:0]Q;

  wire [0:0]AR;
  wire [5:0]Q;
  wire p_0_out;
  wire r_cp;
  wire r_cp_z;
  wire s00_axi_aclk;
  wire w_clk_us_posedge;

  LUT6 #(
    .INIT(64'hEAEAEAEAEAEAEAAA)) 
    r_cp_i_1__0
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(p_0_out));
  LUT2 #(
    .INIT(4'h2)) 
    r_cp_i_1__1
       (.I0(r_cp),
        .I1(r_cp_z),
        .O(w_clk_us_posedge));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    r_cp_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_out),
        .Q(r_cp));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    r_cp_z_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(r_cp),
        .Q(r_cp_z));
endmodule

(* ORIG_REF_NAME = "edge_detector_n" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_11
   (E,
    w_clk_us_posedge,
    s00_axi_aclk,
    AR);
  output [0:0]E;
  input w_clk_us_posedge;
  input s00_axi_aclk;
  input [0:0]AR;

  wire [0:0]AR;
  wire [0:0]E;
  wire r_cp;
  wire r_cp_z;
  wire s00_axi_aclk;
  wire w_clk_us_posedge;

  LUT2 #(
    .INIT(4'h2)) 
    \r_count[9]_i_1 
       (.I0(r_cp_z),
        .I1(r_cp),
        .O(E));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    r_cp_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(w_clk_us_posedge),
        .Q(r_cp));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    r_cp_z_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(r_cp),
        .Q(r_cp_z));
endmodule

(* ORIG_REF_NAME = "edge_detector_n" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_12
   (AR,
    w_calculate,
    s00_axi_aclk,
    i_sw_enable_control,
    s00_axi_aresetn,
    Q);
  output [0:0]AR;
  output w_calculate;
  input s00_axi_aclk;
  input i_sw_enable_control;
  input s00_axi_aresetn;
  input [7:0]Q;

  wire [0:0]AR;
  wire [7:0]Q;
  wire i_sw_enable_control;
  wire r_cp;
  wire r_cp_i_1_n_0;
  wire r_cp_i_2_n_0;
  wire r_cp_z;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire w_calculate;

  LUT4 #(
    .INIT(16'hEEEA)) 
    r_cp_i_1
       (.I0(Q[7]),
        .I1(r_cp_i_2_n_0),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(r_cp_i_1_n_0));
  LUT5 #(
    .INIT(32'h80000000)) 
    r_cp_i_2
       (.I0(Q[2]),
        .I1(Q[5]),
        .I2(Q[6]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(r_cp_i_2_n_0));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    r_cp_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(r_cp_i_1_n_0),
        .Q(r_cp));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    r_cp_z_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(r_cp),
        .Q(r_cp_z));
  LUT1 #(
    .INIT(2'h1)) 
    r_get_RPM_i_1
       (.I0(s00_axi_aresetn),
        .O(AR));
  LUT3 #(
    .INIT(8'h20)) 
    r_p_term_reg_i_2
       (.I0(i_sw_enable_control),
        .I1(r_cp_z),
        .I2(r_cp),
        .O(w_calculate));
endmodule

(* ORIG_REF_NAME = "edge_detector_n" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_2
   (E,
    D,
    \r_gain_reg[5] ,
    r_debounced_btn,
    s00_axi_aclk,
    SR,
    \r_gain_reg[7] ,
    r_cp,
    r_cp_z,
    Q,
    DI,
    S,
    \r_gain_reg[7]_0 ,
    r_p_term_reg,
    r_p_term_reg_0,
    r_p_term_reg_1);
  output [0:0]E;
  output [6:0]D;
  output [6:0]\r_gain_reg[5] ;
  input r_debounced_btn;
  input s00_axi_aclk;
  input [0:0]SR;
  input \r_gain_reg[7] ;
  input r_cp;
  input r_cp_z;
  input [5:0]Q;
  input [0:0]DI;
  input [2:0]S;
  input [2:0]\r_gain_reg[7]_0 ;
  input [0:0]r_p_term_reg;
  input [2:0]r_p_term_reg_0;
  input [2:0]r_p_term_reg_1;

  wire [6:0]D;
  wire [0:0]DI;
  wire [0:0]E;
  wire [5:0]Q;
  wire [2:0]S;
  wire [0:0]SR;
  wire r_cp;
  wire r_cp_0;
  wire r_cp_z;
  wire r_cp_z_1;
  wire r_debounced_btn;
  wire \r_gain[4]_i_6_n_0 ;
  wire \r_gain_reg[4]_i_1_n_0 ;
  wire \r_gain_reg[4]_i_1_n_1 ;
  wire \r_gain_reg[4]_i_1_n_2 ;
  wire \r_gain_reg[4]_i_1_n_3 ;
  wire [6:0]\r_gain_reg[5] ;
  wire \r_gain_reg[7] ;
  wire [2:0]\r_gain_reg[7]_0 ;
  wire \r_gain_reg[7]_i_1_n_2 ;
  wire \r_gain_reg[7]_i_1_n_3 ;
  wire [0:0]r_p_term_reg;
  wire [2:0]r_p_term_reg_0;
  wire [2:0]r_p_term_reg_1;
  wire r_p_term_reg_i_15_n_0;
  wire r_p_term_reg_i_3_n_2;
  wire r_p_term_reg_i_3_n_3;
  wire r_p_term_reg_i_4_n_0;
  wire r_p_term_reg_i_4_n_1;
  wire r_p_term_reg_i_4_n_2;
  wire r_p_term_reg_i_4_n_3;
  wire s00_axi_aclk;
  wire [3:2]\NLW_r_gain_reg[7]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_r_gain_reg[7]_i_1_O_UNCONNECTED ;
  wire [3:2]NLW_r_p_term_reg_i_3_CO_UNCONNECTED;
  wire [3:3]NLW_r_p_term_reg_i_3_O_UNCONNECTED;
  wire [0:0]NLW_r_p_term_reg_i_4_O_UNCONNECTED;

  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    r_cp_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(r_debounced_btn),
        .Q(r_cp_0));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    r_cp_z_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(r_cp_0),
        .Q(r_cp_z_1));
  LUT3 #(
    .INIT(8'h65)) 
    \r_gain[4]_i_6 
       (.I0(Q[1]),
        .I1(r_cp_z_1),
        .I2(r_cp_0),
        .O(\r_gain[4]_i_6_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \r_gain_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\r_gain_reg[4]_i_1_n_0 ,\r_gain_reg[4]_i_1_n_1 ,\r_gain_reg[4]_i_1_n_2 ,\r_gain_reg[4]_i_1_n_3 }),
        .CYINIT(Q[0]),
        .DI({Q[3:1],DI}),
        .O(D[3:0]),
        .S({S,\r_gain[4]_i_6_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \r_gain_reg[7]_i_1 
       (.CI(\r_gain_reg[4]_i_1_n_0 ),
        .CO({\NLW_r_gain_reg[7]_i_1_CO_UNCONNECTED [3:2],\r_gain_reg[7]_i_1_n_2 ,\r_gain_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,Q[5:4]}),
        .O({\NLW_r_gain_reg[7]_i_1_O_UNCONNECTED [3],D[6:4]}),
        .S({1'b0,\r_gain_reg[7]_0 }));
  LUT5 #(
    .INIT(32'h44444F44)) 
    r_p_term_reg_i_1
       (.I0(r_cp_z_1),
        .I1(r_cp_0),
        .I2(\r_gain_reg[7] ),
        .I3(r_cp),
        .I4(r_cp_z),
        .O(E));
  LUT3 #(
    .INIT(8'h65)) 
    r_p_term_reg_i_15
       (.I0(Q[1]),
        .I1(r_cp_z_1),
        .I2(r_cp_0),
        .O(r_p_term_reg_i_15_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 r_p_term_reg_i_3
       (.CI(r_p_term_reg_i_4_n_0),
        .CO({NLW_r_p_term_reg_i_3_CO_UNCONNECTED[3:2],r_p_term_reg_i_3_n_2,r_p_term_reg_i_3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,Q[5:4]}),
        .O({NLW_r_p_term_reg_i_3_O_UNCONNECTED[3],\r_gain_reg[5] [6:4]}),
        .S({1'b0,r_p_term_reg_1}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 r_p_term_reg_i_4
       (.CI(1'b0),
        .CO({r_p_term_reg_i_4_n_0,r_p_term_reg_i_4_n_1,r_p_term_reg_i_4_n_2,r_p_term_reg_i_4_n_3}),
        .CYINIT(Q[0]),
        .DI({Q[3:1],r_p_term_reg}),
        .O({\r_gain_reg[5] [3:1],NLW_r_p_term_reg_i_4_O_UNCONNECTED[0]}),
        .S({r_p_term_reg_0,r_p_term_reg_i_15_n_0}));
  LUT4 #(
    .INIT(16'hA659)) 
    r_p_term_reg_i_5
       (.I0(Q[0]),
        .I1(r_cp_0),
        .I2(r_cp_z_1),
        .I3(Q[1]),
        .O(\r_gain_reg[5] [0]));
endmodule

(* ORIG_REF_NAME = "edge_detector_n" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_3
   (w_delay_counter_posedge,
    S,
    s00_axi_aclk,
    SR);
  output w_delay_counter_posedge;
  input [0:0]S;
  input s00_axi_aclk;
  input [0:0]SR;

  wire \FND_CTRL/FND_SELECT/ED_DELAY_COUNTER/r_cp ;
  wire \FND_CTRL/FND_SELECT/ED_DELAY_COUNTER/r_cp_z ;
  wire [0:0]S;
  wire [0:0]SR;
  wire s00_axi_aclk;
  wire w_delay_counter_posedge;

  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    r_cp_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(S),
        .Q(\FND_CTRL/FND_SELECT/ED_DELAY_COUNTER/r_cp ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    r_cp_z_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\FND_CTRL/FND_SELECT/ED_DELAY_COUNTER/r_cp ),
        .Q(\FND_CTRL/FND_SELECT/ED_DELAY_COUNTER/r_cp_z ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_fnd_sel[3]_i_1 
       (.I0(\FND_CTRL/FND_SELECT/ED_DELAY_COUNTER/r_cp ),
        .I1(\FND_CTRL/FND_SELECT/ED_DELAY_COUNTER/r_cp_z ),
        .O(w_delay_counter_posedge));
endmodule

(* ORIG_REF_NAME = "edge_detector_n" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_4
   (r_cp,
    r_cp_z,
    r_cp_reg_0,
    s00_axi_aclk,
    SR);
  output r_cp;
  output r_cp_z;
  input r_cp_reg_0;
  input s00_axi_aclk;
  input [0:0]SR;

  wire [0:0]SR;
  wire r_cp;
  wire r_cp_reg_0;
  wire r_cp_z;
  wire s00_axi_aclk;

  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    r_cp_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(r_cp_reg_0),
        .Q(r_cp));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    r_cp_z_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(r_cp),
        .Q(r_cp_z));
endmodule

(* ORIG_REF_NAME = "edge_detector_n" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_7
   (E,
    D,
    \r_gain_reg[5] ,
    r_cp_reg_0,
    s00_axi_aclk,
    SR,
    \r_gain_reg[7] ,
    r_cp,
    r_cp_z,
    Q,
    DI,
    S,
    \r_gain_reg[7]_0 ,
    r_integral_component2,
    r_integral_component2_0,
    r_integral_component2_1);
  output [0:0]E;
  output [6:0]D;
  output [6:0]\r_gain_reg[5] ;
  input r_cp_reg_0;
  input s00_axi_aclk;
  input [0:0]SR;
  input \r_gain_reg[7] ;
  input r_cp;
  input r_cp_z;
  input [5:0]Q;
  input [0:0]DI;
  input [2:0]S;
  input [2:0]\r_gain_reg[7]_0 ;
  input [0:0]r_integral_component2;
  input [2:0]r_integral_component2_0;
  input [2:0]r_integral_component2_1;

  wire [6:0]D;
  wire [0:0]DI;
  wire [0:0]E;
  wire [5:0]Q;
  wire [2:0]S;
  wire [0:0]SR;
  wire r_cp;
  wire r_cp_0;
  wire r_cp_reg_0;
  wire r_cp_z;
  wire r_cp_z_1;
  wire \r_gain[4]_i_6__0_n_0 ;
  wire \r_gain_reg[4]_i_1__0_n_0 ;
  wire \r_gain_reg[4]_i_1__0_n_1 ;
  wire \r_gain_reg[4]_i_1__0_n_2 ;
  wire \r_gain_reg[4]_i_1__0_n_3 ;
  wire [6:0]\r_gain_reg[5] ;
  wire \r_gain_reg[7] ;
  wire [2:0]\r_gain_reg[7]_0 ;
  wire \r_gain_reg[7]_i_1__0_n_2 ;
  wire \r_gain_reg[7]_i_1__0_n_3 ;
  wire [0:0]r_integral_component2;
  wire [2:0]r_integral_component2_0;
  wire [2:0]r_integral_component2_1;
  wire r_integral_component2_i_14_n_0;
  wire r_integral_component2_i_2_n_2;
  wire r_integral_component2_i_2_n_3;
  wire r_integral_component2_i_3_n_0;
  wire r_integral_component2_i_3_n_1;
  wire r_integral_component2_i_3_n_2;
  wire r_integral_component2_i_3_n_3;
  wire s00_axi_aclk;
  wire [3:2]\NLW_r_gain_reg[7]_i_1__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_r_gain_reg[7]_i_1__0_O_UNCONNECTED ;
  wire [3:2]NLW_r_integral_component2_i_2_CO_UNCONNECTED;
  wire [3:3]NLW_r_integral_component2_i_2_O_UNCONNECTED;
  wire [0:0]NLW_r_integral_component2_i_3_O_UNCONNECTED;

  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    r_cp_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(r_cp_reg_0),
        .Q(r_cp_0));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    r_cp_z_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(r_cp_0),
        .Q(r_cp_z_1));
  LUT3 #(
    .INIT(8'h65)) 
    \r_gain[4]_i_6__0 
       (.I0(Q[1]),
        .I1(r_cp_z_1),
        .I2(r_cp_0),
        .O(\r_gain[4]_i_6__0_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \r_gain_reg[4]_i_1__0 
       (.CI(1'b0),
        .CO({\r_gain_reg[4]_i_1__0_n_0 ,\r_gain_reg[4]_i_1__0_n_1 ,\r_gain_reg[4]_i_1__0_n_2 ,\r_gain_reg[4]_i_1__0_n_3 }),
        .CYINIT(Q[0]),
        .DI({Q[3:1],DI}),
        .O(D[3:0]),
        .S({S,\r_gain[4]_i_6__0_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \r_gain_reg[7]_i_1__0 
       (.CI(\r_gain_reg[4]_i_1__0_n_0 ),
        .CO({\NLW_r_gain_reg[7]_i_1__0_CO_UNCONNECTED [3:2],\r_gain_reg[7]_i_1__0_n_2 ,\r_gain_reg[7]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,Q[5:4]}),
        .O({\NLW_r_gain_reg[7]_i_1__0_O_UNCONNECTED [3],D[6:4]}),
        .S({1'b0,\r_gain_reg[7]_0 }));
  LUT5 #(
    .INIT(32'h44444F44)) 
    r_integral_component2_i_1
       (.I0(r_cp_z_1),
        .I1(r_cp_0),
        .I2(\r_gain_reg[7] ),
        .I3(r_cp),
        .I4(r_cp_z),
        .O(E));
  LUT3 #(
    .INIT(8'h65)) 
    r_integral_component2_i_14
       (.I0(Q[1]),
        .I1(r_cp_z_1),
        .I2(r_cp_0),
        .O(r_integral_component2_i_14_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 r_integral_component2_i_2
       (.CI(r_integral_component2_i_3_n_0),
        .CO({NLW_r_integral_component2_i_2_CO_UNCONNECTED[3:2],r_integral_component2_i_2_n_2,r_integral_component2_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,Q[5:4]}),
        .O({NLW_r_integral_component2_i_2_O_UNCONNECTED[3],\r_gain_reg[5] [6:4]}),
        .S({1'b0,r_integral_component2_1}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 r_integral_component2_i_3
       (.CI(1'b0),
        .CO({r_integral_component2_i_3_n_0,r_integral_component2_i_3_n_1,r_integral_component2_i_3_n_2,r_integral_component2_i_3_n_3}),
        .CYINIT(Q[0]),
        .DI({Q[3:1],r_integral_component2}),
        .O({\r_gain_reg[5] [3:1],NLW_r_integral_component2_i_3_O_UNCONNECTED[0]}),
        .S({r_integral_component2_0,r_integral_component2_i_14_n_0}));
  LUT4 #(
    .INIT(16'hA659)) 
    r_integral_component2_i_4
       (.I0(Q[0]),
        .I1(r_cp_0),
        .I2(r_cp_z_1),
        .I3(Q[1]),
        .O(\r_gain_reg[5] [0]));
endmodule

(* ORIG_REF_NAME = "edge_detector_n" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_8
   (r_cp,
    r_cp_z,
    r_cp_reg_0,
    s00_axi_aclk,
    SR);
  output r_cp;
  output r_cp_z;
  input r_cp_reg_0;
  input s00_axi_aclk;
  input [0:0]SR;

  wire [0:0]SR;
  wire r_cp;
  wire r_cp_reg_0;
  wire r_cp_z;
  wire s00_axi_aclk;

  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    r_cp_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(r_cp_reg_0),
        .Q(r_cp));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    r_cp_z_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(r_cp),
        .Q(r_cp_z));
endmodule

(* ORIG_REF_NAME = "edge_detector_n" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_9
   (sel,
    r_clk,
    s00_axi_aclk,
    r_cp_reg_0);
  output sel;
  input r_clk;
  input s00_axi_aclk;
  input r_cp_reg_0;

  wire r_clk;
  wire r_cp;
  wire r_cp_reg_0;
  wire r_cp_z;
  wire s00_axi_aclk;
  wire sel;

  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    r_cp_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(r_cp_reg_0),
        .D(r_clk),
        .Q(r_cp));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    r_cp_z_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(r_cp_reg_0),
        .D(r_cp),
        .Q(r_cp_z));
  LUT2 #(
    .INIT(4'h2)) 
    r_pwm_i_1
       (.I0(r_cp_z),
        .I1(r_cp),
        .O(sel));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fndControl
   (Q,
    o_fnd,
    E,
    s00_axi_aclk,
    AR,
    D);
  output [3:0]Q;
  output [6:0]o_fnd;
  input [0:0]E;
  input s00_axi_aclk;
  input [0:0]AR;
  input [3:0]D;

  wire [0:0]AR;
  wire [3:0]D;
  wire [0:0]E;
  wire FND_SELECT_n_4;
  wire [3:0]Q;
  wire [6:0]o_fnd;
  wire [3:0]r_hex_value;
  wire s00_axi_aclk;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ringCounterFnd FND_SELECT
       (.AR(AR),
        .E(FND_SELECT_n_4),
        .Q(Q),
        .\r_fnd_sel_reg[0]_0 (E),
        .s00_axi_aclk(s00_axi_aclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_decoder7Seg FND_VALUE
       (.Q(r_hex_value),
        .o_fnd(o_fnd));
  FDRE \r_hex_value_reg[0] 
       (.C(s00_axi_aclk),
        .CE(FND_SELECT_n_4),
        .D(D[0]),
        .Q(r_hex_value[0]),
        .R(1'b0));
  FDRE \r_hex_value_reg[1] 
       (.C(s00_axi_aclk),
        .CE(FND_SELECT_n_4),
        .D(D[1]),
        .Q(r_hex_value[1]),
        .R(1'b0));
  FDRE \r_hex_value_reg[2] 
       (.C(s00_axi_aclk),
        .CE(FND_SELECT_n_4),
        .D(D[2]),
        .Q(r_hex_value[2]),
        .R(1'b0));
  FDRE \r_hex_value_reg[3] 
       (.C(s00_axi_aclk),
        .CE(FND_SELECT_n_4),
        .D(D[3]),
        .Q(r_hex_value[3]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myBLDC_Controller_v1_0
   (s00_axi_aresetn_0,
    axi_awready_reg,
    axi_wready_reg,
    axi_arready_reg,
    o_U_pos,
    o_U_neg,
    o_V_pos,
    o_V_neg,
    o_W_pos,
    o_W_neg,
    o_W_pwm,
    s00_axi_bvalid,
    s00_axi_rvalid,
    o_get_RPM,
    o_fnd_sel,
    s00_axi_rdata,
    o_fnd,
    o_hall_one_hot_state,
    s00_axi_aclk,
    i_vaux6p,
    i_vaux6n,
    i_sw_enable_control,
    i_btn_u,
    i_btn_d,
    i_btn_r,
    i_btn_l,
    s00_axi_aresetn,
    i_hall_state,
    i_sw_rot_ccw,
    i_sw_display_gain,
    i_sw_bypass,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_bready,
    s00_axi_arvalid,
    s00_axi_rready,
    r_get_RPM_i_3,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_wstrb);
  output s00_axi_aresetn_0;
  output axi_awready_reg;
  output axi_wready_reg;
  output axi_arready_reg;
  output o_U_pos;
  output o_U_neg;
  output o_V_pos;
  output o_V_neg;
  output o_W_pos;
  output o_W_neg;
  output o_W_pwm;
  output s00_axi_bvalid;
  output s00_axi_rvalid;
  output o_get_RPM;
  output [3:0]o_fnd_sel;
  output [31:0]s00_axi_rdata;
  output [6:0]o_fnd;
  output [5:0]o_hall_one_hot_state;
  input s00_axi_aclk;
  input i_vaux6p;
  input i_vaux6n;
  input i_sw_enable_control;
  input i_btn_u;
  input i_btn_d;
  input i_btn_r;
  input i_btn_l;
  input s00_axi_aresetn;
  input [2:0]i_hall_state;
  input i_sw_rot_ccw;
  input i_sw_display_gain;
  input i_sw_bypass;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_bready;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input r_get_RPM_i_3;
  input [2:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input [2:0]s00_axi_araddr;
  input [3:0]s00_axi_wstrb;

  wire BLDC_MOTOR_DRIVER_n_0;
  wire BLDC_MOTOR_DRIVER_n_1;
  wire BLDC_MOTOR_DRIVER_n_10;
  wire BLDC_MOTOR_DRIVER_n_11;
  wire BLDC_MOTOR_DRIVER_n_12;
  wire BLDC_MOTOR_DRIVER_n_13;
  wire BLDC_MOTOR_DRIVER_n_14;
  wire BLDC_MOTOR_DRIVER_n_2;
  wire BLDC_MOTOR_DRIVER_n_3;
  wire BLDC_MOTOR_DRIVER_n_4;
  wire BLDC_MOTOR_DRIVER_n_5;
  wire BLDC_MOTOR_DRIVER_n_6;
  wire BLDC_MOTOR_DRIVER_n_7;
  wire BLDC_MOTOR_DRIVER_n_8;
  wire BLDC_MOTOR_DRIVER_n_9;
  wire BTN_I_GAIN_n_0;
  wire BTN_I_GAIN_n_10;
  wire BTN_I_GAIN_n_11;
  wire BTN_I_GAIN_n_12;
  wire BTN_I_GAIN_n_13;
  wire BTN_I_GAIN_n_14;
  wire BTN_I_GAIN_n_15;
  wire BTN_I_GAIN_n_16;
  wire BTN_I_GAIN_n_17;
  wire BTN_I_GAIN_n_24;
  wire BTN_I_GAIN_n_25;
  wire BTN_I_GAIN_n_9;
  wire BTN_P_GAIN_n_1;
  wire BTN_P_GAIN_n_10;
  wire BTN_P_GAIN_n_11;
  wire BTN_P_GAIN_n_16;
  wire BTN_P_GAIN_n_17;
  wire BTN_P_GAIN_n_18;
  wire BTN_P_GAIN_n_3;
  wire BTN_P_GAIN_n_4;
  wire BTN_P_GAIN_n_5;
  wire BTN_P_GAIN_n_6;
  wire BTN_P_GAIN_n_7;
  wire BTN_P_GAIN_n_8;
  wire BTN_P_GAIN_n_9;
  wire \FND_SELECT/w_delay_counter_posedge ;
  wire POT_n_10;
  wire POT_n_11;
  wire POT_n_12;
  wire POT_n_13;
  wire POT_n_14;
  wire POT_n_15;
  wire POT_n_16;
  wire POT_n_17;
  wire POT_n_4;
  wire POT_n_5;
  wire POT_n_6;
  wire POT_n_7;
  wire POT_n_9;
  wire axi_arready_reg;
  wire axi_awready_reg;
  wire axi_wready_reg;
  wire [11:0]data5;
  wire i_btn_d;
  wire i_btn_l;
  wire i_btn_r;
  wire i_btn_u;
  wire [2:0]i_hall_state;
  wire i_sw_bypass;
  wire i_sw_display_gain;
  wire i_sw_enable_control;
  wire i_sw_rot_ccw;
  wire i_vaux6n;
  wire i_vaux6p;
  wire myBLDC_Controller_v1_0_S00_AXI_inst_n_10;
  wire myBLDC_Controller_v1_0_S00_AXI_inst_n_11;
  wire myBLDC_Controller_v1_0_S00_AXI_inst_n_12;
  wire myBLDC_Controller_v1_0_S00_AXI_inst_n_13;
  wire myBLDC_Controller_v1_0_S00_AXI_inst_n_14;
  wire myBLDC_Controller_v1_0_S00_AXI_inst_n_15;
  wire myBLDC_Controller_v1_0_S00_AXI_inst_n_16;
  wire myBLDC_Controller_v1_0_S00_AXI_inst_n_17;
  wire myBLDC_Controller_v1_0_S00_AXI_inst_n_18;
  wire myBLDC_Controller_v1_0_S00_AXI_inst_n_19;
  wire myBLDC_Controller_v1_0_S00_AXI_inst_n_6;
  wire myBLDC_Controller_v1_0_S00_AXI_inst_n_7;
  wire myBLDC_Controller_v1_0_S00_AXI_inst_n_8;
  wire myBLDC_Controller_v1_0_S00_AXI_inst_n_9;
  wire o_U_neg;
  wire o_U_pos;
  wire o_V_neg;
  wire o_V_pos;
  wire o_W_neg;
  wire o_W_pos;
  wire o_W_pwm;
  wire [6:0]o_fnd;
  wire [3:0]o_fnd_sel;
  wire o_get_RPM;
  wire [5:0]o_hall_one_hot_state;
  wire p_0_in0;
  wire [13:0]r_error;
  wire r_get_RPM_i_3;
  wire [3:0]r_hex_value;
  wire [23:0]r_i_term;
  wire s00_axi_aclk;
  wire [2:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_aresetn_0;
  wire s00_axi_arvalid;
  wire [2:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [7:0]w_i_gain;
  wire [8:2]w_i_gain_bcd;
  wire [1:1]w_p_gain;
  wire [6:2]w_p_gain_bcd;
  wire [31:0]w_time_count;
  wire w_valid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_BLDC_Controller BLDC_MOTOR_DRIVER
       (.AR(s00_axi_aresetn_0),
        .E(BTN_P_GAIN_n_1),
        .P({BLDC_MOTOR_DRIVER_n_0,BLDC_MOTOR_DRIVER_n_1,BLDC_MOTOR_DRIVER_n_2,BLDC_MOTOR_DRIVER_n_3,BLDC_MOTOR_DRIVER_n_4,BLDC_MOTOR_DRIVER_n_5,BLDC_MOTOR_DRIVER_n_6,BLDC_MOTOR_DRIVER_n_7,BLDC_MOTOR_DRIVER_n_8,BLDC_MOTOR_DRIVER_n_9,BLDC_MOTOR_DRIVER_n_10,BLDC_MOTOR_DRIVER_n_11,BLDC_MOTOR_DRIVER_n_12,BLDC_MOTOR_DRIVER_n_13,BLDC_MOTOR_DRIVER_n_14}),
        .Q(r_i_term),
        .data5(data5),
        .i_hall_state(i_hall_state),
        .i_sw_bypass(i_sw_bypass),
        .i_sw_enable_control(i_sw_enable_control),
        .i_sw_rot_ccw(i_sw_rot_ccw),
        .o_U_neg(o_U_neg),
        .o_U_pos(o_U_pos),
        .o_V_neg(o_V_neg),
        .o_V_pos(o_V_pos),
        .o_W_neg(o_W_neg),
        .o_W_pos(o_W_pos),
        .o_W_pwm(o_W_pwm),
        .o_get_RPM(o_get_RPM),
        .o_hall_one_hot_state(o_hall_one_hot_state),
        .\r_RPM_reg[0] ({w_valid,myBLDC_Controller_v1_0_S00_AXI_inst_n_6,myBLDC_Controller_v1_0_S00_AXI_inst_n_7,myBLDC_Controller_v1_0_S00_AXI_inst_n_8,myBLDC_Controller_v1_0_S00_AXI_inst_n_9,myBLDC_Controller_v1_0_S00_AXI_inst_n_10,myBLDC_Controller_v1_0_S00_AXI_inst_n_11,myBLDC_Controller_v1_0_S00_AXI_inst_n_12,myBLDC_Controller_v1_0_S00_AXI_inst_n_13,myBLDC_Controller_v1_0_S00_AXI_inst_n_14,myBLDC_Controller_v1_0_S00_AXI_inst_n_15,myBLDC_Controller_v1_0_S00_AXI_inst_n_16,myBLDC_Controller_v1_0_S00_AXI_inst_n_17,myBLDC_Controller_v1_0_S00_AXI_inst_n_18}),
        .\r_error_reg[13] (r_error),
        .r_get_RPM_i_3(r_get_RPM_i_3),
        .\r_i_gain_reg[7] (w_i_gain),
        .r_integral_component2(BTN_I_GAIN_n_0),
        .r_integral_component2_0({BTN_I_GAIN_n_9,BTN_I_GAIN_n_10,BTN_I_GAIN_n_11,BTN_I_GAIN_n_12,BTN_I_GAIN_n_13,BTN_I_GAIN_n_14,BTN_I_GAIN_n_15,BTN_I_GAIN_n_16}),
        .r_p_term_reg({BTN_P_GAIN_n_3,BTN_P_GAIN_n_4,BTN_P_GAIN_n_5,BTN_P_GAIN_n_6,BTN_P_GAIN_n_7,BTN_P_GAIN_n_8,BTN_P_GAIN_n_9,BTN_P_GAIN_n_10}),
        .\r_reference_reg[11] ({POT_n_5,POT_n_6,POT_n_7,p_0_in0,POT_n_9,POT_n_10,POT_n_11,POT_n_12,POT_n_13,POT_n_14,POT_n_15,POT_n_16}),
        .\r_time_count_reg[31] (myBLDC_Controller_v1_0_S00_AXI_inst_n_19),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .w_time_count(w_time_count));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Button2Gain BTN_I_GAIN
       (.E(BTN_I_GAIN_n_0),
        .Q(w_i_gain),
        .SR(s00_axi_aresetn_0),
        .i_btn_l(i_btn_l),
        .i_btn_r(i_btn_r),
        .i_sw_display_gain(i_sw_display_gain),
        .i_sw_display_gain_0(BTN_I_GAIN_n_25),
        .\r_gain_reg[1]_0 (BTN_I_GAIN_n_17),
        .\r_gain_reg[2]_0 (BTN_I_GAIN_n_24),
        .\r_gain_reg[5]_0 ({BTN_I_GAIN_n_9,BTN_I_GAIN_n_10,BTN_I_GAIN_n_11,BTN_I_GAIN_n_12,BTN_I_GAIN_n_13,BTN_I_GAIN_n_14,BTN_I_GAIN_n_15,BTN_I_GAIN_n_16}),
        .\r_hex_value[1]_i_3 (BTN_P_GAIN_n_16),
        .\r_hex_value[1]_i_3_0 (w_p_gain),
        .\r_hex_value_reg[3] (POT_n_17),
        .\r_hex_value_reg[3]_0 (o_fnd_sel[0]),
        .s00_axi_aclk(s00_axi_aclk),
        .w_delay_counter_posedge(\FND_SELECT/w_delay_counter_posedge ),
        .w_i_gain_bcd({w_i_gain_bcd[8:4],w_i_gain_bcd[2]}));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Button2Gain_0 BTN_P_GAIN
       (.E(BTN_P_GAIN_n_1),
        .Q(w_p_gain),
        .SR(s00_axi_aresetn_0),
        .i_btn_d(i_btn_d),
        .i_btn_u(i_btn_u),
        .i_sw_display_gain(i_sw_display_gain),
        .i_sw_display_gain_0(BTN_P_GAIN_n_17),
        .i_sw_display_gain_1(BTN_P_GAIN_n_18),
        .\r_gain_reg[0]_0 (BTN_P_GAIN_n_11),
        .\r_gain_reg[2]_0 ({w_p_gain_bcd[6],w_p_gain_bcd[4:2]}),
        .\r_gain_reg[2]_1 (BTN_P_GAIN_n_16),
        .\r_gain_reg[5]_0 ({BTN_P_GAIN_n_3,BTN_P_GAIN_n_4,BTN_P_GAIN_n_5,BTN_P_GAIN_n_6,BTN_P_GAIN_n_7,BTN_P_GAIN_n_8,BTN_P_GAIN_n_9,BTN_P_GAIN_n_10}),
        .\r_hex_value_reg[1] (POT_n_4),
        .\r_hex_value_reg[3] (o_fnd_sel[3]),
        .s00_axi_aclk(s00_axi_aclk),
        .w_delay_counter_posedge(\FND_SELECT/w_delay_counter_posedge ),
        .w_i_gain_bcd(w_i_gain_bcd[8]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fndControl FND_CTRL
       (.AR(s00_axi_aresetn_0),
        .D(r_hex_value),
        .E(\FND_SELECT/w_delay_counter_posedge ),
        .Q(o_fnd_sel),
        .o_fnd(o_fnd),
        .s00_axi_aclk(s00_axi_aclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_potentiometer POT
       (.AR(s00_axi_aresetn_0),
        .D(r_hex_value),
        .Q(o_fnd_sel),
        .i_sw_display_gain(i_sw_display_gain),
        .i_vaux6n(i_vaux6n),
        .i_vaux6p(i_vaux6p),
        .\r_hex_value_reg[0] (BTN_P_GAIN_n_11),
        .\r_hex_value_reg[1] (BTN_P_GAIN_n_17),
        .\r_hex_value_reg[1]_0 (BTN_I_GAIN_n_17),
        .\r_hex_value_reg[1]_1 (BTN_I_GAIN_n_24),
        .\r_hex_value_reg[1]_2 (w_i_gain[1:0]),
        .\r_hex_value_reg[2] ({w_p_gain_bcd[6],w_p_gain_bcd[4:2]}),
        .\r_hex_value_reg[3] (BTN_P_GAIN_n_18),
        .\r_hex_value_reg[3]_0 (BTN_I_GAIN_n_25),
        .\r_value_reg[11]_0 ({POT_n_5,POT_n_6,POT_n_7,p_0_in0,POT_n_9,POT_n_10,POT_n_11,POT_n_12,POT_n_13,POT_n_14,POT_n_15,POT_n_16}),
        .\r_value_reg[3]_0 (POT_n_17),
        .\r_value_reg[6]_0 (POT_n_4),
        .s00_axi_aclk(s00_axi_aclk),
        .w_i_gain_bcd({w_i_gain_bcd[7:4],w_i_gain_bcd[2]}));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myBLDC_Controller_v1_0_S00_AXI myBLDC_Controller_v1_0_S00_AXI_inst
       (.AR(s00_axi_aresetn_0),
        .P({BLDC_MOTOR_DRIVER_n_0,BLDC_MOTOR_DRIVER_n_1,BLDC_MOTOR_DRIVER_n_2,BLDC_MOTOR_DRIVER_n_3,BLDC_MOTOR_DRIVER_n_4,BLDC_MOTOR_DRIVER_n_5,BLDC_MOTOR_DRIVER_n_6,BLDC_MOTOR_DRIVER_n_7,BLDC_MOTOR_DRIVER_n_8,BLDC_MOTOR_DRIVER_n_9,BLDC_MOTOR_DRIVER_n_10,BLDC_MOTOR_DRIVER_n_11,BLDC_MOTOR_DRIVER_n_12,BLDC_MOTOR_DRIVER_n_13,BLDC_MOTOR_DRIVER_n_14}),
        .Q(r_i_term),
        .axi_arready_reg_0(axi_arready_reg),
        .axi_awready_reg_0(axi_awready_reg),
        .\axi_rdata_reg[11]_0 ({POT_n_5,POT_n_6,POT_n_7,p_0_in0,POT_n_9,POT_n_10,POT_n_11,POT_n_12,POT_n_13,POT_n_14,POT_n_15,POT_n_16}),
        .\axi_rdata_reg[13]_0 (r_error),
        .axi_wready_reg_0(axi_wready_reg),
        .data5(data5),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .\slv_reg0_reg[31]_0 ({w_valid,myBLDC_Controller_v1_0_S00_AXI_inst_n_6,myBLDC_Controller_v1_0_S00_AXI_inst_n_7,myBLDC_Controller_v1_0_S00_AXI_inst_n_8,myBLDC_Controller_v1_0_S00_AXI_inst_n_9,myBLDC_Controller_v1_0_S00_AXI_inst_n_10,myBLDC_Controller_v1_0_S00_AXI_inst_n_11,myBLDC_Controller_v1_0_S00_AXI_inst_n_12,myBLDC_Controller_v1_0_S00_AXI_inst_n_13,myBLDC_Controller_v1_0_S00_AXI_inst_n_14,myBLDC_Controller_v1_0_S00_AXI_inst_n_15,myBLDC_Controller_v1_0_S00_AXI_inst_n_16,myBLDC_Controller_v1_0_S00_AXI_inst_n_17,myBLDC_Controller_v1_0_S00_AXI_inst_n_18}),
        .\slv_reg0_reg[31]_1 (myBLDC_Controller_v1_0_S00_AXI_inst_n_19),
        .w_time_count(w_time_count));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myBLDC_Controller_v1_0_S00_AXI
   (axi_awready_reg_0,
    axi_wready_reg_0,
    axi_arready_reg_0,
    s00_axi_bvalid,
    s00_axi_rvalid,
    \slv_reg0_reg[31]_0 ,
    \slv_reg0_reg[31]_1 ,
    s00_axi_rdata,
    AR,
    s00_axi_aclk,
    \axi_rdata_reg[13]_0 ,
    data5,
    Q,
    P,
    \axi_rdata_reg[11]_0 ,
    w_time_count,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_bready,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_wstrb);
  output axi_awready_reg_0;
  output axi_wready_reg_0;
  output axi_arready_reg_0;
  output s00_axi_bvalid;
  output s00_axi_rvalid;
  output [13:0]\slv_reg0_reg[31]_0 ;
  output \slv_reg0_reg[31]_1 ;
  output [31:0]s00_axi_rdata;
  input [0:0]AR;
  input s00_axi_aclk;
  input [13:0]\axi_rdata_reg[13]_0 ;
  input [11:0]data5;
  input [23:0]Q;
  input [14:0]P;
  input [11:0]\axi_rdata_reg[11]_0 ;
  input [31:0]w_time_count;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_bready;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input s00_axi_aresetn;
  input [2:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input [2:0]s00_axi_araddr;
  input [3:0]s00_axi_wstrb;

  wire [0:0]AR;
  wire [14:0]P;
  wire [23:0]Q;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire \axi_araddr[4]_i_1_n_0 ;
  wire axi_arready0;
  wire axi_arready_reg_0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire \axi_awaddr[4]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_awready_reg_0;
  wire axi_bvalid_i_1_n_0;
  wire \axi_rdata[0]_i_2_n_0 ;
  wire \axi_rdata[0]_i_3_n_0 ;
  wire \axi_rdata[10]_i_2_n_0 ;
  wire \axi_rdata[10]_i_3_n_0 ;
  wire \axi_rdata[11]_i_2_n_0 ;
  wire \axi_rdata[11]_i_3_n_0 ;
  wire \axi_rdata[12]_i_2_n_0 ;
  wire \axi_rdata[12]_i_3_n_0 ;
  wire \axi_rdata[13]_i_2_n_0 ;
  wire \axi_rdata[13]_i_3_n_0 ;
  wire \axi_rdata[14]_i_2_n_0 ;
  wire \axi_rdata[14]_i_3_n_0 ;
  wire \axi_rdata[15]_i_2_n_0 ;
  wire \axi_rdata[15]_i_3_n_0 ;
  wire \axi_rdata[16]_i_2_n_0 ;
  wire \axi_rdata[16]_i_3_n_0 ;
  wire \axi_rdata[17]_i_2_n_0 ;
  wire \axi_rdata[17]_i_3_n_0 ;
  wire \axi_rdata[18]_i_2_n_0 ;
  wire \axi_rdata[18]_i_3_n_0 ;
  wire \axi_rdata[19]_i_2_n_0 ;
  wire \axi_rdata[19]_i_3_n_0 ;
  wire \axi_rdata[1]_i_2_n_0 ;
  wire \axi_rdata[1]_i_3_n_0 ;
  wire \axi_rdata[20]_i_2_n_0 ;
  wire \axi_rdata[20]_i_3_n_0 ;
  wire \axi_rdata[21]_i_2_n_0 ;
  wire \axi_rdata[21]_i_3_n_0 ;
  wire \axi_rdata[22]_i_2_n_0 ;
  wire \axi_rdata[22]_i_3_n_0 ;
  wire \axi_rdata[23]_i_2_n_0 ;
  wire \axi_rdata[23]_i_3_n_0 ;
  wire \axi_rdata[24]_i_2_n_0 ;
  wire \axi_rdata[24]_i_3_n_0 ;
  wire \axi_rdata[25]_i_2_n_0 ;
  wire \axi_rdata[25]_i_3_n_0 ;
  wire \axi_rdata[26]_i_2_n_0 ;
  wire \axi_rdata[26]_i_3_n_0 ;
  wire \axi_rdata[27]_i_2_n_0 ;
  wire \axi_rdata[27]_i_3_n_0 ;
  wire \axi_rdata[28]_i_2_n_0 ;
  wire \axi_rdata[28]_i_3_n_0 ;
  wire \axi_rdata[29]_i_2_n_0 ;
  wire \axi_rdata[29]_i_3_n_0 ;
  wire \axi_rdata[2]_i_2_n_0 ;
  wire \axi_rdata[2]_i_3_n_0 ;
  wire \axi_rdata[30]_i_2_n_0 ;
  wire \axi_rdata[30]_i_3_n_0 ;
  wire \axi_rdata[31]_i_2_n_0 ;
  wire \axi_rdata[31]_i_3_n_0 ;
  wire \axi_rdata[3]_i_2_n_0 ;
  wire \axi_rdata[3]_i_3_n_0 ;
  wire \axi_rdata[4]_i_2_n_0 ;
  wire \axi_rdata[4]_i_3_n_0 ;
  wire \axi_rdata[5]_i_2_n_0 ;
  wire \axi_rdata[5]_i_3_n_0 ;
  wire \axi_rdata[6]_i_2_n_0 ;
  wire \axi_rdata[6]_i_3_n_0 ;
  wire \axi_rdata[7]_i_2_n_0 ;
  wire \axi_rdata[7]_i_3_n_0 ;
  wire \axi_rdata[8]_i_2_n_0 ;
  wire \axi_rdata[8]_i_3_n_0 ;
  wire \axi_rdata[9]_i_2_n_0 ;
  wire \axi_rdata[9]_i_3_n_0 ;
  wire [11:0]\axi_rdata_reg[11]_0 ;
  wire [13:0]\axi_rdata_reg[13]_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire axi_wready_reg_0;
  wire [11:0]data5;
  wire [2:0]p_0_in;
  wire [31:7]p_1_in;
  wire [31:0]reg_data_out;
  wire s00_axi_aclk;
  wire [2:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [2:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [2:0]sel0;
  wire [13:0]\slv_reg0_reg[31]_0 ;
  wire \slv_reg0_reg[31]_1 ;
  wire \slv_reg0_reg_n_0_[13] ;
  wire \slv_reg0_reg_n_0_[14] ;
  wire \slv_reg0_reg_n_0_[15] ;
  wire \slv_reg0_reg_n_0_[16] ;
  wire \slv_reg0_reg_n_0_[17] ;
  wire \slv_reg0_reg_n_0_[18] ;
  wire \slv_reg0_reg_n_0_[19] ;
  wire \slv_reg0_reg_n_0_[20] ;
  wire \slv_reg0_reg_n_0_[21] ;
  wire \slv_reg0_reg_n_0_[22] ;
  wire \slv_reg0_reg_n_0_[23] ;
  wire \slv_reg0_reg_n_0_[24] ;
  wire \slv_reg0_reg_n_0_[25] ;
  wire \slv_reg0_reg_n_0_[26] ;
  wire \slv_reg0_reg_n_0_[27] ;
  wire \slv_reg0_reg_n_0_[28] ;
  wire \slv_reg0_reg_n_0_[29] ;
  wire \slv_reg0_reg_n_0_[30] ;
  wire [31:0]slv_reg7;
  wire \slv_reg7[15]_i_1_n_0 ;
  wire \slv_reg7[23]_i_1_n_0 ;
  wire \slv_reg7[31]_i_1_n_0 ;
  wire \slv_reg7[7]_i_1_n_0 ;
  wire slv_reg_rden__0;
  wire slv_reg_wren__0;
  wire [31:0]w_time_count;

  LUT6 #(
    .INIT(64'hF7FFC4CCC4CCC4CC)) 
    aw_en_i_1
       (.I0(s00_axi_awvalid),
        .I1(aw_en_reg_n_0),
        .I2(axi_awready_reg_0),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(AR));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(axi_arready_reg_0),
        .I3(sel0[0]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(axi_arready_reg_0),
        .I3(sel0[1]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[4]_i_1 
       (.I0(s00_axi_araddr[2]),
        .I1(s00_axi_arvalid),
        .I2(axi_arready_reg_0),
        .I3(sel0[2]),
        .O(\axi_araddr[4]_i_1_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(sel0[0]),
        .R(AR));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(sel0[1]),
        .R(AR));
  FDRE \axi_araddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[4]_i_1_n_0 ),
        .Q(sel0[2]),
        .R(AR));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(axi_arready_reg_0),
        .R(AR));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_wvalid),
        .I2(axi_awready_reg_0),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_awvalid),
        .I5(p_0_in[0]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_wvalid),
        .I2(axi_awready_reg_0),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_awvalid),
        .I5(p_0_in[1]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[4]_i_1 
       (.I0(s00_axi_awaddr[2]),
        .I1(s00_axi_wvalid),
        .I2(axi_awready_reg_0),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_awvalid),
        .I5(p_0_in[2]),
        .O(\axi_awaddr[4]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(p_0_in[0]),
        .R(AR));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(p_0_in[1]),
        .R(AR));
  FDRE \axi_awaddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[4]_i_1_n_0 ),
        .Q(p_0_in[2]),
        .R(AR));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    axi_awready_i_1
       (.I0(s00_axi_wvalid),
        .I1(axi_awready_reg_0),
        .I2(aw_en_reg_n_0),
        .I3(s00_axi_awvalid),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(axi_awready_reg_0),
        .R(AR));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(axi_awready_reg_0),
        .I3(axi_wready_reg_0),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(AR));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_2 
       (.I0(P[0]),
        .I1(\axi_rdata_reg[11]_0 [0]),
        .I2(sel0[1]),
        .I3(w_time_count[0]),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg[31]_0 [0]),
        .O(\axi_rdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_3 
       (.I0(slv_reg7[0]),
        .I1(\axi_rdata_reg[13]_0 [0]),
        .I2(sel0[1]),
        .I3(data5[0]),
        .I4(sel0[0]),
        .I5(Q[0]),
        .O(\axi_rdata[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_2 
       (.I0(P[10]),
        .I1(\axi_rdata_reg[11]_0 [10]),
        .I2(sel0[1]),
        .I3(w_time_count[10]),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg[31]_0 [10]),
        .O(\axi_rdata[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_3 
       (.I0(slv_reg7[10]),
        .I1(\axi_rdata_reg[13]_0 [10]),
        .I2(sel0[1]),
        .I3(data5[10]),
        .I4(sel0[0]),
        .I5(Q[10]),
        .O(\axi_rdata[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_2 
       (.I0(P[11]),
        .I1(\axi_rdata_reg[11]_0 [11]),
        .I2(sel0[1]),
        .I3(w_time_count[11]),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg[31]_0 [11]),
        .O(\axi_rdata[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_3 
       (.I0(slv_reg7[11]),
        .I1(\axi_rdata_reg[13]_0 [11]),
        .I2(sel0[1]),
        .I3(data5[11]),
        .I4(sel0[0]),
        .I5(Q[11]),
        .O(\axi_rdata[11]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[12]_i_2 
       (.I0(P[12]),
        .I1(sel0[1]),
        .I2(w_time_count[12]),
        .I3(sel0[0]),
        .I4(\slv_reg0_reg[31]_0 [12]),
        .O(\axi_rdata[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[12]_i_3 
       (.I0(slv_reg7[12]),
        .I1(\axi_rdata_reg[13]_0 [12]),
        .I2(sel0[1]),
        .I3(Q[12]),
        .I4(sel0[0]),
        .O(\axi_rdata[12]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[13]_i_2 
       (.I0(P[13]),
        .I1(sel0[1]),
        .I2(w_time_count[13]),
        .I3(sel0[0]),
        .I4(\slv_reg0_reg_n_0_[13] ),
        .O(\axi_rdata[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[13]_i_3 
       (.I0(slv_reg7[13]),
        .I1(\axi_rdata_reg[13]_0 [13]),
        .I2(sel0[1]),
        .I3(Q[13]),
        .I4(sel0[0]),
        .O(\axi_rdata[13]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[14]_i_2 
       (.I0(P[14]),
        .I1(sel0[1]),
        .I2(w_time_count[14]),
        .I3(sel0[0]),
        .I4(\slv_reg0_reg_n_0_[14] ),
        .O(\axi_rdata[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[14]_i_3 
       (.I0(slv_reg7[14]),
        .I1(\axi_rdata_reg[13]_0 [13]),
        .I2(sel0[1]),
        .I3(Q[14]),
        .I4(sel0[0]),
        .O(\axi_rdata[14]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[15]_i_2 
       (.I0(P[14]),
        .I1(sel0[1]),
        .I2(w_time_count[15]),
        .I3(sel0[0]),
        .I4(\slv_reg0_reg_n_0_[15] ),
        .O(\axi_rdata[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[15]_i_3 
       (.I0(slv_reg7[15]),
        .I1(\axi_rdata_reg[13]_0 [13]),
        .I2(sel0[1]),
        .I3(Q[15]),
        .I4(sel0[0]),
        .O(\axi_rdata[15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[16]_i_2 
       (.I0(P[14]),
        .I1(sel0[1]),
        .I2(w_time_count[16]),
        .I3(sel0[0]),
        .I4(\slv_reg0_reg_n_0_[16] ),
        .O(\axi_rdata[16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[16]_i_3 
       (.I0(slv_reg7[16]),
        .I1(\axi_rdata_reg[13]_0 [13]),
        .I2(sel0[1]),
        .I3(Q[16]),
        .I4(sel0[0]),
        .O(\axi_rdata[16]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[17]_i_2 
       (.I0(P[14]),
        .I1(sel0[1]),
        .I2(w_time_count[17]),
        .I3(sel0[0]),
        .I4(\slv_reg0_reg_n_0_[17] ),
        .O(\axi_rdata[17]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[17]_i_3 
       (.I0(slv_reg7[17]),
        .I1(\axi_rdata_reg[13]_0 [13]),
        .I2(sel0[1]),
        .I3(Q[17]),
        .I4(sel0[0]),
        .O(\axi_rdata[17]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[18]_i_2 
       (.I0(P[14]),
        .I1(sel0[1]),
        .I2(w_time_count[18]),
        .I3(sel0[0]),
        .I4(\slv_reg0_reg_n_0_[18] ),
        .O(\axi_rdata[18]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[18]_i_3 
       (.I0(slv_reg7[18]),
        .I1(\axi_rdata_reg[13]_0 [13]),
        .I2(sel0[1]),
        .I3(Q[18]),
        .I4(sel0[0]),
        .O(\axi_rdata[18]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[19]_i_2 
       (.I0(P[14]),
        .I1(sel0[1]),
        .I2(w_time_count[19]),
        .I3(sel0[0]),
        .I4(\slv_reg0_reg_n_0_[19] ),
        .O(\axi_rdata[19]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[19]_i_3 
       (.I0(slv_reg7[19]),
        .I1(\axi_rdata_reg[13]_0 [13]),
        .I2(sel0[1]),
        .I3(Q[19]),
        .I4(sel0[0]),
        .O(\axi_rdata[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_2 
       (.I0(P[1]),
        .I1(\axi_rdata_reg[11]_0 [1]),
        .I2(sel0[1]),
        .I3(w_time_count[1]),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg[31]_0 [1]),
        .O(\axi_rdata[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_3 
       (.I0(slv_reg7[1]),
        .I1(\axi_rdata_reg[13]_0 [1]),
        .I2(sel0[1]),
        .I3(data5[1]),
        .I4(sel0[0]),
        .I5(Q[1]),
        .O(\axi_rdata[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[20]_i_2 
       (.I0(P[14]),
        .I1(sel0[1]),
        .I2(w_time_count[20]),
        .I3(sel0[0]),
        .I4(\slv_reg0_reg_n_0_[20] ),
        .O(\axi_rdata[20]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[20]_i_3 
       (.I0(slv_reg7[20]),
        .I1(\axi_rdata_reg[13]_0 [13]),
        .I2(sel0[1]),
        .I3(Q[20]),
        .I4(sel0[0]),
        .O(\axi_rdata[20]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[21]_i_2 
       (.I0(P[14]),
        .I1(sel0[1]),
        .I2(w_time_count[21]),
        .I3(sel0[0]),
        .I4(\slv_reg0_reg_n_0_[21] ),
        .O(\axi_rdata[21]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[21]_i_3 
       (.I0(slv_reg7[21]),
        .I1(\axi_rdata_reg[13]_0 [13]),
        .I2(sel0[1]),
        .I3(Q[21]),
        .I4(sel0[0]),
        .O(\axi_rdata[21]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[22]_i_2 
       (.I0(P[14]),
        .I1(sel0[1]),
        .I2(w_time_count[22]),
        .I3(sel0[0]),
        .I4(\slv_reg0_reg_n_0_[22] ),
        .O(\axi_rdata[22]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[22]_i_3 
       (.I0(slv_reg7[22]),
        .I1(\axi_rdata_reg[13]_0 [13]),
        .I2(sel0[1]),
        .I3(Q[22]),
        .I4(sel0[0]),
        .O(\axi_rdata[22]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[23]_i_2 
       (.I0(P[14]),
        .I1(sel0[1]),
        .I2(w_time_count[23]),
        .I3(sel0[0]),
        .I4(\slv_reg0_reg_n_0_[23] ),
        .O(\axi_rdata[23]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[23]_i_3 
       (.I0(slv_reg7[23]),
        .I1(\axi_rdata_reg[13]_0 [13]),
        .I2(sel0[1]),
        .I3(Q[23]),
        .I4(sel0[0]),
        .O(\axi_rdata[23]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[24]_i_2 
       (.I0(P[14]),
        .I1(sel0[1]),
        .I2(w_time_count[24]),
        .I3(sel0[0]),
        .I4(\slv_reg0_reg_n_0_[24] ),
        .O(\axi_rdata[24]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[24]_i_3 
       (.I0(slv_reg7[24]),
        .I1(\axi_rdata_reg[13]_0 [13]),
        .I2(sel0[1]),
        .I3(Q[23]),
        .I4(sel0[0]),
        .O(\axi_rdata[24]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[25]_i_2 
       (.I0(P[14]),
        .I1(sel0[1]),
        .I2(w_time_count[25]),
        .I3(sel0[0]),
        .I4(\slv_reg0_reg_n_0_[25] ),
        .O(\axi_rdata[25]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[25]_i_3 
       (.I0(slv_reg7[25]),
        .I1(\axi_rdata_reg[13]_0 [13]),
        .I2(sel0[1]),
        .I3(Q[23]),
        .I4(sel0[0]),
        .O(\axi_rdata[25]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[26]_i_2 
       (.I0(P[14]),
        .I1(sel0[1]),
        .I2(w_time_count[26]),
        .I3(sel0[0]),
        .I4(\slv_reg0_reg_n_0_[26] ),
        .O(\axi_rdata[26]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[26]_i_3 
       (.I0(slv_reg7[26]),
        .I1(\axi_rdata_reg[13]_0 [13]),
        .I2(sel0[1]),
        .I3(Q[23]),
        .I4(sel0[0]),
        .O(\axi_rdata[26]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[27]_i_2 
       (.I0(P[14]),
        .I1(sel0[1]),
        .I2(w_time_count[27]),
        .I3(sel0[0]),
        .I4(\slv_reg0_reg_n_0_[27] ),
        .O(\axi_rdata[27]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[27]_i_3 
       (.I0(slv_reg7[27]),
        .I1(\axi_rdata_reg[13]_0 [13]),
        .I2(sel0[1]),
        .I3(Q[23]),
        .I4(sel0[0]),
        .O(\axi_rdata[27]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[28]_i_2 
       (.I0(P[14]),
        .I1(sel0[1]),
        .I2(w_time_count[28]),
        .I3(sel0[0]),
        .I4(\slv_reg0_reg_n_0_[28] ),
        .O(\axi_rdata[28]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[28]_i_3 
       (.I0(slv_reg7[28]),
        .I1(\axi_rdata_reg[13]_0 [13]),
        .I2(sel0[1]),
        .I3(Q[23]),
        .I4(sel0[0]),
        .O(\axi_rdata[28]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[29]_i_2 
       (.I0(P[14]),
        .I1(sel0[1]),
        .I2(w_time_count[29]),
        .I3(sel0[0]),
        .I4(\slv_reg0_reg_n_0_[29] ),
        .O(\axi_rdata[29]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[29]_i_3 
       (.I0(slv_reg7[29]),
        .I1(\axi_rdata_reg[13]_0 [13]),
        .I2(sel0[1]),
        .I3(Q[23]),
        .I4(sel0[0]),
        .O(\axi_rdata[29]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_2 
       (.I0(P[2]),
        .I1(\axi_rdata_reg[11]_0 [2]),
        .I2(sel0[1]),
        .I3(w_time_count[2]),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg[31]_0 [2]),
        .O(\axi_rdata[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_3 
       (.I0(slv_reg7[2]),
        .I1(\axi_rdata_reg[13]_0 [2]),
        .I2(sel0[1]),
        .I3(data5[2]),
        .I4(sel0[0]),
        .I5(Q[2]),
        .O(\axi_rdata[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[30]_i_2 
       (.I0(P[14]),
        .I1(sel0[1]),
        .I2(w_time_count[30]),
        .I3(sel0[0]),
        .I4(\slv_reg0_reg_n_0_[30] ),
        .O(\axi_rdata[30]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[30]_i_3 
       (.I0(slv_reg7[30]),
        .I1(\axi_rdata_reg[13]_0 [13]),
        .I2(sel0[1]),
        .I3(Q[23]),
        .I4(sel0[0]),
        .O(\axi_rdata[30]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[31]_i_2 
       (.I0(P[14]),
        .I1(sel0[1]),
        .I2(w_time_count[31]),
        .I3(sel0[0]),
        .I4(\slv_reg0_reg[31]_0 [13]),
        .O(\axi_rdata[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[31]_i_3 
       (.I0(slv_reg7[31]),
        .I1(\axi_rdata_reg[13]_0 [13]),
        .I2(sel0[1]),
        .I3(Q[23]),
        .I4(sel0[0]),
        .O(\axi_rdata[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_2 
       (.I0(P[3]),
        .I1(\axi_rdata_reg[11]_0 [3]),
        .I2(sel0[1]),
        .I3(w_time_count[3]),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg[31]_0 [3]),
        .O(\axi_rdata[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_3 
       (.I0(slv_reg7[3]),
        .I1(\axi_rdata_reg[13]_0 [3]),
        .I2(sel0[1]),
        .I3(data5[3]),
        .I4(sel0[0]),
        .I5(Q[3]),
        .O(\axi_rdata[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_2 
       (.I0(P[4]),
        .I1(\axi_rdata_reg[11]_0 [4]),
        .I2(sel0[1]),
        .I3(w_time_count[4]),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg[31]_0 [4]),
        .O(\axi_rdata[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_3 
       (.I0(slv_reg7[4]),
        .I1(\axi_rdata_reg[13]_0 [4]),
        .I2(sel0[1]),
        .I3(data5[4]),
        .I4(sel0[0]),
        .I5(Q[4]),
        .O(\axi_rdata[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_2 
       (.I0(P[5]),
        .I1(\axi_rdata_reg[11]_0 [5]),
        .I2(sel0[1]),
        .I3(w_time_count[5]),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg[31]_0 [5]),
        .O(\axi_rdata[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_3 
       (.I0(slv_reg7[5]),
        .I1(\axi_rdata_reg[13]_0 [5]),
        .I2(sel0[1]),
        .I3(data5[5]),
        .I4(sel0[0]),
        .I5(Q[5]),
        .O(\axi_rdata[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_2 
       (.I0(P[6]),
        .I1(\axi_rdata_reg[11]_0 [6]),
        .I2(sel0[1]),
        .I3(w_time_count[6]),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg[31]_0 [6]),
        .O(\axi_rdata[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_3 
       (.I0(slv_reg7[6]),
        .I1(\axi_rdata_reg[13]_0 [6]),
        .I2(sel0[1]),
        .I3(data5[6]),
        .I4(sel0[0]),
        .I5(Q[6]),
        .O(\axi_rdata[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_2 
       (.I0(P[7]),
        .I1(\axi_rdata_reg[11]_0 [7]),
        .I2(sel0[1]),
        .I3(w_time_count[7]),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg[31]_0 [7]),
        .O(\axi_rdata[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_3 
       (.I0(slv_reg7[7]),
        .I1(\axi_rdata_reg[13]_0 [7]),
        .I2(sel0[1]),
        .I3(data5[7]),
        .I4(sel0[0]),
        .I5(Q[7]),
        .O(\axi_rdata[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_2 
       (.I0(P[8]),
        .I1(\axi_rdata_reg[11]_0 [8]),
        .I2(sel0[1]),
        .I3(w_time_count[8]),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg[31]_0 [8]),
        .O(\axi_rdata[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_3 
       (.I0(slv_reg7[8]),
        .I1(\axi_rdata_reg[13]_0 [8]),
        .I2(sel0[1]),
        .I3(data5[8]),
        .I4(sel0[0]),
        .I5(Q[8]),
        .O(\axi_rdata[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_2 
       (.I0(P[9]),
        .I1(\axi_rdata_reg[11]_0 [9]),
        .I2(sel0[1]),
        .I3(w_time_count[9]),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg[31]_0 [9]),
        .O(\axi_rdata[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_3 
       (.I0(slv_reg7[9]),
        .I1(\axi_rdata_reg[13]_0 [9]),
        .I2(sel0[1]),
        .I3(data5[9]),
        .I4(sel0[0]),
        .I5(Q[9]),
        .O(\axi_rdata[9]_i_3_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(AR));
  MUXF7 \axi_rdata_reg[0]_i_1 
       (.I0(\axi_rdata[0]_i_2_n_0 ),
        .I1(\axi_rdata[0]_i_3_n_0 ),
        .O(reg_data_out[0]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(AR));
  MUXF7 \axi_rdata_reg[10]_i_1 
       (.I0(\axi_rdata[10]_i_2_n_0 ),
        .I1(\axi_rdata[10]_i_3_n_0 ),
        .O(reg_data_out[10]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(AR));
  MUXF7 \axi_rdata_reg[11]_i_1 
       (.I0(\axi_rdata[11]_i_2_n_0 ),
        .I1(\axi_rdata[11]_i_3_n_0 ),
        .O(reg_data_out[11]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(AR));
  MUXF7 \axi_rdata_reg[12]_i_1 
       (.I0(\axi_rdata[12]_i_2_n_0 ),
        .I1(\axi_rdata[12]_i_3_n_0 ),
        .O(reg_data_out[12]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(AR));
  MUXF7 \axi_rdata_reg[13]_i_1 
       (.I0(\axi_rdata[13]_i_2_n_0 ),
        .I1(\axi_rdata[13]_i_3_n_0 ),
        .O(reg_data_out[13]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(AR));
  MUXF7 \axi_rdata_reg[14]_i_1 
       (.I0(\axi_rdata[14]_i_2_n_0 ),
        .I1(\axi_rdata[14]_i_3_n_0 ),
        .O(reg_data_out[14]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(AR));
  MUXF7 \axi_rdata_reg[15]_i_1 
       (.I0(\axi_rdata[15]_i_2_n_0 ),
        .I1(\axi_rdata[15]_i_3_n_0 ),
        .O(reg_data_out[15]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(AR));
  MUXF7 \axi_rdata_reg[16]_i_1 
       (.I0(\axi_rdata[16]_i_2_n_0 ),
        .I1(\axi_rdata[16]_i_3_n_0 ),
        .O(reg_data_out[16]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(AR));
  MUXF7 \axi_rdata_reg[17]_i_1 
       (.I0(\axi_rdata[17]_i_2_n_0 ),
        .I1(\axi_rdata[17]_i_3_n_0 ),
        .O(reg_data_out[17]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(AR));
  MUXF7 \axi_rdata_reg[18]_i_1 
       (.I0(\axi_rdata[18]_i_2_n_0 ),
        .I1(\axi_rdata[18]_i_3_n_0 ),
        .O(reg_data_out[18]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(AR));
  MUXF7 \axi_rdata_reg[19]_i_1 
       (.I0(\axi_rdata[19]_i_2_n_0 ),
        .I1(\axi_rdata[19]_i_3_n_0 ),
        .O(reg_data_out[19]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(AR));
  MUXF7 \axi_rdata_reg[1]_i_1 
       (.I0(\axi_rdata[1]_i_2_n_0 ),
        .I1(\axi_rdata[1]_i_3_n_0 ),
        .O(reg_data_out[1]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(AR));
  MUXF7 \axi_rdata_reg[20]_i_1 
       (.I0(\axi_rdata[20]_i_2_n_0 ),
        .I1(\axi_rdata[20]_i_3_n_0 ),
        .O(reg_data_out[20]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(AR));
  MUXF7 \axi_rdata_reg[21]_i_1 
       (.I0(\axi_rdata[21]_i_2_n_0 ),
        .I1(\axi_rdata[21]_i_3_n_0 ),
        .O(reg_data_out[21]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(AR));
  MUXF7 \axi_rdata_reg[22]_i_1 
       (.I0(\axi_rdata[22]_i_2_n_0 ),
        .I1(\axi_rdata[22]_i_3_n_0 ),
        .O(reg_data_out[22]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(AR));
  MUXF7 \axi_rdata_reg[23]_i_1 
       (.I0(\axi_rdata[23]_i_2_n_0 ),
        .I1(\axi_rdata[23]_i_3_n_0 ),
        .O(reg_data_out[23]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(AR));
  MUXF7 \axi_rdata_reg[24]_i_1 
       (.I0(\axi_rdata[24]_i_2_n_0 ),
        .I1(\axi_rdata[24]_i_3_n_0 ),
        .O(reg_data_out[24]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(AR));
  MUXF7 \axi_rdata_reg[25]_i_1 
       (.I0(\axi_rdata[25]_i_2_n_0 ),
        .I1(\axi_rdata[25]_i_3_n_0 ),
        .O(reg_data_out[25]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(AR));
  MUXF7 \axi_rdata_reg[26]_i_1 
       (.I0(\axi_rdata[26]_i_2_n_0 ),
        .I1(\axi_rdata[26]_i_3_n_0 ),
        .O(reg_data_out[26]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(AR));
  MUXF7 \axi_rdata_reg[27]_i_1 
       (.I0(\axi_rdata[27]_i_2_n_0 ),
        .I1(\axi_rdata[27]_i_3_n_0 ),
        .O(reg_data_out[27]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(AR));
  MUXF7 \axi_rdata_reg[28]_i_1 
       (.I0(\axi_rdata[28]_i_2_n_0 ),
        .I1(\axi_rdata[28]_i_3_n_0 ),
        .O(reg_data_out[28]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(AR));
  MUXF7 \axi_rdata_reg[29]_i_1 
       (.I0(\axi_rdata[29]_i_2_n_0 ),
        .I1(\axi_rdata[29]_i_3_n_0 ),
        .O(reg_data_out[29]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(AR));
  MUXF7 \axi_rdata_reg[2]_i_1 
       (.I0(\axi_rdata[2]_i_2_n_0 ),
        .I1(\axi_rdata[2]_i_3_n_0 ),
        .O(reg_data_out[2]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(AR));
  MUXF7 \axi_rdata_reg[30]_i_1 
       (.I0(\axi_rdata[30]_i_2_n_0 ),
        .I1(\axi_rdata[30]_i_3_n_0 ),
        .O(reg_data_out[30]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(AR));
  MUXF7 \axi_rdata_reg[31]_i_1 
       (.I0(\axi_rdata[31]_i_2_n_0 ),
        .I1(\axi_rdata[31]_i_3_n_0 ),
        .O(reg_data_out[31]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(AR));
  MUXF7 \axi_rdata_reg[3]_i_1 
       (.I0(\axi_rdata[3]_i_2_n_0 ),
        .I1(\axi_rdata[3]_i_3_n_0 ),
        .O(reg_data_out[3]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(AR));
  MUXF7 \axi_rdata_reg[4]_i_1 
       (.I0(\axi_rdata[4]_i_2_n_0 ),
        .I1(\axi_rdata[4]_i_3_n_0 ),
        .O(reg_data_out[4]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(AR));
  MUXF7 \axi_rdata_reg[5]_i_1 
       (.I0(\axi_rdata[5]_i_2_n_0 ),
        .I1(\axi_rdata[5]_i_3_n_0 ),
        .O(reg_data_out[5]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(AR));
  MUXF7 \axi_rdata_reg[6]_i_1 
       (.I0(\axi_rdata[6]_i_2_n_0 ),
        .I1(\axi_rdata[6]_i_3_n_0 ),
        .O(reg_data_out[6]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(AR));
  MUXF7 \axi_rdata_reg[7]_i_1 
       (.I0(\axi_rdata[7]_i_2_n_0 ),
        .I1(\axi_rdata[7]_i_3_n_0 ),
        .O(reg_data_out[7]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(AR));
  MUXF7 \axi_rdata_reg[8]_i_1 
       (.I0(\axi_rdata[8]_i_2_n_0 ),
        .I1(\axi_rdata[8]_i_3_n_0 ),
        .O(reg_data_out[8]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(AR));
  MUXF7 \axi_rdata_reg[9]_i_1 
       (.I0(\axi_rdata[9]_i_2_n_0 ),
        .I1(\axi_rdata[9]_i_3_n_0 ),
        .O(reg_data_out[9]),
        .S(sel0[2]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(axi_arready_reg_0),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(AR));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    axi_wready_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(axi_wready_reg_0),
        .I3(aw_en_reg_n_0),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(axi_wready_reg_0),
        .R(AR));
  LUT2 #(
    .INIT(4'hB)) 
    \r_time_count[0]_i_1 
       (.I0(\slv_reg0_reg[31]_0 [13]),
        .I1(s00_axi_aresetn),
        .O(\slv_reg0_reg[31]_1 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    \slv_reg0[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[1]),
        .O(p_1_in[15]));
  LUT5 #(
    .INIT(32'h00020000)) 
    \slv_reg0[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[2]),
        .O(p_1_in[23]));
  LUT5 #(
    .INIT(32'h00020000)) 
    \slv_reg0[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[3]),
        .O(p_1_in[31]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg0[31]_i_2 
       (.I0(axi_wready_reg_0),
        .I1(axi_awready_reg_0),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .O(slv_reg_wren__0));
  LUT5 #(
    .INIT(32'h00020000)) 
    \slv_reg0[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[0]),
        .O(p_1_in[7]));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg0_reg[31]_0 [0]),
        .R(AR));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg0_reg[31]_0 [10]),
        .R(AR));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg0_reg[31]_0 [11]),
        .R(AR));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg0_reg[31]_0 [12]),
        .R(AR));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg0_reg_n_0_[13] ),
        .R(AR));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg0_reg_n_0_[14] ),
        .R(AR));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg0_reg_n_0_[15] ),
        .R(AR));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg0_reg_n_0_[16] ),
        .R(AR));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg0_reg_n_0_[17] ),
        .R(AR));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg0_reg_n_0_[18] ),
        .R(AR));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg0_reg_n_0_[19] ),
        .R(AR));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg0_reg[31]_0 [1]),
        .R(AR));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg0_reg_n_0_[20] ),
        .R(AR));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg0_reg_n_0_[21] ),
        .R(AR));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg0_reg_n_0_[22] ),
        .R(AR));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg0_reg_n_0_[23] ),
        .R(AR));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg0_reg_n_0_[24] ),
        .R(AR));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg0_reg_n_0_[25] ),
        .R(AR));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg0_reg_n_0_[26] ),
        .R(AR));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg0_reg_n_0_[27] ),
        .R(AR));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg0_reg_n_0_[28] ),
        .R(AR));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg0_reg_n_0_[29] ),
        .R(AR));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg0_reg[31]_0 [2]),
        .R(AR));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg0_reg_n_0_[30] ),
        .R(AR));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg0_reg[31]_0 [13]),
        .R(AR));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg0_reg[31]_0 [3]),
        .R(AR));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg0_reg[31]_0 [4]),
        .R(AR));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg0_reg[31]_0 [5]),
        .R(AR));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg0_reg[31]_0 [6]),
        .R(AR));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg0_reg[31]_0 [7]),
        .R(AR));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg0_reg[31]_0 [8]),
        .R(AR));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg0_reg[31]_0 [9]),
        .R(AR));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg7[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[1]),
        .O(\slv_reg7[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg7[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[2]),
        .O(\slv_reg7[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg7[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[3]),
        .O(\slv_reg7[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg7[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[0]),
        .O(\slv_reg7[7]_i_1_n_0 ));
  FDRE \slv_reg7_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg7[0]),
        .R(AR));
  FDRE \slv_reg7_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg7[10]),
        .R(AR));
  FDRE \slv_reg7_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg7[11]),
        .R(AR));
  FDRE \slv_reg7_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg7[12]),
        .R(AR));
  FDRE \slv_reg7_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg7[13]),
        .R(AR));
  FDRE \slv_reg7_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg7[14]),
        .R(AR));
  FDRE \slv_reg7_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg7[15]),
        .R(AR));
  FDRE \slv_reg7_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg7[16]),
        .R(AR));
  FDRE \slv_reg7_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg7[17]),
        .R(AR));
  FDRE \slv_reg7_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg7[18]),
        .R(AR));
  FDRE \slv_reg7_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg7[19]),
        .R(AR));
  FDRE \slv_reg7_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg7[1]),
        .R(AR));
  FDRE \slv_reg7_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg7[20]),
        .R(AR));
  FDRE \slv_reg7_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg7[21]),
        .R(AR));
  FDRE \slv_reg7_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg7[22]),
        .R(AR));
  FDRE \slv_reg7_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg7[23]),
        .R(AR));
  FDRE \slv_reg7_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg7[24]),
        .R(AR));
  FDRE \slv_reg7_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg7[25]),
        .R(AR));
  FDRE \slv_reg7_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg7[26]),
        .R(AR));
  FDRE \slv_reg7_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg7[27]),
        .R(AR));
  FDRE \slv_reg7_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg7[28]),
        .R(AR));
  FDRE \slv_reg7_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg7[29]),
        .R(AR));
  FDRE \slv_reg7_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg7[2]),
        .R(AR));
  FDRE \slv_reg7_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg7[30]),
        .R(AR));
  FDRE \slv_reg7_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg7[31]),
        .R(AR));
  FDRE \slv_reg7_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg7[3]),
        .R(AR));
  FDRE \slv_reg7_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg7[4]),
        .R(AR));
  FDRE \slv_reg7_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg7[5]),
        .R(AR));
  FDRE \slv_reg7_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg7[6]),
        .R(AR));
  FDRE \slv_reg7_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg7[7]),
        .R(AR));
  FDRE \slv_reg7_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg7[8]),
        .R(AR));
  FDRE \slv_reg7_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg7[9]),
        .R(AR));
  LUT3 #(
    .INIT(8'h20)) 
    slv_reg_rden
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_rvalid),
        .I2(axi_arready_reg_0),
        .O(slv_reg_rden__0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_potentiometer
   (D,
    \r_value_reg[6]_0 ,
    \r_value_reg[11]_0 ,
    \r_value_reg[3]_0 ,
    s00_axi_aclk,
    AR,
    i_vaux6p,
    i_vaux6n,
    Q,
    \r_hex_value_reg[0] ,
    i_sw_display_gain,
    \r_hex_value_reg[1] ,
    \r_hex_value_reg[1]_0 ,
    \r_hex_value_reg[3] ,
    \r_hex_value_reg[3]_0 ,
    \r_hex_value_reg[2] ,
    w_i_gain_bcd,
    \r_hex_value_reg[1]_1 ,
    \r_hex_value_reg[1]_2 );
  output [3:0]D;
  output \r_value_reg[6]_0 ;
  output [11:0]\r_value_reg[11]_0 ;
  output \r_value_reg[3]_0 ;
  input s00_axi_aclk;
  input [0:0]AR;
  input i_vaux6p;
  input i_vaux6n;
  input [3:0]Q;
  input \r_hex_value_reg[0] ;
  input i_sw_display_gain;
  input \r_hex_value_reg[1] ;
  input \r_hex_value_reg[1]_0 ;
  input \r_hex_value_reg[3] ;
  input \r_hex_value_reg[3]_0 ;
  input [3:0]\r_hex_value_reg[2] ;
  input [4:0]w_i_gain_bcd;
  input \r_hex_value_reg[1]_1 ;
  input [1:0]\r_hex_value_reg[1]_2 ;

  wire [0:0]AR;
  wire [3:0]D;
  wire [3:0]Q;
  wire [3:1]data1;
  wire [3:0]data2;
  wire [0:0]data3;
  wire i_sw_display_gain;
  wire i_vaux6n;
  wire i_vaux6p;
  wire p_1_in0;
  wire \r_hex_value[0]_i_4_n_0 ;
  wire \r_hex_value[0]_i_8_n_0 ;
  wire \r_hex_value[0]_i_9_n_0 ;
  wire \r_hex_value[1]_i_4_n_0 ;
  wire \r_hex_value[2]_i_11_n_0 ;
  wire \r_hex_value[2]_i_12_n_0 ;
  wire \r_hex_value[2]_i_2_n_0 ;
  wire \r_hex_value[2]_i_4_n_0 ;
  wire \r_hex_value[2]_i_7_n_0 ;
  wire \r_hex_value[2]_i_8_n_0 ;
  wire \r_hex_value[3]_i_10_n_0 ;
  wire \r_hex_value[3]_i_11_n_0 ;
  wire \r_hex_value[3]_i_12_n_0 ;
  wire \r_hex_value[3]_i_18_n_0 ;
  wire \r_hex_value[3]_i_19_n_0 ;
  wire \r_hex_value[3]_i_20_n_0 ;
  wire \r_hex_value[3]_i_21_n_0 ;
  wire \r_hex_value[3]_i_25_n_0 ;
  wire \r_hex_value[3]_i_26_n_0 ;
  wire \r_hex_value[3]_i_27_n_0 ;
  wire \r_hex_value[3]_i_28_n_0 ;
  wire \r_hex_value[3]_i_29_n_0 ;
  wire \r_hex_value[3]_i_30_n_0 ;
  wire \r_hex_value[3]_i_31_n_0 ;
  wire \r_hex_value[3]_i_32_n_0 ;
  wire \r_hex_value[3]_i_33_n_0 ;
  wire \r_hex_value[3]_i_34_n_0 ;
  wire \r_hex_value[3]_i_35_n_0 ;
  wire \r_hex_value[3]_i_36_n_0 ;
  wire \r_hex_value[3]_i_37_n_0 ;
  wire \r_hex_value[3]_i_41_n_0 ;
  wire \r_hex_value[3]_i_42_n_0 ;
  wire \r_hex_value[3]_i_43_n_0 ;
  wire \r_hex_value[3]_i_44_n_0 ;
  wire \r_hex_value[3]_i_45_n_0 ;
  wire \r_hex_value[3]_i_46_n_0 ;
  wire \r_hex_value[3]_i_47_n_0 ;
  wire \r_hex_value[3]_i_9_n_0 ;
  wire \r_hex_value_reg[0] ;
  wire \r_hex_value_reg[1] ;
  wire \r_hex_value_reg[1]_0 ;
  wire \r_hex_value_reg[1]_1 ;
  wire [1:0]\r_hex_value_reg[1]_2 ;
  wire [3:0]\r_hex_value_reg[2] ;
  wire \r_hex_value_reg[3] ;
  wire \r_hex_value_reg[3]_0 ;
  wire [11:0]\r_value_reg[11]_0 ;
  wire \r_value_reg[3]_0 ;
  wire \r_value_reg[6]_0 ;
  wire s00_axi_aclk;
  wire [4:0]w_channel_out;
  wire [15:4]w_do_out;
  wire w_eoc_out;
  wire w_eoc_out_negedge;
  wire [4:0]w_i_gain_bcd;
  wire NLW_adc_ch6_alarm_out_UNCONNECTED;
  wire NLW_adc_ch6_busy_out_UNCONNECTED;
  wire NLW_adc_ch6_drdy_out_UNCONNECTED;
  wire NLW_adc_ch6_eos_out_UNCONNECTED;
  wire [3:0]NLW_adc_ch6_do_out_UNCONNECTED;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n ED_EOC
       (.AR(AR),
        .E(w_eoc_out_negedge),
        .eoc_out(w_eoc_out),
        .s00_axi_aclk(s00_axi_aclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xadc_wiz_0 adc_ch6
       (.alarm_out(NLW_adc_ch6_alarm_out_UNCONNECTED),
        .busy_out(NLW_adc_ch6_busy_out_UNCONNECTED),
        .channel_out(w_channel_out),
        .daddr_in({1'b0,1'b0,w_channel_out}),
        .dclk_in(s00_axi_aclk),
        .den_in(w_eoc_out),
        .di_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .do_out({w_do_out,NLW_adc_ch6_do_out_UNCONNECTED[3:0]}),
        .drdy_out(NLW_adc_ch6_drdy_out_UNCONNECTED),
        .dwe_in(1'b0),
        .eoc_out(w_eoc_out),
        .eos_out(NLW_adc_ch6_eos_out_UNCONNECTED),
        .reset_in(AR),
        .vauxn6(i_vaux6n),
        .vauxp6(i_vaux6p),
        .vn_in(1'b0),
        .vp_in(1'b0));
  LUT5 #(
    .INIT(32'hFFFF22F2)) 
    \r_hex_value[0]_i_1 
       (.I0(data3),
        .I1(Q[3]),
        .I2(data2[0]),
        .I3(Q[2]),
        .I4(\r_hex_value[0]_i_4_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h8B8B8BB8B8B8B8B8)) 
    \r_hex_value[0]_i_2 
       (.I0(\r_hex_value_reg[2] [2]),
        .I1(i_sw_display_gain),
        .I2(\r_hex_value[3]_i_9_n_0 ),
        .I3(\r_hex_value[3]_i_10_n_0 ),
        .I4(\r_hex_value[3]_i_11_n_0 ),
        .I5(\r_hex_value[3]_i_12_n_0 ),
        .O(data3));
  LUT6 #(
    .INIT(64'h8B8B8BB8B8B8B8B8)) 
    \r_hex_value[0]_i_3 
       (.I0(\r_hex_value_reg[0] ),
        .I1(i_sw_display_gain),
        .I2(\r_hex_value[3]_i_18_n_0 ),
        .I3(\r_hex_value[3]_i_19_n_0 ),
        .I4(\r_hex_value[3]_i_20_n_0 ),
        .I5(\r_hex_value[3]_i_21_n_0 ),
        .O(data2[0]));
  LUT5 #(
    .INIT(32'hFFFF4540)) 
    \r_hex_value[0]_i_4 
       (.I0(Q[1]),
        .I1(w_i_gain_bcd[1]),
        .I2(i_sw_display_gain),
        .I3(\r_hex_value[0]_i_8_n_0 ),
        .I4(\r_hex_value[0]_i_9_n_0 ),
        .O(\r_hex_value[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h593AC36643628364)) 
    \r_hex_value[0]_i_8 
       (.I0(\r_value_reg[11]_0 [3]),
        .I1(\r_hex_value[3]_i_37_n_0 ),
        .I2(\r_hex_value[3]_i_35_n_0 ),
        .I3(\r_hex_value[3]_i_36_n_0 ),
        .I4(\r_value_reg[11]_0 [2]),
        .I5(\r_value_reg[11]_0 [1]),
        .O(\r_hex_value[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \r_hex_value[0]_i_9 
       (.I0(\r_value_reg[11]_0 [0]),
        .I1(i_sw_display_gain),
        .I2(\r_hex_value_reg[1]_2 [0]),
        .I3(Q[0]),
        .O(\r_hex_value[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFAEFFAEFFFFFFAE)) 
    \r_hex_value[1]_i_1 
       (.I0(\r_hex_value_reg[1] ),
        .I1(data2[1]),
        .I2(Q[2]),
        .I3(\r_hex_value[1]_i_4_n_0 ),
        .I4(data1[1]),
        .I5(Q[1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h88888B8BBBBBB888)) 
    \r_hex_value[1]_i_3 
       (.I0(\r_hex_value_reg[1]_0 ),
        .I1(i_sw_display_gain),
        .I2(\r_hex_value[3]_i_12_n_0 ),
        .I3(\r_hex_value[3]_i_10_n_0 ),
        .I4(\r_hex_value[3]_i_9_n_0 ),
        .I5(\r_hex_value[3]_i_11_n_0 ),
        .O(data2[1]));
  LUT6 #(
    .INIT(64'h0000000006F6F606)) 
    \r_hex_value[1]_i_4 
       (.I0(\r_hex_value[2]_i_11_n_0 ),
        .I1(\r_value_reg[11]_0 [1]),
        .I2(i_sw_display_gain),
        .I3(\r_hex_value_reg[1]_1 ),
        .I4(\r_hex_value_reg[1]_2 [1]),
        .I5(Q[0]),
        .O(\r_hex_value[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h88888B8BBBBBB888)) 
    \r_hex_value[1]_i_5 
       (.I0(w_i_gain_bcd[2]),
        .I1(i_sw_display_gain),
        .I2(\r_hex_value[3]_i_21_n_0 ),
        .I3(\r_hex_value[3]_i_19_n_0 ),
        .I4(\r_hex_value[3]_i_18_n_0 ),
        .I5(\r_hex_value[3]_i_20_n_0 ),
        .O(data1[1]));
  LUT6 #(
    .INIT(64'h3C303C303C3038F0)) 
    \r_hex_value[1]_i_6 
       (.I0(\r_hex_value[3]_i_25_n_0 ),
        .I1(\r_hex_value[3]_i_26_n_0 ),
        .I2(\r_hex_value[3]_i_27_n_0 ),
        .I3(\r_hex_value[3]_i_28_n_0 ),
        .I4(\r_hex_value[3]_i_29_n_0 ),
        .I5(\r_hex_value[3]_i_30_n_0 ),
        .O(\r_value_reg[6]_0 ));
  LUT6 #(
    .INIT(64'hFFAEFFAEFFFFFFAE)) 
    \r_hex_value[2]_i_1 
       (.I0(\r_hex_value[2]_i_2_n_0 ),
        .I1(data2[2]),
        .I2(Q[2]),
        .I3(\r_hex_value[2]_i_4_n_0 ),
        .I4(data1[2]),
        .I5(Q[1]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h3D7CA7E6256487E2)) 
    \r_hex_value[2]_i_11 
       (.I0(\r_hex_value[3]_i_37_n_0 ),
        .I1(\r_value_reg[11]_0 [3]),
        .I2(\r_hex_value[3]_i_35_n_0 ),
        .I3(\r_hex_value[3]_i_36_n_0 ),
        .I4(\r_value_reg[11]_0 [2]),
        .I5(\r_value_reg[11]_0 [1]),
        .O(\r_hex_value[2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h9656159415949656)) 
    \r_hex_value[2]_i_12 
       (.I0(\r_value_reg[11]_0 [2]),
        .I1(\r_hex_value[3]_i_36_n_0 ),
        .I2(\r_hex_value[3]_i_35_n_0 ),
        .I3(\r_value_reg[11]_0 [3]),
        .I4(\r_value_reg[11]_0 [4]),
        .I5(\r_hex_value[3]_i_41_n_0 ),
        .O(\r_hex_value[2]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFA800A8)) 
    \r_hex_value[2]_i_2 
       (.I0(p_1_in0),
        .I1(\r_hex_value[2]_i_7_n_0 ),
        .I2(\r_hex_value[2]_i_8_n_0 ),
        .I3(i_sw_display_gain),
        .I4(\r_hex_value_reg[2] [3]),
        .I5(Q[3]),
        .O(\r_hex_value[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBB8888B8BB888BB8)) 
    \r_hex_value[2]_i_3 
       (.I0(\r_hex_value_reg[2] [0]),
        .I1(i_sw_display_gain),
        .I2(\r_hex_value[3]_i_9_n_0 ),
        .I3(\r_hex_value[3]_i_10_n_0 ),
        .I4(\r_hex_value[3]_i_11_n_0 ),
        .I5(\r_hex_value[3]_i_12_n_0 ),
        .O(data2[2]));
  LUT6 #(
    .INIT(64'h00000000FFC600C6)) 
    \r_hex_value[2]_i_4 
       (.I0(\r_hex_value[2]_i_11_n_0 ),
        .I1(\r_hex_value[2]_i_12_n_0 ),
        .I2(\r_value_reg[11]_0 [1]),
        .I3(i_sw_display_gain),
        .I4(w_i_gain_bcd[0]),
        .I5(Q[0]),
        .O(\r_hex_value[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBB8888B8BB888BB8)) 
    \r_hex_value[2]_i_5 
       (.I0(w_i_gain_bcd[3]),
        .I1(i_sw_display_gain),
        .I2(\r_hex_value[3]_i_18_n_0 ),
        .I3(\r_hex_value[3]_i_19_n_0 ),
        .I4(\r_hex_value[3]_i_20_n_0 ),
        .I5(\r_hex_value[3]_i_21_n_0 ),
        .O(data1[2]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hF000E000)) 
    \r_hex_value[2]_i_6 
       (.I0(\r_value_reg[11]_0 [7]),
        .I1(\r_value_reg[11]_0 [8]),
        .I2(\r_value_reg[11]_0 [10]),
        .I3(\r_value_reg[11]_0 [11]),
        .I4(\r_value_reg[11]_0 [9]),
        .O(p_1_in0));
  LUT6 #(
    .INIT(64'h0FF00F000FE03F00)) 
    \r_hex_value[2]_i_7 
       (.I0(\r_value_reg[11]_0 [6]),
        .I1(\r_value_reg[11]_0 [7]),
        .I2(\r_value_reg[11]_0 [10]),
        .I3(\r_value_reg[11]_0 [11]),
        .I4(\r_value_reg[11]_0 [9]),
        .I5(\r_value_reg[11]_0 [8]),
        .O(\r_hex_value[2]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h56AA)) 
    \r_hex_value[2]_i_8 
       (.I0(\r_hex_value[3]_i_31_n_0 ),
        .I1(\r_hex_value[3]_i_32_n_0 ),
        .I2(\r_hex_value[3]_i_30_n_0 ),
        .I3(\r_hex_value[3]_i_33_n_0 ),
        .O(\r_hex_value[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0E83F01C1002F33C)) 
    \r_hex_value[3]_i_10 
       (.I0(\r_hex_value[3]_i_25_n_0 ),
        .I1(\r_hex_value[3]_i_26_n_0 ),
        .I2(\r_hex_value[3]_i_27_n_0 ),
        .I3(\r_hex_value[3]_i_28_n_0 ),
        .I4(\r_hex_value[3]_i_29_n_0 ),
        .I5(\r_hex_value[3]_i_30_n_0 ),
        .O(\r_hex_value[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h772319EC660331C8)) 
    \r_hex_value[3]_i_11 
       (.I0(\r_hex_value[3]_i_25_n_0 ),
        .I1(\r_hex_value[3]_i_30_n_0 ),
        .I2(\r_hex_value[3]_i_31_n_0 ),
        .I3(\r_hex_value[3]_i_32_n_0 ),
        .I4(\r_hex_value[3]_i_33_n_0 ),
        .I5(\r_hex_value[3]_i_34_n_0 ),
        .O(\r_hex_value[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hC330332CD330300C)) 
    \r_hex_value[3]_i_12 
       (.I0(\r_hex_value[3]_i_25_n_0 ),
        .I1(\r_hex_value[3]_i_26_n_0 ),
        .I2(\r_hex_value[3]_i_27_n_0 ),
        .I3(\r_hex_value[3]_i_28_n_0 ),
        .I4(\r_hex_value[3]_i_29_n_0 ),
        .I5(\r_hex_value[3]_i_30_n_0 ),
        .O(\r_hex_value[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0085182026446422)) 
    \r_hex_value[3]_i_13 
       (.I0(\r_value_reg[11]_0 [3]),
        .I1(\r_hex_value[3]_i_35_n_0 ),
        .I2(\r_hex_value[3]_i_36_n_0 ),
        .I3(\r_value_reg[11]_0 [2]),
        .I4(\r_hex_value[3]_i_37_n_0 ),
        .I5(\r_value_reg[11]_0 [1]),
        .O(\r_value_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h4402118011203824)) 
    \r_hex_value[3]_i_18 
       (.I0(\r_hex_value[3]_i_25_n_0 ),
        .I1(\r_hex_value[3]_i_30_n_0 ),
        .I2(\r_hex_value[3]_i_31_n_0 ),
        .I3(\r_hex_value[3]_i_32_n_0 ),
        .I4(\r_hex_value[3]_i_33_n_0 ),
        .I5(\r_hex_value[3]_i_34_n_0 ),
        .O(\r_hex_value[3]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hEA05263111CAD846)) 
    \r_hex_value[3]_i_19 
       (.I0(\r_hex_value[3]_i_33_n_0 ),
        .I1(\r_hex_value[3]_i_32_n_0 ),
        .I2(\r_hex_value[3]_i_31_n_0 ),
        .I3(\r_hex_value[3]_i_30_n_0 ),
        .I4(\r_hex_value[3]_i_25_n_0 ),
        .I5(\r_hex_value[3]_i_34_n_0 ),
        .O(\r_hex_value[3]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFAEFFAEFFFFFFAE)) 
    \r_hex_value[3]_i_2 
       (.I0(\r_hex_value_reg[3] ),
        .I1(data2[3]),
        .I2(Q[2]),
        .I3(\r_hex_value_reg[3]_0 ),
        .I4(data1[3]),
        .I5(Q[1]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h609F996600FF9F60)) 
    \r_hex_value[3]_i_20 
       (.I0(\r_value_reg[11]_0 [4]),
        .I1(\r_hex_value[3]_i_41_n_0 ),
        .I2(\r_value_reg[11]_0 [3]),
        .I3(\r_hex_value[3]_i_36_n_0 ),
        .I4(\r_hex_value[3]_i_35_n_0 ),
        .I5(\r_value_reg[11]_0 [2]),
        .O(\r_hex_value[3]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h2299545A449A2592)) 
    \r_hex_value[3]_i_21 
       (.I0(\r_hex_value[3]_i_25_n_0 ),
        .I1(\r_hex_value[3]_i_30_n_0 ),
        .I2(\r_hex_value[3]_i_31_n_0 ),
        .I3(\r_hex_value[3]_i_32_n_0 ),
        .I4(\r_hex_value[3]_i_33_n_0 ),
        .I5(\r_hex_value[3]_i_34_n_0 ),
        .O(\r_hex_value[3]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h593AC36643628364)) 
    \r_hex_value[3]_i_25 
       (.I0(\r_value_reg[11]_0 [6]),
        .I1(\r_hex_value[3]_i_42_n_0 ),
        .I2(\r_hex_value[3]_i_43_n_0 ),
        .I3(\r_hex_value[3]_i_44_n_0 ),
        .I4(\r_value_reg[11]_0 [5]),
        .I5(\r_value_reg[11]_0 [4]),
        .O(\r_hex_value[3]_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hB424)) 
    \r_hex_value[3]_i_26 
       (.I0(\r_value_reg[11]_0 [9]),
        .I1(\r_value_reg[11]_0 [11]),
        .I2(\r_value_reg[11]_0 [10]),
        .I3(\r_value_reg[11]_0 [8]),
        .O(\r_hex_value[3]_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \r_hex_value[3]_i_27 
       (.I0(\r_value_reg[11]_0 [9]),
        .I1(\r_value_reg[11]_0 [10]),
        .I2(\r_value_reg[11]_0 [11]),
        .O(\r_hex_value[3]_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h793C6138)) 
    \r_hex_value[3]_i_28 
       (.I0(\r_value_reg[11]_0 [8]),
        .I1(\r_value_reg[11]_0 [9]),
        .I2(\r_value_reg[11]_0 [11]),
        .I3(\r_value_reg[11]_0 [10]),
        .I4(\r_value_reg[11]_0 [7]),
        .O(\r_hex_value[3]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h65BA5DA645A25924)) 
    \r_hex_value[3]_i_29 
       (.I0(\r_value_reg[11]_0 [8]),
        .I1(\r_value_reg[11]_0 [9]),
        .I2(\r_value_reg[11]_0 [11]),
        .I3(\r_value_reg[11]_0 [10]),
        .I4(\r_value_reg[11]_0 [7]),
        .I5(\r_value_reg[11]_0 [6]),
        .O(\r_hex_value[3]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'h875A0F78)) 
    \r_hex_value[3]_i_30 
       (.I0(\r_hex_value[3]_i_42_n_0 ),
        .I1(\r_value_reg[11]_0 [6]),
        .I2(\r_hex_value[3]_i_44_n_0 ),
        .I3(\r_hex_value[3]_i_43_n_0 ),
        .I4(\r_value_reg[11]_0 [5]),
        .O(\r_hex_value[3]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h0E0000F000103000)) 
    \r_hex_value[3]_i_31 
       (.I0(\r_value_reg[11]_0 [6]),
        .I1(\r_value_reg[11]_0 [7]),
        .I2(\r_value_reg[11]_0 [10]),
        .I3(\r_value_reg[11]_0 [11]),
        .I4(\r_value_reg[11]_0 [9]),
        .I5(\r_value_reg[11]_0 [8]),
        .O(\r_hex_value[3]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h01C8800EFF0307F0)) 
    \r_hex_value[3]_i_32 
       (.I0(\r_value_reg[11]_0 [6]),
        .I1(\r_value_reg[11]_0 [7]),
        .I2(\r_value_reg[11]_0 [10]),
        .I3(\r_value_reg[11]_0 [11]),
        .I4(\r_value_reg[11]_0 [9]),
        .I5(\r_value_reg[11]_0 [8]),
        .O(\r_hex_value[3]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hF10F0F000F0C08F0)) 
    \r_hex_value[3]_i_33 
       (.I0(\r_value_reg[11]_0 [6]),
        .I1(\r_value_reg[11]_0 [7]),
        .I2(\r_value_reg[11]_0 [10]),
        .I3(\r_value_reg[11]_0 [11]),
        .I4(\r_value_reg[11]_0 [9]),
        .I5(\r_value_reg[11]_0 [8]),
        .O(\r_hex_value[3]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h0F74AB5A0B58A14A)) 
    \r_hex_value[3]_i_34 
       (.I0(\r_hex_value[3]_i_45_n_0 ),
        .I1(\r_hex_value[3]_i_46_n_0 ),
        .I2(\r_value_reg[11]_0 [5]),
        .I3(\r_hex_value[3]_i_47_n_0 ),
        .I4(\r_value_reg[11]_0 [4]),
        .I5(\r_value_reg[11]_0 [3]),
        .O(\r_hex_value[3]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h556EF1DA514AA1D8)) 
    \r_hex_value[3]_i_35 
       (.I0(\r_value_reg[11]_0 [5]),
        .I1(\r_hex_value[3]_i_46_n_0 ),
        .I2(\r_hex_value[3]_i_45_n_0 ),
        .I3(\r_hex_value[3]_i_47_n_0 ),
        .I4(\r_value_reg[11]_0 [4]),
        .I5(\r_value_reg[11]_0 [3]),
        .O(\r_hex_value[3]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h159496564521A85A)) 
    \r_hex_value[3]_i_36 
       (.I0(\r_value_reg[11]_0 [5]),
        .I1(\r_hex_value[3]_i_44_n_0 ),
        .I2(\r_hex_value[3]_i_43_n_0 ),
        .I3(\r_value_reg[11]_0 [6]),
        .I4(\r_hex_value[3]_i_42_n_0 ),
        .I5(\r_value_reg[11]_0 [4]),
        .O(\r_hex_value[3]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hA419941A62955686)) 
    \r_hex_value[3]_i_37 
       (.I0(\r_value_reg[11]_0 [4]),
        .I1(\r_hex_value[3]_i_42_n_0 ),
        .I2(\r_value_reg[11]_0 [6]),
        .I3(\r_hex_value[3]_i_43_n_0 ),
        .I4(\r_hex_value[3]_i_44_n_0 ),
        .I5(\r_value_reg[11]_0 [5]),
        .O(\r_hex_value[3]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h888888BBB8B8B888)) 
    \r_hex_value[3]_i_4 
       (.I0(\r_hex_value_reg[2] [1]),
        .I1(i_sw_display_gain),
        .I2(\r_hex_value[3]_i_9_n_0 ),
        .I3(\r_hex_value[3]_i_10_n_0 ),
        .I4(\r_hex_value[3]_i_11_n_0 ),
        .I5(\r_hex_value[3]_i_12_n_0 ),
        .O(data2[3]));
  LUT6 #(
    .INIT(64'h3D7CA7E6256487E2)) 
    \r_hex_value[3]_i_41 
       (.I0(\r_hex_value[3]_i_42_n_0 ),
        .I1(\r_value_reg[11]_0 [6]),
        .I2(\r_hex_value[3]_i_43_n_0 ),
        .I3(\r_hex_value[3]_i_44_n_0 ),
        .I4(\r_value_reg[11]_0 [5]),
        .I5(\r_value_reg[11]_0 [4]),
        .O(\r_hex_value[3]_i_41_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'hC3611C86)) 
    \r_hex_value[3]_i_42 
       (.I0(\r_value_reg[11]_0 [10]),
        .I1(\r_value_reg[11]_0 [11]),
        .I2(\r_value_reg[11]_0 [9]),
        .I3(\r_value_reg[11]_0 [8]),
        .I4(\r_value_reg[11]_0 [7]),
        .O(\r_hex_value[3]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h3973CE9C31638C18)) 
    \r_hex_value[3]_i_43 
       (.I0(\r_value_reg[11]_0 [7]),
        .I1(\r_value_reg[11]_0 [8]),
        .I2(\r_value_reg[11]_0 [9]),
        .I3(\r_value_reg[11]_0 [11]),
        .I4(\r_value_reg[11]_0 [10]),
        .I5(\r_value_reg[11]_0 [6]),
        .O(\r_hex_value[3]_i_43_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h249A45A2)) 
    \r_hex_value[3]_i_44 
       (.I0(\r_value_reg[11]_0 [8]),
        .I1(\r_value_reg[11]_0 [9]),
        .I2(\r_value_reg[11]_0 [11]),
        .I3(\r_value_reg[11]_0 [10]),
        .I4(\r_value_reg[11]_0 [7]),
        .O(\r_hex_value[3]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hA52994A54A52294A)) 
    \r_hex_value[3]_i_45 
       (.I0(\r_value_reg[11]_0 [6]),
        .I1(\r_value_reg[11]_0 [7]),
        .I2(\r_value_reg[11]_0 [8]),
        .I3(\r_value_reg[11]_0 [9]),
        .I4(\r_value_reg[11]_0 [11]),
        .I5(\r_value_reg[11]_0 [10]),
        .O(\r_hex_value[3]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h4120180420180482)) 
    \r_hex_value[3]_i_46 
       (.I0(\r_value_reg[11]_0 [8]),
        .I1(\r_value_reg[11]_0 [9]),
        .I2(\r_value_reg[11]_0 [11]),
        .I3(\r_value_reg[11]_0 [10]),
        .I4(\r_value_reg[11]_0 [7]),
        .I5(\r_value_reg[11]_0 [6]),
        .O(\r_hex_value[3]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'hC3611C8686C3381C)) 
    \r_hex_value[3]_i_47 
       (.I0(\r_value_reg[11]_0 [10]),
        .I1(\r_value_reg[11]_0 [11]),
        .I2(\r_value_reg[11]_0 [9]),
        .I3(\r_value_reg[11]_0 [8]),
        .I4(\r_value_reg[11]_0 [7]),
        .I5(\r_value_reg[11]_0 [6]),
        .O(\r_hex_value[3]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h888888BBB8B8B888)) 
    \r_hex_value[3]_i_6 
       (.I0(w_i_gain_bcd[4]),
        .I1(i_sw_display_gain),
        .I2(\r_hex_value[3]_i_18_n_0 ),
        .I3(\r_hex_value[3]_i_19_n_0 ),
        .I4(\r_hex_value[3]_i_20_n_0 ),
        .I5(\r_hex_value[3]_i_21_n_0 ),
        .O(data1[3]));
  LUT6 #(
    .INIT(64'h300C0000200C04C0)) 
    \r_hex_value[3]_i_9 
       (.I0(\r_hex_value[3]_i_25_n_0 ),
        .I1(\r_hex_value[3]_i_26_n_0 ),
        .I2(\r_hex_value[3]_i_27_n_0 ),
        .I3(\r_hex_value[3]_i_28_n_0 ),
        .I4(\r_hex_value[3]_i_29_n_0 ),
        .I5(\r_hex_value[3]_i_30_n_0 ),
        .O(\r_hex_value[3]_i_9_n_0 ));
  FDRE \r_value_reg[0] 
       (.C(s00_axi_aclk),
        .CE(w_eoc_out_negedge),
        .D(w_do_out[4]),
        .Q(\r_value_reg[11]_0 [0]),
        .R(AR));
  FDRE \r_value_reg[10] 
       (.C(s00_axi_aclk),
        .CE(w_eoc_out_negedge),
        .D(w_do_out[14]),
        .Q(\r_value_reg[11]_0 [10]),
        .R(AR));
  FDRE \r_value_reg[11] 
       (.C(s00_axi_aclk),
        .CE(w_eoc_out_negedge),
        .D(w_do_out[15]),
        .Q(\r_value_reg[11]_0 [11]),
        .R(AR));
  FDRE \r_value_reg[1] 
       (.C(s00_axi_aclk),
        .CE(w_eoc_out_negedge),
        .D(w_do_out[5]),
        .Q(\r_value_reg[11]_0 [1]),
        .R(AR));
  FDRE \r_value_reg[2] 
       (.C(s00_axi_aclk),
        .CE(w_eoc_out_negedge),
        .D(w_do_out[6]),
        .Q(\r_value_reg[11]_0 [2]),
        .R(AR));
  FDRE \r_value_reg[3] 
       (.C(s00_axi_aclk),
        .CE(w_eoc_out_negedge),
        .D(w_do_out[7]),
        .Q(\r_value_reg[11]_0 [3]),
        .R(AR));
  FDRE \r_value_reg[4] 
       (.C(s00_axi_aclk),
        .CE(w_eoc_out_negedge),
        .D(w_do_out[8]),
        .Q(\r_value_reg[11]_0 [4]),
        .R(AR));
  FDRE \r_value_reg[5] 
       (.C(s00_axi_aclk),
        .CE(w_eoc_out_negedge),
        .D(w_do_out[9]),
        .Q(\r_value_reg[11]_0 [5]),
        .R(AR));
  FDRE \r_value_reg[6] 
       (.C(s00_axi_aclk),
        .CE(w_eoc_out_negedge),
        .D(w_do_out[10]),
        .Q(\r_value_reg[11]_0 [6]),
        .R(AR));
  FDRE \r_value_reg[7] 
       (.C(s00_axi_aclk),
        .CE(w_eoc_out_negedge),
        .D(w_do_out[11]),
        .Q(\r_value_reg[11]_0 [7]),
        .R(AR));
  FDRE \r_value_reg[8] 
       (.C(s00_axi_aclk),
        .CE(w_eoc_out_negedge),
        .D(w_do_out[12]),
        .Q(\r_value_reg[11]_0 [8]),
        .R(AR));
  FDRE \r_value_reg[9] 
       (.C(s00_axi_aclk),
        .CE(w_eoc_out_negedge),
        .D(w_do_out[13]),
        .Q(\r_value_reg[11]_0 [9]),
        .R(AR));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ringCounterFnd
   (Q,
    E,
    \r_fnd_sel_reg[0]_0 ,
    s00_axi_aclk,
    AR);
  output [3:0]Q;
  output [0:0]E;
  input [0:0]\r_fnd_sel_reg[0]_0 ;
  input s00_axi_aclk;
  input [0:0]AR;

  wire [0:0]AR;
  wire [0:0]E;
  wire [3:0]Q;
  wire \r_fnd_sel[0]_i_1_n_0 ;
  wire [0:0]\r_fnd_sel_reg[0]_0 ;
  wire s00_axi_aclk;

  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hFF7F)) 
    \r_fnd_sel[0]_i_1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(\r_fnd_sel[0]_i_1_n_0 ));
  FDCE \r_fnd_sel_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\r_fnd_sel_reg[0]_0 ),
        .CLR(AR),
        .D(\r_fnd_sel[0]_i_1_n_0 ),
        .Q(Q[0]));
  FDPE \r_fnd_sel_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\r_fnd_sel_reg[0]_0 ),
        .D(Q[0]),
        .PRE(AR),
        .Q(Q[1]));
  FDPE \r_fnd_sel_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\r_fnd_sel_reg[0]_0 ),
        .D(Q[1]),
        .PRE(AR),
        .Q(Q[2]));
  FDPE \r_fnd_sel_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\r_fnd_sel_reg[0]_0 ),
        .D(Q[2]),
        .PRE(AR),
        .Q(Q[3]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h6880)) 
    \r_hex_value[3]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .O(E));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xadc_wiz_0
   (daddr_in,
    dclk_in,
    den_in,
    di_in,
    dwe_in,
    reset_in,
    vauxp6,
    vauxn6,
    busy_out,
    channel_out,
    do_out,
    drdy_out,
    eoc_out,
    eos_out,
    alarm_out,
    vp_in,
    vn_in);
  input [6:0]daddr_in;
  input dclk_in;
  input den_in;
  input [15:0]di_in;
  input dwe_in;
  input reset_in;
  input vauxp6;
  input vauxn6;
  output busy_out;
  output [4:0]channel_out;
  output [15:0]do_out;
  output drdy_out;
  output eoc_out;
  output eos_out;
  output alarm_out;
  input vp_in;
  input vn_in;

  wire alarm_out;
  wire busy_out;
  wire [4:0]channel_out;
  wire [6:0]daddr_in;
  wire dclk_in;
  wire den_in;
  wire [15:0]di_in;
  wire [15:0]do_out;
  wire drdy_out;
  wire dwe_in;
  wire eoc_out;
  wire eos_out;
  wire reset_in;
  wire vauxn6;
  wire vauxp6;
  wire vn_in;
  wire vp_in;
  wire NLW_inst_JTAGBUSY_UNCONNECTED;
  wire NLW_inst_JTAGLOCKED_UNCONNECTED;
  wire NLW_inst_JTAGMODIFIED_UNCONNECTED;
  wire NLW_inst_OT_UNCONNECTED;
  wire [6:0]NLW_inst_ALM_UNCONNECTED;
  wire [4:0]NLW_inst_MUXADDR_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  XADC #(
    .INIT_40(16'h0016),
    .INIT_41(16'h31AF),
    .INIT_42(16'h0400),
    .INIT_43(16'h0000),
    .INIT_44(16'h0000),
    .INIT_45(16'h0000),
    .INIT_46(16'h0000),
    .INIT_47(16'h0000),
    .INIT_48(16'h0100),
    .INIT_49(16'h0000),
    .INIT_4A(16'h0000),
    .INIT_4B(16'h0000),
    .INIT_4C(16'h0000),
    .INIT_4D(16'h0000),
    .INIT_4E(16'h0000),
    .INIT_4F(16'h0000),
    .INIT_50(16'hB5ED),
    .INIT_51(16'h57E4),
    .INIT_52(16'hA147),
    .INIT_53(16'hCA33),
    .INIT_54(16'hA93A),
    .INIT_55(16'h52C6),
    .INIT_56(16'h9555),
    .INIT_57(16'hAE4E),
    .INIT_58(16'h5999),
    .INIT_59(16'h0000),
    .INIT_5A(16'h0000),
    .INIT_5B(16'h0000),
    .INIT_5C(16'h5111),
    .INIT_5D(16'h0000),
    .INIT_5E(16'h0000),
    .INIT_5F(16'h0000),
    .IS_CONVSTCLK_INVERTED(1'b0),
    .IS_DCLK_INVERTED(1'b0),
    .SIM_DEVICE("7SERIES"),
    .SIM_MONITOR_FILE("design.txt")) 
    inst
       (.ALM({alarm_out,NLW_inst_ALM_UNCONNECTED[6:0]}),
        .BUSY(busy_out),
        .CHANNEL(channel_out),
        .CONVST(1'b0),
        .CONVSTCLK(1'b0),
        .DADDR(daddr_in),
        .DCLK(dclk_in),
        .DEN(den_in),
        .DI(di_in),
        .DO(do_out),
        .DRDY(drdy_out),
        .DWE(dwe_in),
        .EOC(eoc_out),
        .EOS(eos_out),
        .JTAGBUSY(NLW_inst_JTAGBUSY_UNCONNECTED),
        .JTAGLOCKED(NLW_inst_JTAGLOCKED_UNCONNECTED),
        .JTAGMODIFIED(NLW_inst_JTAGMODIFIED_UNCONNECTED),
        .MUXADDR(NLW_inst_MUXADDR_UNCONNECTED[4:0]),
        .OT(NLW_inst_OT_UNCONNECTED),
        .RESET(reset_in),
        .VAUXN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,vauxn6,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .VAUXP({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,vauxp6,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .VN(vn_in),
        .VP(vp_in));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
