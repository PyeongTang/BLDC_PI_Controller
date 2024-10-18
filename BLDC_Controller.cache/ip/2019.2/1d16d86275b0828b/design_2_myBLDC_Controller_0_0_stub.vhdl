-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Thu Oct 17 21:48:22 2024
-- Host        : LeeJP running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_2_myBLDC_Controller_0_0_stub.vhdl
-- Design      : design_2_myBLDC_Controller_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    i_vaux6p : in STD_LOGIC;
    i_vaux6n : in STD_LOGIC;
    i_sw_enable_control : in STD_LOGIC;
    i_sw_rot_ccw : in STD_LOGIC;
    i_sw_display_gain : in STD_LOGIC;
    o_get_RPM : out STD_LOGIC;
    i_btn_u : in STD_LOGIC;
    i_btn_d : in STD_LOGIC;
    i_btn_r : in STD_LOGIC;
    i_btn_l : in STD_LOGIC;
    i_hall_state : in STD_LOGIC_VECTOR ( 2 downto 0 );
    o_U_pos : out STD_LOGIC;
    o_U_neg : out STD_LOGIC;
    o_V_pos : out STD_LOGIC;
    o_V_neg : out STD_LOGIC;
    o_W_pos : out STD_LOGIC;
    o_W_neg : out STD_LOGIC;
    o_U_pwm : out STD_LOGIC;
    o_V_pwm : out STD_LOGIC;
    o_W_pwm : out STD_LOGIC;
    o_led_enable_control : out STD_LOGIC;
    o_hall_one_hot_state : out STD_LOGIC_VECTOR ( 5 downto 0 );
    o_fnd : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_fnd_sel : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "i_vaux6p,i_vaux6n,i_sw_enable_control,i_sw_rot_ccw,i_sw_display_gain,o_get_RPM,i_btn_u,i_btn_d,i_btn_r,i_btn_l,i_hall_state[2:0],o_U_pos,o_U_neg,o_V_pos,o_V_neg,o_W_pos,o_W_neg,o_U_pwm,o_V_pwm,o_W_pwm,o_led_enable_control,o_hall_one_hot_state[5:0],o_fnd[7:0],o_fnd_sel[3:0],s00_axi_aclk,s00_axi_aresetn,s00_axi_awaddr[4:0],s00_axi_awprot[2:0],s00_axi_awvalid,s00_axi_awready,s00_axi_wdata[31:0],s00_axi_wstrb[3:0],s00_axi_wvalid,s00_axi_wready,s00_axi_bresp[1:0],s00_axi_bvalid,s00_axi_bready,s00_axi_araddr[4:0],s00_axi_arprot[2:0],s00_axi_arvalid,s00_axi_arready,s00_axi_rdata[31:0],s00_axi_rresp[1:0],s00_axi_rvalid,s00_axi_rready";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "myBLDC_Controller_v1_0,Vivado 2019.2";
begin
end;
