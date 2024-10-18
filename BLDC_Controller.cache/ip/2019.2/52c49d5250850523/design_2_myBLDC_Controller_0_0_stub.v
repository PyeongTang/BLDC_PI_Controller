// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu Oct 17 20:28:52 2024
// Host        : LeeJP running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_2_myBLDC_Controller_0_0_stub.v
// Design      : design_2_myBLDC_Controller_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "myBLDC_Controller_v1_0,Vivado 2019.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(i_vaux6p, i_vaux6n, i_sw_enable_control, 
  i_sw_rot_ccw, i_sw_display_gain, o_get_RPM, i_btn_u, i_btn_d, i_btn_r, i_btn_l, i_hall_state, 
  o_U_pos, o_U_neg, o_V_pos, o_V_neg, o_W_pos, o_W_neg, o_U_pwm, o_V_pwm, o_W_pwm, 
  o_hall_one_hot_state, o_fnd, o_fnd_sel, s00_axi_aclk, s00_axi_aresetn, s00_axi_awaddr, 
  s00_axi_awprot, s00_axi_awvalid, s00_axi_awready, s00_axi_wdata, s00_axi_wstrb, 
  s00_axi_wvalid, s00_axi_wready, s00_axi_bresp, s00_axi_bvalid, s00_axi_bready, 
  s00_axi_araddr, s00_axi_arprot, s00_axi_arvalid, s00_axi_arready, s00_axi_rdata, 
  s00_axi_rresp, s00_axi_rvalid, s00_axi_rready)
/* synthesis syn_black_box black_box_pad_pin="i_vaux6p,i_vaux6n,i_sw_enable_control,i_sw_rot_ccw,i_sw_display_gain,o_get_RPM,i_btn_u,i_btn_d,i_btn_r,i_btn_l,i_hall_state[2:0],o_U_pos,o_U_neg,o_V_pos,o_V_neg,o_W_pos,o_W_neg,o_U_pwm,o_V_pwm,o_W_pwm,o_hall_one_hot_state[5:0],o_fnd[7:0],o_fnd_sel[3:0],s00_axi_aclk,s00_axi_aresetn,s00_axi_awaddr[4:0],s00_axi_awprot[2:0],s00_axi_awvalid,s00_axi_awready,s00_axi_wdata[31:0],s00_axi_wstrb[3:0],s00_axi_wvalid,s00_axi_wready,s00_axi_bresp[1:0],s00_axi_bvalid,s00_axi_bready,s00_axi_araddr[4:0],s00_axi_arprot[2:0],s00_axi_arvalid,s00_axi_arready,s00_axi_rdata[31:0],s00_axi_rresp[1:0],s00_axi_rvalid,s00_axi_rready" */;
  input i_vaux6p;
  input i_vaux6n;
  input i_sw_enable_control;
  input i_sw_rot_ccw;
  input i_sw_display_gain;
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
  output [5:0]o_hall_one_hot_state;
  output [7:0]o_fnd;
  output [3:0]o_fnd_sel;
  input s00_axi_aclk;
  input s00_axi_aresetn;
  input [4:0]s00_axi_awaddr;
  input [2:0]s00_axi_awprot;
  input s00_axi_awvalid;
  output s00_axi_awready;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input s00_axi_wvalid;
  output s00_axi_wready;
  output [1:0]s00_axi_bresp;
  output s00_axi_bvalid;
  input s00_axi_bready;
  input [4:0]s00_axi_araddr;
  input [2:0]s00_axi_arprot;
  input s00_axi_arvalid;
  output s00_axi_arready;
  output [31:0]s00_axi_rdata;
  output [1:0]s00_axi_rresp;
  output s00_axi_rvalid;
  input s00_axi_rready;
endmodule
