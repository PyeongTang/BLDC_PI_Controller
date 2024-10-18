//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
//Date        : Thu Oct 17 14:21:48 2024
//Host        : LeeJP running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (i_btn_d,
    i_btn_l,
    i_btn_r,
    i_btn_u,
    i_hall_state,
    i_sw_enable_control,
    i_sw_rot_ccw,
    i_vaux6n,
    i_vaux6p,
    o_U_neg,
    o_U_pos,
    o_U_pwm,
    o_V_neg,
    o_V_pos,
    o_V_pwm,
    o_W_neg,
    o_W_pos,
    o_W_pwm,
    o_fnd,
    o_fnd_sel,
    o_hall_one_hot_state,
    reset,
    sys_clock,
    usb_uart_rxd,
    usb_uart_txd);
  input i_btn_d;
  input i_btn_l;
  input i_btn_r;
  input i_btn_u;
  input [2:0]i_hall_state;
  input i_sw_enable_control;
  input i_sw_rot_ccw;
  input i_vaux6n;
  input i_vaux6p;
  output o_U_neg;
  output o_U_pos;
  output o_U_pwm;
  output o_V_neg;
  output o_V_pos;
  output o_V_pwm;
  output o_W_neg;
  output o_W_pos;
  output o_W_pwm;
  output [7:0]o_fnd;
  output [3:0]o_fnd_sel;
  output [5:0]o_hall_one_hot_state;
  input reset;
  input sys_clock;
  input usb_uart_rxd;
  output usb_uart_txd;

  wire i_btn_d;
  wire i_btn_l;
  wire i_btn_r;
  wire i_btn_u;
  wire [2:0]i_hall_state;
  wire i_sw_enable_control;
  wire i_sw_rot_ccw;
  wire i_vaux6n;
  wire i_vaux6p;
  wire o_U_neg;
  wire o_U_pos;
  wire o_U_pwm;
  wire o_V_neg;
  wire o_V_pos;
  wire o_V_pwm;
  wire o_W_neg;
  wire o_W_pos;
  wire o_W_pwm;
  wire [7:0]o_fnd;
  wire [3:0]o_fnd_sel;
  wire [5:0]o_hall_one_hot_state;
  wire reset;
  wire sys_clock;
  wire usb_uart_rxd;
  wire usb_uart_txd;

  design_1 design_1_i
       (.i_btn_d(i_btn_d),
        .i_btn_l(i_btn_l),
        .i_btn_r(i_btn_r),
        .i_btn_u(i_btn_u),
        .i_hall_state(i_hall_state),
        .i_sw_enable_control(i_sw_enable_control),
        .i_sw_rot_ccw(i_sw_rot_ccw),
        .i_vaux6n(i_vaux6n),
        .i_vaux6p(i_vaux6p),
        .o_U_neg(o_U_neg),
        .o_U_pos(o_U_pos),
        .o_U_pwm(o_U_pwm),
        .o_V_neg(o_V_neg),
        .o_V_pos(o_V_pos),
        .o_V_pwm(o_V_pwm),
        .o_W_neg(o_W_neg),
        .o_W_pos(o_W_pos),
        .o_W_pwm(o_W_pwm),
        .o_fnd(o_fnd),
        .o_fnd_sel(o_fnd_sel),
        .o_hall_one_hot_state(o_hall_one_hot_state),
        .reset(reset),
        .sys_clock(sys_clock),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd));
endmodule
