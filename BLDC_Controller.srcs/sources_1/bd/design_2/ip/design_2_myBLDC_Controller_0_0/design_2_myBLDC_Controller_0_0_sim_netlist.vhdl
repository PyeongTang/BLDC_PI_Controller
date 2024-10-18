-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Fri Oct 18 11:13:49 2024
-- Host        : LeeJP running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/work/Harman_4_LJP/Basys3/BLDC_Controller/BLDC_Controller.srcs/sources_1/bd/design_2/ip/design_2_myBLDC_Controller_0_0/design_2_myBLDC_Controller_0_0_sim_netlist.vhdl
-- Design      : design_2_myBLDC_Controller_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_2_myBLDC_Controller_0_0_Hall_Sequencer is
  port (
    o_U_pos : out STD_LOGIC;
    o_U_neg : out STD_LOGIC;
    o_V_pos : out STD_LOGIC;
    o_V_neg : out STD_LOGIC;
    o_W_pos : out STD_LOGIC;
    o_W_neg : out STD_LOGIC;
    w_time_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_get_RPM : out STD_LOGIC;
    i_sw_enable_control_0 : out STD_LOGIC;
    i_sw_enable_control_1 : out STD_LOGIC;
    i_sw_enable_control_2 : out STD_LOGIC;
    i_sw_enable_control_3 : out STD_LOGIC;
    i_sw_enable_control_4 : out STD_LOGIC;
    i_sw_enable_control_5 : out STD_LOGIC;
    i_sw_enable_control_6 : out STD_LOGIC;
    i_sw_enable_control_7 : out STD_LOGIC;
    i_sw_enable_control_8 : out STD_LOGIC;
    i_sw_enable_control_9 : out STD_LOGIC;
    i_sw_enable_control_10 : out STD_LOGIC;
    i_sw_enable_control_11 : out STD_LOGIC;
    i_sw_enable_control_12 : out STD_LOGIC;
    o_hall_one_hot_state : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \r_hall_one_hot_state_reg[0]_0\ : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    \r_time_count_reg[31]_0\ : in STD_LOGIC;
    i_hall_state : in STD_LOGIC_VECTOR ( 2 downto 0 );
    i_sw_rot_ccw : in STD_LOGIC;
    i_sw_enable_control : in STD_LOGIC;
    \r_RPM_reg[0]_0\ : in STD_LOGIC_VECTOR ( 13 downto 0 );
    r_get_RPM_i_3_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_2_myBLDC_Controller_0_0_Hall_Sequencer : entity is "Hall_Sequencer";
end design_2_myBLDC_Controller_0_0_Hall_Sequencer;

architecture STRUCTURE of design_2_myBLDC_Controller_0_0_Hall_Sequencer is
  signal \^o_get_rpm\ : STD_LOGIC;
  signal r_RPM : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal r_U_neg_i_1_n_0 : STD_LOGIC;
  signal r_U_pos_i_1_n_0 : STD_LOGIC;
  signal r_V_neg_i_1_n_0 : STD_LOGIC;
  signal r_V_pos_i_1_n_0 : STD_LOGIC;
  signal r_W_neg_i_1_n_0 : STD_LOGIC;
  signal r_W_pos_i_1_n_0 : STD_LOGIC;
  signal r_get_RPM_i_2_n_0 : STD_LOGIC;
  signal r_hall_one_hot_state : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal r_hall_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \r_hall_state__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \r_hall_state_tristate_oe_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_hall_state_tristate_oe_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_hall_state_tristate_oe_reg_n_0_[2]\ : STD_LOGIC;
  signal r_time_count : STD_LOGIC;
  signal \r_time_count[0]_i_10_n_0\ : STD_LOGIC;
  signal \r_time_count[0]_i_11_n_0\ : STD_LOGIC;
  signal \r_time_count[0]_i_12_n_0\ : STD_LOGIC;
  signal \r_time_count[0]_i_4_n_0\ : STD_LOGIC;
  signal \r_time_count[0]_i_5_n_0\ : STD_LOGIC;
  signal \r_time_count[0]_i_6_n_0\ : STD_LOGIC;
  signal \r_time_count[0]_i_7_n_0\ : STD_LOGIC;
  signal \r_time_count[0]_i_8_n_0\ : STD_LOGIC;
  signal \r_time_count[0]_i_9_n_0\ : STD_LOGIC;
  signal \r_time_count_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \r_time_count_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \r_time_count_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \r_time_count_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \r_time_count_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \r_time_count_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \r_time_count_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \r_time_count_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \r_time_count_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \r_time_count_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \r_time_count_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \r_time_count_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \r_time_count_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \r_time_count_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \r_time_count_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \r_time_count_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \r_time_count_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \r_time_count_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \r_time_count_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \r_time_count_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \r_time_count_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \r_time_count_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \r_time_count_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \r_time_count_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \r_time_count_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \r_time_count_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \r_time_count_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \r_time_count_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \r_time_count_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \r_time_count_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \r_time_count_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \r_time_count_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \r_time_count_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \r_time_count_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \r_time_count_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \r_time_count_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \r_time_count_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \r_time_count_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \r_time_count_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \r_time_count_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \r_time_count_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \r_time_count_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \r_time_count_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \r_time_count_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \r_time_count_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \r_time_count_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \r_time_count_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \r_time_count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \r_time_count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \r_time_count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \r_time_count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \r_time_count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \r_time_count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \r_time_count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \r_time_count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \r_time_count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \r_time_count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \r_time_count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \r_time_count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \r_time_count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \r_time_count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \r_time_count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \r_time_count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal w_get_RPM : STD_LOGIC;
  signal \^w_time_count\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_r_time_count_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of r_U_neg_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of r_U_pos_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of r_V_neg_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of r_V_pos_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of r_W_neg_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of r_W_pos_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of r_get_RPM_i_4 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of r_get_RPM_i_6 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \r_hall_one_hot_state[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \r_hall_one_hot_state[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \r_hall_one_hot_state[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \r_hall_one_hot_state[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \r_hall_one_hot_state[4]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \r_hall_one_hot_state[5]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \r_hall_state_tristate_oe[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \r_hall_state_tristate_oe[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \r_plant_output[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \r_plant_output[10]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \r_plant_output[11]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \r_plant_output[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \r_plant_output[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \r_plant_output[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \r_plant_output[4]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \r_plant_output[5]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \r_plant_output[6]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \r_plant_output[7]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \r_plant_output[8]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \r_plant_output[9]_i_1\ : label is "soft_lutpair11";
begin
  o_get_RPM <= \^o_get_rpm\;
  w_time_count(31 downto 0) <= \^w_time_count\(31 downto 0);
\r_RPM_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \r_RPM_reg[0]_0\(13),
      D => \r_RPM_reg[0]_0\(0),
      Q => r_RPM(0),
      R => \r_hall_one_hot_state_reg[0]_0\
    );
\r_RPM_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \r_RPM_reg[0]_0\(13),
      D => \r_RPM_reg[0]_0\(10),
      Q => r_RPM(10),
      R => \r_hall_one_hot_state_reg[0]_0\
    );
\r_RPM_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \r_RPM_reg[0]_0\(13),
      D => \r_RPM_reg[0]_0\(11),
      Q => r_RPM(11),
      R => \r_hall_one_hot_state_reg[0]_0\
    );
\r_RPM_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \r_RPM_reg[0]_0\(13),
      D => \r_RPM_reg[0]_0\(12),
      Q => r_RPM(12),
      R => \r_hall_one_hot_state_reg[0]_0\
    );
\r_RPM_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \r_RPM_reg[0]_0\(13),
      D => \r_RPM_reg[0]_0\(1),
      Q => r_RPM(1),
      R => \r_hall_one_hot_state_reg[0]_0\
    );
\r_RPM_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \r_RPM_reg[0]_0\(13),
      D => \r_RPM_reg[0]_0\(2),
      Q => r_RPM(2),
      R => \r_hall_one_hot_state_reg[0]_0\
    );
\r_RPM_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \r_RPM_reg[0]_0\(13),
      D => \r_RPM_reg[0]_0\(3),
      Q => r_RPM(3),
      R => \r_hall_one_hot_state_reg[0]_0\
    );
\r_RPM_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \r_RPM_reg[0]_0\(13),
      D => \r_RPM_reg[0]_0\(4),
      Q => r_RPM(4),
      R => \r_hall_one_hot_state_reg[0]_0\
    );
\r_RPM_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \r_RPM_reg[0]_0\(13),
      D => \r_RPM_reg[0]_0\(5),
      Q => r_RPM(5),
      R => \r_hall_one_hot_state_reg[0]_0\
    );
\r_RPM_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \r_RPM_reg[0]_0\(13),
      D => \r_RPM_reg[0]_0\(6),
      Q => r_RPM(6),
      R => \r_hall_one_hot_state_reg[0]_0\
    );
\r_RPM_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \r_RPM_reg[0]_0\(13),
      D => \r_RPM_reg[0]_0\(7),
      Q => r_RPM(7),
      R => \r_hall_one_hot_state_reg[0]_0\
    );
\r_RPM_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \r_RPM_reg[0]_0\(13),
      D => \r_RPM_reg[0]_0\(8),
      Q => r_RPM(8),
      R => \r_hall_one_hot_state_reg[0]_0\
    );
\r_RPM_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \r_RPM_reg[0]_0\(13),
      D => \r_RPM_reg[0]_0\(9),
      Q => r_RPM(9),
      R => \r_hall_one_hot_state_reg[0]_0\
    );
r_U_neg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3044"
    )
        port map (
      I0 => i_hall_state(2),
      I1 => i_hall_state(1),
      I2 => i_hall_state(0),
      I3 => i_sw_rot_ccw,
      O => r_U_neg_i_1_n_0
    );
r_U_neg_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => r_U_neg_i_1_n_0,
      Q => o_U_neg,
      R => \r_hall_one_hot_state_reg[0]_0\
    );
r_U_pos_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4430"
    )
        port map (
      I0 => i_hall_state(0),
      I1 => i_hall_state(1),
      I2 => i_hall_state(2),
      I3 => i_sw_rot_ccw,
      O => r_U_pos_i_1_n_0
    );
r_U_pos_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => r_U_pos_i_1_n_0,
      Q => o_U_pos,
      R => \r_hall_one_hot_state_reg[0]_0\
    );
r_V_neg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3044"
    )
        port map (
      I0 => i_hall_state(1),
      I1 => i_hall_state(0),
      I2 => i_hall_state(2),
      I3 => i_sw_rot_ccw,
      O => r_V_neg_i_1_n_0
    );
r_V_neg_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => r_V_neg_i_1_n_0,
      Q => o_V_neg,
      R => \r_hall_one_hot_state_reg[0]_0\
    );
r_V_pos_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4430"
    )
        port map (
      I0 => i_hall_state(2),
      I1 => i_hall_state(0),
      I2 => i_hall_state(1),
      I3 => i_sw_rot_ccw,
      O => r_V_pos_i_1_n_0
    );
r_V_pos_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => r_V_pos_i_1_n_0,
      Q => o_V_pos,
      R => \r_hall_one_hot_state_reg[0]_0\
    );
r_W_neg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3044"
    )
        port map (
      I0 => i_hall_state(0),
      I1 => i_hall_state(2),
      I2 => i_hall_state(1),
      I3 => i_sw_rot_ccw,
      O => r_W_neg_i_1_n_0
    );
r_W_neg_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => r_W_neg_i_1_n_0,
      Q => o_W_neg,
      R => \r_hall_one_hot_state_reg[0]_0\
    );
r_W_pos_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4430"
    )
        port map (
      I0 => i_hall_state(1),
      I1 => i_hall_state(2),
      I2 => i_hall_state(0),
      I3 => i_sw_rot_ccw,
      O => r_W_pos_i_1_n_0
    );
r_W_pos_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => r_W_pos_i_1_n_0,
      Q => o_W_pos,
      R => \r_hall_one_hot_state_reg[0]_0\
    );
r_get_RPM_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => w_get_RPM,
      I1 => \r_RPM_reg[0]_0\(13),
      I2 => \^o_get_rpm\,
      O => r_get_RPM_i_2_n_0
    );
r_get_RPM_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => i_hall_state(0),
      I1 => r_hall_state(0),
      I2 => r_hall_state(2),
      I3 => i_hall_state(2),
      I4 => r_hall_state(1),
      I5 => i_hall_state(1),
      O => w_get_RPM
    );
r_get_RPM_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \r_hall_state_tristate_oe_reg_n_0_[0]\,
      I1 => r_get_RPM_i_3_0,
      O => r_hall_state(0)
    );
r_get_RPM_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \r_hall_state_tristate_oe_reg_n_0_[2]\,
      I1 => r_get_RPM_i_3_0,
      O => r_hall_state(2)
    );
r_get_RPM_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \r_hall_state_tristate_oe_reg_n_0_[1]\,
      I1 => r_get_RPM_i_3_0,
      O => r_hall_state(1)
    );
r_get_RPM_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => r_get_RPM_i_2_n_0,
      Q => \^o_get_rpm\,
      R => \r_hall_one_hot_state_reg[0]_0\
    );
\r_hall_one_hot_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C191"
    )
        port map (
      I0 => i_hall_state(2),
      I1 => i_hall_state(1),
      I2 => i_hall_state(0),
      I3 => i_sw_rot_ccw,
      O => r_hall_one_hot_state(0)
    );
\r_hall_one_hot_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"91C1"
    )
        port map (
      I0 => i_hall_state(2),
      I1 => i_hall_state(1),
      I2 => i_hall_state(0),
      I3 => i_sw_rot_ccw,
      O => r_hall_one_hot_state(1)
    );
\r_hall_one_hot_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A815"
    )
        port map (
      I0 => i_hall_state(2),
      I1 => i_sw_rot_ccw,
      I2 => i_hall_state(1),
      I3 => i_hall_state(0),
      O => r_hall_one_hot_state(2)
    );
\r_hall_one_hot_state[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C04B"
    )
        port map (
      I0 => i_sw_rot_ccw,
      I1 => i_hall_state(2),
      I2 => i_hall_state(1),
      I3 => i_hall_state(0),
      O => r_hall_one_hot_state(3)
    );
\r_hall_one_hot_state[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C087"
    )
        port map (
      I0 => i_sw_rot_ccw,
      I1 => i_hall_state(2),
      I2 => i_hall_state(1),
      I3 => i_hall_state(0),
      O => r_hall_one_hot_state(4)
    );
\r_hall_one_hot_state[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A245"
    )
        port map (
      I0 => i_hall_state(2),
      I1 => i_sw_rot_ccw,
      I2 => i_hall_state(1),
      I3 => i_hall_state(0),
      O => r_hall_one_hot_state(5)
    );
\r_hall_one_hot_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => r_hall_one_hot_state(0),
      Q => o_hall_one_hot_state(0),
      R => \r_hall_one_hot_state_reg[0]_0\
    );
\r_hall_one_hot_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => r_hall_one_hot_state(1),
      Q => o_hall_one_hot_state(1),
      R => \r_hall_one_hot_state_reg[0]_0\
    );
\r_hall_one_hot_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => r_hall_one_hot_state(2),
      Q => o_hall_one_hot_state(2),
      R => \r_hall_one_hot_state_reg[0]_0\
    );
\r_hall_one_hot_state_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => r_hall_one_hot_state(3),
      Q => o_hall_one_hot_state(3),
      R => \r_hall_one_hot_state_reg[0]_0\
    );
\r_hall_one_hot_state_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => r_hall_one_hot_state(4),
      Q => o_hall_one_hot_state(4),
      R => \r_hall_one_hot_state_reg[0]_0\
    );
\r_hall_one_hot_state_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => r_hall_one_hot_state(5),
      Q => o_hall_one_hot_state(5),
      R => \r_hall_one_hot_state_reg[0]_0\
    );
\r_hall_state_tristate_oe[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5751"
    )
        port map (
      I0 => i_hall_state(2),
      I1 => i_hall_state(1),
      I2 => i_sw_rot_ccw,
      I3 => i_hall_state(0),
      O => \r_hall_state__0\(0)
    );
\r_hall_state_tristate_oe[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8EAA"
    )
        port map (
      I0 => i_hall_state(2),
      I1 => i_hall_state(1),
      I2 => i_hall_state(0),
      I3 => i_sw_rot_ccw,
      O => \r_hall_state__0\(1)
    );
\r_hall_state_tristate_oe[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i_hall_state(1),
      I1 => i_sw_rot_ccw,
      O => \r_hall_state__0\(2)
    );
\r_hall_state_tristate_oe_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \r_hall_state__0\(0),
      Q => \r_hall_state_tristate_oe_reg_n_0_[0]\,
      R => \r_hall_one_hot_state_reg[0]_0\
    );
\r_hall_state_tristate_oe_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \r_hall_state__0\(1),
      Q => \r_hall_state_tristate_oe_reg_n_0_[1]\,
      R => \r_hall_one_hot_state_reg[0]_0\
    );
\r_hall_state_tristate_oe_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \r_hall_state__0\(2),
      Q => \r_hall_state_tristate_oe_reg_n_0_[2]\,
      R => \r_hall_one_hot_state_reg[0]_0\
    );
\r_plant_output[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_sw_enable_control,
      I1 => r_RPM(0),
      O => i_sw_enable_control_0
    );
\r_plant_output[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_sw_enable_control,
      I1 => r_RPM(10),
      O => i_sw_enable_control_10
    );
\r_plant_output[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_sw_enable_control,
      I1 => r_RPM(11),
      O => i_sw_enable_control_11
    );
\r_plant_output[12]_inv_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => i_sw_enable_control,
      I1 => r_RPM(12),
      O => i_sw_enable_control_12
    );
\r_plant_output[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_sw_enable_control,
      I1 => r_RPM(1),
      O => i_sw_enable_control_1
    );
\r_plant_output[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_sw_enable_control,
      I1 => r_RPM(2),
      O => i_sw_enable_control_2
    );
\r_plant_output[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_sw_enable_control,
      I1 => r_RPM(3),
      O => i_sw_enable_control_3
    );
\r_plant_output[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_sw_enable_control,
      I1 => r_RPM(4),
      O => i_sw_enable_control_4
    );
\r_plant_output[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_sw_enable_control,
      I1 => r_RPM(5),
      O => i_sw_enable_control_5
    );
\r_plant_output[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_sw_enable_control,
      I1 => r_RPM(6),
      O => i_sw_enable_control_6
    );
\r_plant_output[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_sw_enable_control,
      I1 => r_RPM(7),
      O => i_sw_enable_control_7
    );
\r_plant_output[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_sw_enable_control,
      I1 => r_RPM(8),
      O => i_sw_enable_control_8
    );
\r_plant_output[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_sw_enable_control,
      I1 => r_RPM(9),
      O => i_sw_enable_control_9
    );
\r_time_count[0]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^w_time_count\(30),
      I1 => \^w_time_count\(29),
      I2 => \^w_time_count\(0),
      I3 => \^w_time_count\(31),
      O => \r_time_count[0]_i_10_n_0\
    );
\r_time_count[0]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^w_time_count\(6),
      I1 => \^w_time_count\(5),
      I2 => \^w_time_count\(8),
      I3 => \^w_time_count\(7),
      O => \r_time_count[0]_i_11_n_0\
    );
\r_time_count[0]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^w_time_count\(14),
      I1 => \^w_time_count\(13),
      I2 => \^w_time_count\(16),
      I3 => \^w_time_count\(15),
      O => \r_time_count[0]_i_12_n_0\
    );
\r_time_count[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555554"
    )
        port map (
      I0 => \^o_get_rpm\,
      I1 => \r_time_count[0]_i_4_n_0\,
      I2 => \r_time_count[0]_i_5_n_0\,
      I3 => \r_time_count[0]_i_6_n_0\,
      I4 => \r_time_count[0]_i_7_n_0\,
      O => r_time_count
    );
\r_time_count[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => \^w_time_count\(19),
      I1 => \^w_time_count\(20),
      I2 => \^w_time_count\(17),
      I3 => \^w_time_count\(18),
      I4 => \r_time_count[0]_i_9_n_0\,
      O => \r_time_count[0]_i_4_n_0\
    );
\r_time_count[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => \^w_time_count\(27),
      I1 => \^w_time_count\(28),
      I2 => \^w_time_count\(25),
      I3 => \^w_time_count\(26),
      I4 => \r_time_count[0]_i_10_n_0\,
      O => \r_time_count[0]_i_5_n_0\
    );
\r_time_count[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => \^w_time_count\(3),
      I1 => \^w_time_count\(4),
      I2 => \^w_time_count\(1),
      I3 => \^w_time_count\(2),
      I4 => \r_time_count[0]_i_11_n_0\,
      O => \r_time_count[0]_i_6_n_0\
    );
\r_time_count[0]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => \^w_time_count\(11),
      I1 => \^w_time_count\(12),
      I2 => \^w_time_count\(9),
      I3 => \^w_time_count\(10),
      I4 => \r_time_count[0]_i_12_n_0\,
      O => \r_time_count[0]_i_7_n_0\
    );
\r_time_count[0]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^w_time_count\(0),
      O => \r_time_count[0]_i_8_n_0\
    );
\r_time_count[0]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^w_time_count\(22),
      I1 => \^w_time_count\(21),
      I2 => \^w_time_count\(24),
      I3 => \^w_time_count\(23),
      O => \r_time_count[0]_i_9_n_0\
    );
\r_time_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_time_count,
      D => \r_time_count_reg[0]_i_3_n_7\,
      Q => \^w_time_count\(0),
      R => \r_time_count_reg[31]_0\
    );
\r_time_count_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \r_time_count_reg[0]_i_3_n_0\,
      CO(2) => \r_time_count_reg[0]_i_3_n_1\,
      CO(1) => \r_time_count_reg[0]_i_3_n_2\,
      CO(0) => \r_time_count_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \r_time_count_reg[0]_i_3_n_4\,
      O(2) => \r_time_count_reg[0]_i_3_n_5\,
      O(1) => \r_time_count_reg[0]_i_3_n_6\,
      O(0) => \r_time_count_reg[0]_i_3_n_7\,
      S(3 downto 1) => \^w_time_count\(3 downto 1),
      S(0) => \r_time_count[0]_i_8_n_0\
    );
\r_time_count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_time_count,
      D => \r_time_count_reg[8]_i_1_n_5\,
      Q => \^w_time_count\(10),
      R => \r_time_count_reg[31]_0\
    );
\r_time_count_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_time_count,
      D => \r_time_count_reg[8]_i_1_n_4\,
      Q => \^w_time_count\(11),
      R => \r_time_count_reg[31]_0\
    );
\r_time_count_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_time_count,
      D => \r_time_count_reg[12]_i_1_n_7\,
      Q => \^w_time_count\(12),
      R => \r_time_count_reg[31]_0\
    );
\r_time_count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_time_count_reg[8]_i_1_n_0\,
      CO(3) => \r_time_count_reg[12]_i_1_n_0\,
      CO(2) => \r_time_count_reg[12]_i_1_n_1\,
      CO(1) => \r_time_count_reg[12]_i_1_n_2\,
      CO(0) => \r_time_count_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_time_count_reg[12]_i_1_n_4\,
      O(2) => \r_time_count_reg[12]_i_1_n_5\,
      O(1) => \r_time_count_reg[12]_i_1_n_6\,
      O(0) => \r_time_count_reg[12]_i_1_n_7\,
      S(3 downto 0) => \^w_time_count\(15 downto 12)
    );
\r_time_count_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_time_count,
      D => \r_time_count_reg[12]_i_1_n_6\,
      Q => \^w_time_count\(13),
      R => \r_time_count_reg[31]_0\
    );
\r_time_count_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_time_count,
      D => \r_time_count_reg[12]_i_1_n_5\,
      Q => \^w_time_count\(14),
      R => \r_time_count_reg[31]_0\
    );
\r_time_count_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_time_count,
      D => \r_time_count_reg[12]_i_1_n_4\,
      Q => \^w_time_count\(15),
      R => \r_time_count_reg[31]_0\
    );
\r_time_count_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_time_count,
      D => \r_time_count_reg[16]_i_1_n_7\,
      Q => \^w_time_count\(16),
      R => \r_time_count_reg[31]_0\
    );
\r_time_count_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_time_count_reg[12]_i_1_n_0\,
      CO(3) => \r_time_count_reg[16]_i_1_n_0\,
      CO(2) => \r_time_count_reg[16]_i_1_n_1\,
      CO(1) => \r_time_count_reg[16]_i_1_n_2\,
      CO(0) => \r_time_count_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_time_count_reg[16]_i_1_n_4\,
      O(2) => \r_time_count_reg[16]_i_1_n_5\,
      O(1) => \r_time_count_reg[16]_i_1_n_6\,
      O(0) => \r_time_count_reg[16]_i_1_n_7\,
      S(3 downto 0) => \^w_time_count\(19 downto 16)
    );
\r_time_count_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_time_count,
      D => \r_time_count_reg[16]_i_1_n_6\,
      Q => \^w_time_count\(17),
      R => \r_time_count_reg[31]_0\
    );
\r_time_count_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_time_count,
      D => \r_time_count_reg[16]_i_1_n_5\,
      Q => \^w_time_count\(18),
      R => \r_time_count_reg[31]_0\
    );
\r_time_count_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_time_count,
      D => \r_time_count_reg[16]_i_1_n_4\,
      Q => \^w_time_count\(19),
      R => \r_time_count_reg[31]_0\
    );
\r_time_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_time_count,
      D => \r_time_count_reg[0]_i_3_n_6\,
      Q => \^w_time_count\(1),
      R => \r_time_count_reg[31]_0\
    );
\r_time_count_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_time_count,
      D => \r_time_count_reg[20]_i_1_n_7\,
      Q => \^w_time_count\(20),
      R => \r_time_count_reg[31]_0\
    );
\r_time_count_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_time_count_reg[16]_i_1_n_0\,
      CO(3) => \r_time_count_reg[20]_i_1_n_0\,
      CO(2) => \r_time_count_reg[20]_i_1_n_1\,
      CO(1) => \r_time_count_reg[20]_i_1_n_2\,
      CO(0) => \r_time_count_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_time_count_reg[20]_i_1_n_4\,
      O(2) => \r_time_count_reg[20]_i_1_n_5\,
      O(1) => \r_time_count_reg[20]_i_1_n_6\,
      O(0) => \r_time_count_reg[20]_i_1_n_7\,
      S(3 downto 0) => \^w_time_count\(23 downto 20)
    );
\r_time_count_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_time_count,
      D => \r_time_count_reg[20]_i_1_n_6\,
      Q => \^w_time_count\(21),
      R => \r_time_count_reg[31]_0\
    );
\r_time_count_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_time_count,
      D => \r_time_count_reg[20]_i_1_n_5\,
      Q => \^w_time_count\(22),
      R => \r_time_count_reg[31]_0\
    );
\r_time_count_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_time_count,
      D => \r_time_count_reg[20]_i_1_n_4\,
      Q => \^w_time_count\(23),
      R => \r_time_count_reg[31]_0\
    );
\r_time_count_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_time_count,
      D => \r_time_count_reg[24]_i_1_n_7\,
      Q => \^w_time_count\(24),
      R => \r_time_count_reg[31]_0\
    );
\r_time_count_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_time_count_reg[20]_i_1_n_0\,
      CO(3) => \r_time_count_reg[24]_i_1_n_0\,
      CO(2) => \r_time_count_reg[24]_i_1_n_1\,
      CO(1) => \r_time_count_reg[24]_i_1_n_2\,
      CO(0) => \r_time_count_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_time_count_reg[24]_i_1_n_4\,
      O(2) => \r_time_count_reg[24]_i_1_n_5\,
      O(1) => \r_time_count_reg[24]_i_1_n_6\,
      O(0) => \r_time_count_reg[24]_i_1_n_7\,
      S(3 downto 0) => \^w_time_count\(27 downto 24)
    );
\r_time_count_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_time_count,
      D => \r_time_count_reg[24]_i_1_n_6\,
      Q => \^w_time_count\(25),
      R => \r_time_count_reg[31]_0\
    );
\r_time_count_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_time_count,
      D => \r_time_count_reg[24]_i_1_n_5\,
      Q => \^w_time_count\(26),
      R => \r_time_count_reg[31]_0\
    );
\r_time_count_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_time_count,
      D => \r_time_count_reg[24]_i_1_n_4\,
      Q => \^w_time_count\(27),
      R => \r_time_count_reg[31]_0\
    );
\r_time_count_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_time_count,
      D => \r_time_count_reg[28]_i_1_n_7\,
      Q => \^w_time_count\(28),
      R => \r_time_count_reg[31]_0\
    );
\r_time_count_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_time_count_reg[24]_i_1_n_0\,
      CO(3) => \NLW_r_time_count_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \r_time_count_reg[28]_i_1_n_1\,
      CO(1) => \r_time_count_reg[28]_i_1_n_2\,
      CO(0) => \r_time_count_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_time_count_reg[28]_i_1_n_4\,
      O(2) => \r_time_count_reg[28]_i_1_n_5\,
      O(1) => \r_time_count_reg[28]_i_1_n_6\,
      O(0) => \r_time_count_reg[28]_i_1_n_7\,
      S(3 downto 0) => \^w_time_count\(31 downto 28)
    );
\r_time_count_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_time_count,
      D => \r_time_count_reg[28]_i_1_n_6\,
      Q => \^w_time_count\(29),
      R => \r_time_count_reg[31]_0\
    );
\r_time_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_time_count,
      D => \r_time_count_reg[0]_i_3_n_5\,
      Q => \^w_time_count\(2),
      R => \r_time_count_reg[31]_0\
    );
\r_time_count_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_time_count,
      D => \r_time_count_reg[28]_i_1_n_5\,
      Q => \^w_time_count\(30),
      R => \r_time_count_reg[31]_0\
    );
\r_time_count_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_time_count,
      D => \r_time_count_reg[28]_i_1_n_4\,
      Q => \^w_time_count\(31),
      R => \r_time_count_reg[31]_0\
    );
\r_time_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_time_count,
      D => \r_time_count_reg[0]_i_3_n_4\,
      Q => \^w_time_count\(3),
      R => \r_time_count_reg[31]_0\
    );
\r_time_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_time_count,
      D => \r_time_count_reg[4]_i_1_n_7\,
      Q => \^w_time_count\(4),
      R => \r_time_count_reg[31]_0\
    );
\r_time_count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_time_count_reg[0]_i_3_n_0\,
      CO(3) => \r_time_count_reg[4]_i_1_n_0\,
      CO(2) => \r_time_count_reg[4]_i_1_n_1\,
      CO(1) => \r_time_count_reg[4]_i_1_n_2\,
      CO(0) => \r_time_count_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_time_count_reg[4]_i_1_n_4\,
      O(2) => \r_time_count_reg[4]_i_1_n_5\,
      O(1) => \r_time_count_reg[4]_i_1_n_6\,
      O(0) => \r_time_count_reg[4]_i_1_n_7\,
      S(3 downto 0) => \^w_time_count\(7 downto 4)
    );
\r_time_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_time_count,
      D => \r_time_count_reg[4]_i_1_n_6\,
      Q => \^w_time_count\(5),
      R => \r_time_count_reg[31]_0\
    );
\r_time_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_time_count,
      D => \r_time_count_reg[4]_i_1_n_5\,
      Q => \^w_time_count\(6),
      R => \r_time_count_reg[31]_0\
    );
\r_time_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_time_count,
      D => \r_time_count_reg[4]_i_1_n_4\,
      Q => \^w_time_count\(7),
      R => \r_time_count_reg[31]_0\
    );
\r_time_count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_time_count,
      D => \r_time_count_reg[8]_i_1_n_7\,
      Q => \^w_time_count\(8),
      R => \r_time_count_reg[31]_0\
    );
\r_time_count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_time_count_reg[4]_i_1_n_0\,
      CO(3) => \r_time_count_reg[8]_i_1_n_0\,
      CO(2) => \r_time_count_reg[8]_i_1_n_1\,
      CO(1) => \r_time_count_reg[8]_i_1_n_2\,
      CO(0) => \r_time_count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_time_count_reg[8]_i_1_n_4\,
      O(2) => \r_time_count_reg[8]_i_1_n_5\,
      O(1) => \r_time_count_reg[8]_i_1_n_6\,
      O(0) => \r_time_count_reg[8]_i_1_n_7\,
      S(3 downto 0) => \^w_time_count\(11 downto 8)
    );
\r_time_count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_time_count,
      D => \r_time_count_reg[8]_i_1_n_6\,
      Q => \^w_time_count\(9),
      R => \r_time_count_reg[31]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_2_myBLDC_Controller_0_0_decoder7Seg is
  port (
    o_fnd : out STD_LOGIC_VECTOR ( 6 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_2_myBLDC_Controller_0_0_decoder7Seg : entity is "decoder7Seg";
end design_2_myBLDC_Controller_0_0_decoder7Seg;

architecture STRUCTURE of design_2_myBLDC_Controller_0_0_decoder7Seg is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \o_fnd[1]_INST_0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \o_fnd[2]_INST_0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \o_fnd[3]_INST_0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \o_fnd[4]_INST_0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \o_fnd[5]_INST_0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \o_fnd[6]_INST_0\ : label is "soft_lutpair30";
begin
\o_fnd[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4025"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      O => o_fnd(0)
    );
\o_fnd[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5190"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Q(0),
      I3 => Q(1),
      O => o_fnd(1)
    );
\o_fnd[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5710"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(0),
      O => o_fnd(2)
    );
\o_fnd[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C234"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Q(0),
      I3 => Q(1),
      O => o_fnd(3)
    );
\o_fnd[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A210"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(2),
      O => o_fnd(4)
    );
\o_fnd[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AC48"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Q(0),
      I3 => Q(1),
      O => o_fnd(5)
    );
\o_fnd[7]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2094"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Q(0),
      I3 => Q(1),
      O => o_fnd(6)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_2_myBLDC_Controller_0_0_edge_detector_n is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    eoc_out : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_2_myBLDC_Controller_0_0_edge_detector_n : entity is "edge_detector_n";
end design_2_myBLDC_Controller_0_0_edge_detector_n;

architecture STRUCTURE of design_2_myBLDC_Controller_0_0_edge_detector_n is
  signal r_cp : STD_LOGIC;
  signal r_cp_z : STD_LOGIC;
begin
r_cp_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => eoc_out,
      Q => r_cp
    );
r_cp_z_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => r_cp,
      Q => r_cp_z
    );
\r_value[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => r_cp_z,
      I1 => r_cp,
      O => E(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_2_myBLDC_Controller_0_0_edge_detector_n_1 is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_2_myBLDC_Controller_0_0_edge_detector_n_1 : entity is "edge_detector_n";
end design_2_myBLDC_Controller_0_0_edge_detector_n_1;

architecture STRUCTURE of design_2_myBLDC_Controller_0_0_edge_detector_n_1 is
  signal r_cp : STD_LOGIC;
  signal r_cp_z : STD_LOGIC;
begin
r_cp_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => S(0),
      Q => r_cp
    );
r_cp_z_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => r_cp,
      Q => r_cp_z
    );
\r_fnd_sel[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => r_cp,
      I1 => r_cp_z,
      O => E(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_2_myBLDC_Controller_0_0_edge_detector_n_10 is
  port (
    sel : out STD_LOGIC;
    r_clk : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    r_cp_reg_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_2_myBLDC_Controller_0_0_edge_detector_n_10 : entity is "edge_detector_n";
end design_2_myBLDC_Controller_0_0_edge_detector_n_10;

architecture STRUCTURE of design_2_myBLDC_Controller_0_0_edge_detector_n_10 is
  signal r_cp : STD_LOGIC;
  signal r_cp_z : STD_LOGIC;
begin
r_cp_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => r_cp_reg_0,
      D => r_clk,
      Q => r_cp
    );
r_cp_z_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => r_cp_reg_0,
      D => r_cp,
      Q => r_cp_z
    );
r_pwm_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => r_cp_z,
      I1 => r_cp,
      O => sel
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_2_myBLDC_Controller_0_0_edge_detector_n_11 is
  port (
    w_clk_us_posedge : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_2_myBLDC_Controller_0_0_edge_detector_n_11 : entity is "edge_detector_n";
end design_2_myBLDC_Controller_0_0_edge_detector_n_11;

architecture STRUCTURE of design_2_myBLDC_Controller_0_0_edge_detector_n_11 is
  signal p_0_out : STD_LOGIC;
  signal r_cp : STD_LOGIC;
  signal r_cp_z : STD_LOGIC;
begin
\r_cp_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEAEAEAEAEAEAAA"
    )
        port map (
      I0 => Q(5),
      I1 => Q(3),
      I2 => Q(4),
      I3 => Q(2),
      I4 => Q(1),
      I5 => Q(0),
      O => p_0_out
    );
\r_cp_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => r_cp,
      I1 => r_cp_z,
      O => w_clk_us_posedge
    );
r_cp_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => p_0_out,
      Q => r_cp
    );
r_cp_z_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => r_cp,
      Q => r_cp_z
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_2_myBLDC_Controller_0_0_edge_detector_n_12 is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    w_clk_us_posedge : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_2_myBLDC_Controller_0_0_edge_detector_n_12 : entity is "edge_detector_n";
end design_2_myBLDC_Controller_0_0_edge_detector_n_12;

architecture STRUCTURE of design_2_myBLDC_Controller_0_0_edge_detector_n_12 is
  signal r_cp : STD_LOGIC;
  signal r_cp_z : STD_LOGIC;
begin
\r_count[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => r_cp_z,
      I1 => r_cp,
      O => E(0)
    );
r_cp_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => w_clk_us_posedge,
      Q => r_cp
    );
r_cp_z_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => r_cp,
      Q => r_cp_z
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_2_myBLDC_Controller_0_0_edge_detector_n_13 is
  port (
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    w_calculate : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    i_sw_enable_control : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_2_myBLDC_Controller_0_0_edge_detector_n_13 : entity is "edge_detector_n";
end design_2_myBLDC_Controller_0_0_edge_detector_n_13;

architecture STRUCTURE of design_2_myBLDC_Controller_0_0_edge_detector_n_13 is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal r_cp : STD_LOGIC;
  signal r_cp_i_1_n_0 : STD_LOGIC;
  signal r_cp_i_2_n_0 : STD_LOGIC;
  signal r_cp_z : STD_LOGIC;
begin
  AR(0) <= \^ar\(0);
r_cp_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEEA"
    )
        port map (
      I0 => Q(7),
      I1 => r_cp_i_2_n_0,
      I2 => Q(1),
      I3 => Q(0),
      O => r_cp_i_1_n_0
    );
r_cp_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => Q(2),
      I1 => Q(5),
      I2 => Q(6),
      I3 => Q(3),
      I4 => Q(4),
      O => r_cp_i_2_n_0
    );
r_cp_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => r_cp_i_1_n_0,
      Q => r_cp
    );
r_cp_z_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => r_cp,
      Q => r_cp_z
    );
r_get_RPM_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => \^ar\(0)
    );
r_integral_component1_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => i_sw_enable_control,
      I1 => r_cp_z,
      I2 => r_cp,
      O => w_calculate
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_2_myBLDC_Controller_0_0_edge_detector_n_3 is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    r_debounced_btn : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \r_gain_reg[0]\ : in STD_LOGIC;
    r_cp : in STD_LOGIC;
    r_cp_z : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_2_myBLDC_Controller_0_0_edge_detector_n_3 : entity is "edge_detector_n";
end design_2_myBLDC_Controller_0_0_edge_detector_n_3;

architecture STRUCTURE of design_2_myBLDC_Controller_0_0_edge_detector_n_3 is
  signal r_cp_0 : STD_LOGIC;
  signal r_cp_z_1 : STD_LOGIC;
begin
p_0_out_carry_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"65"
    )
        port map (
      I0 => Q(0),
      I1 => r_cp_z_1,
      I2 => r_cp_0,
      O => S(0)
    );
r_cp_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => r_debounced_btn,
      Q => r_cp_0
    );
r_cp_z_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => r_cp_0,
      Q => r_cp_z_1
    );
\r_gain[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44444F44"
    )
        port map (
      I0 => r_cp_z_1,
      I1 => r_cp_0,
      I2 => \r_gain_reg[0]\,
      I3 => r_cp,
      I4 => r_cp_z,
      O => E(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_2_myBLDC_Controller_0_0_edge_detector_n_4 is
  port (
    r_delay_counter_posedge : out STD_LOGIC;
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_2_myBLDC_Controller_0_0_edge_detector_n_4 : entity is "edge_detector_n";
end design_2_myBLDC_Controller_0_0_edge_detector_n_4;

architecture STRUCTURE of design_2_myBLDC_Controller_0_0_edge_detector_n_4 is
  signal \BTN_I_GAIN/BTN_DEC_CTRL/ED_DELAY_COUNTER/r_cp\ : STD_LOGIC;
  signal \BTN_I_GAIN/BTN_DEC_CTRL/ED_DELAY_COUNTER/r_cp_z\ : STD_LOGIC;
begin
r_cp_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => S(0),
      Q => \BTN_I_GAIN/BTN_DEC_CTRL/ED_DELAY_COUNTER/r_cp\
    );
r_cp_z_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => \BTN_I_GAIN/BTN_DEC_CTRL/ED_DELAY_COUNTER/r_cp\,
      Q => \BTN_I_GAIN/BTN_DEC_CTRL/ED_DELAY_COUNTER/r_cp_z\
    );
r_debounced_btn_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \BTN_I_GAIN/BTN_DEC_CTRL/ED_DELAY_COUNTER/r_cp\,
      I1 => \BTN_I_GAIN/BTN_DEC_CTRL/ED_DELAY_COUNTER/r_cp_z\,
      O => r_delay_counter_posedge
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_2_myBLDC_Controller_0_0_edge_detector_n_5 is
  port (
    r_cp : out STD_LOGIC;
    r_cp_z : out STD_LOGIC;
    r_cp_reg_0 : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_2_myBLDC_Controller_0_0_edge_detector_n_5 : entity is "edge_detector_n";
end design_2_myBLDC_Controller_0_0_edge_detector_n_5;

architecture STRUCTURE of design_2_myBLDC_Controller_0_0_edge_detector_n_5 is
  signal \^r_cp\ : STD_LOGIC;
begin
  r_cp <= \^r_cp\;
r_cp_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => r_cp_reg_0,
      Q => \^r_cp\
    );
r_cp_z_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => \^r_cp\,
      Q => r_cp_z
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_2_myBLDC_Controller_0_0_edge_detector_n_8 is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    r_cp_reg_0 : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \r_gain_reg[0]\ : in STD_LOGIC;
    r_cp : in STD_LOGIC;
    r_cp_z : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_2_myBLDC_Controller_0_0_edge_detector_n_8 : entity is "edge_detector_n";
end design_2_myBLDC_Controller_0_0_edge_detector_n_8;

architecture STRUCTURE of design_2_myBLDC_Controller_0_0_edge_detector_n_8 is
  signal r_cp_0 : STD_LOGIC;
  signal r_cp_z_1 : STD_LOGIC;
begin
\p_0_out__18_carry_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"65"
    )
        port map (
      I0 => Q(0),
      I1 => r_cp_z_1,
      I2 => r_cp_0,
      O => S(0)
    );
r_cp_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => r_cp_reg_0,
      Q => r_cp_0
    );
r_cp_z_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => r_cp_0,
      Q => r_cp_z_1
    );
\r_gain[7]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44444F44"
    )
        port map (
      I0 => r_cp_z_1,
      I1 => r_cp_0,
      I2 => \r_gain_reg[0]\,
      I3 => r_cp,
      I4 => r_cp_z,
      O => E(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_2_myBLDC_Controller_0_0_edge_detector_n_9 is
  port (
    r_cp : out STD_LOGIC;
    r_cp_z : out STD_LOGIC;
    r_cp_reg_0 : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_2_myBLDC_Controller_0_0_edge_detector_n_9 : entity is "edge_detector_n";
end design_2_myBLDC_Controller_0_0_edge_detector_n_9;

architecture STRUCTURE of design_2_myBLDC_Controller_0_0_edge_detector_n_9 is
  signal \^r_cp\ : STD_LOGIC;
begin
  r_cp <= \^r_cp\;
r_cp_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => r_cp_reg_0,
      Q => \^r_cp\
    );
r_cp_z_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => \^r_cp\,
      Q => r_cp_z
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_2_myBLDC_Controller_0_0_myBLDC_Controller_v1_0_S00_AXI is
  port (
    axi_awready_reg_0 : out STD_LOGIC;
    axi_wready_reg_0 : out STD_LOGIC;
    axi_arready_reg_0 : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 13 downto 0 );
    \slv_reg0_reg[31]_0\ : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    P : in STD_LOGIC_VECTOR ( 14 downto 0 );
    \axi_rdata_reg[11]_0\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    w_time_count : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \axi_rdata_reg[13]_0\ : in STD_LOGIC_VECTOR ( 13 downto 0 );
    w_control_input : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \axi_rdata_reg[23]_0\ : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_2_myBLDC_Controller_0_0_myBLDC_Controller_v1_0_S00_AXI : entity is "myBLDC_Controller_v1_0_S00_AXI";
end design_2_myBLDC_Controller_0_0_myBLDC_Controller_v1_0_S00_AXI;

architecture STRUCTURE of design_2_myBLDC_Controller_0_0_myBLDC_Controller_v1_0_S00_AXI is
  signal \^q\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[4]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal \^axi_arready_reg_0\ : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[4]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal \^axi_awready_reg_0\ : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \axi_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[22]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[22]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[24]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[24]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[25]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[25]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[26]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[26]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[27]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[27]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[28]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[28]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[29]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[29]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[30]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[30]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_3_n_0\ : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal \^axi_wready_reg_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal slv_reg0 : STD_LOGIC_VECTOR ( 30 downto 13 );
  signal slv_reg7 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg7[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg7[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg7[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg7[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_rden__0\ : STD_LOGIC;
  signal \slv_reg_wren__0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of axi_awready_i_1 : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair43";
begin
  Q(13 downto 0) <= \^q\(13 downto 0);
  axi_arready_reg_0 <= \^axi_arready_reg_0\;
  axi_awready_reg_0 <= \^axi_awready_reg_0\;
  axi_wready_reg_0 <= \^axi_wready_reg_0\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFC4CCC4CCC4CC"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => aw_en_reg_n_0,
      I2 => \^axi_awready_reg_0\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => SR(0)
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => s00_axi_arvalid,
      I2 => \^axi_arready_reg_0\,
      I3 => sel0(0),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => s00_axi_arvalid,
      I2 => \^axi_arready_reg_0\,
      I3 => sel0(1),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(2),
      I1 => s00_axi_arvalid,
      I2 => \^axi_arready_reg_0\,
      I3 => sel0(2),
      O => \axi_araddr[4]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => sel0(0),
      R => SR(0)
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => sel0(1),
      R => SR(0)
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[4]_i_1_n_0\,
      Q => sel0(2),
      R => SR(0)
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^axi_arready_reg_0\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^axi_arready_reg_0\,
      R => SR(0)
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => s00_axi_wvalid,
      I2 => \^axi_awready_reg_0\,
      I3 => aw_en_reg_n_0,
      I4 => s00_axi_awvalid,
      I5 => p_0_in(0),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => s00_axi_wvalid,
      I2 => \^axi_awready_reg_0\,
      I3 => aw_en_reg_n_0,
      I4 => s00_axi_awvalid,
      I5 => p_0_in(1),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => s00_axi_awaddr(2),
      I1 => s00_axi_wvalid,
      I2 => \^axi_awready_reg_0\,
      I3 => aw_en_reg_n_0,
      I4 => s00_axi_awvalid,
      I5 => p_0_in(2),
      O => \axi_awaddr[4]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => p_0_in(0),
      R => SR(0)
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => p_0_in(1),
      R => SR(0)
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[4]_i_1_n_0\,
      Q => p_0_in(2),
      R => SR(0)
    );
axi_awready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \^axi_awready_reg_0\,
      I2 => aw_en_reg_n_0,
      I3 => s00_axi_awvalid,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^axi_awready_reg_0\,
      R => SR(0)
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^axi_awready_reg_0\,
      I3 => \^axi_wready_reg_0\,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => SR(0)
    );
\axi_rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => P(0),
      I1 => \axi_rdata_reg[11]_0\(0),
      I2 => sel0(1),
      I3 => w_time_count(0),
      I4 => sel0(0),
      I5 => \^q\(0),
      O => \axi_rdata[0]_i_2_n_0\
    );
\axi_rdata[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(0),
      I1 => \axi_rdata_reg[13]_0\(0),
      I2 => sel0(1),
      I3 => w_control_input(0),
      I4 => sel0(0),
      I5 => \axi_rdata_reg[23]_0\(0),
      O => \axi_rdata[0]_i_3_n_0\
    );
\axi_rdata[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => P(10),
      I1 => \axi_rdata_reg[11]_0\(10),
      I2 => sel0(1),
      I3 => w_time_count(10),
      I4 => sel0(0),
      I5 => \^q\(10),
      O => \axi_rdata[10]_i_2_n_0\
    );
\axi_rdata[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(10),
      I1 => \axi_rdata_reg[13]_0\(10),
      I2 => sel0(1),
      I3 => w_control_input(10),
      I4 => sel0(0),
      I5 => \axi_rdata_reg[23]_0\(10),
      O => \axi_rdata[10]_i_3_n_0\
    );
\axi_rdata[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => P(11),
      I1 => \axi_rdata_reg[11]_0\(11),
      I2 => sel0(1),
      I3 => w_time_count(11),
      I4 => sel0(0),
      I5 => \^q\(11),
      O => \axi_rdata[11]_i_2_n_0\
    );
\axi_rdata[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(11),
      I1 => \axi_rdata_reg[13]_0\(11),
      I2 => sel0(1),
      I3 => w_control_input(11),
      I4 => sel0(0),
      I5 => \axi_rdata_reg[23]_0\(11),
      O => \axi_rdata[11]_i_3_n_0\
    );
\axi_rdata[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => P(12),
      I1 => sel0(1),
      I2 => w_time_count(12),
      I3 => sel0(0),
      I4 => \^q\(12),
      O => \axi_rdata[12]_i_2_n_0\
    );
\axi_rdata[12]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg7(12),
      I1 => \axi_rdata_reg[13]_0\(12),
      I2 => sel0(1),
      I3 => \axi_rdata_reg[23]_0\(12),
      I4 => sel0(0),
      O => \axi_rdata[12]_i_3_n_0\
    );
\axi_rdata[13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => P(13),
      I1 => sel0(1),
      I2 => w_time_count(13),
      I3 => sel0(0),
      I4 => slv_reg0(13),
      O => \axi_rdata[13]_i_2_n_0\
    );
\axi_rdata[13]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg7(13),
      I1 => \axi_rdata_reg[13]_0\(13),
      I2 => sel0(1),
      I3 => \axi_rdata_reg[23]_0\(13),
      I4 => sel0(0),
      O => \axi_rdata[13]_i_3_n_0\
    );
\axi_rdata[14]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => P(14),
      I1 => sel0(1),
      I2 => w_time_count(14),
      I3 => sel0(0),
      I4 => slv_reg0(14),
      O => \axi_rdata[14]_i_2_n_0\
    );
\axi_rdata[14]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg7(14),
      I1 => \axi_rdata_reg[13]_0\(13),
      I2 => sel0(1),
      I3 => \axi_rdata_reg[23]_0\(14),
      I4 => sel0(0),
      O => \axi_rdata[14]_i_3_n_0\
    );
\axi_rdata[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => P(14),
      I1 => sel0(1),
      I2 => w_time_count(15),
      I3 => sel0(0),
      I4 => slv_reg0(15),
      O => \axi_rdata[15]_i_2_n_0\
    );
\axi_rdata[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg7(15),
      I1 => \axi_rdata_reg[13]_0\(13),
      I2 => sel0(1),
      I3 => \axi_rdata_reg[23]_0\(15),
      I4 => sel0(0),
      O => \axi_rdata[15]_i_3_n_0\
    );
\axi_rdata[16]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => P(14),
      I1 => sel0(1),
      I2 => w_time_count(16),
      I3 => sel0(0),
      I4 => slv_reg0(16),
      O => \axi_rdata[16]_i_2_n_0\
    );
\axi_rdata[16]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg7(16),
      I1 => \axi_rdata_reg[13]_0\(13),
      I2 => sel0(1),
      I3 => \axi_rdata_reg[23]_0\(16),
      I4 => sel0(0),
      O => \axi_rdata[16]_i_3_n_0\
    );
\axi_rdata[17]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => P(14),
      I1 => sel0(1),
      I2 => w_time_count(17),
      I3 => sel0(0),
      I4 => slv_reg0(17),
      O => \axi_rdata[17]_i_2_n_0\
    );
\axi_rdata[17]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg7(17),
      I1 => \axi_rdata_reg[13]_0\(13),
      I2 => sel0(1),
      I3 => \axi_rdata_reg[23]_0\(17),
      I4 => sel0(0),
      O => \axi_rdata[17]_i_3_n_0\
    );
\axi_rdata[18]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => P(14),
      I1 => sel0(1),
      I2 => w_time_count(18),
      I3 => sel0(0),
      I4 => slv_reg0(18),
      O => \axi_rdata[18]_i_2_n_0\
    );
\axi_rdata[18]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg7(18),
      I1 => \axi_rdata_reg[13]_0\(13),
      I2 => sel0(1),
      I3 => \axi_rdata_reg[23]_0\(18),
      I4 => sel0(0),
      O => \axi_rdata[18]_i_3_n_0\
    );
\axi_rdata[19]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => P(14),
      I1 => sel0(1),
      I2 => w_time_count(19),
      I3 => sel0(0),
      I4 => slv_reg0(19),
      O => \axi_rdata[19]_i_2_n_0\
    );
\axi_rdata[19]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg7(19),
      I1 => \axi_rdata_reg[13]_0\(13),
      I2 => sel0(1),
      I3 => \axi_rdata_reg[23]_0\(19),
      I4 => sel0(0),
      O => \axi_rdata[19]_i_3_n_0\
    );
\axi_rdata[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => P(1),
      I1 => \axi_rdata_reg[11]_0\(1),
      I2 => sel0(1),
      I3 => w_time_count(1),
      I4 => sel0(0),
      I5 => \^q\(1),
      O => \axi_rdata[1]_i_2_n_0\
    );
\axi_rdata[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(1),
      I1 => \axi_rdata_reg[13]_0\(1),
      I2 => sel0(1),
      I3 => w_control_input(1),
      I4 => sel0(0),
      I5 => \axi_rdata_reg[23]_0\(1),
      O => \axi_rdata[1]_i_3_n_0\
    );
\axi_rdata[20]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => P(14),
      I1 => sel0(1),
      I2 => w_time_count(20),
      I3 => sel0(0),
      I4 => slv_reg0(20),
      O => \axi_rdata[20]_i_2_n_0\
    );
\axi_rdata[20]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg7(20),
      I1 => \axi_rdata_reg[13]_0\(13),
      I2 => sel0(1),
      I3 => \axi_rdata_reg[23]_0\(20),
      I4 => sel0(0),
      O => \axi_rdata[20]_i_3_n_0\
    );
\axi_rdata[21]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => P(14),
      I1 => sel0(1),
      I2 => w_time_count(21),
      I3 => sel0(0),
      I4 => slv_reg0(21),
      O => \axi_rdata[21]_i_2_n_0\
    );
\axi_rdata[21]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg7(21),
      I1 => \axi_rdata_reg[13]_0\(13),
      I2 => sel0(1),
      I3 => \axi_rdata_reg[23]_0\(21),
      I4 => sel0(0),
      O => \axi_rdata[21]_i_3_n_0\
    );
\axi_rdata[22]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => P(14),
      I1 => sel0(1),
      I2 => w_time_count(22),
      I3 => sel0(0),
      I4 => slv_reg0(22),
      O => \axi_rdata[22]_i_2_n_0\
    );
\axi_rdata[22]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg7(22),
      I1 => \axi_rdata_reg[13]_0\(13),
      I2 => sel0(1),
      I3 => \axi_rdata_reg[23]_0\(22),
      I4 => sel0(0),
      O => \axi_rdata[22]_i_3_n_0\
    );
\axi_rdata[23]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => P(14),
      I1 => sel0(1),
      I2 => w_time_count(23),
      I3 => sel0(0),
      I4 => slv_reg0(23),
      O => \axi_rdata[23]_i_2_n_0\
    );
\axi_rdata[23]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg7(23),
      I1 => \axi_rdata_reg[13]_0\(13),
      I2 => sel0(1),
      I3 => \axi_rdata_reg[23]_0\(23),
      I4 => sel0(0),
      O => \axi_rdata[23]_i_3_n_0\
    );
\axi_rdata[24]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => P(14),
      I1 => sel0(1),
      I2 => w_time_count(24),
      I3 => sel0(0),
      I4 => slv_reg0(24),
      O => \axi_rdata[24]_i_2_n_0\
    );
\axi_rdata[24]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg7(24),
      I1 => \axi_rdata_reg[13]_0\(13),
      I2 => sel0(1),
      I3 => \axi_rdata_reg[23]_0\(23),
      I4 => sel0(0),
      O => \axi_rdata[24]_i_3_n_0\
    );
\axi_rdata[25]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => P(14),
      I1 => sel0(1),
      I2 => w_time_count(25),
      I3 => sel0(0),
      I4 => slv_reg0(25),
      O => \axi_rdata[25]_i_2_n_0\
    );
\axi_rdata[25]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg7(25),
      I1 => \axi_rdata_reg[13]_0\(13),
      I2 => sel0(1),
      I3 => \axi_rdata_reg[23]_0\(23),
      I4 => sel0(0),
      O => \axi_rdata[25]_i_3_n_0\
    );
\axi_rdata[26]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => P(14),
      I1 => sel0(1),
      I2 => w_time_count(26),
      I3 => sel0(0),
      I4 => slv_reg0(26),
      O => \axi_rdata[26]_i_2_n_0\
    );
\axi_rdata[26]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg7(26),
      I1 => \axi_rdata_reg[13]_0\(13),
      I2 => sel0(1),
      I3 => \axi_rdata_reg[23]_0\(23),
      I4 => sel0(0),
      O => \axi_rdata[26]_i_3_n_0\
    );
\axi_rdata[27]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => P(14),
      I1 => sel0(1),
      I2 => w_time_count(27),
      I3 => sel0(0),
      I4 => slv_reg0(27),
      O => \axi_rdata[27]_i_2_n_0\
    );
\axi_rdata[27]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg7(27),
      I1 => \axi_rdata_reg[13]_0\(13),
      I2 => sel0(1),
      I3 => \axi_rdata_reg[23]_0\(23),
      I4 => sel0(0),
      O => \axi_rdata[27]_i_3_n_0\
    );
\axi_rdata[28]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => P(14),
      I1 => sel0(1),
      I2 => w_time_count(28),
      I3 => sel0(0),
      I4 => slv_reg0(28),
      O => \axi_rdata[28]_i_2_n_0\
    );
\axi_rdata[28]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg7(28),
      I1 => \axi_rdata_reg[13]_0\(13),
      I2 => sel0(1),
      I3 => \axi_rdata_reg[23]_0\(23),
      I4 => sel0(0),
      O => \axi_rdata[28]_i_3_n_0\
    );
\axi_rdata[29]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => P(14),
      I1 => sel0(1),
      I2 => w_time_count(29),
      I3 => sel0(0),
      I4 => slv_reg0(29),
      O => \axi_rdata[29]_i_2_n_0\
    );
\axi_rdata[29]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg7(29),
      I1 => \axi_rdata_reg[13]_0\(13),
      I2 => sel0(1),
      I3 => \axi_rdata_reg[23]_0\(23),
      I4 => sel0(0),
      O => \axi_rdata[29]_i_3_n_0\
    );
\axi_rdata[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => P(2),
      I1 => \axi_rdata_reg[11]_0\(2),
      I2 => sel0(1),
      I3 => w_time_count(2),
      I4 => sel0(0),
      I5 => \^q\(2),
      O => \axi_rdata[2]_i_2_n_0\
    );
\axi_rdata[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(2),
      I1 => \axi_rdata_reg[13]_0\(2),
      I2 => sel0(1),
      I3 => w_control_input(2),
      I4 => sel0(0),
      I5 => \axi_rdata_reg[23]_0\(2),
      O => \axi_rdata[2]_i_3_n_0\
    );
\axi_rdata[30]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => P(14),
      I1 => sel0(1),
      I2 => w_time_count(30),
      I3 => sel0(0),
      I4 => slv_reg0(30),
      O => \axi_rdata[30]_i_2_n_0\
    );
\axi_rdata[30]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg7(30),
      I1 => \axi_rdata_reg[13]_0\(13),
      I2 => sel0(1),
      I3 => \axi_rdata_reg[23]_0\(23),
      I4 => sel0(0),
      O => \axi_rdata[30]_i_3_n_0\
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => P(14),
      I1 => sel0(1),
      I2 => w_time_count(31),
      I3 => sel0(0),
      I4 => \^q\(13),
      O => \axi_rdata[31]_i_2_n_0\
    );
\axi_rdata[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg7(31),
      I1 => \axi_rdata_reg[13]_0\(13),
      I2 => sel0(1),
      I3 => \axi_rdata_reg[23]_0\(23),
      I4 => sel0(0),
      O => \axi_rdata[31]_i_3_n_0\
    );
\axi_rdata[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => P(3),
      I1 => \axi_rdata_reg[11]_0\(3),
      I2 => sel0(1),
      I3 => w_time_count(3),
      I4 => sel0(0),
      I5 => \^q\(3),
      O => \axi_rdata[3]_i_2_n_0\
    );
\axi_rdata[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(3),
      I1 => \axi_rdata_reg[13]_0\(3),
      I2 => sel0(1),
      I3 => w_control_input(3),
      I4 => sel0(0),
      I5 => \axi_rdata_reg[23]_0\(3),
      O => \axi_rdata[3]_i_3_n_0\
    );
\axi_rdata[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => P(4),
      I1 => \axi_rdata_reg[11]_0\(4),
      I2 => sel0(1),
      I3 => w_time_count(4),
      I4 => sel0(0),
      I5 => \^q\(4),
      O => \axi_rdata[4]_i_2_n_0\
    );
\axi_rdata[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(4),
      I1 => \axi_rdata_reg[13]_0\(4),
      I2 => sel0(1),
      I3 => w_control_input(4),
      I4 => sel0(0),
      I5 => \axi_rdata_reg[23]_0\(4),
      O => \axi_rdata[4]_i_3_n_0\
    );
\axi_rdata[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => P(5),
      I1 => \axi_rdata_reg[11]_0\(5),
      I2 => sel0(1),
      I3 => w_time_count(5),
      I4 => sel0(0),
      I5 => \^q\(5),
      O => \axi_rdata[5]_i_2_n_0\
    );
\axi_rdata[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(5),
      I1 => \axi_rdata_reg[13]_0\(5),
      I2 => sel0(1),
      I3 => w_control_input(5),
      I4 => sel0(0),
      I5 => \axi_rdata_reg[23]_0\(5),
      O => \axi_rdata[5]_i_3_n_0\
    );
\axi_rdata[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => P(6),
      I1 => \axi_rdata_reg[11]_0\(6),
      I2 => sel0(1),
      I3 => w_time_count(6),
      I4 => sel0(0),
      I5 => \^q\(6),
      O => \axi_rdata[6]_i_2_n_0\
    );
\axi_rdata[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(6),
      I1 => \axi_rdata_reg[13]_0\(6),
      I2 => sel0(1),
      I3 => w_control_input(6),
      I4 => sel0(0),
      I5 => \axi_rdata_reg[23]_0\(6),
      O => \axi_rdata[6]_i_3_n_0\
    );
\axi_rdata[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => P(7),
      I1 => \axi_rdata_reg[11]_0\(7),
      I2 => sel0(1),
      I3 => w_time_count(7),
      I4 => sel0(0),
      I5 => \^q\(7),
      O => \axi_rdata[7]_i_2_n_0\
    );
\axi_rdata[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(7),
      I1 => \axi_rdata_reg[13]_0\(7),
      I2 => sel0(1),
      I3 => w_control_input(7),
      I4 => sel0(0),
      I5 => \axi_rdata_reg[23]_0\(7),
      O => \axi_rdata[7]_i_3_n_0\
    );
\axi_rdata[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => P(8),
      I1 => \axi_rdata_reg[11]_0\(8),
      I2 => sel0(1),
      I3 => w_time_count(8),
      I4 => sel0(0),
      I5 => \^q\(8),
      O => \axi_rdata[8]_i_2_n_0\
    );
\axi_rdata[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(8),
      I1 => \axi_rdata_reg[13]_0\(8),
      I2 => sel0(1),
      I3 => w_control_input(8),
      I4 => sel0(0),
      I5 => \axi_rdata_reg[23]_0\(8),
      O => \axi_rdata[8]_i_3_n_0\
    );
\axi_rdata[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => P(9),
      I1 => \axi_rdata_reg[11]_0\(9),
      I2 => sel0(1),
      I3 => w_time_count(9),
      I4 => sel0(0),
      I5 => \^q\(9),
      O => \axi_rdata[9]_i_2_n_0\
    );
\axi_rdata[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(9),
      I1 => \axi_rdata_reg[13]_0\(9),
      I2 => sel0(1),
      I3 => w_control_input(9),
      I4 => sel0(0),
      I5 => \axi_rdata_reg[23]_0\(9),
      O => \axi_rdata[9]_i_3_n_0\
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => SR(0)
    );
\axi_rdata_reg[0]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[0]_i_2_n_0\,
      I1 => \axi_rdata[0]_i_3_n_0\,
      O => reg_data_out(0),
      S => sel0(2)
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(10),
      Q => s00_axi_rdata(10),
      R => SR(0)
    );
\axi_rdata_reg[10]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[10]_i_2_n_0\,
      I1 => \axi_rdata[10]_i_3_n_0\,
      O => reg_data_out(10),
      S => sel0(2)
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(11),
      Q => s00_axi_rdata(11),
      R => SR(0)
    );
\axi_rdata_reg[11]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[11]_i_2_n_0\,
      I1 => \axi_rdata[11]_i_3_n_0\,
      O => reg_data_out(11),
      S => sel0(2)
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(12),
      Q => s00_axi_rdata(12),
      R => SR(0)
    );
\axi_rdata_reg[12]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[12]_i_2_n_0\,
      I1 => \axi_rdata[12]_i_3_n_0\,
      O => reg_data_out(12),
      S => sel0(2)
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(13),
      Q => s00_axi_rdata(13),
      R => SR(0)
    );
\axi_rdata_reg[13]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[13]_i_2_n_0\,
      I1 => \axi_rdata[13]_i_3_n_0\,
      O => reg_data_out(13),
      S => sel0(2)
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(14),
      Q => s00_axi_rdata(14),
      R => SR(0)
    );
\axi_rdata_reg[14]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[14]_i_2_n_0\,
      I1 => \axi_rdata[14]_i_3_n_0\,
      O => reg_data_out(14),
      S => sel0(2)
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(15),
      Q => s00_axi_rdata(15),
      R => SR(0)
    );
\axi_rdata_reg[15]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[15]_i_2_n_0\,
      I1 => \axi_rdata[15]_i_3_n_0\,
      O => reg_data_out(15),
      S => sel0(2)
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(16),
      Q => s00_axi_rdata(16),
      R => SR(0)
    );
\axi_rdata_reg[16]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[16]_i_2_n_0\,
      I1 => \axi_rdata[16]_i_3_n_0\,
      O => reg_data_out(16),
      S => sel0(2)
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(17),
      Q => s00_axi_rdata(17),
      R => SR(0)
    );
\axi_rdata_reg[17]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[17]_i_2_n_0\,
      I1 => \axi_rdata[17]_i_3_n_0\,
      O => reg_data_out(17),
      S => sel0(2)
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(18),
      Q => s00_axi_rdata(18),
      R => SR(0)
    );
\axi_rdata_reg[18]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[18]_i_2_n_0\,
      I1 => \axi_rdata[18]_i_3_n_0\,
      O => reg_data_out(18),
      S => sel0(2)
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(19),
      Q => s00_axi_rdata(19),
      R => SR(0)
    );
\axi_rdata_reg[19]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[19]_i_2_n_0\,
      I1 => \axi_rdata[19]_i_3_n_0\,
      O => reg_data_out(19),
      S => sel0(2)
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => SR(0)
    );
\axi_rdata_reg[1]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[1]_i_2_n_0\,
      I1 => \axi_rdata[1]_i_3_n_0\,
      O => reg_data_out(1),
      S => sel0(2)
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(20),
      Q => s00_axi_rdata(20),
      R => SR(0)
    );
\axi_rdata_reg[20]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[20]_i_2_n_0\,
      I1 => \axi_rdata[20]_i_3_n_0\,
      O => reg_data_out(20),
      S => sel0(2)
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(21),
      Q => s00_axi_rdata(21),
      R => SR(0)
    );
\axi_rdata_reg[21]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[21]_i_2_n_0\,
      I1 => \axi_rdata[21]_i_3_n_0\,
      O => reg_data_out(21),
      S => sel0(2)
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(22),
      Q => s00_axi_rdata(22),
      R => SR(0)
    );
\axi_rdata_reg[22]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[22]_i_2_n_0\,
      I1 => \axi_rdata[22]_i_3_n_0\,
      O => reg_data_out(22),
      S => sel0(2)
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(23),
      Q => s00_axi_rdata(23),
      R => SR(0)
    );
\axi_rdata_reg[23]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[23]_i_2_n_0\,
      I1 => \axi_rdata[23]_i_3_n_0\,
      O => reg_data_out(23),
      S => sel0(2)
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(24),
      Q => s00_axi_rdata(24),
      R => SR(0)
    );
\axi_rdata_reg[24]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[24]_i_2_n_0\,
      I1 => \axi_rdata[24]_i_3_n_0\,
      O => reg_data_out(24),
      S => sel0(2)
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(25),
      Q => s00_axi_rdata(25),
      R => SR(0)
    );
\axi_rdata_reg[25]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[25]_i_2_n_0\,
      I1 => \axi_rdata[25]_i_3_n_0\,
      O => reg_data_out(25),
      S => sel0(2)
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(26),
      Q => s00_axi_rdata(26),
      R => SR(0)
    );
\axi_rdata_reg[26]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[26]_i_2_n_0\,
      I1 => \axi_rdata[26]_i_3_n_0\,
      O => reg_data_out(26),
      S => sel0(2)
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(27),
      Q => s00_axi_rdata(27),
      R => SR(0)
    );
\axi_rdata_reg[27]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[27]_i_2_n_0\,
      I1 => \axi_rdata[27]_i_3_n_0\,
      O => reg_data_out(27),
      S => sel0(2)
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(28),
      Q => s00_axi_rdata(28),
      R => SR(0)
    );
\axi_rdata_reg[28]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[28]_i_2_n_0\,
      I1 => \axi_rdata[28]_i_3_n_0\,
      O => reg_data_out(28),
      S => sel0(2)
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(29),
      Q => s00_axi_rdata(29),
      R => SR(0)
    );
\axi_rdata_reg[29]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[29]_i_2_n_0\,
      I1 => \axi_rdata[29]_i_3_n_0\,
      O => reg_data_out(29),
      S => sel0(2)
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(2),
      Q => s00_axi_rdata(2),
      R => SR(0)
    );
\axi_rdata_reg[2]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[2]_i_2_n_0\,
      I1 => \axi_rdata[2]_i_3_n_0\,
      O => reg_data_out(2),
      S => sel0(2)
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(30),
      Q => s00_axi_rdata(30),
      R => SR(0)
    );
\axi_rdata_reg[30]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[30]_i_2_n_0\,
      I1 => \axi_rdata[30]_i_3_n_0\,
      O => reg_data_out(30),
      S => sel0(2)
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(31),
      Q => s00_axi_rdata(31),
      R => SR(0)
    );
\axi_rdata_reg[31]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[31]_i_2_n_0\,
      I1 => \axi_rdata[31]_i_3_n_0\,
      O => reg_data_out(31),
      S => sel0(2)
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(3),
      Q => s00_axi_rdata(3),
      R => SR(0)
    );
\axi_rdata_reg[3]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[3]_i_2_n_0\,
      I1 => \axi_rdata[3]_i_3_n_0\,
      O => reg_data_out(3),
      S => sel0(2)
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(4),
      Q => s00_axi_rdata(4),
      R => SR(0)
    );
\axi_rdata_reg[4]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[4]_i_2_n_0\,
      I1 => \axi_rdata[4]_i_3_n_0\,
      O => reg_data_out(4),
      S => sel0(2)
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(5),
      Q => s00_axi_rdata(5),
      R => SR(0)
    );
\axi_rdata_reg[5]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[5]_i_2_n_0\,
      I1 => \axi_rdata[5]_i_3_n_0\,
      O => reg_data_out(5),
      S => sel0(2)
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(6),
      Q => s00_axi_rdata(6),
      R => SR(0)
    );
\axi_rdata_reg[6]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[6]_i_2_n_0\,
      I1 => \axi_rdata[6]_i_3_n_0\,
      O => reg_data_out(6),
      S => sel0(2)
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(7),
      Q => s00_axi_rdata(7),
      R => SR(0)
    );
\axi_rdata_reg[7]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[7]_i_2_n_0\,
      I1 => \axi_rdata[7]_i_3_n_0\,
      O => reg_data_out(7),
      S => sel0(2)
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(8),
      Q => s00_axi_rdata(8),
      R => SR(0)
    );
\axi_rdata_reg[8]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[8]_i_2_n_0\,
      I1 => \axi_rdata[8]_i_3_n_0\,
      O => reg_data_out(8),
      S => sel0(2)
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(9),
      Q => s00_axi_rdata(9),
      R => SR(0)
    );
\axi_rdata_reg[9]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[9]_i_2_n_0\,
      I1 => \axi_rdata[9]_i_3_n_0\,
      O => reg_data_out(9),
      S => sel0(2)
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => \^axi_arready_reg_0\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_rvalid\,
      I3 => s00_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s00_axi_rvalid\,
      R => SR(0)
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^axi_wready_reg_0\,
      I3 => aw_en_reg_n_0,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^axi_wready_reg_0\,
      R => SR(0)
    );
\r_time_count[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^q\(13),
      I1 => s00_axi_aresetn,
      O => \slv_reg0_reg[31]_0\
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      I4 => s00_axi_wstrb(1),
      O => p_1_in(15)
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      I4 => s00_axi_wstrb(2),
      O => p_1_in(23)
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      I4 => s00_axi_wstrb(3),
      O => p_1_in(31)
    );
\slv_reg0[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^axi_wready_reg_0\,
      I1 => \^axi_awready_reg_0\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_wvalid,
      O => \slv_reg_wren__0\
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      I4 => s00_axi_wstrb(0),
      O => p_1_in(7)
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(0),
      Q => \^q\(0),
      R => SR(0)
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(10),
      Q => \^q\(10),
      R => SR(0)
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(11),
      Q => \^q\(11),
      R => SR(0)
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(12),
      Q => \^q\(12),
      R => SR(0)
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(13),
      Q => slv_reg0(13),
      R => SR(0)
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(14),
      Q => slv_reg0(14),
      R => SR(0)
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(15),
      Q => slv_reg0(15),
      R => SR(0)
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(16),
      Q => slv_reg0(16),
      R => SR(0)
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(17),
      Q => slv_reg0(17),
      R => SR(0)
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(18),
      Q => slv_reg0(18),
      R => SR(0)
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(19),
      Q => slv_reg0(19),
      R => SR(0)
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(1),
      Q => \^q\(1),
      R => SR(0)
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(20),
      Q => slv_reg0(20),
      R => SR(0)
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(21),
      Q => slv_reg0(21),
      R => SR(0)
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(22),
      Q => slv_reg0(22),
      R => SR(0)
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(23),
      Q => slv_reg0(23),
      R => SR(0)
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(24),
      Q => slv_reg0(24),
      R => SR(0)
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(25),
      Q => slv_reg0(25),
      R => SR(0)
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(26),
      Q => slv_reg0(26),
      R => SR(0)
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(27),
      Q => slv_reg0(27),
      R => SR(0)
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(28),
      Q => slv_reg0(28),
      R => SR(0)
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(29),
      Q => slv_reg0(29),
      R => SR(0)
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(2),
      Q => \^q\(2),
      R => SR(0)
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(30),
      Q => slv_reg0(30),
      R => SR(0)
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(31),
      Q => \^q\(13),
      R => SR(0)
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(3),
      Q => \^q\(3),
      R => SR(0)
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(4),
      Q => \^q\(4),
      R => SR(0)
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(5),
      Q => \^q\(5),
      R => SR(0)
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(6),
      Q => \^q\(6),
      R => SR(0)
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(7),
      Q => \^q\(7),
      R => SR(0)
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(8),
      Q => \^q\(8),
      R => SR(0)
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(9),
      Q => \^q\(9),
      R => SR(0)
    );
\slv_reg7[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      I4 => s00_axi_wstrb(1),
      O => \slv_reg7[15]_i_1_n_0\
    );
\slv_reg7[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      I4 => s00_axi_wstrb(2),
      O => \slv_reg7[23]_i_1_n_0\
    );
\slv_reg7[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      I4 => s00_axi_wstrb(3),
      O => \slv_reg7[31]_i_1_n_0\
    );
\slv_reg7[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      I4 => s00_axi_wstrb(0),
      O => \slv_reg7[7]_i_1_n_0\
    );
\slv_reg7_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg7(0),
      R => SR(0)
    );
\slv_reg7_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg7(10),
      R => SR(0)
    );
\slv_reg7_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg7(11),
      R => SR(0)
    );
\slv_reg7_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg7(12),
      R => SR(0)
    );
\slv_reg7_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg7(13),
      R => SR(0)
    );
\slv_reg7_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg7(14),
      R => SR(0)
    );
\slv_reg7_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg7(15),
      R => SR(0)
    );
\slv_reg7_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg7(16),
      R => SR(0)
    );
\slv_reg7_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg7(17),
      R => SR(0)
    );
\slv_reg7_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg7(18),
      R => SR(0)
    );
\slv_reg7_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg7(19),
      R => SR(0)
    );
\slv_reg7_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg7(1),
      R => SR(0)
    );
\slv_reg7_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg7(20),
      R => SR(0)
    );
\slv_reg7_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg7(21),
      R => SR(0)
    );
\slv_reg7_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg7(22),
      R => SR(0)
    );
\slv_reg7_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg7(23),
      R => SR(0)
    );
\slv_reg7_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg7(24),
      R => SR(0)
    );
\slv_reg7_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg7(25),
      R => SR(0)
    );
\slv_reg7_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg7(26),
      R => SR(0)
    );
\slv_reg7_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg7(27),
      R => SR(0)
    );
\slv_reg7_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg7(28),
      R => SR(0)
    );
\slv_reg7_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg7(29),
      R => SR(0)
    );
\slv_reg7_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg7(2),
      R => SR(0)
    );
\slv_reg7_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg7(30),
      R => SR(0)
    );
\slv_reg7_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg7(31),
      R => SR(0)
    );
\slv_reg7_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg7(3),
      R => SR(0)
    );
\slv_reg7_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg7(4),
      R => SR(0)
    );
\slv_reg7_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg7(5),
      R => SR(0)
    );
\slv_reg7_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg7(6),
      R => SR(0)
    );
\slv_reg7_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg7(7),
      R => SR(0)
    );
\slv_reg7_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg7(8),
      R => SR(0)
    );
\slv_reg7_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg7(9),
      R => SR(0)
    );
slv_reg_rden: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s00_axi_rvalid\,
      I2 => \^axi_arready_reg_0\,
      O => \slv_reg_rden__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_2_myBLDC_Controller_0_0_xadc_wiz_0 is
  port (
    daddr_in : in STD_LOGIC_VECTOR ( 6 downto 0 );
    dclk_in : in STD_LOGIC;
    den_in : in STD_LOGIC;
    di_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dwe_in : in STD_LOGIC;
    reset_in : in STD_LOGIC;
    vauxp6 : in STD_LOGIC;
    vauxn6 : in STD_LOGIC;
    busy_out : out STD_LOGIC;
    channel_out : out STD_LOGIC_VECTOR ( 4 downto 0 );
    do_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    drdy_out : out STD_LOGIC;
    eoc_out : out STD_LOGIC;
    eos_out : out STD_LOGIC;
    alarm_out : out STD_LOGIC;
    vp_in : in STD_LOGIC;
    vn_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_2_myBLDC_Controller_0_0_xadc_wiz_0 : entity is "xadc_wiz_0";
end design_2_myBLDC_Controller_0_0_xadc_wiz_0;

architecture STRUCTURE of design_2_myBLDC_Controller_0_0_xadc_wiz_0 is
  signal NLW_inst_JTAGBUSY_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_JTAGLOCKED_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_JTAGMODIFIED_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_OT_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ALM_UNCONNECTED : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal NLW_inst_MUXADDR_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of inst : label is "PRIMITIVE";
begin
inst: unisim.vcomponents.XADC
    generic map(
      INIT_40 => X"0016",
      INIT_41 => X"31AF",
      INIT_42 => X"0400",
      INIT_43 => X"0000",
      INIT_44 => X"0000",
      INIT_45 => X"0000",
      INIT_46 => X"0000",
      INIT_47 => X"0000",
      INIT_48 => X"0100",
      INIT_49 => X"0000",
      INIT_4A => X"0000",
      INIT_4B => X"0000",
      INIT_4C => X"0000",
      INIT_4D => X"0000",
      INIT_4E => X"0000",
      INIT_4F => X"0000",
      INIT_50 => X"B5ED",
      INIT_51 => X"57E4",
      INIT_52 => X"A147",
      INIT_53 => X"CA33",
      INIT_54 => X"A93A",
      INIT_55 => X"52C6",
      INIT_56 => X"9555",
      INIT_57 => X"AE4E",
      INIT_58 => X"5999",
      INIT_59 => X"0000",
      INIT_5A => X"0000",
      INIT_5B => X"0000",
      INIT_5C => X"5111",
      INIT_5D => X"0000",
      INIT_5E => X"0000",
      INIT_5F => X"0000",
      IS_CONVSTCLK_INVERTED => '0',
      IS_DCLK_INVERTED => '0',
      SIM_DEVICE => "7SERIES",
      SIM_MONITOR_FILE => "design.txt"
    )
        port map (
      ALM(7) => alarm_out,
      ALM(6 downto 0) => NLW_inst_ALM_UNCONNECTED(6 downto 0),
      BUSY => busy_out,
      CHANNEL(4 downto 0) => channel_out(4 downto 0),
      CONVST => '0',
      CONVSTCLK => '0',
      DADDR(6 downto 0) => daddr_in(6 downto 0),
      DCLK => dclk_in,
      DEN => den_in,
      DI(15 downto 0) => di_in(15 downto 0),
      DO(15 downto 0) => do_out(15 downto 0),
      DRDY => drdy_out,
      DWE => dwe_in,
      EOC => eoc_out,
      EOS => eos_out,
      JTAGBUSY => NLW_inst_JTAGBUSY_UNCONNECTED,
      JTAGLOCKED => NLW_inst_JTAGLOCKED_UNCONNECTED,
      JTAGMODIFIED => NLW_inst_JTAGMODIFIED_UNCONNECTED,
      MUXADDR(4 downto 0) => NLW_inst_MUXADDR_UNCONNECTED(4 downto 0),
      OT => NLW_inst_OT_UNCONNECTED,
      RESET => reset_in,
      VAUXN(15 downto 7) => B"000000000",
      VAUXN(6) => vauxn6,
      VAUXN(5 downto 0) => B"000000",
      VAUXP(15 downto 7) => B"000000000",
      VAUXP(6) => vauxp6,
      VAUXP(5 downto 0) => B"000000",
      VN => vn_in,
      VP => vp_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_2_myBLDC_Controller_0_0_PWM is
  port (
    o_U_pwm : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    r_cp_reg : in STD_LOGIC;
    DI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    r_pwm_reg_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    r_pwm_reg_1 : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_2_myBLDC_Controller_0_0_PWM : entity is "PWM";
end design_2_myBLDC_Controller_0_0_PWM;

architecture STRUCTURE of design_2_myBLDC_Controller_0_0_PWM is
  signal \^out\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal r_clk : STD_LOGIC;
  signal r_clk1 : STD_LOGIC;
  signal \r_clk1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \r_clk1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \r_clk1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \r_clk1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \r_clk1_carry__0_n_0\ : STD_LOGIC;
  signal \r_clk1_carry__0_n_1\ : STD_LOGIC;
  signal \r_clk1_carry__0_n_2\ : STD_LOGIC;
  signal \r_clk1_carry__0_n_3\ : STD_LOGIC;
  signal \r_clk1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \r_clk1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \r_clk1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \r_clk1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \r_clk1_carry__1_n_0\ : STD_LOGIC;
  signal \r_clk1_carry__1_n_1\ : STD_LOGIC;
  signal \r_clk1_carry__1_n_2\ : STD_LOGIC;
  signal \r_clk1_carry__1_n_3\ : STD_LOGIC;
  signal \r_clk1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \r_clk1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \r_clk1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \r_clk1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \r_clk1_carry__2_n_1\ : STD_LOGIC;
  signal \r_clk1_carry__2_n_2\ : STD_LOGIC;
  signal \r_clk1_carry__2_n_3\ : STD_LOGIC;
  signal r_clk1_carry_i_1_n_0 : STD_LOGIC;
  signal r_clk1_carry_i_2_n_0 : STD_LOGIC;
  signal r_clk1_carry_i_3_n_0 : STD_LOGIC;
  signal r_clk1_carry_i_4_n_0 : STD_LOGIC;
  signal r_clk1_carry_i_5_n_0 : STD_LOGIC;
  signal r_clk1_carry_n_0 : STD_LOGIC;
  signal r_clk1_carry_n_1 : STD_LOGIC;
  signal r_clk1_carry_n_2 : STD_LOGIC;
  signal r_clk1_carry_n_3 : STD_LOGIC;
  signal r_clk_i_1_n_0 : STD_LOGIC;
  signal \r_count_duty[0]_i_2_n_0\ : STD_LOGIC;
  signal \r_count_duty_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_count_duty_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \r_count_duty_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \r_count_duty_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \r_count_duty_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \r_count_duty_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \r_count_duty_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \r_count_duty_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \r_count_duty_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \r_count_duty_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \r_count_duty_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \r_count_duty_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \r_count_duty_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \r_count_duty_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \r_count_duty_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \r_count_duty_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \r_count_duty_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \r_count_duty_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \r_count_duty_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \r_count_duty_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \r_count_duty_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \r_count_duty_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \r_count_duty_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \r_count_freq[0]_i_2_n_0\ : STD_LOGIC;
  signal \r_count_freq[0]_i_3_n_0\ : STD_LOGIC;
  signal \r_count_freq[0]_i_4_n_0\ : STD_LOGIC;
  signal \r_count_freq[0]_i_5_n_0\ : STD_LOGIC;
  signal \r_count_freq[12]_i_2_n_0\ : STD_LOGIC;
  signal \r_count_freq[12]_i_3_n_0\ : STD_LOGIC;
  signal \r_count_freq[12]_i_4_n_0\ : STD_LOGIC;
  signal \r_count_freq[12]_i_5_n_0\ : STD_LOGIC;
  signal \r_count_freq[16]_i_2_n_0\ : STD_LOGIC;
  signal \r_count_freq[16]_i_3_n_0\ : STD_LOGIC;
  signal \r_count_freq[16]_i_4_n_0\ : STD_LOGIC;
  signal \r_count_freq[16]_i_5_n_0\ : STD_LOGIC;
  signal \r_count_freq[20]_i_2_n_0\ : STD_LOGIC;
  signal \r_count_freq[20]_i_3_n_0\ : STD_LOGIC;
  signal \r_count_freq[20]_i_4_n_0\ : STD_LOGIC;
  signal \r_count_freq[20]_i_5_n_0\ : STD_LOGIC;
  signal \r_count_freq[24]_i_2_n_0\ : STD_LOGIC;
  signal \r_count_freq[24]_i_3_n_0\ : STD_LOGIC;
  signal \r_count_freq[24]_i_4_n_0\ : STD_LOGIC;
  signal \r_count_freq[24]_i_5_n_0\ : STD_LOGIC;
  signal \r_count_freq[28]_i_2_n_0\ : STD_LOGIC;
  signal \r_count_freq[28]_i_3_n_0\ : STD_LOGIC;
  signal \r_count_freq[28]_i_4_n_0\ : STD_LOGIC;
  signal \r_count_freq[28]_i_5_n_0\ : STD_LOGIC;
  signal \r_count_freq[4]_i_2_n_0\ : STD_LOGIC;
  signal \r_count_freq[4]_i_3_n_0\ : STD_LOGIC;
  signal \r_count_freq[4]_i_4_n_0\ : STD_LOGIC;
  signal \r_count_freq[4]_i_5_n_0\ : STD_LOGIC;
  signal \r_count_freq[8]_i_2_n_0\ : STD_LOGIC;
  signal \r_count_freq[8]_i_3_n_0\ : STD_LOGIC;
  signal \r_count_freq[8]_i_4_n_0\ : STD_LOGIC;
  signal \r_count_freq[8]_i_5_n_0\ : STD_LOGIC;
  signal r_count_freq_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \r_count_freq_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_count_freq_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \r_count_freq_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \r_count_freq_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \r_count_freq_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \r_count_freq_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \r_count_freq_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \r_count_freq_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \r_count_freq_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \r_count_freq_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \r_count_freq_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \r_count_freq_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \r_count_freq_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \r_count_freq_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \r_count_freq_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \r_count_freq_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \r_count_freq_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \r_count_freq_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \r_count_freq_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \r_count_freq_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \r_count_freq_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \r_count_freq_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \r_count_freq_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \r_count_freq_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \r_count_freq_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \r_count_freq_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \r_count_freq_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \r_count_freq_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \r_count_freq_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \r_count_freq_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \r_count_freq_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \r_count_freq_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \r_count_freq_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \r_count_freq_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \r_count_freq_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \r_count_freq_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \r_count_freq_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \r_count_freq_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \r_count_freq_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \r_count_freq_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \r_count_freq_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \r_count_freq_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \r_count_freq_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \r_count_freq_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \r_count_freq_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \r_count_freq_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \r_count_freq_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \r_count_freq_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \r_count_freq_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \r_count_freq_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \r_count_freq_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \r_count_freq_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \r_count_freq_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \r_count_freq_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \r_count_freq_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \r_count_freq_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \r_count_freq_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \r_count_freq_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \r_count_freq_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \r_count_freq_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \r_count_freq_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \r_count_freq_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \r_count_freq_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \r_pwm0_carry__0_n_2\ : STD_LOGIC;
  signal \r_pwm0_carry__0_n_3\ : STD_LOGIC;
  signal r_pwm0_carry_n_0 : STD_LOGIC;
  signal r_pwm0_carry_n_1 : STD_LOGIC;
  signal r_pwm0_carry_n_2 : STD_LOGIC;
  signal r_pwm0_carry_n_3 : STD_LOGIC;
  signal w_count_freq_negedge : STD_LOGIC;
  signal NLW_r_clk1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_clk1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_clk1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_clk1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_count_duty_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_r_count_freq_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_r_pwm0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_pwm0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_r_pwm0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  \out\(11 downto 0) <= \^out\(11 downto 0);
ED_COUNT_freq: entity work.design_2_myBLDC_Controller_0_0_edge_detector_n_10
     port map (
      r_clk => r_clk,
      r_cp_reg_0 => r_cp_reg,
      s00_axi_aclk => s00_axi_aclk,
      sel => w_count_freq_negedge
    );
r_clk1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => r_clk1_carry_n_0,
      CO(2) => r_clk1_carry_n_1,
      CO(1) => r_clk1_carry_n_2,
      CO(0) => r_clk1_carry_n_3,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => r_clk1_carry_i_1_n_0,
      O(3 downto 0) => NLW_r_clk1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => r_clk1_carry_i_2_n_0,
      S(2) => r_clk1_carry_i_3_n_0,
      S(1) => r_clk1_carry_i_4_n_0,
      S(0) => r_clk1_carry_i_5_n_0
    );
\r_clk1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => r_clk1_carry_n_0,
      CO(3) => \r_clk1_carry__0_n_0\,
      CO(2) => \r_clk1_carry__0_n_1\,
      CO(1) => \r_clk1_carry__0_n_2\,
      CO(0) => \r_clk1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_r_clk1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \r_clk1_carry__0_i_1_n_0\,
      S(2) => \r_clk1_carry__0_i_2_n_0\,
      S(1) => \r_clk1_carry__0_i_3_n_0\,
      S(0) => \r_clk1_carry__0_i_4_n_0\
    );
\r_clk1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_count_freq_reg(14),
      I1 => r_count_freq_reg(15),
      O => \r_clk1_carry__0_i_1_n_0\
    );
\r_clk1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_count_freq_reg(12),
      I1 => r_count_freq_reg(13),
      O => \r_clk1_carry__0_i_2_n_0\
    );
\r_clk1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_count_freq_reg(10),
      I1 => r_count_freq_reg(11),
      O => \r_clk1_carry__0_i_3_n_0\
    );
\r_clk1_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_count_freq_reg(8),
      I1 => r_count_freq_reg(9),
      O => \r_clk1_carry__0_i_4_n_0\
    );
\r_clk1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_clk1_carry__0_n_0\,
      CO(3) => \r_clk1_carry__1_n_0\,
      CO(2) => \r_clk1_carry__1_n_1\,
      CO(1) => \r_clk1_carry__1_n_2\,
      CO(0) => \r_clk1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_r_clk1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \r_clk1_carry__1_i_1_n_0\,
      S(2) => \r_clk1_carry__1_i_2_n_0\,
      S(1) => \r_clk1_carry__1_i_3_n_0\,
      S(0) => \r_clk1_carry__1_i_4_n_0\
    );
\r_clk1_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_count_freq_reg(22),
      I1 => r_count_freq_reg(23),
      O => \r_clk1_carry__1_i_1_n_0\
    );
\r_clk1_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_count_freq_reg(20),
      I1 => r_count_freq_reg(21),
      O => \r_clk1_carry__1_i_2_n_0\
    );
\r_clk1_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_count_freq_reg(18),
      I1 => r_count_freq_reg(19),
      O => \r_clk1_carry__1_i_3_n_0\
    );
\r_clk1_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_count_freq_reg(16),
      I1 => r_count_freq_reg(17),
      O => \r_clk1_carry__1_i_4_n_0\
    );
\r_clk1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_clk1_carry__1_n_0\,
      CO(3) => r_clk1,
      CO(2) => \r_clk1_carry__2_n_1\,
      CO(1) => \r_clk1_carry__2_n_2\,
      CO(0) => \r_clk1_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => r_count_freq_reg(31),
      DI(2 downto 0) => B"000",
      O(3 downto 0) => \NLW_r_clk1_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \r_clk1_carry__2_i_1_n_0\,
      S(2) => \r_clk1_carry__2_i_2_n_0\,
      S(1) => \r_clk1_carry__2_i_3_n_0\,
      S(0) => \r_clk1_carry__2_i_4_n_0\
    );
\r_clk1_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_count_freq_reg(30),
      I1 => r_count_freq_reg(31),
      O => \r_clk1_carry__2_i_1_n_0\
    );
\r_clk1_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_count_freq_reg(28),
      I1 => r_count_freq_reg(29),
      O => \r_clk1_carry__2_i_2_n_0\
    );
\r_clk1_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_count_freq_reg(26),
      I1 => r_count_freq_reg(27),
      O => \r_clk1_carry__2_i_3_n_0\
    );
\r_clk1_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_count_freq_reg(24),
      I1 => r_count_freq_reg(25),
      O => \r_clk1_carry__2_i_4_n_0\
    );
r_clk1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_count_freq_reg(0),
      I1 => r_count_freq_reg(1),
      O => r_clk1_carry_i_1_n_0
    );
r_clk1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_count_freq_reg(6),
      I1 => r_count_freq_reg(7),
      O => r_clk1_carry_i_2_n_0
    );
r_clk1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_count_freq_reg(4),
      I1 => r_count_freq_reg(5),
      O => r_clk1_carry_i_3_n_0
    );
r_clk1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_count_freq_reg(2),
      I1 => r_count_freq_reg(3),
      O => r_clk1_carry_i_4_n_0
    );
r_clk1_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => r_count_freq_reg(0),
      I1 => r_count_freq_reg(1),
      O => r_clk1_carry_i_5_n_0
    );
r_clk_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_clk1,
      O => r_clk_i_1_n_0
    );
r_clk_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => r_cp_reg,
      D => r_clk_i_1_n_0,
      Q => r_clk
    );
\r_count_duty[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^out\(0),
      O => \r_count_duty[0]_i_2_n_0\
    );
\r_count_duty_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => w_count_freq_negedge,
      CLR => r_cp_reg,
      D => \r_count_duty_reg[0]_i_1_n_7\,
      Q => \^out\(0)
    );
\r_count_duty_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \r_count_duty_reg[0]_i_1_n_0\,
      CO(2) => \r_count_duty_reg[0]_i_1_n_1\,
      CO(1) => \r_count_duty_reg[0]_i_1_n_2\,
      CO(0) => \r_count_duty_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \r_count_duty_reg[0]_i_1_n_4\,
      O(2) => \r_count_duty_reg[0]_i_1_n_5\,
      O(1) => \r_count_duty_reg[0]_i_1_n_6\,
      O(0) => \r_count_duty_reg[0]_i_1_n_7\,
      S(3 downto 1) => \^out\(3 downto 1),
      S(0) => \r_count_duty[0]_i_2_n_0\
    );
\r_count_duty_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => w_count_freq_negedge,
      CLR => r_cp_reg,
      D => \r_count_duty_reg[8]_i_1_n_5\,
      Q => \^out\(10)
    );
\r_count_duty_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => w_count_freq_negedge,
      CLR => r_cp_reg,
      D => \r_count_duty_reg[8]_i_1_n_4\,
      Q => \^out\(11)
    );
\r_count_duty_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => w_count_freq_negedge,
      CLR => r_cp_reg,
      D => \r_count_duty_reg[0]_i_1_n_6\,
      Q => \^out\(1)
    );
\r_count_duty_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => w_count_freq_negedge,
      CLR => r_cp_reg,
      D => \r_count_duty_reg[0]_i_1_n_5\,
      Q => \^out\(2)
    );
\r_count_duty_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => w_count_freq_negedge,
      CLR => r_cp_reg,
      D => \r_count_duty_reg[0]_i_1_n_4\,
      Q => \^out\(3)
    );
\r_count_duty_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => w_count_freq_negedge,
      CLR => r_cp_reg,
      D => \r_count_duty_reg[4]_i_1_n_7\,
      Q => \^out\(4)
    );
\r_count_duty_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_count_duty_reg[0]_i_1_n_0\,
      CO(3) => \r_count_duty_reg[4]_i_1_n_0\,
      CO(2) => \r_count_duty_reg[4]_i_1_n_1\,
      CO(1) => \r_count_duty_reg[4]_i_1_n_2\,
      CO(0) => \r_count_duty_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_count_duty_reg[4]_i_1_n_4\,
      O(2) => \r_count_duty_reg[4]_i_1_n_5\,
      O(1) => \r_count_duty_reg[4]_i_1_n_6\,
      O(0) => \r_count_duty_reg[4]_i_1_n_7\,
      S(3 downto 0) => \^out\(7 downto 4)
    );
\r_count_duty_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => w_count_freq_negedge,
      CLR => r_cp_reg,
      D => \r_count_duty_reg[4]_i_1_n_6\,
      Q => \^out\(5)
    );
\r_count_duty_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => w_count_freq_negedge,
      CLR => r_cp_reg,
      D => \r_count_duty_reg[4]_i_1_n_5\,
      Q => \^out\(6)
    );
\r_count_duty_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => w_count_freq_negedge,
      CLR => r_cp_reg,
      D => \r_count_duty_reg[4]_i_1_n_4\,
      Q => \^out\(7)
    );
\r_count_duty_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => w_count_freq_negedge,
      CLR => r_cp_reg,
      D => \r_count_duty_reg[8]_i_1_n_7\,
      Q => \^out\(8)
    );
\r_count_duty_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_count_duty_reg[4]_i_1_n_0\,
      CO(3) => \NLW_r_count_duty_reg[8]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \r_count_duty_reg[8]_i_1_n_1\,
      CO(1) => \r_count_duty_reg[8]_i_1_n_2\,
      CO(0) => \r_count_duty_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_count_duty_reg[8]_i_1_n_4\,
      O(2) => \r_count_duty_reg[8]_i_1_n_5\,
      O(1) => \r_count_duty_reg[8]_i_1_n_6\,
      O(0) => \r_count_duty_reg[8]_i_1_n_7\,
      S(3 downto 0) => \^out\(11 downto 8)
    );
\r_count_duty_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => w_count_freq_negedge,
      CLR => r_cp_reg,
      D => \r_count_duty_reg[8]_i_1_n_6\,
      Q => \^out\(9)
    );
\r_count_freq[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_clk1,
      I1 => r_count_freq_reg(3),
      O => \r_count_freq[0]_i_2_n_0\
    );
\r_count_freq[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_clk1,
      I1 => r_count_freq_reg(2),
      O => \r_count_freq[0]_i_3_n_0\
    );
\r_count_freq[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_clk1,
      I1 => r_count_freq_reg(1),
      O => \r_count_freq[0]_i_4_n_0\
    );
\r_count_freq[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => r_count_freq_reg(0),
      I1 => r_clk1,
      O => \r_count_freq[0]_i_5_n_0\
    );
\r_count_freq[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_clk1,
      I1 => r_count_freq_reg(15),
      O => \r_count_freq[12]_i_2_n_0\
    );
\r_count_freq[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_clk1,
      I1 => r_count_freq_reg(14),
      O => \r_count_freq[12]_i_3_n_0\
    );
\r_count_freq[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_clk1,
      I1 => r_count_freq_reg(13),
      O => \r_count_freq[12]_i_4_n_0\
    );
\r_count_freq[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_clk1,
      I1 => r_count_freq_reg(12),
      O => \r_count_freq[12]_i_5_n_0\
    );
\r_count_freq[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_clk1,
      I1 => r_count_freq_reg(19),
      O => \r_count_freq[16]_i_2_n_0\
    );
\r_count_freq[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_clk1,
      I1 => r_count_freq_reg(18),
      O => \r_count_freq[16]_i_3_n_0\
    );
\r_count_freq[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_clk1,
      I1 => r_count_freq_reg(17),
      O => \r_count_freq[16]_i_4_n_0\
    );
\r_count_freq[16]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_clk1,
      I1 => r_count_freq_reg(16),
      O => \r_count_freq[16]_i_5_n_0\
    );
\r_count_freq[20]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_clk1,
      I1 => r_count_freq_reg(23),
      O => \r_count_freq[20]_i_2_n_0\
    );
\r_count_freq[20]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_clk1,
      I1 => r_count_freq_reg(22),
      O => \r_count_freq[20]_i_3_n_0\
    );
\r_count_freq[20]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_clk1,
      I1 => r_count_freq_reg(21),
      O => \r_count_freq[20]_i_4_n_0\
    );
\r_count_freq[20]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_clk1,
      I1 => r_count_freq_reg(20),
      O => \r_count_freq[20]_i_5_n_0\
    );
\r_count_freq[24]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_clk1,
      I1 => r_count_freq_reg(27),
      O => \r_count_freq[24]_i_2_n_0\
    );
\r_count_freq[24]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_clk1,
      I1 => r_count_freq_reg(26),
      O => \r_count_freq[24]_i_3_n_0\
    );
\r_count_freq[24]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_clk1,
      I1 => r_count_freq_reg(25),
      O => \r_count_freq[24]_i_4_n_0\
    );
\r_count_freq[24]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_clk1,
      I1 => r_count_freq_reg(24),
      O => \r_count_freq[24]_i_5_n_0\
    );
\r_count_freq[28]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_clk1,
      I1 => r_count_freq_reg(31),
      O => \r_count_freq[28]_i_2_n_0\
    );
\r_count_freq[28]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_clk1,
      I1 => r_count_freq_reg(30),
      O => \r_count_freq[28]_i_3_n_0\
    );
\r_count_freq[28]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_clk1,
      I1 => r_count_freq_reg(29),
      O => \r_count_freq[28]_i_4_n_0\
    );
\r_count_freq[28]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_clk1,
      I1 => r_count_freq_reg(28),
      O => \r_count_freq[28]_i_5_n_0\
    );
\r_count_freq[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_clk1,
      I1 => r_count_freq_reg(7),
      O => \r_count_freq[4]_i_2_n_0\
    );
\r_count_freq[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_clk1,
      I1 => r_count_freq_reg(6),
      O => \r_count_freq[4]_i_3_n_0\
    );
\r_count_freq[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_clk1,
      I1 => r_count_freq_reg(5),
      O => \r_count_freq[4]_i_4_n_0\
    );
\r_count_freq[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_clk1,
      I1 => r_count_freq_reg(4),
      O => \r_count_freq[4]_i_5_n_0\
    );
\r_count_freq[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_clk1,
      I1 => r_count_freq_reg(11),
      O => \r_count_freq[8]_i_2_n_0\
    );
\r_count_freq[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_clk1,
      I1 => r_count_freq_reg(10),
      O => \r_count_freq[8]_i_3_n_0\
    );
\r_count_freq[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_clk1,
      I1 => r_count_freq_reg(9),
      O => \r_count_freq[8]_i_4_n_0\
    );
\r_count_freq[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_clk1,
      I1 => r_count_freq_reg(8),
      O => \r_count_freq[8]_i_5_n_0\
    );
\r_count_freq_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => r_cp_reg,
      D => \r_count_freq_reg[0]_i_1_n_7\,
      Q => r_count_freq_reg(0)
    );
\r_count_freq_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \r_count_freq_reg[0]_i_1_n_0\,
      CO(2) => \r_count_freq_reg[0]_i_1_n_1\,
      CO(1) => \r_count_freq_reg[0]_i_1_n_2\,
      CO(0) => \r_count_freq_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => r_clk1,
      O(3) => \r_count_freq_reg[0]_i_1_n_4\,
      O(2) => \r_count_freq_reg[0]_i_1_n_5\,
      O(1) => \r_count_freq_reg[0]_i_1_n_6\,
      O(0) => \r_count_freq_reg[0]_i_1_n_7\,
      S(3) => \r_count_freq[0]_i_2_n_0\,
      S(2) => \r_count_freq[0]_i_3_n_0\,
      S(1) => \r_count_freq[0]_i_4_n_0\,
      S(0) => \r_count_freq[0]_i_5_n_0\
    );
\r_count_freq_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => r_cp_reg,
      D => \r_count_freq_reg[8]_i_1_n_5\,
      Q => r_count_freq_reg(10)
    );
\r_count_freq_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => r_cp_reg,
      D => \r_count_freq_reg[8]_i_1_n_4\,
      Q => r_count_freq_reg(11)
    );
\r_count_freq_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => r_cp_reg,
      D => \r_count_freq_reg[12]_i_1_n_7\,
      Q => r_count_freq_reg(12)
    );
\r_count_freq_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_count_freq_reg[8]_i_1_n_0\,
      CO(3) => \r_count_freq_reg[12]_i_1_n_0\,
      CO(2) => \r_count_freq_reg[12]_i_1_n_1\,
      CO(1) => \r_count_freq_reg[12]_i_1_n_2\,
      CO(0) => \r_count_freq_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_count_freq_reg[12]_i_1_n_4\,
      O(2) => \r_count_freq_reg[12]_i_1_n_5\,
      O(1) => \r_count_freq_reg[12]_i_1_n_6\,
      O(0) => \r_count_freq_reg[12]_i_1_n_7\,
      S(3) => \r_count_freq[12]_i_2_n_0\,
      S(2) => \r_count_freq[12]_i_3_n_0\,
      S(1) => \r_count_freq[12]_i_4_n_0\,
      S(0) => \r_count_freq[12]_i_5_n_0\
    );
\r_count_freq_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => r_cp_reg,
      D => \r_count_freq_reg[12]_i_1_n_6\,
      Q => r_count_freq_reg(13)
    );
\r_count_freq_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => r_cp_reg,
      D => \r_count_freq_reg[12]_i_1_n_5\,
      Q => r_count_freq_reg(14)
    );
\r_count_freq_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => r_cp_reg,
      D => \r_count_freq_reg[12]_i_1_n_4\,
      Q => r_count_freq_reg(15)
    );
\r_count_freq_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => r_cp_reg,
      D => \r_count_freq_reg[16]_i_1_n_7\,
      Q => r_count_freq_reg(16)
    );
\r_count_freq_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_count_freq_reg[12]_i_1_n_0\,
      CO(3) => \r_count_freq_reg[16]_i_1_n_0\,
      CO(2) => \r_count_freq_reg[16]_i_1_n_1\,
      CO(1) => \r_count_freq_reg[16]_i_1_n_2\,
      CO(0) => \r_count_freq_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_count_freq_reg[16]_i_1_n_4\,
      O(2) => \r_count_freq_reg[16]_i_1_n_5\,
      O(1) => \r_count_freq_reg[16]_i_1_n_6\,
      O(0) => \r_count_freq_reg[16]_i_1_n_7\,
      S(3) => \r_count_freq[16]_i_2_n_0\,
      S(2) => \r_count_freq[16]_i_3_n_0\,
      S(1) => \r_count_freq[16]_i_4_n_0\,
      S(0) => \r_count_freq[16]_i_5_n_0\
    );
\r_count_freq_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => r_cp_reg,
      D => \r_count_freq_reg[16]_i_1_n_6\,
      Q => r_count_freq_reg(17)
    );
\r_count_freq_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => r_cp_reg,
      D => \r_count_freq_reg[16]_i_1_n_5\,
      Q => r_count_freq_reg(18)
    );
\r_count_freq_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => r_cp_reg,
      D => \r_count_freq_reg[16]_i_1_n_4\,
      Q => r_count_freq_reg(19)
    );
\r_count_freq_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => r_cp_reg,
      D => \r_count_freq_reg[0]_i_1_n_6\,
      Q => r_count_freq_reg(1)
    );
\r_count_freq_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => r_cp_reg,
      D => \r_count_freq_reg[20]_i_1_n_7\,
      Q => r_count_freq_reg(20)
    );
\r_count_freq_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_count_freq_reg[16]_i_1_n_0\,
      CO(3) => \r_count_freq_reg[20]_i_1_n_0\,
      CO(2) => \r_count_freq_reg[20]_i_1_n_1\,
      CO(1) => \r_count_freq_reg[20]_i_1_n_2\,
      CO(0) => \r_count_freq_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_count_freq_reg[20]_i_1_n_4\,
      O(2) => \r_count_freq_reg[20]_i_1_n_5\,
      O(1) => \r_count_freq_reg[20]_i_1_n_6\,
      O(0) => \r_count_freq_reg[20]_i_1_n_7\,
      S(3) => \r_count_freq[20]_i_2_n_0\,
      S(2) => \r_count_freq[20]_i_3_n_0\,
      S(1) => \r_count_freq[20]_i_4_n_0\,
      S(0) => \r_count_freq[20]_i_5_n_0\
    );
\r_count_freq_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => r_cp_reg,
      D => \r_count_freq_reg[20]_i_1_n_6\,
      Q => r_count_freq_reg(21)
    );
\r_count_freq_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => r_cp_reg,
      D => \r_count_freq_reg[20]_i_1_n_5\,
      Q => r_count_freq_reg(22)
    );
\r_count_freq_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => r_cp_reg,
      D => \r_count_freq_reg[20]_i_1_n_4\,
      Q => r_count_freq_reg(23)
    );
\r_count_freq_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => r_cp_reg,
      D => \r_count_freq_reg[24]_i_1_n_7\,
      Q => r_count_freq_reg(24)
    );
\r_count_freq_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_count_freq_reg[20]_i_1_n_0\,
      CO(3) => \r_count_freq_reg[24]_i_1_n_0\,
      CO(2) => \r_count_freq_reg[24]_i_1_n_1\,
      CO(1) => \r_count_freq_reg[24]_i_1_n_2\,
      CO(0) => \r_count_freq_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_count_freq_reg[24]_i_1_n_4\,
      O(2) => \r_count_freq_reg[24]_i_1_n_5\,
      O(1) => \r_count_freq_reg[24]_i_1_n_6\,
      O(0) => \r_count_freq_reg[24]_i_1_n_7\,
      S(3) => \r_count_freq[24]_i_2_n_0\,
      S(2) => \r_count_freq[24]_i_3_n_0\,
      S(1) => \r_count_freq[24]_i_4_n_0\,
      S(0) => \r_count_freq[24]_i_5_n_0\
    );
\r_count_freq_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => r_cp_reg,
      D => \r_count_freq_reg[24]_i_1_n_6\,
      Q => r_count_freq_reg(25)
    );
\r_count_freq_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => r_cp_reg,
      D => \r_count_freq_reg[24]_i_1_n_5\,
      Q => r_count_freq_reg(26)
    );
\r_count_freq_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => r_cp_reg,
      D => \r_count_freq_reg[24]_i_1_n_4\,
      Q => r_count_freq_reg(27)
    );
\r_count_freq_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => r_cp_reg,
      D => \r_count_freq_reg[28]_i_1_n_7\,
      Q => r_count_freq_reg(28)
    );
\r_count_freq_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_count_freq_reg[24]_i_1_n_0\,
      CO(3) => \NLW_r_count_freq_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \r_count_freq_reg[28]_i_1_n_1\,
      CO(1) => \r_count_freq_reg[28]_i_1_n_2\,
      CO(0) => \r_count_freq_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_count_freq_reg[28]_i_1_n_4\,
      O(2) => \r_count_freq_reg[28]_i_1_n_5\,
      O(1) => \r_count_freq_reg[28]_i_1_n_6\,
      O(0) => \r_count_freq_reg[28]_i_1_n_7\,
      S(3) => \r_count_freq[28]_i_2_n_0\,
      S(2) => \r_count_freq[28]_i_3_n_0\,
      S(1) => \r_count_freq[28]_i_4_n_0\,
      S(0) => \r_count_freq[28]_i_5_n_0\
    );
\r_count_freq_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => r_cp_reg,
      D => \r_count_freq_reg[28]_i_1_n_6\,
      Q => r_count_freq_reg(29)
    );
\r_count_freq_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => r_cp_reg,
      D => \r_count_freq_reg[0]_i_1_n_5\,
      Q => r_count_freq_reg(2)
    );
\r_count_freq_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => r_cp_reg,
      D => \r_count_freq_reg[28]_i_1_n_5\,
      Q => r_count_freq_reg(30)
    );
\r_count_freq_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => r_cp_reg,
      D => \r_count_freq_reg[28]_i_1_n_4\,
      Q => r_count_freq_reg(31)
    );
\r_count_freq_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => r_cp_reg,
      D => \r_count_freq_reg[0]_i_1_n_4\,
      Q => r_count_freq_reg(3)
    );
\r_count_freq_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => r_cp_reg,
      D => \r_count_freq_reg[4]_i_1_n_7\,
      Q => r_count_freq_reg(4)
    );
\r_count_freq_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_count_freq_reg[0]_i_1_n_0\,
      CO(3) => \r_count_freq_reg[4]_i_1_n_0\,
      CO(2) => \r_count_freq_reg[4]_i_1_n_1\,
      CO(1) => \r_count_freq_reg[4]_i_1_n_2\,
      CO(0) => \r_count_freq_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_count_freq_reg[4]_i_1_n_4\,
      O(2) => \r_count_freq_reg[4]_i_1_n_5\,
      O(1) => \r_count_freq_reg[4]_i_1_n_6\,
      O(0) => \r_count_freq_reg[4]_i_1_n_7\,
      S(3) => \r_count_freq[4]_i_2_n_0\,
      S(2) => \r_count_freq[4]_i_3_n_0\,
      S(1) => \r_count_freq[4]_i_4_n_0\,
      S(0) => \r_count_freq[4]_i_5_n_0\
    );
\r_count_freq_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => r_cp_reg,
      D => \r_count_freq_reg[4]_i_1_n_6\,
      Q => r_count_freq_reg(5)
    );
\r_count_freq_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => r_cp_reg,
      D => \r_count_freq_reg[4]_i_1_n_5\,
      Q => r_count_freq_reg(6)
    );
\r_count_freq_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => r_cp_reg,
      D => \r_count_freq_reg[4]_i_1_n_4\,
      Q => r_count_freq_reg(7)
    );
\r_count_freq_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => r_cp_reg,
      D => \r_count_freq_reg[8]_i_1_n_7\,
      Q => r_count_freq_reg(8)
    );
\r_count_freq_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_count_freq_reg[4]_i_1_n_0\,
      CO(3) => \r_count_freq_reg[8]_i_1_n_0\,
      CO(2) => \r_count_freq_reg[8]_i_1_n_1\,
      CO(1) => \r_count_freq_reg[8]_i_1_n_2\,
      CO(0) => \r_count_freq_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_count_freq_reg[8]_i_1_n_4\,
      O(2) => \r_count_freq_reg[8]_i_1_n_5\,
      O(1) => \r_count_freq_reg[8]_i_1_n_6\,
      O(0) => \r_count_freq_reg[8]_i_1_n_7\,
      S(3) => \r_count_freq[8]_i_2_n_0\,
      S(2) => \r_count_freq[8]_i_3_n_0\,
      S(1) => \r_count_freq[8]_i_4_n_0\,
      S(0) => \r_count_freq[8]_i_5_n_0\
    );
\r_count_freq_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => r_cp_reg,
      D => \r_count_freq_reg[8]_i_1_n_6\,
      Q => r_count_freq_reg(9)
    );
r_pwm0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => r_pwm0_carry_n_0,
      CO(2) => r_pwm0_carry_n_1,
      CO(1) => r_pwm0_carry_n_2,
      CO(0) => r_pwm0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => DI(3 downto 0),
      O(3 downto 0) => NLW_r_pwm0_carry_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
\r_pwm0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => r_pwm0_carry_n_0,
      CO(3 downto 2) => \NLW_r_pwm0_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \r_pwm0_carry__0_n_2\,
      CO(0) => \r_pwm0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => r_pwm_reg_0(1 downto 0),
      O(3 downto 0) => \NLW_r_pwm0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1 downto 0) => r_pwm_reg_1(1 downto 0)
    );
r_pwm_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => w_count_freq_negedge,
      CLR => r_cp_reg,
      D => \r_pwm0_carry__0_n_2\,
      Q => o_U_pwm
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_2_myBLDC_Controller_0_0_buttonControl is
  port (
    r_cp : out STD_LOGIC;
    r_cp_z : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    r_delay_counter_posedge : in STD_LOGIC;
    i_btn_d : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_2_myBLDC_Controller_0_0_buttonControl : entity is "buttonControl";
end design_2_myBLDC_Controller_0_0_buttonControl;

architecture STRUCTURE of design_2_myBLDC_Controller_0_0_buttonControl is
  signal r_debounced_btn_reg_n_0 : STD_LOGIC;
begin
ED_BTN: entity work.design_2_myBLDC_Controller_0_0_edge_detector_n_5
     port map (
      SR(0) => SR(0),
      r_cp => r_cp,
      r_cp_reg_0 => r_debounced_btn_reg_n_0,
      r_cp_z => r_cp_z,
      s00_axi_aclk => s00_axi_aclk
    );
r_debounced_btn_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => r_delay_counter_posedge,
      CLR => SR(0),
      D => i_btn_d,
      Q => r_debounced_btn_reg_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_2_myBLDC_Controller_0_0_buttonControl_2 is
  port (
    r_delay_counter_posedge : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    i_btn_u : in STD_LOGIC;
    \r_gain_reg[0]\ : in STD_LOGIC;
    r_cp : in STD_LOGIC;
    r_cp_z : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_2_myBLDC_Controller_0_0_buttonControl_2 : entity is "buttonControl";
end design_2_myBLDC_Controller_0_0_buttonControl_2;

architecture STRUCTURE of design_2_myBLDC_Controller_0_0_buttonControl_2 is
  signal i_cp : STD_LOGIC;
  signal r_debounced_btn : STD_LOGIC;
  signal \r_delay_counter[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \^r_delay_counter_posedge\ : STD_LOGIC;
  signal \r_delay_counter_reg[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \r_delay_counter_reg[0]_i_1__0_n_1\ : STD_LOGIC;
  signal \r_delay_counter_reg[0]_i_1__0_n_2\ : STD_LOGIC;
  signal \r_delay_counter_reg[0]_i_1__0_n_3\ : STD_LOGIC;
  signal \r_delay_counter_reg[0]_i_1__0_n_4\ : STD_LOGIC;
  signal \r_delay_counter_reg[0]_i_1__0_n_5\ : STD_LOGIC;
  signal \r_delay_counter_reg[0]_i_1__0_n_6\ : STD_LOGIC;
  signal \r_delay_counter_reg[0]_i_1__0_n_7\ : STD_LOGIC;
  signal \r_delay_counter_reg[12]_i_1__0_n_0\ : STD_LOGIC;
  signal \r_delay_counter_reg[12]_i_1__0_n_1\ : STD_LOGIC;
  signal \r_delay_counter_reg[12]_i_1__0_n_2\ : STD_LOGIC;
  signal \r_delay_counter_reg[12]_i_1__0_n_3\ : STD_LOGIC;
  signal \r_delay_counter_reg[12]_i_1__0_n_4\ : STD_LOGIC;
  signal \r_delay_counter_reg[12]_i_1__0_n_5\ : STD_LOGIC;
  signal \r_delay_counter_reg[12]_i_1__0_n_6\ : STD_LOGIC;
  signal \r_delay_counter_reg[12]_i_1__0_n_7\ : STD_LOGIC;
  signal \r_delay_counter_reg[16]_i_1__0_n_7\ : STD_LOGIC;
  signal \r_delay_counter_reg[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \r_delay_counter_reg[4]_i_1__0_n_1\ : STD_LOGIC;
  signal \r_delay_counter_reg[4]_i_1__0_n_2\ : STD_LOGIC;
  signal \r_delay_counter_reg[4]_i_1__0_n_3\ : STD_LOGIC;
  signal \r_delay_counter_reg[4]_i_1__0_n_4\ : STD_LOGIC;
  signal \r_delay_counter_reg[4]_i_1__0_n_5\ : STD_LOGIC;
  signal \r_delay_counter_reg[4]_i_1__0_n_6\ : STD_LOGIC;
  signal \r_delay_counter_reg[4]_i_1__0_n_7\ : STD_LOGIC;
  signal \r_delay_counter_reg[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \r_delay_counter_reg[8]_i_1__0_n_1\ : STD_LOGIC;
  signal \r_delay_counter_reg[8]_i_1__0_n_2\ : STD_LOGIC;
  signal \r_delay_counter_reg[8]_i_1__0_n_3\ : STD_LOGIC;
  signal \r_delay_counter_reg[8]_i_1__0_n_4\ : STD_LOGIC;
  signal \r_delay_counter_reg[8]_i_1__0_n_5\ : STD_LOGIC;
  signal \r_delay_counter_reg[8]_i_1__0_n_6\ : STD_LOGIC;
  signal \r_delay_counter_reg[8]_i_1__0_n_7\ : STD_LOGIC;
  signal \r_delay_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_delay_counter_reg_n_0_[10]\ : STD_LOGIC;
  signal \r_delay_counter_reg_n_0_[11]\ : STD_LOGIC;
  signal \r_delay_counter_reg_n_0_[12]\ : STD_LOGIC;
  signal \r_delay_counter_reg_n_0_[13]\ : STD_LOGIC;
  signal \r_delay_counter_reg_n_0_[14]\ : STD_LOGIC;
  signal \r_delay_counter_reg_n_0_[15]\ : STD_LOGIC;
  signal \r_delay_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_delay_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \r_delay_counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \r_delay_counter_reg_n_0_[4]\ : STD_LOGIC;
  signal \r_delay_counter_reg_n_0_[5]\ : STD_LOGIC;
  signal \r_delay_counter_reg_n_0_[6]\ : STD_LOGIC;
  signal \r_delay_counter_reg_n_0_[7]\ : STD_LOGIC;
  signal \r_delay_counter_reg_n_0_[8]\ : STD_LOGIC;
  signal \r_delay_counter_reg_n_0_[9]\ : STD_LOGIC;
  signal \NLW_r_delay_counter_reg[16]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_delay_counter_reg[16]_i_1__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
begin
  r_delay_counter_posedge <= \^r_delay_counter_posedge\;
ED_BTN: entity work.design_2_myBLDC_Controller_0_0_edge_detector_n_3
     port map (
      E(0) => E(0),
      Q(0) => Q(0),
      S(0) => S(0),
      SR(0) => SR(0),
      r_cp => r_cp,
      r_cp_z => r_cp_z,
      r_debounced_btn => r_debounced_btn,
      \r_gain_reg[0]\ => \r_gain_reg[0]\,
      s00_axi_aclk => s00_axi_aclk
    );
ED_DELAY_COUNTER: entity work.design_2_myBLDC_Controller_0_0_edge_detector_n_4
     port map (
      S(0) => i_cp,
      SR(0) => SR(0),
      r_delay_counter_posedge => \^r_delay_counter_posedge\,
      s00_axi_aclk => s00_axi_aclk
    );
r_debounced_btn_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^r_delay_counter_posedge\,
      CLR => SR(0),
      D => i_btn_u,
      Q => r_debounced_btn
    );
\r_delay_counter[0]_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_delay_counter_reg_n_0_[0]\,
      O => \r_delay_counter[0]_i_2__0_n_0\
    );
\r_delay_counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \r_delay_counter_reg[0]_i_1__0_n_7\,
      Q => \r_delay_counter_reg_n_0_[0]\,
      R => '0'
    );
\r_delay_counter_reg[0]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \r_delay_counter_reg[0]_i_1__0_n_0\,
      CO(2) => \r_delay_counter_reg[0]_i_1__0_n_1\,
      CO(1) => \r_delay_counter_reg[0]_i_1__0_n_2\,
      CO(0) => \r_delay_counter_reg[0]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \r_delay_counter_reg[0]_i_1__0_n_4\,
      O(2) => \r_delay_counter_reg[0]_i_1__0_n_5\,
      O(1) => \r_delay_counter_reg[0]_i_1__0_n_6\,
      O(0) => \r_delay_counter_reg[0]_i_1__0_n_7\,
      S(3) => \r_delay_counter_reg_n_0_[3]\,
      S(2) => \r_delay_counter_reg_n_0_[2]\,
      S(1) => \r_delay_counter_reg_n_0_[1]\,
      S(0) => \r_delay_counter[0]_i_2__0_n_0\
    );
\r_delay_counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \r_delay_counter_reg[8]_i_1__0_n_5\,
      Q => \r_delay_counter_reg_n_0_[10]\,
      R => '0'
    );
\r_delay_counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \r_delay_counter_reg[8]_i_1__0_n_4\,
      Q => \r_delay_counter_reg_n_0_[11]\,
      R => '0'
    );
\r_delay_counter_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \r_delay_counter_reg[12]_i_1__0_n_7\,
      Q => \r_delay_counter_reg_n_0_[12]\,
      R => '0'
    );
\r_delay_counter_reg[12]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_delay_counter_reg[8]_i_1__0_n_0\,
      CO(3) => \r_delay_counter_reg[12]_i_1__0_n_0\,
      CO(2) => \r_delay_counter_reg[12]_i_1__0_n_1\,
      CO(1) => \r_delay_counter_reg[12]_i_1__0_n_2\,
      CO(0) => \r_delay_counter_reg[12]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_delay_counter_reg[12]_i_1__0_n_4\,
      O(2) => \r_delay_counter_reg[12]_i_1__0_n_5\,
      O(1) => \r_delay_counter_reg[12]_i_1__0_n_6\,
      O(0) => \r_delay_counter_reg[12]_i_1__0_n_7\,
      S(3) => \r_delay_counter_reg_n_0_[15]\,
      S(2) => \r_delay_counter_reg_n_0_[14]\,
      S(1) => \r_delay_counter_reg_n_0_[13]\,
      S(0) => \r_delay_counter_reg_n_0_[12]\
    );
\r_delay_counter_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \r_delay_counter_reg[12]_i_1__0_n_6\,
      Q => \r_delay_counter_reg_n_0_[13]\,
      R => '0'
    );
\r_delay_counter_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \r_delay_counter_reg[12]_i_1__0_n_5\,
      Q => \r_delay_counter_reg_n_0_[14]\,
      R => '0'
    );
\r_delay_counter_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \r_delay_counter_reg[12]_i_1__0_n_4\,
      Q => \r_delay_counter_reg_n_0_[15]\,
      R => '0'
    );
\r_delay_counter_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \r_delay_counter_reg[16]_i_1__0_n_7\,
      Q => i_cp,
      R => '0'
    );
\r_delay_counter_reg[16]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_delay_counter_reg[12]_i_1__0_n_0\,
      CO(3 downto 0) => \NLW_r_delay_counter_reg[16]_i_1__0_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_r_delay_counter_reg[16]_i_1__0_O_UNCONNECTED\(3 downto 1),
      O(0) => \r_delay_counter_reg[16]_i_1__0_n_7\,
      S(3 downto 1) => B"000",
      S(0) => i_cp
    );
\r_delay_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \r_delay_counter_reg[0]_i_1__0_n_6\,
      Q => \r_delay_counter_reg_n_0_[1]\,
      R => '0'
    );
\r_delay_counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \r_delay_counter_reg[0]_i_1__0_n_5\,
      Q => \r_delay_counter_reg_n_0_[2]\,
      R => '0'
    );
\r_delay_counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \r_delay_counter_reg[0]_i_1__0_n_4\,
      Q => \r_delay_counter_reg_n_0_[3]\,
      R => '0'
    );
\r_delay_counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \r_delay_counter_reg[4]_i_1__0_n_7\,
      Q => \r_delay_counter_reg_n_0_[4]\,
      R => '0'
    );
\r_delay_counter_reg[4]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_delay_counter_reg[0]_i_1__0_n_0\,
      CO(3) => \r_delay_counter_reg[4]_i_1__0_n_0\,
      CO(2) => \r_delay_counter_reg[4]_i_1__0_n_1\,
      CO(1) => \r_delay_counter_reg[4]_i_1__0_n_2\,
      CO(0) => \r_delay_counter_reg[4]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_delay_counter_reg[4]_i_1__0_n_4\,
      O(2) => \r_delay_counter_reg[4]_i_1__0_n_5\,
      O(1) => \r_delay_counter_reg[4]_i_1__0_n_6\,
      O(0) => \r_delay_counter_reg[4]_i_1__0_n_7\,
      S(3) => \r_delay_counter_reg_n_0_[7]\,
      S(2) => \r_delay_counter_reg_n_0_[6]\,
      S(1) => \r_delay_counter_reg_n_0_[5]\,
      S(0) => \r_delay_counter_reg_n_0_[4]\
    );
\r_delay_counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \r_delay_counter_reg[4]_i_1__0_n_6\,
      Q => \r_delay_counter_reg_n_0_[5]\,
      R => '0'
    );
\r_delay_counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \r_delay_counter_reg[4]_i_1__0_n_5\,
      Q => \r_delay_counter_reg_n_0_[6]\,
      R => '0'
    );
\r_delay_counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \r_delay_counter_reg[4]_i_1__0_n_4\,
      Q => \r_delay_counter_reg_n_0_[7]\,
      R => '0'
    );
\r_delay_counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \r_delay_counter_reg[8]_i_1__0_n_7\,
      Q => \r_delay_counter_reg_n_0_[8]\,
      R => '0'
    );
\r_delay_counter_reg[8]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_delay_counter_reg[4]_i_1__0_n_0\,
      CO(3) => \r_delay_counter_reg[8]_i_1__0_n_0\,
      CO(2) => \r_delay_counter_reg[8]_i_1__0_n_1\,
      CO(1) => \r_delay_counter_reg[8]_i_1__0_n_2\,
      CO(0) => \r_delay_counter_reg[8]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_delay_counter_reg[8]_i_1__0_n_4\,
      O(2) => \r_delay_counter_reg[8]_i_1__0_n_5\,
      O(1) => \r_delay_counter_reg[8]_i_1__0_n_6\,
      O(0) => \r_delay_counter_reg[8]_i_1__0_n_7\,
      S(3) => \r_delay_counter_reg_n_0_[11]\,
      S(2) => \r_delay_counter_reg_n_0_[10]\,
      S(1) => \r_delay_counter_reg_n_0_[9]\,
      S(0) => \r_delay_counter_reg_n_0_[8]\
    );
\r_delay_counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \r_delay_counter_reg[8]_i_1__0_n_6\,
      Q => \r_delay_counter_reg_n_0_[9]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_2_myBLDC_Controller_0_0_buttonControl_6 is
  port (
    r_cp : out STD_LOGIC;
    r_cp_z : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    r_delay_counter_posedge : in STD_LOGIC;
    i_btn_l : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_2_myBLDC_Controller_0_0_buttonControl_6 : entity is "buttonControl";
end design_2_myBLDC_Controller_0_0_buttonControl_6;

architecture STRUCTURE of design_2_myBLDC_Controller_0_0_buttonControl_6 is
  signal r_debounced_btn_reg_n_0 : STD_LOGIC;
begin
ED_BTN: entity work.design_2_myBLDC_Controller_0_0_edge_detector_n_9
     port map (
      SR(0) => SR(0),
      r_cp => r_cp,
      r_cp_reg_0 => r_debounced_btn_reg_n_0,
      r_cp_z => r_cp_z,
      s00_axi_aclk => s00_axi_aclk
    );
r_debounced_btn_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => r_delay_counter_posedge,
      CLR => SR(0),
      D => i_btn_l,
      Q => r_debounced_btn_reg_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_2_myBLDC_Controller_0_0_buttonControl_7 is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    r_delay_counter_posedge : in STD_LOGIC;
    i_btn_r : in STD_LOGIC;
    \r_gain_reg[0]\ : in STD_LOGIC;
    r_cp : in STD_LOGIC;
    r_cp_z : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_2_myBLDC_Controller_0_0_buttonControl_7 : entity is "buttonControl";
end design_2_myBLDC_Controller_0_0_buttonControl_7;

architecture STRUCTURE of design_2_myBLDC_Controller_0_0_buttonControl_7 is
  signal r_debounced_btn_reg_n_0 : STD_LOGIC;
begin
ED_BTN: entity work.design_2_myBLDC_Controller_0_0_edge_detector_n_8
     port map (
      E(0) => E(0),
      Q(0) => Q(0),
      S(0) => S(0),
      SR(0) => SR(0),
      r_cp => r_cp,
      r_cp_reg_0 => r_debounced_btn_reg_n_0,
      r_cp_z => r_cp_z,
      \r_gain_reg[0]\ => \r_gain_reg[0]\,
      s00_axi_aclk => s00_axi_aclk
    );
r_debounced_btn_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => r_delay_counter_posedge,
      CLR => SR(0),
      D => i_btn_r,
      Q => r_debounced_btn_reg_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_2_myBLDC_Controller_0_0_clock_div_100 is
  port (
    w_clk_us_posedge : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_2_myBLDC_Controller_0_0_clock_div_100 : entity is "clock_div_100";
end design_2_myBLDC_Controller_0_0_clock_div_100;

architecture STRUCTURE of design_2_myBLDC_Controller_0_0_clock_div_100 is
  signal load : STD_LOGIC;
  signal \r_count[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \r_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_count[3]_i_1_n_0\ : STD_LOGIC;
  signal \r_count[4]_i_1_n_0\ : STD_LOGIC;
  signal \r_count[5]_i_1_n_0\ : STD_LOGIC;
  signal \r_count[6]_i_1_n_0\ : STD_LOGIC;
  signal \r_count[6]_i_2_n_0\ : STD_LOGIC;
  signal r_count_reg : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \r_count[1]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \r_count[2]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \r_count[3]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \r_count[6]_i_2\ : label is "soft_lutpair19";
begin
ED_OUTPUT_TICK: entity work.design_2_myBLDC_Controller_0_0_edge_detector_n_11
     port map (
      AR(0) => AR(0),
      Q(5 downto 0) => r_count_reg(6 downto 1),
      s00_axi_aclk => s00_axi_aclk,
      w_clk_us_posedge => w_clk_us_posedge
    );
\r_count[0]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_count_reg(0),
      I1 => load,
      O => \r_count[0]_i_1__0_n_0\
    );
\r_count[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => r_count_reg(1),
      I1 => r_count_reg(0),
      I2 => load,
      O => \r_count[1]_i_1_n_0\
    );
\r_count[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
        port map (
      I0 => r_count_reg(2),
      I1 => r_count_reg(1),
      I2 => r_count_reg(0),
      I3 => load,
      O => \r_count[2]_i_1_n_0\
    );
\r_count[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006AAA"
    )
        port map (
      I0 => r_count_reg(3),
      I1 => r_count_reg(2),
      I2 => r_count_reg(0),
      I3 => r_count_reg(1),
      I4 => load,
      O => \r_count[3]_i_1_n_0\
    );
\r_count[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006AAAAAAA"
    )
        port map (
      I0 => r_count_reg(4),
      I1 => r_count_reg(3),
      I2 => r_count_reg(1),
      I3 => r_count_reg(0),
      I4 => r_count_reg(2),
      I5 => load,
      O => \r_count[4]_i_1_n_0\
    );
\r_count[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA800000000"
    )
        port map (
      I0 => r_count_reg(5),
      I1 => r_count_reg(3),
      I2 => r_count_reg(2),
      I3 => \r_count[6]_i_2_n_0\,
      I4 => r_count_reg(4),
      I5 => r_count_reg(6),
      O => load
    );
\r_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"15555557C0000000"
    )
        port map (
      I0 => r_count_reg(6),
      I1 => r_count_reg(4),
      I2 => \r_count[6]_i_2_n_0\,
      I3 => r_count_reg(2),
      I4 => r_count_reg(3),
      I5 => r_count_reg(5),
      O => \r_count[5]_i_1_n_0\
    );
\r_count[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40000002AAAAAAAA"
    )
        port map (
      I0 => r_count_reg(6),
      I1 => r_count_reg(4),
      I2 => \r_count[6]_i_2_n_0\,
      I3 => r_count_reg(2),
      I4 => r_count_reg(3),
      I5 => r_count_reg(5),
      O => \r_count[6]_i_1_n_0\
    );
\r_count[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_count_reg(1),
      I1 => r_count_reg(0),
      O => \r_count[6]_i_2_n_0\
    );
\r_count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \r_count[0]_i_1__0_n_0\,
      Q => r_count_reg(0)
    );
\r_count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \r_count[1]_i_1_n_0\,
      Q => r_count_reg(1)
    );
\r_count_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \r_count[2]_i_1_n_0\,
      Q => r_count_reg(2)
    );
\r_count_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \r_count[3]_i_1_n_0\,
      Q => r_count_reg(3)
    );
\r_count_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \r_count[4]_i_1_n_0\,
      Q => r_count_reg(4)
    );
\r_count_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \r_count[5]_i_1_n_0\,
      Q => r_count_reg(5)
    );
\r_count_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \r_count[6]_i_1_n_0\,
      Q => r_count_reg(6)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_2_myBLDC_Controller_0_0_clock_div_1000 is
  port (
    s00_axi_aresetn_0 : out STD_LOGIC;
    w_calculate : out STD_LOGIC;
    w_clk_us_posedge : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    i_sw_enable_control : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_2_myBLDC_Controller_0_0_clock_div_1000 : entity is "clock_div_1000";
end design_2_myBLDC_Controller_0_0_clock_div_1000;

architecture STRUCTURE of design_2_myBLDC_Controller_0_0_clock_div_1000 is
  signal \r_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_count[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \r_count[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \r_count[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \r_count[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \r_count[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \r_count[5]_i_2_n_0\ : STD_LOGIC;
  signal \r_count[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \r_count[7]_i_1_n_0\ : STD_LOGIC;
  signal \r_count[8]_i_1_n_0\ : STD_LOGIC;
  signal \r_count[9]_i_2_n_0\ : STD_LOGIC;
  signal \r_count[9]_i_3_n_0\ : STD_LOGIC;
  signal \r_count[9]_i_4_n_0\ : STD_LOGIC;
  signal \r_count[9]_i_5_n_0\ : STD_LOGIC;
  signal r_count_reg : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \^s00_axi_aresetn_0\ : STD_LOGIC;
  signal w_negedge_tick : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \r_count[0]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \r_count[1]_i_1__0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \r_count[2]_i_1__0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \r_count[3]_i_1__0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \r_count[5]_i_1__0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \r_count[6]_i_1__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \r_count[7]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \r_count[8]_i_1\ : label is "soft_lutpair15";
begin
  s00_axi_aresetn_0 <= \^s00_axi_aresetn_0\;
ED_INPUT_CP: entity work.design_2_myBLDC_Controller_0_0_edge_detector_n_12
     port map (
      AR(0) => \^s00_axi_aresetn_0\,
      E(0) => w_negedge_tick,
      s00_axi_aclk => s00_axi_aclk,
      w_clk_us_posedge => w_clk_us_posedge
    );
ED_OUTPUT_TICK: entity work.design_2_myBLDC_Controller_0_0_edge_detector_n_13
     port map (
      AR(0) => \^s00_axi_aresetn_0\,
      Q(7 downto 0) => r_count_reg(9 downto 2),
      i_sw_enable_control => i_sw_enable_control,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      w_calculate => w_calculate
    );
\r_count[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_count_reg(0),
      I1 => \r_count[9]_i_4_n_0\,
      O => \r_count[0]_i_1_n_0\
    );
\r_count[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => r_count_reg(1),
      I1 => r_count_reg(0),
      I2 => \r_count[9]_i_4_n_0\,
      O => \r_count[1]_i_1__0_n_0\
    );
\r_count[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
        port map (
      I0 => r_count_reg(2),
      I1 => r_count_reg(1),
      I2 => r_count_reg(0),
      I3 => \r_count[9]_i_4_n_0\,
      O => \r_count[2]_i_1__0_n_0\
    );
\r_count[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006AAA"
    )
        port map (
      I0 => r_count_reg(3),
      I1 => r_count_reg(2),
      I2 => r_count_reg(0),
      I3 => r_count_reg(1),
      I4 => \r_count[9]_i_4_n_0\,
      O => \r_count[3]_i_1__0_n_0\
    );
\r_count[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006AAAAAAA"
    )
        port map (
      I0 => r_count_reg(4),
      I1 => r_count_reg(3),
      I2 => r_count_reg(1),
      I3 => r_count_reg(0),
      I4 => r_count_reg(2),
      I5 => \r_count[9]_i_4_n_0\,
      O => \r_count[4]_i_1__0_n_0\
    );
\r_count[5]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => r_count_reg(5),
      I1 => \r_count[5]_i_2_n_0\,
      I2 => \r_count[9]_i_4_n_0\,
      O => \r_count[5]_i_1__0_n_0\
    );
\r_count[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => r_count_reg(4),
      I1 => r_count_reg(2),
      I2 => r_count_reg(0),
      I3 => r_count_reg(1),
      I4 => r_count_reg(3),
      O => \r_count[5]_i_2_n_0\
    );
\r_count[6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => r_count_reg(6),
      I1 => \r_count[9]_i_3_n_0\,
      I2 => \r_count[9]_i_4_n_0\,
      O => \r_count[6]_i_1__0_n_0\
    );
\r_count[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
        port map (
      I0 => r_count_reg(7),
      I1 => r_count_reg(6),
      I2 => \r_count[9]_i_3_n_0\,
      I3 => \r_count[9]_i_4_n_0\,
      O => \r_count[7]_i_1_n_0\
    );
\r_count[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006AAA"
    )
        port map (
      I0 => r_count_reg(8),
      I1 => r_count_reg(7),
      I2 => \r_count[9]_i_3_n_0\,
      I3 => r_count_reg(6),
      I4 => \r_count[9]_i_4_n_0\,
      O => \r_count[8]_i_1_n_0\
    );
\r_count[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006AAAAAAA"
    )
        port map (
      I0 => r_count_reg(9),
      I1 => r_count_reg(8),
      I2 => r_count_reg(6),
      I3 => \r_count[9]_i_3_n_0\,
      I4 => r_count_reg(7),
      I5 => \r_count[9]_i_4_n_0\,
      O => \r_count[9]_i_2_n_0\
    );
\r_count[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => r_count_reg(5),
      I1 => r_count_reg(3),
      I2 => r_count_reg(1),
      I3 => r_count_reg(0),
      I4 => r_count_reg(2),
      I5 => r_count_reg(4),
      O => \r_count[9]_i_3_n_0\
    );
\r_count[9]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => r_count_reg(6),
      I1 => r_count_reg(5),
      I2 => \r_count[9]_i_5_n_0\,
      I3 => r_count_reg(7),
      I4 => r_count_reg(8),
      O => \r_count[9]_i_4_n_0\
    );
\r_count[9]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555557777777"
    )
        port map (
      I0 => r_count_reg(9),
      I1 => r_count_reg(4),
      I2 => r_count_reg(2),
      I3 => r_count_reg(0),
      I4 => r_count_reg(1),
      I5 => r_count_reg(3),
      O => \r_count[9]_i_5_n_0\
    );
\r_count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => w_negedge_tick,
      CLR => \^s00_axi_aresetn_0\,
      D => \r_count[0]_i_1_n_0\,
      Q => r_count_reg(0)
    );
\r_count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => w_negedge_tick,
      CLR => \^s00_axi_aresetn_0\,
      D => \r_count[1]_i_1__0_n_0\,
      Q => r_count_reg(1)
    );
\r_count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => w_negedge_tick,
      CLR => \^s00_axi_aresetn_0\,
      D => \r_count[2]_i_1__0_n_0\,
      Q => r_count_reg(2)
    );
\r_count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => w_negedge_tick,
      CLR => \^s00_axi_aresetn_0\,
      D => \r_count[3]_i_1__0_n_0\,
      Q => r_count_reg(3)
    );
\r_count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => w_negedge_tick,
      CLR => \^s00_axi_aresetn_0\,
      D => \r_count[4]_i_1__0_n_0\,
      Q => r_count_reg(4)
    );
\r_count_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => w_negedge_tick,
      CLR => \^s00_axi_aresetn_0\,
      D => \r_count[5]_i_1__0_n_0\,
      Q => r_count_reg(5)
    );
\r_count_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => w_negedge_tick,
      CLR => \^s00_axi_aresetn_0\,
      D => \r_count[6]_i_1__0_n_0\,
      Q => r_count_reg(6)
    );
\r_count_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => w_negedge_tick,
      CLR => \^s00_axi_aresetn_0\,
      D => \r_count[7]_i_1_n_0\,
      Q => r_count_reg(7)
    );
\r_count_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => w_negedge_tick,
      CLR => \^s00_axi_aresetn_0\,
      D => \r_count[8]_i_1_n_0\,
      Q => r_count_reg(8)
    );
\r_count_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => w_negedge_tick,
      CLR => \^s00_axi_aresetn_0\,
      D => \r_count[9]_i_2_n_0\,
      Q => r_count_reg(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_2_myBLDC_Controller_0_0_potentiometer is
  port (
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    i_sw_display_gain_0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \r_value_reg[2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    i_sw_enable_control_0 : out STD_LOGIC;
    \r_value_reg[11]_0\ : out STD_LOGIC_VECTOR ( 11 downto 0 );
    i_sw_enable_control_1 : out STD_LOGIC;
    i_sw_enable_control_2 : out STD_LOGIC;
    i_sw_enable_control_3 : out STD_LOGIC;
    i_sw_enable_control_4 : out STD_LOGIC;
    i_sw_enable_control_5 : out STD_LOGIC;
    i_sw_enable_control_6 : out STD_LOGIC;
    i_sw_enable_control_7 : out STD_LOGIC;
    i_sw_enable_control_8 : out STD_LOGIC;
    i_sw_enable_control_9 : out STD_LOGIC;
    i_sw_enable_control_10 : out STD_LOGIC;
    i_sw_enable_control_11 : out STD_LOGIC;
    \r_value_reg[5]_0\ : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    i_vaux6p : in STD_LOGIC;
    i_vaux6n : in STD_LOGIC;
    \r_hex_value_reg[0]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \r_hex_value_reg[0]_0\ : in STD_LOGIC;
    i_sw_display_gain : in STD_LOGIC;
    \r_hex_value_reg[1]\ : in STD_LOGIC;
    i_sw_enable_control : in STD_LOGIC;
    \r_hex_value_reg[0]_1\ : in STD_LOGIC;
    \r_hex_value_reg[1]_0\ : in STD_LOGIC;
    \r_hex_value_reg[3]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \r_hex_value_reg[2]\ : in STD_LOGIC;
    \r_hex_value_reg[3]_0\ : in STD_LOGIC;
    \r_hex_value_reg[1]_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \r_hex_value_reg[1]_2\ : in STD_LOGIC;
    \r_hex_value_reg[2]_0\ : in STD_LOGIC;
    w_p_gain_bcd : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_2_myBLDC_Controller_0_0_potentiometer : entity is "potentiometer";
end design_2_myBLDC_Controller_0_0_potentiometer;

architecture STRUCTURE of design_2_myBLDC_Controller_0_0_potentiometer is
  signal \BIN2DEC_REF/p_0_in00_in\ : STD_LOGIC;
  signal \BIN2DEC_REF/p_0_in01_in\ : STD_LOGIC;
  signal \BIN2DEC_REF/p_0_in02_in\ : STD_LOGIC;
  signal \BIN2DEC_REF/p_0_in1_in\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \BIN2DEC_REF/p_1_in\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \BIN2DEC_REF/p_1_in0\ : STD_LOGIC;
  signal \BIN2DEC_REF/p_1_in01_in\ : STD_LOGIC;
  signal \BIN2DEC_REF/p_1_in03_in\ : STD_LOGIC;
  signal \r_hex_value[0]_i_12_n_0\ : STD_LOGIC;
  signal \r_hex_value[0]_i_2_n_0\ : STD_LOGIC;
  signal \r_hex_value[0]_i_5_n_0\ : STD_LOGIC;
  signal \r_hex_value[1]_i_4_n_0\ : STD_LOGIC;
  signal \r_hex_value[2]_i_11_n_0\ : STD_LOGIC;
  signal \r_hex_value[2]_i_12_n_0\ : STD_LOGIC;
  signal \r_hex_value[2]_i_2_n_0\ : STD_LOGIC;
  signal \r_hex_value[2]_i_4_n_0\ : STD_LOGIC;
  signal \r_hex_value[3]_i_10_n_0\ : STD_LOGIC;
  signal \r_hex_value[3]_i_11_n_0\ : STD_LOGIC;
  signal \r_hex_value[3]_i_12_n_0\ : STD_LOGIC;
  signal \r_hex_value[3]_i_18_n_0\ : STD_LOGIC;
  signal \r_hex_value[3]_i_19_n_0\ : STD_LOGIC;
  signal \r_hex_value[3]_i_20_n_0\ : STD_LOGIC;
  signal \r_hex_value[3]_i_21_n_0\ : STD_LOGIC;
  signal \r_hex_value[3]_i_22_n_0\ : STD_LOGIC;
  signal \r_hex_value[3]_i_27_n_0\ : STD_LOGIC;
  signal \r_hex_value[3]_i_28_n_0\ : STD_LOGIC;
  signal \r_hex_value[3]_i_29_n_0\ : STD_LOGIC;
  signal \r_hex_value[3]_i_30_n_0\ : STD_LOGIC;
  signal \r_hex_value[3]_i_31_n_0\ : STD_LOGIC;
  signal \r_hex_value[3]_i_32_n_0\ : STD_LOGIC;
  signal \r_hex_value[3]_i_33_n_0\ : STD_LOGIC;
  signal \r_hex_value[3]_i_34_n_0\ : STD_LOGIC;
  signal \r_hex_value[3]_i_39_n_0\ : STD_LOGIC;
  signal \r_hex_value[3]_i_40_n_0\ : STD_LOGIC;
  signal \r_hex_value[3]_i_41_n_0\ : STD_LOGIC;
  signal \r_hex_value[3]_i_42_n_0\ : STD_LOGIC;
  signal \r_hex_value[3]_i_43_n_0\ : STD_LOGIC;
  signal \r_hex_value[3]_i_44_n_0\ : STD_LOGIC;
  signal \r_hex_value[3]_i_45_n_0\ : STD_LOGIC;
  signal \r_hex_value[3]_i_46_n_0\ : STD_LOGIC;
  signal \r_hex_value[3]_i_9_n_0\ : STD_LOGIC;
  signal \^r_value_reg[11]_0\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal w_ADC_bcd : STD_LOGIC_VECTOR ( 4 to 4 );
  signal w_channel_out : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal w_do_out : STD_LOGIC_VECTOR ( 15 downto 4 );
  signal w_eoc_out : STD_LOGIC;
  signal w_eoc_out_negedge : STD_LOGIC;
  signal \w_fnd_value__46\ : STD_LOGIC_VECTOR ( 10 downto 5 );
  signal NLW_adc_ch6_alarm_out_UNCONNECTED : STD_LOGIC;
  signal NLW_adc_ch6_busy_out_UNCONNECTED : STD_LOGIC;
  signal NLW_adc_ch6_drdy_out_UNCONNECTED : STD_LOGIC;
  signal NLW_adc_ch6_eos_out_UNCONNECTED : STD_LOGIC;
  signal NLW_adc_ch6_do_out_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \r_hex_value[0]_i_12\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \r_hex_value[0]_i_6\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \r_hex_value[2]_i_6\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \r_hex_value[2]_i_8\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \r_hex_value[3]_i_23\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \r_hex_value[3]_i_24\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \r_hex_value[3]_i_25\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \r_hex_value[3]_i_27\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \r_hex_value[3]_i_39\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \r_hex_value[3]_i_42\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \r_hex_value[3]_i_43\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \r_reference[0]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \r_reference[10]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \r_reference[11]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \r_reference[1]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \r_reference[2]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \r_reference[3]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \r_reference[4]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \r_reference[5]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \r_reference[6]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \r_reference[8]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \r_reference[9]_i_1\ : label is "soft_lutpair38";
begin
  \r_value_reg[11]_0\(11 downto 0) <= \^r_value_reg[11]_0\(11 downto 0);
ED_EOC: entity work.design_2_myBLDC_Controller_0_0_edge_detector_n
     port map (
      E(0) => w_eoc_out_negedge,
      SR(0) => SR(0),
      eoc_out => w_eoc_out,
      s00_axi_aclk => s00_axi_aclk
    );
adc_ch6: entity work.design_2_myBLDC_Controller_0_0_xadc_wiz_0
     port map (
      alarm_out => NLW_adc_ch6_alarm_out_UNCONNECTED,
      busy_out => NLW_adc_ch6_busy_out_UNCONNECTED,
      channel_out(4 downto 0) => w_channel_out(4 downto 0),
      daddr_in(6 downto 5) => B"00",
      daddr_in(4 downto 0) => w_channel_out(4 downto 0),
      dclk_in => s00_axi_aclk,
      den_in => w_eoc_out,
      di_in(15 downto 0) => B"0000000000000000",
      do_out(15 downto 4) => w_do_out(15 downto 4),
      do_out(3 downto 0) => NLW_adc_ch6_do_out_UNCONNECTED(3 downto 0),
      drdy_out => NLW_adc_ch6_drdy_out_UNCONNECTED,
      dwe_in => '0',
      eoc_out => w_eoc_out,
      eos_out => NLW_adc_ch6_eos_out_UNCONNECTED,
      reset_in => SR(0),
      vauxn6 => i_vaux6n,
      vauxp6 => i_vaux6p,
      vn_in => '0',
      vp_in => '0'
    );
\r_hex_value[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0707FF07"
    )
        port map (
      I0 => \r_hex_value[0]_i_2_n_0\,
      I1 => \r_hex_value_reg[0]\,
      I2 => Q(3),
      I3 => \w_fnd_value__46\(8),
      I4 => Q(2),
      I5 => \r_hex_value[0]_i_5_n_0\,
      O => D(0)
    );
\r_hex_value[0]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4DA13A7C4B0130EC"
    )
        port map (
      I0 => \^r_value_reg[11]_0\(2),
      I1 => \r_hex_value[3]_i_32_n_0\,
      I2 => \^r_value_reg[11]_0\(3),
      I3 => \r_hex_value[3]_i_33_n_0\,
      I4 => \r_hex_value[3]_i_34_n_0\,
      I5 => \^r_value_reg[11]_0\(1),
      O => w_ADC_bcd(4)
    );
\r_hex_value[0]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
        port map (
      I0 => i_sw_display_gain,
      I1 => \^r_value_reg[11]_0\(0),
      I2 => \r_hex_value_reg[1]_1\(0),
      I3 => Q(0),
      O => \r_hex_value[0]_i_12_n_0\
    );
\r_hex_value[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBAAAFFAFFBBAAF"
    )
        port map (
      I0 => i_sw_display_gain,
      I1 => \r_hex_value[3]_i_11_n_0\,
      I2 => \BIN2DEC_REF/p_1_in0\,
      I3 => \BIN2DEC_REF/p_1_in01_in\,
      I4 => \BIN2DEC_REF/p_1_in03_in\,
      I5 => \BIN2DEC_REF/p_1_in\(0),
      O => \r_hex_value[0]_i_2_n_0\
    );
\r_hex_value[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555555777DDDDD"
    )
        port map (
      I0 => \r_hex_value_reg[0]_1\,
      I1 => \r_hex_value[3]_i_18_n_0\,
      I2 => \r_hex_value[3]_i_19_n_0\,
      I3 => \r_hex_value[3]_i_20_n_0\,
      I4 => \r_hex_value[3]_i_21_n_0\,
      I5 => i_sw_display_gain,
      O => \w_fnd_value__46\(8)
    );
\r_hex_value[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF1151"
    )
        port map (
      I0 => Q(1),
      I1 => \r_hex_value_reg[0]_0\,
      I2 => w_ADC_bcd(4),
      I3 => i_sw_display_gain,
      I4 => \r_hex_value[0]_i_12_n_0\,
      O => \r_hex_value[0]_i_5_n_0\
    );
\r_hex_value[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A17C01EC"
    )
        port map (
      I0 => \r_hex_value[3]_i_27_n_0\,
      I1 => \r_hex_value[3]_i_28_n_0\,
      I2 => \r_hex_value[3]_i_29_n_0\,
      I3 => \r_hex_value[3]_i_30_n_0\,
      I4 => \r_hex_value[3]_i_22_n_0\,
      O => \BIN2DEC_REF/p_1_in\(0)
    );
\r_hex_value[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAEFFAEFFFFFFAE"
    )
        port map (
      I0 => \r_hex_value_reg[1]\,
      I1 => \w_fnd_value__46\(9),
      I2 => Q(2),
      I3 => \r_hex_value[1]_i_4_n_0\,
      I4 => \w_fnd_value__46\(5),
      I5 => Q(1),
      O => D(1)
    );
\r_hex_value[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555555555577FFD5"
    )
        port map (
      I0 => \r_hex_value_reg[1]_0\,
      I1 => \r_hex_value[3]_i_12_n_0\,
      I2 => \r_hex_value[3]_i_10_n_0\,
      I3 => \r_hex_value[3]_i_9_n_0\,
      I4 => \r_hex_value[3]_i_11_n_0\,
      I5 => i_sw_display_gain,
      O => \w_fnd_value__46\(9)
    );
\r_hex_value[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000014BEBE14"
    )
        port map (
      I0 => i_sw_display_gain,
      I1 => \^r_value_reg[11]_0\(1),
      I2 => \r_hex_value[2]_i_12_n_0\,
      I3 => \r_hex_value_reg[1]_1\(1),
      I4 => \r_hex_value_reg[1]_2\,
      I5 => Q(0),
      O => \r_hex_value[1]_i_4_n_0\
    );
\r_hex_value[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA0033FFC0"
    )
        port map (
      I0 => \r_hex_value_reg[3]\(0),
      I1 => \r_hex_value[3]_i_21_n_0\,
      I2 => \r_hex_value[3]_i_19_n_0\,
      I3 => \r_hex_value[3]_i_18_n_0\,
      I4 => \r_hex_value[3]_i_20_n_0\,
      I5 => i_sw_display_gain,
      O => \w_fnd_value__46\(5)
    );
\r_hex_value[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3C303C303C3038F0"
    )
        port map (
      I0 => \r_hex_value[3]_i_22_n_0\,
      I1 => \BIN2DEC_REF/p_0_in00_in\,
      I2 => \BIN2DEC_REF/p_0_in02_in\,
      I3 => \BIN2DEC_REF/p_0_in01_in\,
      I4 => \BIN2DEC_REF/p_0_in1_in\(0),
      I5 => \r_hex_value[3]_i_27_n_0\,
      O => \r_value_reg[5]_0\
    );
\r_hex_value[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAEFFAEFFFFFFAE"
    )
        port map (
      I0 => \r_hex_value[2]_i_2_n_0\,
      I1 => \w_fnd_value__46\(10),
      I2 => Q(2),
      I3 => \r_hex_value[2]_i_4_n_0\,
      I4 => \w_fnd_value__46\(6),
      I5 => Q(1),
      O => D(2)
    );
\r_hex_value[2]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C2836425195893CA"
    )
        port map (
      I0 => \r_hex_value[3]_i_41_n_0\,
      I1 => \r_hex_value[3]_i_40_n_0\,
      I2 => \^r_value_reg[11]_0\(4),
      I3 => \r_hex_value[3]_i_39_n_0\,
      I4 => \^r_value_reg[11]_0\(3),
      I5 => \^r_value_reg[11]_0\(2),
      O => \r_hex_value[2]_i_11_n_0\
    );
\r_hex_value[2]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5FA53AFC5B0530EC"
    )
        port map (
      I0 => \^r_value_reg[11]_0\(2),
      I1 => \r_hex_value[3]_i_32_n_0\,
      I2 => \^r_value_reg[11]_0\(3),
      I3 => \r_hex_value[3]_i_33_n_0\,
      I4 => \r_hex_value[3]_i_34_n_0\,
      I5 => \^r_value_reg[11]_0\(1),
      O => \r_hex_value[2]_i_12_n_0\
    );
\r_hex_value[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEEA4440"
    )
        port map (
      I0 => i_sw_display_gain,
      I1 => \BIN2DEC_REF/p_1_in01_in\,
      I2 => \BIN2DEC_REF/p_1_in0\,
      I3 => \BIN2DEC_REF/p_1_in03_in\,
      I4 => w_p_gain_bcd(0),
      I5 => Q(3),
      O => \r_hex_value[2]_i_2_n_0\
    );
\r_hex_value[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555555F55DF57D"
    )
        port map (
      I0 => \r_hex_value_reg[2]\,
      I1 => \r_hex_value[3]_i_9_n_0\,
      I2 => \r_hex_value[3]_i_10_n_0\,
      I3 => \r_hex_value[3]_i_11_n_0\,
      I4 => \r_hex_value[3]_i_12_n_0\,
      I5 => i_sw_display_gain,
      O => \w_fnd_value__46\(10)
    );
\r_hex_value[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000004414FFFF"
    )
        port map (
      I0 => i_sw_display_gain,
      I1 => \r_hex_value[2]_i_11_n_0\,
      I2 => \r_hex_value[2]_i_12_n_0\,
      I3 => \^r_value_reg[11]_0\(1),
      I4 => \r_hex_value_reg[2]_0\,
      I5 => Q(0),
      O => \r_hex_value[2]_i_4_n_0\
    );
\r_hex_value[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAF00CF03C"
    )
        port map (
      I0 => \r_hex_value_reg[3]\(1),
      I1 => \r_hex_value[3]_i_18_n_0\,
      I2 => \r_hex_value[3]_i_19_n_0\,
      I3 => \r_hex_value[3]_i_20_n_0\,
      I4 => \r_hex_value[3]_i_21_n_0\,
      I5 => i_sw_display_gain,
      O => \w_fnd_value__46\(6)
    );
\r_hex_value[2]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000E000"
    )
        port map (
      I0 => \^r_value_reg[11]_0\(7),
      I1 => \^r_value_reg[11]_0\(8),
      I2 => \^r_value_reg[11]_0\(10),
      I3 => \^r_value_reg[11]_0\(11),
      I4 => \^r_value_reg[11]_0\(9),
      O => \BIN2DEC_REF/p_1_in01_in\
    );
\r_hex_value[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3C303C303C3038F0"
    )
        port map (
      I0 => \^r_value_reg[11]_0\(6),
      I1 => \^r_value_reg[11]_0\(10),
      I2 => \^r_value_reg[11]_0\(11),
      I3 => \^r_value_reg[11]_0\(9),
      I4 => \^r_value_reg[11]_0\(8),
      I5 => \^r_value_reg[11]_0\(7),
      O => \BIN2DEC_REF/p_1_in0\
    );
\r_hex_value[2]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56AA"
    )
        port map (
      I0 => \r_hex_value[3]_i_28_n_0\,
      I1 => \r_hex_value[3]_i_29_n_0\,
      I2 => \r_hex_value[3]_i_27_n_0\,
      I3 => \r_hex_value[3]_i_30_n_0\,
      O => \BIN2DEC_REF/p_1_in03_in\
    );
\r_hex_value[3]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E83F01C1002F33C"
    )
        port map (
      I0 => \r_hex_value[3]_i_22_n_0\,
      I1 => \BIN2DEC_REF/p_0_in00_in\,
      I2 => \BIN2DEC_REF/p_0_in02_in\,
      I3 => \BIN2DEC_REF/p_0_in01_in\,
      I4 => \BIN2DEC_REF/p_0_in1_in\(0),
      I5 => \r_hex_value[3]_i_27_n_0\,
      O => \r_hex_value[3]_i_10_n_0\
    );
\r_hex_value[3]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"772319EC660331C8"
    )
        port map (
      I0 => \r_hex_value[3]_i_22_n_0\,
      I1 => \r_hex_value[3]_i_27_n_0\,
      I2 => \r_hex_value[3]_i_28_n_0\,
      I3 => \r_hex_value[3]_i_29_n_0\,
      I4 => \r_hex_value[3]_i_30_n_0\,
      I5 => \r_hex_value[3]_i_31_n_0\,
      O => \r_hex_value[3]_i_11_n_0\
    );
\r_hex_value[3]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C330332CD330300C"
    )
        port map (
      I0 => \r_hex_value[3]_i_22_n_0\,
      I1 => \BIN2DEC_REF/p_0_in00_in\,
      I2 => \BIN2DEC_REF/p_0_in02_in\,
      I3 => \BIN2DEC_REF/p_0_in01_in\,
      I4 => \BIN2DEC_REF/p_0_in1_in\(0),
      I5 => \r_hex_value[3]_i_27_n_0\,
      O => \r_hex_value[3]_i_12_n_0\
    );
\r_hex_value[3]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4101204807A00AD0"
    )
        port map (
      I0 => \^r_value_reg[11]_0\(2),
      I1 => \r_hex_value[3]_i_32_n_0\,
      I2 => \^r_value_reg[11]_0\(3),
      I3 => \r_hex_value[3]_i_33_n_0\,
      I4 => \r_hex_value[3]_i_34_n_0\,
      I5 => \^r_value_reg[11]_0\(1),
      O => \r_value_reg[2]_0\(0)
    );
\r_hex_value[3]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4402118011203824"
    )
        port map (
      I0 => \r_hex_value[3]_i_22_n_0\,
      I1 => \r_hex_value[3]_i_27_n_0\,
      I2 => \r_hex_value[3]_i_28_n_0\,
      I3 => \r_hex_value[3]_i_29_n_0\,
      I4 => \r_hex_value[3]_i_30_n_0\,
      I5 => \r_hex_value[3]_i_31_n_0\,
      O => \r_hex_value[3]_i_18_n_0\
    );
\r_hex_value[3]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EA05263111CAD846"
    )
        port map (
      I0 => \r_hex_value[3]_i_30_n_0\,
      I1 => \r_hex_value[3]_i_29_n_0\,
      I2 => \r_hex_value[3]_i_28_n_0\,
      I3 => \r_hex_value[3]_i_27_n_0\,
      I4 => \r_hex_value[3]_i_22_n_0\,
      I5 => \r_hex_value[3]_i_31_n_0\,
      O => \r_hex_value[3]_i_19_n_0\
    );
\r_hex_value[3]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4DA13A7C4B0130EC"
    )
        port map (
      I0 => \^r_value_reg[11]_0\(3),
      I1 => \r_hex_value[3]_i_39_n_0\,
      I2 => \^r_value_reg[11]_0\(4),
      I3 => \r_hex_value[3]_i_40_n_0\,
      I4 => \r_hex_value[3]_i_41_n_0\,
      I5 => \^r_value_reg[11]_0\(2),
      O => \r_hex_value[3]_i_20_n_0\
    );
\r_hex_value[3]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2299545A449A2592"
    )
        port map (
      I0 => \r_hex_value[3]_i_22_n_0\,
      I1 => \r_hex_value[3]_i_27_n_0\,
      I2 => \r_hex_value[3]_i_28_n_0\,
      I3 => \r_hex_value[3]_i_29_n_0\,
      I4 => \r_hex_value[3]_i_30_n_0\,
      I5 => \r_hex_value[3]_i_31_n_0\,
      O => \r_hex_value[3]_i_21_n_0\
    );
\r_hex_value[3]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4DA13A7C4B0130EC"
    )
        port map (
      I0 => \^r_value_reg[11]_0\(5),
      I1 => \r_hex_value[3]_i_42_n_0\,
      I2 => \^r_value_reg[11]_0\(6),
      I3 => \BIN2DEC_REF/p_0_in1_in\(0),
      I4 => \r_hex_value[3]_i_43_n_0\,
      I5 => \^r_value_reg[11]_0\(4),
      O => \r_hex_value[3]_i_22_n_0\
    );
\r_hex_value[3]_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B424"
    )
        port map (
      I0 => \^r_value_reg[11]_0\(9),
      I1 => \^r_value_reg[11]_0\(11),
      I2 => \^r_value_reg[11]_0\(10),
      I3 => \^r_value_reg[11]_0\(8),
      O => \BIN2DEC_REF/p_0_in00_in\
    );
\r_hex_value[3]_i_24\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^r_value_reg[11]_0\(9),
      I1 => \^r_value_reg[11]_0\(10),
      I2 => \^r_value_reg[11]_0\(11),
      O => \BIN2DEC_REF/p_0_in02_in\
    );
\r_hex_value[3]_i_25\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"793C6138"
    )
        port map (
      I0 => \^r_value_reg[11]_0\(8),
      I1 => \^r_value_reg[11]_0\(9),
      I2 => \^r_value_reg[11]_0\(11),
      I3 => \^r_value_reg[11]_0\(10),
      I4 => \^r_value_reg[11]_0\(7),
      O => \BIN2DEC_REF/p_0_in01_in\
    );
\r_hex_value[3]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3973CE9C31638C18"
    )
        port map (
      I0 => \^r_value_reg[11]_0\(7),
      I1 => \^r_value_reg[11]_0\(8),
      I2 => \^r_value_reg[11]_0\(9),
      I3 => \^r_value_reg[11]_0\(11),
      I4 => \^r_value_reg[11]_0\(10),
      I5 => \^r_value_reg[11]_0\(6),
      O => \BIN2DEC_REF/p_0_in1_in\(0)
    );
\r_hex_value[3]_i_27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"95565A5A"
    )
        port map (
      I0 => \r_hex_value[3]_i_42_n_0\,
      I1 => \^r_value_reg[11]_0\(6),
      I2 => \BIN2DEC_REF/p_0_in1_in\(0),
      I3 => \^r_value_reg[11]_0\(5),
      I4 => \r_hex_value[3]_i_43_n_0\,
      O => \r_hex_value[3]_i_27_n_0\
    );
\r_hex_value[3]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"300C0000200C04C0"
    )
        port map (
      I0 => \^r_value_reg[11]_0\(6),
      I1 => \^r_value_reg[11]_0\(10),
      I2 => \^r_value_reg[11]_0\(11),
      I3 => \^r_value_reg[11]_0\(9),
      I4 => \^r_value_reg[11]_0\(8),
      I5 => \^r_value_reg[11]_0\(7),
      O => \r_hex_value[3]_i_28_n_0\
    );
\r_hex_value[3]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E83F01C1002F33C"
    )
        port map (
      I0 => \^r_value_reg[11]_0\(6),
      I1 => \^r_value_reg[11]_0\(10),
      I2 => \^r_value_reg[11]_0\(11),
      I3 => \^r_value_reg[11]_0\(9),
      I4 => \^r_value_reg[11]_0\(8),
      I5 => \^r_value_reg[11]_0\(7),
      O => \r_hex_value[3]_i_29_n_0\
    );
\r_hex_value[3]_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C330332CD330300C"
    )
        port map (
      I0 => \^r_value_reg[11]_0\(6),
      I1 => \^r_value_reg[11]_0\(10),
      I2 => \^r_value_reg[11]_0\(11),
      I3 => \^r_value_reg[11]_0\(9),
      I4 => \^r_value_reg[11]_0\(8),
      I5 => \^r_value_reg[11]_0\(7),
      O => \r_hex_value[3]_i_30_n_0\
    );
\r_hex_value[3]_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"772319EC660331C8"
    )
        port map (
      I0 => \^r_value_reg[11]_0\(4),
      I1 => \^r_value_reg[11]_0\(5),
      I2 => \r_hex_value[3]_i_44_n_0\,
      I3 => \r_hex_value[3]_i_45_n_0\,
      I4 => \r_hex_value[3]_i_46_n_0\,
      I5 => \^r_value_reg[11]_0\(3),
      O => \r_hex_value[3]_i_31_n_0\
    );
\r_hex_value[3]_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"195495664251A58A"
    )
        port map (
      I0 => \^r_value_reg[11]_0\(5),
      I1 => \r_hex_value[3]_i_42_n_0\,
      I2 => \^r_value_reg[11]_0\(6),
      I3 => \BIN2DEC_REF/p_0_in1_in\(0),
      I4 => \r_hex_value[3]_i_43_n_0\,
      I5 => \^r_value_reg[11]_0\(4),
      O => \r_hex_value[3]_i_32_n_0\
    );
\r_hex_value[3]_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"772379EC660371C8"
    )
        port map (
      I0 => \^r_value_reg[11]_0\(4),
      I1 => \^r_value_reg[11]_0\(5),
      I2 => \r_hex_value[3]_i_44_n_0\,
      I3 => \r_hex_value[3]_i_45_n_0\,
      I4 => \r_hex_value[3]_i_46_n_0\,
      I5 => \^r_value_reg[11]_0\(3),
      O => \r_hex_value[3]_i_33_n_0\
    );
\r_hex_value[3]_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C2836425195893CA"
    )
        port map (
      I0 => \r_hex_value[3]_i_43_n_0\,
      I1 => \BIN2DEC_REF/p_0_in1_in\(0),
      I2 => \^r_value_reg[11]_0\(6),
      I3 => \r_hex_value[3]_i_42_n_0\,
      I4 => \^r_value_reg[11]_0\(5),
      I5 => \^r_value_reg[11]_0\(4),
      O => \r_hex_value[3]_i_34_n_0\
    );
\r_hex_value[3]_i_39\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3C623C46"
    )
        port map (
      I0 => \r_hex_value[3]_i_42_n_0\,
      I1 => \^r_value_reg[11]_0\(6),
      I2 => \BIN2DEC_REF/p_0_in1_in\(0),
      I3 => \^r_value_reg[11]_0\(5),
      I4 => \r_hex_value[3]_i_43_n_0\,
      O => \r_hex_value[3]_i_39_n_0\
    );
\r_hex_value[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555555555FDDD5"
    )
        port map (
      I0 => \r_hex_value_reg[3]_0\,
      I1 => \r_hex_value[3]_i_9_n_0\,
      I2 => \r_hex_value[3]_i_10_n_0\,
      I3 => \r_hex_value[3]_i_11_n_0\,
      I4 => \r_hex_value[3]_i_12_n_0\,
      I5 => i_sw_display_gain,
      O => i_sw_display_gain_0(1)
    );
\r_hex_value[3]_i_40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5FA53AFC5B0530EC"
    )
        port map (
      I0 => \^r_value_reg[11]_0\(5),
      I1 => \r_hex_value[3]_i_42_n_0\,
      I2 => \^r_value_reg[11]_0\(6),
      I3 => \BIN2DEC_REF/p_0_in1_in\(0),
      I4 => \r_hex_value[3]_i_43_n_0\,
      I5 => \^r_value_reg[11]_0\(4),
      O => \r_hex_value[3]_i_40_n_0\
    );
\r_hex_value[3]_i_41\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"481137EC"
    )
        port map (
      I0 => \r_hex_value[3]_i_43_n_0\,
      I1 => \BIN2DEC_REF/p_0_in1_in\(0),
      I2 => \^r_value_reg[11]_0\(6),
      I3 => \r_hex_value[3]_i_42_n_0\,
      I4 => \^r_value_reg[11]_0\(5),
      O => \r_hex_value[3]_i_41_n_0\
    );
\r_hex_value[3]_i_42\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"249A45A2"
    )
        port map (
      I0 => \^r_value_reg[11]_0\(8),
      I1 => \^r_value_reg[11]_0\(9),
      I2 => \^r_value_reg[11]_0\(11),
      I3 => \^r_value_reg[11]_0\(10),
      I4 => \^r_value_reg[11]_0\(7),
      O => \r_hex_value[3]_i_42_n_0\
    );
\r_hex_value[3]_i_43\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C3611C86"
    )
        port map (
      I0 => \^r_value_reg[11]_0\(10),
      I1 => \^r_value_reg[11]_0\(11),
      I2 => \^r_value_reg[11]_0\(9),
      I3 => \^r_value_reg[11]_0\(8),
      I4 => \^r_value_reg[11]_0\(7),
      O => \r_hex_value[3]_i_43_n_0\
    );
\r_hex_value[3]_i_44\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2142081008104284"
    )
        port map (
      I0 => \^r_value_reg[11]_0\(7),
      I1 => \^r_value_reg[11]_0\(8),
      I2 => \^r_value_reg[11]_0\(9),
      I3 => \^r_value_reg[11]_0\(11),
      I4 => \^r_value_reg[11]_0\(10),
      I5 => \^r_value_reg[11]_0\(6),
      O => \r_hex_value[3]_i_44_n_0\
    );
\r_hex_value[3]_i_45\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2599A4545A2249A"
    )
        port map (
      I0 => \^r_value_reg[11]_0\(10),
      I1 => \^r_value_reg[11]_0\(11),
      I2 => \^r_value_reg[11]_0\(9),
      I3 => \^r_value_reg[11]_0\(8),
      I4 => \^r_value_reg[11]_0\(7),
      I5 => \^r_value_reg[11]_0\(6),
      O => \r_hex_value[3]_i_45_n_0\
    );
\r_hex_value[3]_i_46\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9429A54AA54A2952"
    )
        port map (
      I0 => \^r_value_reg[11]_0\(7),
      I1 => \^r_value_reg[11]_0\(8),
      I2 => \^r_value_reg[11]_0\(9),
      I3 => \^r_value_reg[11]_0\(11),
      I4 => \^r_value_reg[11]_0\(10),
      I5 => \^r_value_reg[11]_0\(6),
      O => \r_hex_value[3]_i_46_n_0\
    );
\r_hex_value[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA000FCCC0"
    )
        port map (
      I0 => \r_hex_value_reg[3]\(2),
      I1 => \r_hex_value[3]_i_18_n_0\,
      I2 => \r_hex_value[3]_i_19_n_0\,
      I3 => \r_hex_value[3]_i_20_n_0\,
      I4 => \r_hex_value[3]_i_21_n_0\,
      I5 => i_sw_display_gain,
      O => i_sw_display_gain_0(0)
    );
\r_hex_value[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"300C0000200C04C0"
    )
        port map (
      I0 => \r_hex_value[3]_i_22_n_0\,
      I1 => \BIN2DEC_REF/p_0_in00_in\,
      I2 => \BIN2DEC_REF/p_0_in02_in\,
      I3 => \BIN2DEC_REF/p_0_in01_in\,
      I4 => \BIN2DEC_REF/p_0_in1_in\(0),
      I5 => \r_hex_value[3]_i_27_n_0\,
      O => \r_hex_value[3]_i_9_n_0\
    );
\r_reference[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_sw_enable_control,
      I1 => \^r_value_reg[11]_0\(0),
      O => i_sw_enable_control_0
    );
\r_reference[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_sw_enable_control,
      I1 => \^r_value_reg[11]_0\(10),
      O => i_sw_enable_control_10
    );
\r_reference[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_sw_enable_control,
      I1 => \^r_value_reg[11]_0\(11),
      O => i_sw_enable_control_11
    );
\r_reference[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_sw_enable_control,
      I1 => \^r_value_reg[11]_0\(1),
      O => i_sw_enable_control_1
    );
\r_reference[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_sw_enable_control,
      I1 => \^r_value_reg[11]_0\(2),
      O => i_sw_enable_control_2
    );
\r_reference[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_sw_enable_control,
      I1 => \^r_value_reg[11]_0\(3),
      O => i_sw_enable_control_3
    );
\r_reference[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_sw_enable_control,
      I1 => \^r_value_reg[11]_0\(4),
      O => i_sw_enable_control_4
    );
\r_reference[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_sw_enable_control,
      I1 => \^r_value_reg[11]_0\(5),
      O => i_sw_enable_control_5
    );
\r_reference[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_sw_enable_control,
      I1 => \^r_value_reg[11]_0\(6),
      O => i_sw_enable_control_6
    );
\r_reference[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_sw_enable_control,
      I1 => \^r_value_reg[11]_0\(7),
      O => i_sw_enable_control_7
    );
\r_reference[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_sw_enable_control,
      I1 => \^r_value_reg[11]_0\(8),
      O => i_sw_enable_control_8
    );
\r_reference[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_sw_enable_control,
      I1 => \^r_value_reg[11]_0\(9),
      O => i_sw_enable_control_9
    );
\r_value_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_eoc_out_negedge,
      D => w_do_out(4),
      Q => \^r_value_reg[11]_0\(0),
      R => SR(0)
    );
\r_value_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_eoc_out_negedge,
      D => w_do_out(14),
      Q => \^r_value_reg[11]_0\(10),
      R => SR(0)
    );
\r_value_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_eoc_out_negedge,
      D => w_do_out(15),
      Q => \^r_value_reg[11]_0\(11),
      R => SR(0)
    );
\r_value_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_eoc_out_negedge,
      D => w_do_out(5),
      Q => \^r_value_reg[11]_0\(1),
      R => SR(0)
    );
\r_value_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_eoc_out_negedge,
      D => w_do_out(6),
      Q => \^r_value_reg[11]_0\(2),
      R => SR(0)
    );
\r_value_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_eoc_out_negedge,
      D => w_do_out(7),
      Q => \^r_value_reg[11]_0\(3),
      R => SR(0)
    );
\r_value_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_eoc_out_negedge,
      D => w_do_out(8),
      Q => \^r_value_reg[11]_0\(4),
      R => SR(0)
    );
\r_value_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_eoc_out_negedge,
      D => w_do_out(9),
      Q => \^r_value_reg[11]_0\(5),
      R => SR(0)
    );
\r_value_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_eoc_out_negedge,
      D => w_do_out(10),
      Q => \^r_value_reg[11]_0\(6),
      R => SR(0)
    );
\r_value_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_eoc_out_negedge,
      D => w_do_out(11),
      Q => \^r_value_reg[11]_0\(7),
      R => SR(0)
    );
\r_value_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_eoc_out_negedge,
      D => w_do_out(12),
      Q => \^r_value_reg[11]_0\(8),
      R => SR(0)
    );
\r_value_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_eoc_out_negedge,
      D => w_do_out(13),
      Q => \^r_value_reg[11]_0\(9),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_2_myBLDC_Controller_0_0_ringCounterFnd is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \w_fnd_value__46\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \r_hex_value_reg[3]\ : in STD_LOGIC;
    i_sw_display_gain : in STD_LOGIC;
    w_p_gain_bcd : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_2_myBLDC_Controller_0_0_ringCounterFnd : entity is "ringCounterFnd";
end design_2_myBLDC_Controller_0_0_ringCounterFnd;

architecture STRUCTURE of design_2_myBLDC_Controller_0_0_ringCounterFnd is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal i_cp : STD_LOGIC;
  signal \r_delay_counter[0]_i_2_n_0\ : STD_LOGIC;
  signal \r_delay_counter_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_delay_counter_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \r_delay_counter_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \r_delay_counter_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \r_delay_counter_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \r_delay_counter_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \r_delay_counter_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \r_delay_counter_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \r_delay_counter_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \r_delay_counter_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \r_delay_counter_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \r_delay_counter_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \r_delay_counter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \r_delay_counter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \r_delay_counter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \r_delay_counter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \r_delay_counter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \r_delay_counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \r_delay_counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \r_delay_counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \r_delay_counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \r_delay_counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \r_delay_counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \r_delay_counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \r_delay_counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \r_delay_counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \r_delay_counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \r_delay_counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \r_delay_counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \r_delay_counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \r_delay_counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \r_delay_counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \r_delay_counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \r_delay_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_delay_counter_reg_n_0_[10]\ : STD_LOGIC;
  signal \r_delay_counter_reg_n_0_[11]\ : STD_LOGIC;
  signal \r_delay_counter_reg_n_0_[12]\ : STD_LOGIC;
  signal \r_delay_counter_reg_n_0_[13]\ : STD_LOGIC;
  signal \r_delay_counter_reg_n_0_[14]\ : STD_LOGIC;
  signal \r_delay_counter_reg_n_0_[15]\ : STD_LOGIC;
  signal \r_delay_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_delay_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \r_delay_counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \r_delay_counter_reg_n_0_[4]\ : STD_LOGIC;
  signal \r_delay_counter_reg_n_0_[5]\ : STD_LOGIC;
  signal \r_delay_counter_reg_n_0_[6]\ : STD_LOGIC;
  signal \r_delay_counter_reg_n_0_[7]\ : STD_LOGIC;
  signal \r_delay_counter_reg_n_0_[8]\ : STD_LOGIC;
  signal \r_delay_counter_reg_n_0_[9]\ : STD_LOGIC;
  signal \r_fnd_sel[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_hex_value[3]_i_3_n_0\ : STD_LOGIC;
  signal w_delay_counter_posedge : STD_LOGIC;
  signal \NLW_r_delay_counter_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_delay_counter_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \r_fnd_sel[0]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \r_hex_value[3]_i_1\ : label is "soft_lutpair27";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
ED_DELAY_COUNTER: entity work.design_2_myBLDC_Controller_0_0_edge_detector_n_1
     port map (
      E(0) => w_delay_counter_posedge,
      S(0) => i_cp,
      SR(0) => SR(0),
      s00_axi_aclk => s00_axi_aclk
    );
\r_delay_counter[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_delay_counter_reg_n_0_[0]\,
      O => \r_delay_counter[0]_i_2_n_0\
    );
\r_delay_counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \r_delay_counter_reg[0]_i_1_n_7\,
      Q => \r_delay_counter_reg_n_0_[0]\,
      R => '0'
    );
\r_delay_counter_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \r_delay_counter_reg[0]_i_1_n_0\,
      CO(2) => \r_delay_counter_reg[0]_i_1_n_1\,
      CO(1) => \r_delay_counter_reg[0]_i_1_n_2\,
      CO(0) => \r_delay_counter_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \r_delay_counter_reg[0]_i_1_n_4\,
      O(2) => \r_delay_counter_reg[0]_i_1_n_5\,
      O(1) => \r_delay_counter_reg[0]_i_1_n_6\,
      O(0) => \r_delay_counter_reg[0]_i_1_n_7\,
      S(3) => \r_delay_counter_reg_n_0_[3]\,
      S(2) => \r_delay_counter_reg_n_0_[2]\,
      S(1) => \r_delay_counter_reg_n_0_[1]\,
      S(0) => \r_delay_counter[0]_i_2_n_0\
    );
\r_delay_counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \r_delay_counter_reg[8]_i_1_n_5\,
      Q => \r_delay_counter_reg_n_0_[10]\,
      R => '0'
    );
\r_delay_counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \r_delay_counter_reg[8]_i_1_n_4\,
      Q => \r_delay_counter_reg_n_0_[11]\,
      R => '0'
    );
\r_delay_counter_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \r_delay_counter_reg[12]_i_1_n_7\,
      Q => \r_delay_counter_reg_n_0_[12]\,
      R => '0'
    );
\r_delay_counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_delay_counter_reg[8]_i_1_n_0\,
      CO(3) => \r_delay_counter_reg[12]_i_1_n_0\,
      CO(2) => \r_delay_counter_reg[12]_i_1_n_1\,
      CO(1) => \r_delay_counter_reg[12]_i_1_n_2\,
      CO(0) => \r_delay_counter_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_delay_counter_reg[12]_i_1_n_4\,
      O(2) => \r_delay_counter_reg[12]_i_1_n_5\,
      O(1) => \r_delay_counter_reg[12]_i_1_n_6\,
      O(0) => \r_delay_counter_reg[12]_i_1_n_7\,
      S(3) => \r_delay_counter_reg_n_0_[15]\,
      S(2) => \r_delay_counter_reg_n_0_[14]\,
      S(1) => \r_delay_counter_reg_n_0_[13]\,
      S(0) => \r_delay_counter_reg_n_0_[12]\
    );
\r_delay_counter_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \r_delay_counter_reg[12]_i_1_n_6\,
      Q => \r_delay_counter_reg_n_0_[13]\,
      R => '0'
    );
\r_delay_counter_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \r_delay_counter_reg[12]_i_1_n_5\,
      Q => \r_delay_counter_reg_n_0_[14]\,
      R => '0'
    );
\r_delay_counter_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \r_delay_counter_reg[12]_i_1_n_4\,
      Q => \r_delay_counter_reg_n_0_[15]\,
      R => '0'
    );
\r_delay_counter_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \r_delay_counter_reg[16]_i_1_n_7\,
      Q => i_cp,
      R => '0'
    );
\r_delay_counter_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_delay_counter_reg[12]_i_1_n_0\,
      CO(3 downto 0) => \NLW_r_delay_counter_reg[16]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_r_delay_counter_reg[16]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \r_delay_counter_reg[16]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => i_cp
    );
\r_delay_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \r_delay_counter_reg[0]_i_1_n_6\,
      Q => \r_delay_counter_reg_n_0_[1]\,
      R => '0'
    );
\r_delay_counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \r_delay_counter_reg[0]_i_1_n_5\,
      Q => \r_delay_counter_reg_n_0_[2]\,
      R => '0'
    );
\r_delay_counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \r_delay_counter_reg[0]_i_1_n_4\,
      Q => \r_delay_counter_reg_n_0_[3]\,
      R => '0'
    );
\r_delay_counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \r_delay_counter_reg[4]_i_1_n_7\,
      Q => \r_delay_counter_reg_n_0_[4]\,
      R => '0'
    );
\r_delay_counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_delay_counter_reg[0]_i_1_n_0\,
      CO(3) => \r_delay_counter_reg[4]_i_1_n_0\,
      CO(2) => \r_delay_counter_reg[4]_i_1_n_1\,
      CO(1) => \r_delay_counter_reg[4]_i_1_n_2\,
      CO(0) => \r_delay_counter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_delay_counter_reg[4]_i_1_n_4\,
      O(2) => \r_delay_counter_reg[4]_i_1_n_5\,
      O(1) => \r_delay_counter_reg[4]_i_1_n_6\,
      O(0) => \r_delay_counter_reg[4]_i_1_n_7\,
      S(3) => \r_delay_counter_reg_n_0_[7]\,
      S(2) => \r_delay_counter_reg_n_0_[6]\,
      S(1) => \r_delay_counter_reg_n_0_[5]\,
      S(0) => \r_delay_counter_reg_n_0_[4]\
    );
\r_delay_counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \r_delay_counter_reg[4]_i_1_n_6\,
      Q => \r_delay_counter_reg_n_0_[5]\,
      R => '0'
    );
\r_delay_counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \r_delay_counter_reg[4]_i_1_n_5\,
      Q => \r_delay_counter_reg_n_0_[6]\,
      R => '0'
    );
\r_delay_counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \r_delay_counter_reg[4]_i_1_n_4\,
      Q => \r_delay_counter_reg_n_0_[7]\,
      R => '0'
    );
\r_delay_counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \r_delay_counter_reg[8]_i_1_n_7\,
      Q => \r_delay_counter_reg_n_0_[8]\,
      R => '0'
    );
\r_delay_counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_delay_counter_reg[4]_i_1_n_0\,
      CO(3) => \r_delay_counter_reg[8]_i_1_n_0\,
      CO(2) => \r_delay_counter_reg[8]_i_1_n_1\,
      CO(1) => \r_delay_counter_reg[8]_i_1_n_2\,
      CO(0) => \r_delay_counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_delay_counter_reg[8]_i_1_n_4\,
      O(2) => \r_delay_counter_reg[8]_i_1_n_5\,
      O(1) => \r_delay_counter_reg[8]_i_1_n_6\,
      O(0) => \r_delay_counter_reg[8]_i_1_n_7\,
      S(3) => \r_delay_counter_reg_n_0_[11]\,
      S(2) => \r_delay_counter_reg_n_0_[10]\,
      S(1) => \r_delay_counter_reg_n_0_[9]\,
      S(0) => \r_delay_counter_reg_n_0_[8]\
    );
\r_delay_counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \r_delay_counter_reg[8]_i_1_n_6\,
      Q => \r_delay_counter_reg_n_0_[9]\,
      R => '0'
    );
\r_fnd_sel[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(3),
      O => \r_fnd_sel[0]_i_1_n_0\
    );
\r_fnd_sel_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => w_delay_counter_posedge,
      CLR => SR(0),
      D => \r_fnd_sel[0]_i_1_n_0\,
      Q => \^q\(0)
    );
\r_fnd_sel_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => w_delay_counter_posedge,
      D => \^q\(0),
      PRE => SR(0),
      Q => \^q\(1)
    );
\r_fnd_sel_reg[2]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => w_delay_counter_posedge,
      D => \^q\(1),
      PRE => SR(0),
      Q => \^q\(2)
    );
\r_fnd_sel_reg[3]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => w_delay_counter_posedge,
      D => \^q\(2),
      PRE => SR(0),
      Q => \^q\(3)
    );
\r_hex_value[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6880"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(3),
      I3 => \^q\(2),
      O => E(0)
    );
\r_hex_value[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAEFFAEFFFFFFAE"
    )
        port map (
      I0 => \r_hex_value[3]_i_3_n_0\,
      I1 => \w_fnd_value__46\(1),
      I2 => \^q\(2),
      I3 => \r_hex_value_reg[3]\,
      I4 => \w_fnd_value__46\(0),
      I5 => \^q\(1),
      O => D(0)
    );
\r_hex_value[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^q\(3),
      I1 => i_sw_display_gain,
      I2 => w_p_gain_bcd(0),
      O => \r_hex_value[3]_i_3_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_2_myBLDC_Controller_0_0_Button2Gain is
  port (
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \r_gain_reg[0]_0\ : out STD_LOGIC;
    \r_gain_reg[2]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \r_gain_reg[1]_0\ : out STD_LOGIC;
    \r_gain_reg[1]_1\ : out STD_LOGIC;
    \r_gain_reg[2]_1\ : out STD_LOGIC;
    \r_gain_reg[1]_2\ : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    i_sw_display_gain_0 : out STD_LOGIC;
    \r_gain_reg[6]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    r_delay_counter_posedge : in STD_LOGIC;
    i_btn_r : in STD_LOGIC;
    i_btn_l : in STD_LOGIC;
    \r_hex_value[1]_i_3\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    i_sw_display_gain : in STD_LOGIC;
    \r_hex_value[1]_i_3_0\ : in STD_LOGIC;
    w_ADC_bcd : in STD_LOGIC_VECTOR ( 0 to 0 );
    \r_hex_value_reg[3]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_2_myBLDC_Controller_0_0_Button2Gain : entity is "Button2Gain";
end design_2_myBLDC_Controller_0_0_Button2Gain;

architecture STRUCTURE of design_2_myBLDC_Controller_0_0_Button2Gain is
  signal BTN_INC_CTRL_n_0 : STD_LOGIC;
  signal \^di\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \ED_BTN/r_cp\ : STD_LOGIC;
  signal \ED_BTN/r_cp_z\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \r_gain[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \r_gain[7]_i_2__0_n_0\ : STD_LOGIC;
  signal \r_gain[7]_i_3__0_n_0\ : STD_LOGIC;
  signal \^r_gain_reg[2]_1\ : STD_LOGIC;
  signal \r_hex_value[1]_i_11_n_0\ : STD_LOGIC;
  signal \r_hex_value[1]_i_12_n_0\ : STD_LOGIC;
  signal \r_hex_value[1]_i_13_n_0\ : STD_LOGIC;
  signal \r_hex_value[3]_i_14_n_0\ : STD_LOGIC;
  signal \r_hex_value[3]_i_16_n_0\ : STD_LOGIC;
  signal \r_hex_value[3]_i_35_n_0\ : STD_LOGIC;
  signal \r_hex_value[3]_i_36_n_0\ : STD_LOGIC;
  signal \r_hex_value[3]_i_37_n_0\ : STD_LOGIC;
  signal \r_hex_value[3]_i_38_n_0\ : STD_LOGIC;
  signal w_i_gain_bcd : STD_LOGIC_VECTOR ( 8 to 8 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \r_gain[0]_i_1__0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \r_gain[7]_i_2__0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \r_gain[7]_i_3__0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \r_hex_value[1]_i_11\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \r_hex_value[1]_i_12\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \r_hex_value[1]_i_13\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \r_hex_value[2]_i_13\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \r_hex_value[3]_i_16\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \r_hex_value[3]_i_35\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \r_hex_value[3]_i_37\ : label is "soft_lutpair21";
begin
  DI(3 downto 0) <= \^di\(3 downto 0);
  Q(4 downto 0) <= \^q\(4 downto 0);
  \r_gain_reg[2]_1\ <= \^r_gain_reg[2]_1\;
BTN_DEC_CTRL: entity work.design_2_myBLDC_Controller_0_0_buttonControl_6
     port map (
      SR(0) => SR(0),
      i_btn_l => i_btn_l,
      r_cp => \ED_BTN/r_cp\,
      r_cp_z => \ED_BTN/r_cp_z\,
      r_delay_counter_posedge => r_delay_counter_posedge,
      s00_axi_aclk => s00_axi_aclk
    );
BTN_INC_CTRL: entity work.design_2_myBLDC_Controller_0_0_buttonControl_7
     port map (
      E(0) => BTN_INC_CTRL_n_0,
      Q(0) => \^di\(1),
      S(0) => S(0),
      SR(0) => SR(0),
      i_btn_r => i_btn_r,
      r_cp => \ED_BTN/r_cp\,
      r_cp_z => \ED_BTN/r_cp_z\,
      r_delay_counter_posedge => r_delay_counter_posedge,
      \r_gain_reg[0]\ => \r_gain[7]_i_2__0_n_0\,
      s00_axi_aclk => s00_axi_aclk
    );
\p_0_out__18_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      O => \r_gain_reg[6]_0\(2)
    );
\p_0_out__18_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      O => \r_gain_reg[6]_0\(1)
    );
\p_0_out__18_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      O => \r_gain_reg[6]_0\(0)
    );
\p_0_out__18_carry_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^di\(1),
      O => \^di\(0)
    );
\p_0_out__18_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^di\(3),
      I1 => \^q\(1),
      O => S(3)
    );
\p_0_out__18_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^di\(2),
      I1 => \^di\(3),
      O => S(2)
    );
\p_0_out__18_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^di\(1),
      I1 => \^di\(2),
      O => S(1)
    );
\r_gain[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \r_gain[0]_i_1__0_n_0\
    );
\r_gain[7]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \r_gain[7]_i_3__0_n_0\,
      I1 => \^di\(1),
      I2 => \^di\(3),
      I3 => \^di\(2),
      I4 => \^q\(0),
      O => \r_gain[7]_i_2__0_n_0\
    );
\r_gain[7]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(4),
      I3 => \^q\(3),
      O => \r_gain[7]_i_3__0_n_0\
    );
\r_gain_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => BTN_INC_CTRL_n_0,
      D => \r_gain[0]_i_1__0_n_0\,
      Q => \^q\(0),
      R => SR(0)
    );
\r_gain_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => BTN_INC_CTRL_n_0,
      D => D(0),
      Q => \^di\(1),
      R => SR(0)
    );
\r_gain_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => BTN_INC_CTRL_n_0,
      D => D(1),
      Q => \^di\(2),
      R => SR(0)
    );
\r_gain_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => BTN_INC_CTRL_n_0,
      D => D(2),
      Q => \^di\(3),
      R => SR(0)
    );
\r_gain_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => BTN_INC_CTRL_n_0,
      D => D(3),
      Q => \^q\(1),
      R => SR(0)
    );
\r_gain_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => BTN_INC_CTRL_n_0,
      D => D(4),
      Q => \^q\(2),
      R => SR(0)
    );
\r_gain_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => BTN_INC_CTRL_n_0,
      D => D(5),
      Q => \^q\(3),
      R => SR(0)
    );
\r_gain_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => BTN_INC_CTRL_n_0,
      D => D(6),
      Q => \^q\(4),
      R => SR(0)
    );
\r_hex_value[0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7AF88507FFFFFFFF"
    )
        port map (
      I0 => \r_hex_value[3]_i_37_n_0\,
      I1 => \^di\(1),
      I2 => \r_hex_value[3]_i_36_n_0\,
      I3 => \^di\(2),
      I4 => \r_hex_value[3]_i_35_n_0\,
      I5 => i_sw_display_gain,
      O => \r_gain_reg[1]_2\
    );
\r_hex_value[0]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3C303C303C3038F0"
    )
        port map (
      I0 => \^di\(2),
      I1 => \^q\(3),
      I2 => \^q\(4),
      I3 => \^q\(2),
      I4 => \^q\(1),
      I5 => \^di\(3),
      O => w_i_gain_bcd(8)
    );
\r_hex_value[0]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => w_i_gain_bcd(8),
      I1 => \r_hex_value[1]_i_3\(0),
      I2 => i_sw_display_gain,
      O => \r_gain_reg[0]_0\
    );
\r_hex_value[1]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E83F01C1002F33C"
    )
        port map (
      I0 => \^di\(2),
      I1 => \^q\(3),
      I2 => \^q\(4),
      I3 => \^q\(2),
      I4 => \^q\(1),
      I5 => \^di\(3),
      O => \r_gain_reg[2]_0\(0)
    );
\r_hex_value[1]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"793C6138"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => \^q\(4),
      I3 => \^q\(3),
      I4 => \^di\(3),
      O => \r_hex_value[1]_i_11_n_0\
    );
\r_hex_value[1]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B424"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(4),
      I2 => \^q\(3),
      I3 => \^q\(1),
      O => \r_hex_value[1]_i_12_n_0\
    );
\r_hex_value[1]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      I2 => \^q\(4),
      O => \r_hex_value[1]_i_13_n_0\
    );
\r_hex_value[1]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1F00001FFFFFFFFF"
    )
        port map (
      I0 => \r_hex_value[1]_i_11_n_0\,
      I1 => \r_hex_value[1]_i_12_n_0\,
      I2 => \r_hex_value[1]_i_13_n_0\,
      I3 => \r_hex_value[1]_i_3_0\,
      I4 => \r_hex_value[1]_i_3\(1),
      I5 => i_sw_display_gain,
      O => \r_gain_reg[1]_0\
    );
\r_hex_value[2]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"59FF"
    )
        port map (
      I0 => \r_hex_value[3]_i_38_n_0\,
      I1 => \^r_gain_reg[2]_1\,
      I2 => \^di\(1),
      I3 => i_sw_display_gain,
      O => \r_gain_reg[1]_1\
    );
\r_hex_value[2]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C330332CD330300C"
    )
        port map (
      I0 => \^di\(2),
      I1 => \^q\(3),
      I2 => \^q\(4),
      I3 => \^q\(2),
      I4 => \^q\(1),
      I5 => \^di\(3),
      O => \r_gain_reg[2]_0\(1)
    );
\r_hex_value[3]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9429A54AA54A2952"
    )
        port map (
      I0 => \^di\(3),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(3),
      I5 => \^di\(2),
      O => \r_hex_value[3]_i_14_n_0\
    );
\r_hex_value[3]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DF5E7A7A"
    )
        port map (
      I0 => \r_hex_value[3]_i_35_n_0\,
      I1 => \^di\(2),
      I2 => \r_hex_value[3]_i_36_n_0\,
      I3 => \^di\(1),
      I4 => \r_hex_value[3]_i_37_n_0\,
      O => \^r_gain_reg[2]_1\
    );
\r_hex_value[3]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^di\(1),
      I1 => \r_hex_value[3]_i_38_n_0\,
      O => \r_hex_value[3]_i_16_n_0\
    );
\r_hex_value[3]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"300C0000200C04C0"
    )
        port map (
      I0 => \^di\(2),
      I1 => \^q\(3),
      I2 => \^q\(4),
      I3 => \^q\(2),
      I4 => \^q\(1),
      I5 => \^di\(3),
      O => \r_gain_reg[2]_0\(2)
    );
\r_hex_value[3]_i_35\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"249A45A2"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => \^q\(4),
      I3 => \^q\(3),
      I4 => \^di\(3),
      O => \r_hex_value[3]_i_35_n_0\
    );
\r_hex_value[3]_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3973CE9C31638C18"
    )
        port map (
      I0 => \^di\(3),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(3),
      I5 => \^di\(2),
      O => \r_hex_value[3]_i_36_n_0\
    );
\r_hex_value[3]_i_37\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C3611C86"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => \^di\(3),
      O => \r_hex_value[3]_i_37_n_0\
    );
\r_hex_value[3]_i_38\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2599A4545A2249A"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => \^di\(3),
      I5 => \^di\(2),
      O => \r_hex_value[3]_i_38_n_0\
    );
\r_hex_value[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000004EE4E4E4"
    )
        port map (
      I0 => i_sw_display_gain,
      I1 => w_ADC_bcd(0),
      I2 => \r_hex_value[3]_i_14_n_0\,
      I3 => \^r_gain_reg[2]_1\,
      I4 => \r_hex_value[3]_i_16_n_0\,
      I5 => \r_hex_value_reg[3]\(0),
      O => i_sw_display_gain_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_2_myBLDC_Controller_0_0_Button2Gain_0 is
  port (
    r_delay_counter_posedge : out STD_LOGIC;
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \r_gain_reg[1]_0\ : out STD_LOGIC;
    \r_gain_reg[2]_0\ : out STD_LOGIC;
    \r_gain_reg[1]_1\ : out STD_LOGIC;
    \r_gain_reg[1]_2\ : out STD_LOGIC;
    w_p_gain_bcd : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    i_sw_display_gain_0 : out STD_LOGIC;
    \r_gain_reg[6]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    i_btn_u : in STD_LOGIC;
    i_btn_d : in STD_LOGIC;
    i_sw_display_gain : in STD_LOGIC;
    \r_hex_value_reg[1]\ : in STD_LOGIC;
    \r_hex_value_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_2_myBLDC_Controller_0_0_Button2Gain_0 : entity is "Button2Gain";
end design_2_myBLDC_Controller_0_0_Button2Gain_0;

architecture STRUCTURE of design_2_myBLDC_Controller_0_0_Button2Gain_0 is
  signal BTN_INC_CTRL_n_1 : STD_LOGIC;
  signal \^di\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \ED_BTN/r_cp\ : STD_LOGIC;
  signal \ED_BTN/r_cp_z\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^r_delay_counter_posedge\ : STD_LOGIC;
  signal \r_gain[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_gain[7]_i_2_n_0\ : STD_LOGIC;
  signal \r_gain[7]_i_3_n_0\ : STD_LOGIC;
  signal \^r_gain_reg[2]_0\ : STD_LOGIC;
  signal \r_hex_value[0]_i_7_n_0\ : STD_LOGIC;
  signal \r_hex_value[0]_i_8_n_0\ : STD_LOGIC;
  signal \r_hex_value[1]_i_7_n_0\ : STD_LOGIC;
  signal \r_hex_value[1]_i_8_n_0\ : STD_LOGIC;
  signal \r_hex_value[2]_i_15_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \r_gain[0]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \r_gain[7]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \r_hex_value[0]_i_7\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \r_hex_value[0]_i_8\ : label is "soft_lutpair26";
begin
  DI(3 downto 0) <= \^di\(3 downto 0);
  Q(4 downto 0) <= \^q\(4 downto 0);
  r_delay_counter_posedge <= \^r_delay_counter_posedge\;
  \r_gain_reg[2]_0\ <= \^r_gain_reg[2]_0\;
BTN_DEC_CTRL: entity work.design_2_myBLDC_Controller_0_0_buttonControl
     port map (
      SR(0) => SR(0),
      i_btn_d => i_btn_d,
      r_cp => \ED_BTN/r_cp\,
      r_cp_z => \ED_BTN/r_cp_z\,
      r_delay_counter_posedge => \^r_delay_counter_posedge\,
      s00_axi_aclk => s00_axi_aclk
    );
BTN_INC_CTRL: entity work.design_2_myBLDC_Controller_0_0_buttonControl_2
     port map (
      E(0) => BTN_INC_CTRL_n_1,
      Q(0) => \^di\(1),
      S(0) => S(0),
      SR(0) => SR(0),
      i_btn_u => i_btn_u,
      r_cp => \ED_BTN/r_cp\,
      r_cp_z => \ED_BTN/r_cp_z\,
      r_delay_counter_posedge => \^r_delay_counter_posedge\,
      \r_gain_reg[0]\ => \r_gain[7]_i_2_n_0\,
      s00_axi_aclk => s00_axi_aclk
    );
\p_0_out_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      O => \r_gain_reg[6]_0\(2)
    );
\p_0_out_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      O => \r_gain_reg[6]_0\(1)
    );
\p_0_out_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      O => \r_gain_reg[6]_0\(0)
    );
p_0_out_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^di\(1),
      O => \^di\(0)
    );
p_0_out_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^di\(3),
      I1 => \^q\(1),
      O => S(3)
    );
p_0_out_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^di\(2),
      I1 => \^di\(3),
      O => S(2)
    );
p_0_out_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^di\(1),
      I1 => \^di\(2),
      O => S(1)
    );
\r_gain[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \r_gain[0]_i_1_n_0\
    );
\r_gain[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \r_gain[7]_i_3_n_0\,
      I1 => \^di\(1),
      I2 => \^di\(3),
      I3 => \^di\(2),
      I4 => \^q\(0),
      O => \r_gain[7]_i_2_n_0\
    );
\r_gain[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(4),
      I3 => \^q\(3),
      O => \r_gain[7]_i_3_n_0\
    );
\r_gain_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => BTN_INC_CTRL_n_1,
      D => \r_gain[0]_i_1_n_0\,
      Q => \^q\(0),
      R => SR(0)
    );
\r_gain_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => BTN_INC_CTRL_n_1,
      D => D(0),
      Q => \^di\(1),
      R => SR(0)
    );
\r_gain_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => BTN_INC_CTRL_n_1,
      D => D(1),
      Q => \^di\(2),
      R => SR(0)
    );
\r_gain_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => BTN_INC_CTRL_n_1,
      D => D(2),
      Q => \^di\(3),
      R => SR(0)
    );
\r_gain_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => BTN_INC_CTRL_n_1,
      D => D(3),
      Q => \^q\(1),
      R => SR(0)
    );
\r_gain_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => BTN_INC_CTRL_n_1,
      D => D(4),
      Q => \^q\(2),
      R => SR(0)
    );
\r_gain_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => BTN_INC_CTRL_n_1,
      D => D(5),
      Q => \^q\(3),
      R => SR(0)
    );
\r_gain_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => BTN_INC_CTRL_n_1,
      D => D(6),
      Q => \^q\(4),
      R => SR(0)
    );
\r_hex_value[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7AF88507FFFFFFFF"
    )
        port map (
      I0 => \r_hex_value[0]_i_7_n_0\,
      I1 => \^di\(1),
      I2 => \r_hex_value[1]_i_7_n_0\,
      I3 => \^di\(2),
      I4 => \r_hex_value[0]_i_8_n_0\,
      I5 => i_sw_display_gain,
      O => \r_gain_reg[1]_2\
    );
\r_hex_value[0]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C3611C86"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => \^di\(3),
      O => \r_hex_value[0]_i_7_n_0\
    );
\r_hex_value[0]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"249A45A2"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => \^q\(4),
      I3 => \^q\(3),
      I4 => \^di\(3),
      O => \r_hex_value[0]_i_8_n_0\
    );
\r_hex_value[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004EE4"
    )
        port map (
      I0 => i_sw_display_gain,
      I1 => \r_hex_value_reg[1]\,
      I2 => \r_hex_value[1]_i_7_n_0\,
      I3 => \r_hex_value[1]_i_8_n_0\,
      I4 => \r_hex_value_reg[1]_0\(0),
      O => i_sw_display_gain_0
    );
\r_hex_value[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3973CE9C31638C18"
    )
        port map (
      I0 => \^di\(3),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(3),
      I5 => \^di\(2),
      O => \r_hex_value[1]_i_7_n_0\
    );
\r_hex_value[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3C303C303C3038F0"
    )
        port map (
      I0 => \^di\(2),
      I1 => \^q\(3),
      I2 => \^q\(4),
      I3 => \^q\(2),
      I4 => \^q\(1),
      I5 => \^di\(3),
      O => \r_hex_value[1]_i_8_n_0\
    );
\r_hex_value[2]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"59FF"
    )
        port map (
      I0 => \r_hex_value[2]_i_15_n_0\,
      I1 => \^r_gain_reg[2]_0\,
      I2 => \^di\(1),
      I3 => i_sw_display_gain,
      O => \r_gain_reg[1]_0\
    );
\r_hex_value[2]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2599A4545A2249A"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => \^di\(3),
      I5 => \^di\(2),
      O => \r_hex_value[2]_i_15_n_0\
    );
\r_hex_value[2]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DF5E7A7A"
    )
        port map (
      I0 => \r_hex_value[0]_i_8_n_0\,
      I1 => \^di\(2),
      I2 => \r_hex_value[1]_i_7_n_0\,
      I3 => \^di\(1),
      I4 => \r_hex_value[0]_i_7_n_0\,
      O => \^r_gain_reg[2]_0\
    );
\r_hex_value[2]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C330332CD330300C"
    )
        port map (
      I0 => \^di\(2),
      I1 => \^q\(3),
      I2 => \^q\(4),
      I3 => \^q\(2),
      I4 => \^q\(1),
      I5 => \^di\(3),
      O => w_p_gain_bcd(0)
    );
\r_hex_value[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"300C0000200C04C0"
    )
        port map (
      I0 => \^di\(2),
      I1 => \^q\(3),
      I2 => \^q\(4),
      I3 => \^q\(2),
      I4 => \^q\(1),
      I5 => \^di\(3),
      O => w_p_gain_bcd(1)
    );
\r_hex_value[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DAF99F5DFFFFFFFF"
    )
        port map (
      I0 => \r_hex_value[0]_i_7_n_0\,
      I1 => \^di\(1),
      I2 => \r_hex_value[1]_i_7_n_0\,
      I3 => \^di\(2),
      I4 => \r_hex_value[0]_i_8_n_0\,
      I5 => i_sw_display_gain,
      O => \r_gain_reg[1]_1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_2_myBLDC_Controller_0_0_SamplingTimer is
  port (
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    w_calculate : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    i_sw_enable_control : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_2_myBLDC_Controller_0_0_SamplingTimer : entity is "SamplingTimer";
end design_2_myBLDC_Controller_0_0_SamplingTimer;

architecture STRUCTURE of design_2_myBLDC_Controller_0_0_SamplingTimer is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal w_clk_us_posedge : STD_LOGIC;
begin
  AR(0) <= \^ar\(0);
CLK_DIV_MS: entity work.design_2_myBLDC_Controller_0_0_clock_div_1000
     port map (
      i_sw_enable_control => i_sw_enable_control,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_aresetn_0 => \^ar\(0),
      w_calculate => w_calculate,
      w_clk_us_posedge => w_clk_us_posedge
    );
CLK_DIV_US: entity work.design_2_myBLDC_Controller_0_0_clock_div_100
     port map (
      AR(0) => \^ar\(0),
      s00_axi_aclk => s00_axi_aclk,
      w_clk_us_posedge => w_clk_us_posedge
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_2_myBLDC_Controller_0_0_fndControl is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_fnd : out STD_LOGIC_VECTOR ( 6 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \w_fnd_value__46\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \r_hex_value_reg[3]_0\ : in STD_LOGIC;
    i_sw_display_gain : in STD_LOGIC;
    w_p_gain_bcd : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_2_myBLDC_Controller_0_0_fndControl : entity is "fndControl";
end design_2_myBLDC_Controller_0_0_fndControl;

architecture STRUCTURE of design_2_myBLDC_Controller_0_0_fndControl is
  signal FND_SELECT_n_4 : STD_LOGIC;
  signal r_hex_value : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \r_hex_value_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_hex_value_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_hex_value_reg_n_0_[2]\ : STD_LOGIC;
  signal \r_hex_value_reg_n_0_[3]\ : STD_LOGIC;
begin
FND_SELECT: entity work.design_2_myBLDC_Controller_0_0_ringCounterFnd
     port map (
      D(0) => r_hex_value(3),
      E(0) => FND_SELECT_n_4,
      Q(3 downto 0) => Q(3 downto 0),
      SR(0) => SR(0),
      i_sw_display_gain => i_sw_display_gain,
      \r_hex_value_reg[3]\ => \r_hex_value_reg[3]_0\,
      s00_axi_aclk => s00_axi_aclk,
      \w_fnd_value__46\(1 downto 0) => \w_fnd_value__46\(1 downto 0),
      w_p_gain_bcd(0) => w_p_gain_bcd(0)
    );
FND_VALUE: entity work.design_2_myBLDC_Controller_0_0_decoder7Seg
     port map (
      Q(3) => \r_hex_value_reg_n_0_[3]\,
      Q(2) => \r_hex_value_reg_n_0_[2]\,
      Q(1) => \r_hex_value_reg_n_0_[1]\,
      Q(0) => \r_hex_value_reg_n_0_[0]\,
      o_fnd(6 downto 0) => o_fnd(6 downto 0)
    );
\r_hex_value_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => FND_SELECT_n_4,
      D => D(0),
      Q => \r_hex_value_reg_n_0_[0]\,
      R => '0'
    );
\r_hex_value_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => FND_SELECT_n_4,
      D => D(1),
      Q => \r_hex_value_reg_n_0_[1]\,
      R => '0'
    );
\r_hex_value_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => FND_SELECT_n_4,
      D => D(2),
      Q => \r_hex_value_reg_n_0_[2]\,
      R => '0'
    );
\r_hex_value_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => FND_SELECT_n_4,
      D => r_hex_value(3),
      Q => \r_hex_value_reg_n_0_[3]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_2_myBLDC_Controller_0_0_PI_Controller is
  port (
    s00_axi_aresetn_0 : out STD_LOGIC;
    P : out STD_LOGIC_VECTOR ( 14 downto 0 );
    \r_i_term_reg[23]_0\ : out STD_LOGIC_VECTOR ( 23 downto 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    w_control_input : out STD_LOGIC_VECTOR ( 11 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \r_count_duty_reg[10]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \r_count_duty_reg[10]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \r_error_reg[13]_0\ : out STD_LOGIC_VECTOR ( 13 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    r_p_term_reg_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_sw_enable_control : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \axi_rdata[11]_i_3\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    i_sw_bypass : in STD_LOGIC;
    \r_plant_output_reg[11]_0\ : in STD_LOGIC;
    \r_plant_output_reg[10]_0\ : in STD_LOGIC;
    \r_plant_output_reg[9]_0\ : in STD_LOGIC;
    \r_plant_output_reg[8]_0\ : in STD_LOGIC;
    \r_plant_output_reg[7]_0\ : in STD_LOGIC;
    \r_plant_output_reg[6]_0\ : in STD_LOGIC;
    \r_plant_output_reg[5]_0\ : in STD_LOGIC;
    \r_plant_output_reg[4]_0\ : in STD_LOGIC;
    \r_plant_output_reg[3]_0\ : in STD_LOGIC;
    \r_plant_output_reg[2]_0\ : in STD_LOGIC;
    \r_plant_output_reg[1]_0\ : in STD_LOGIC;
    \r_plant_output_reg[0]_0\ : in STD_LOGIC;
    \r_plant_output_reg[12]_inv_0\ : in STD_LOGIC;
    \r_reference_reg[11]_0\ : in STD_LOGIC;
    \r_reference_reg[10]_0\ : in STD_LOGIC;
    \r_reference_reg[9]_0\ : in STD_LOGIC;
    \r_reference_reg[8]_0\ : in STD_LOGIC;
    \r_reference_reg[7]_0\ : in STD_LOGIC;
    \r_reference_reg[6]_0\ : in STD_LOGIC;
    \r_reference_reg[5]_0\ : in STD_LOGIC;
    \r_reference_reg[4]_0\ : in STD_LOGIC;
    \r_reference_reg[3]_0\ : in STD_LOGIC;
    \r_reference_reg[2]_0\ : in STD_LOGIC;
    \r_reference_reg[1]_0\ : in STD_LOGIC;
    \r_reference_reg[0]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_2_myBLDC_Controller_0_0_PI_Controller : entity is "PI_Controller";
end design_2_myBLDC_Controller_0_0_PI_Controller;

architecture STRUCTURE of design_2_myBLDC_Controller_0_0_PI_Controller is
  signal \^p\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \in\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal o_control_input2 : STD_LOGIC;
  signal o_control_input3 : STD_LOGIC;
  signal \o_control_input3_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \o_control_input3_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \o_control_input3_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \o_control_input3_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \o_control_input3_carry__0_n_0\ : STD_LOGIC;
  signal \o_control_input3_carry__0_n_1\ : STD_LOGIC;
  signal \o_control_input3_carry__0_n_2\ : STD_LOGIC;
  signal \o_control_input3_carry__0_n_3\ : STD_LOGIC;
  signal \o_control_input3_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \o_control_input3_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \o_control_input3_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \o_control_input3_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \o_control_input3_carry__1_n_0\ : STD_LOGIC;
  signal \o_control_input3_carry__1_n_1\ : STD_LOGIC;
  signal \o_control_input3_carry__1_n_2\ : STD_LOGIC;
  signal \o_control_input3_carry__1_n_3\ : STD_LOGIC;
  signal \o_control_input3_carry__2_i_1_n_0\ : STD_LOGIC;
  signal o_control_input3_carry_i_1_n_0 : STD_LOGIC;
  signal o_control_input3_carry_i_2_n_0 : STD_LOGIC;
  signal o_control_input3_carry_i_3_n_0 : STD_LOGIC;
  signal o_control_input3_carry_i_4_n_0 : STD_LOGIC;
  signal o_control_input3_carry_n_0 : STD_LOGIC;
  signal o_control_input3_carry_n_1 : STD_LOGIC;
  signal o_control_input3_carry_n_2 : STD_LOGIC;
  signal o_control_input3_carry_n_3 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal \r_control_input0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \r_control_input0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \r_control_input0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \r_control_input0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \r_control_input0_carry__0_n_0\ : STD_LOGIC;
  signal \r_control_input0_carry__0_n_1\ : STD_LOGIC;
  signal \r_control_input0_carry__0_n_2\ : STD_LOGIC;
  signal \r_control_input0_carry__0_n_3\ : STD_LOGIC;
  signal \r_control_input0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \r_control_input0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \r_control_input0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \r_control_input0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \r_control_input0_carry__1_n_0\ : STD_LOGIC;
  signal \r_control_input0_carry__1_n_1\ : STD_LOGIC;
  signal \r_control_input0_carry__1_n_2\ : STD_LOGIC;
  signal \r_control_input0_carry__1_n_3\ : STD_LOGIC;
  signal \r_control_input0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \r_control_input0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \r_control_input0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \r_control_input0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \r_control_input0_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \r_control_input0_carry__2_n_0\ : STD_LOGIC;
  signal \r_control_input0_carry__2_n_1\ : STD_LOGIC;
  signal \r_control_input0_carry__2_n_2\ : STD_LOGIC;
  signal \r_control_input0_carry__2_n_3\ : STD_LOGIC;
  signal \r_control_input0_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \r_control_input0_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \r_control_input0_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \r_control_input0_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \r_control_input0_carry__3_n_0\ : STD_LOGIC;
  signal \r_control_input0_carry__3_n_1\ : STD_LOGIC;
  signal \r_control_input0_carry__3_n_2\ : STD_LOGIC;
  signal \r_control_input0_carry__3_n_3\ : STD_LOGIC;
  signal \r_control_input0_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \r_control_input0_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \r_control_input0_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \r_control_input0_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \r_control_input0_carry__4_n_0\ : STD_LOGIC;
  signal \r_control_input0_carry__4_n_1\ : STD_LOGIC;
  signal \r_control_input0_carry__4_n_2\ : STD_LOGIC;
  signal \r_control_input0_carry__4_n_3\ : STD_LOGIC;
  signal r_control_input0_carry_i_1_n_0 : STD_LOGIC;
  signal r_control_input0_carry_i_2_n_0 : STD_LOGIC;
  signal r_control_input0_carry_i_3_n_0 : STD_LOGIC;
  signal r_control_input0_carry_i_4_n_0 : STD_LOGIC;
  signal r_control_input0_carry_n_0 : STD_LOGIC;
  signal r_control_input0_carry_n_1 : STD_LOGIC;
  signal r_control_input0_carry_n_2 : STD_LOGIC;
  signal r_control_input0_carry_n_3 : STD_LOGIC;
  signal \r_control_input_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_control_input_reg_n_0_[10]\ : STD_LOGIC;
  signal \r_control_input_reg_n_0_[11]\ : STD_LOGIC;
  signal \r_control_input_reg_n_0_[12]\ : STD_LOGIC;
  signal \r_control_input_reg_n_0_[13]\ : STD_LOGIC;
  signal \r_control_input_reg_n_0_[14]\ : STD_LOGIC;
  signal \r_control_input_reg_n_0_[15]\ : STD_LOGIC;
  signal \r_control_input_reg_n_0_[16]\ : STD_LOGIC;
  signal \r_control_input_reg_n_0_[17]\ : STD_LOGIC;
  signal \r_control_input_reg_n_0_[18]\ : STD_LOGIC;
  signal \r_control_input_reg_n_0_[19]\ : STD_LOGIC;
  signal \r_control_input_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_control_input_reg_n_0_[20]\ : STD_LOGIC;
  signal \r_control_input_reg_n_0_[21]\ : STD_LOGIC;
  signal \r_control_input_reg_n_0_[22]\ : STD_LOGIC;
  signal \r_control_input_reg_n_0_[23]\ : STD_LOGIC;
  signal \r_control_input_reg_n_0_[24]\ : STD_LOGIC;
  signal \r_control_input_reg_n_0_[2]\ : STD_LOGIC;
  signal \r_control_input_reg_n_0_[3]\ : STD_LOGIC;
  signal \r_control_input_reg_n_0_[4]\ : STD_LOGIC;
  signal \r_control_input_reg_n_0_[5]\ : STD_LOGIC;
  signal \r_control_input_reg_n_0_[6]\ : STD_LOGIC;
  signal \r_control_input_reg_n_0_[7]\ : STD_LOGIC;
  signal \r_control_input_reg_n_0_[8]\ : STD_LOGIC;
  signal \r_control_input_reg_n_0_[9]\ : STD_LOGIC;
  signal \r_error0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \r_error0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \r_error0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \r_error0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \r_error0_carry__0_n_0\ : STD_LOGIC;
  signal \r_error0_carry__0_n_1\ : STD_LOGIC;
  signal \r_error0_carry__0_n_2\ : STD_LOGIC;
  signal \r_error0_carry__0_n_3\ : STD_LOGIC;
  signal \r_error0_carry__0_n_4\ : STD_LOGIC;
  signal \r_error0_carry__0_n_5\ : STD_LOGIC;
  signal \r_error0_carry__0_n_6\ : STD_LOGIC;
  signal \r_error0_carry__0_n_7\ : STD_LOGIC;
  signal \r_error0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \r_error0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \r_error0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \r_error0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \r_error0_carry__1_n_0\ : STD_LOGIC;
  signal \r_error0_carry__1_n_1\ : STD_LOGIC;
  signal \r_error0_carry__1_n_2\ : STD_LOGIC;
  signal \r_error0_carry__1_n_3\ : STD_LOGIC;
  signal \r_error0_carry__1_n_4\ : STD_LOGIC;
  signal \r_error0_carry__1_n_5\ : STD_LOGIC;
  signal \r_error0_carry__1_n_6\ : STD_LOGIC;
  signal \r_error0_carry__1_n_7\ : STD_LOGIC;
  signal \r_error0_carry__2_n_3\ : STD_LOGIC;
  signal \r_error0_carry__2_n_6\ : STD_LOGIC;
  signal \r_error0_carry__2_n_7\ : STD_LOGIC;
  signal r_error0_carry_i_1_n_0 : STD_LOGIC;
  signal r_error0_carry_i_2_n_0 : STD_LOGIC;
  signal r_error0_carry_i_3_n_0 : STD_LOGIC;
  signal r_error0_carry_i_4_n_0 : STD_LOGIC;
  signal r_error0_carry_n_0 : STD_LOGIC;
  signal r_error0_carry_n_1 : STD_LOGIC;
  signal r_error0_carry_n_2 : STD_LOGIC;
  signal r_error0_carry_n_3 : STD_LOGIC;
  signal r_error0_carry_n_4 : STD_LOGIC;
  signal r_error0_carry_n_5 : STD_LOGIC;
  signal r_error0_carry_n_6 : STD_LOGIC;
  signal r_error0_carry_n_7 : STD_LOGIC;
  signal r_i_gain : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \r_i_gain[8]_i_1_n_0\ : STD_LOGIC;
  signal r_i_gain_z : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal r_i_term_extended0_carry_i_1_n_0 : STD_LOGIC;
  signal r_i_term_extended0_carry_i_2_n_0 : STD_LOGIC;
  signal r_i_term_extended0_carry_i_3_n_0 : STD_LOGIC;
  signal r_i_term_extended0_carry_n_1 : STD_LOGIC;
  signal r_i_term_extended0_carry_n_2 : STD_LOGIC;
  signal r_i_term_extended0_carry_n_3 : STD_LOGIC;
  signal \r_i_term_extended[0]_i_2_n_0\ : STD_LOGIC;
  signal \r_i_term_extended[0]_i_3_n_0\ : STD_LOGIC;
  signal \r_i_term_extended[0]_i_4_n_0\ : STD_LOGIC;
  signal \r_i_term_extended[0]_i_5_n_0\ : STD_LOGIC;
  signal \r_i_term_extended[12]_i_2_n_0\ : STD_LOGIC;
  signal \r_i_term_extended[12]_i_3_n_0\ : STD_LOGIC;
  signal \r_i_term_extended[12]_i_4_n_0\ : STD_LOGIC;
  signal \r_i_term_extended[12]_i_5_n_0\ : STD_LOGIC;
  signal \r_i_term_extended[16]_i_2_n_0\ : STD_LOGIC;
  signal \r_i_term_extended[16]_i_3_n_0\ : STD_LOGIC;
  signal \r_i_term_extended[16]_i_4_n_0\ : STD_LOGIC;
  signal \r_i_term_extended[16]_i_5_n_0\ : STD_LOGIC;
  signal \r_i_term_extended[20]_i_2_n_0\ : STD_LOGIC;
  signal \r_i_term_extended[20]_i_3_n_0\ : STD_LOGIC;
  signal \r_i_term_extended[20]_i_4_n_0\ : STD_LOGIC;
  signal \r_i_term_extended[20]_i_5_n_0\ : STD_LOGIC;
  signal \r_i_term_extended[4]_i_2_n_0\ : STD_LOGIC;
  signal \r_i_term_extended[4]_i_3_n_0\ : STD_LOGIC;
  signal \r_i_term_extended[4]_i_4_n_0\ : STD_LOGIC;
  signal \r_i_term_extended[4]_i_5_n_0\ : STD_LOGIC;
  signal \r_i_term_extended[8]_i_2_n_0\ : STD_LOGIC;
  signal \r_i_term_extended[8]_i_3_n_0\ : STD_LOGIC;
  signal \r_i_term_extended[8]_i_4_n_0\ : STD_LOGIC;
  signal \r_i_term_extended[8]_i_5_n_0\ : STD_LOGIC;
  signal r_i_term_extended_reg : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \r_i_term_extended_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_i_term_extended_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \r_i_term_extended_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \r_i_term_extended_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \r_i_term_extended_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \r_i_term_extended_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \r_i_term_extended_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \r_i_term_extended_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \r_i_term_extended_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \r_i_term_extended_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \r_i_term_extended_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \r_i_term_extended_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \r_i_term_extended_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \r_i_term_extended_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \r_i_term_extended_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \r_i_term_extended_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \r_i_term_extended_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \r_i_term_extended_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \r_i_term_extended_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \r_i_term_extended_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \r_i_term_extended_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \r_i_term_extended_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \r_i_term_extended_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \r_i_term_extended_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \r_i_term_extended_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \r_i_term_extended_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \r_i_term_extended_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \r_i_term_extended_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \r_i_term_extended_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \r_i_term_extended_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \r_i_term_extended_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \r_i_term_extended_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \r_i_term_extended_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \r_i_term_extended_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \r_i_term_extended_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \r_i_term_extended_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \r_i_term_extended_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \r_i_term_extended_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \r_i_term_extended_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \r_i_term_extended_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \r_i_term_extended_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \r_i_term_extended_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \r_i_term_extended_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \r_i_term_extended_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \r_i_term_extended_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \r_i_term_extended_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \r_i_term_extended_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \^r_i_term_reg[23]_0\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal r_integral_component1_i_2_n_0 : STD_LOGIC;
  signal r_integral_component1_n_100 : STD_LOGIC;
  signal r_integral_component1_n_101 : STD_LOGIC;
  signal r_integral_component1_n_102 : STD_LOGIC;
  signal r_integral_component1_n_103 : STD_LOGIC;
  signal r_integral_component1_n_104 : STD_LOGIC;
  signal r_integral_component1_n_105 : STD_LOGIC;
  signal r_integral_component1_n_86 : STD_LOGIC;
  signal r_integral_component1_n_87 : STD_LOGIC;
  signal r_integral_component1_n_88 : STD_LOGIC;
  signal r_integral_component1_n_89 : STD_LOGIC;
  signal r_integral_component1_n_90 : STD_LOGIC;
  signal r_integral_component1_n_91 : STD_LOGIC;
  signal r_integral_component1_n_92 : STD_LOGIC;
  signal r_integral_component1_n_93 : STD_LOGIC;
  signal r_integral_component1_n_94 : STD_LOGIC;
  signal r_integral_component1_n_95 : STD_LOGIC;
  signal r_integral_component1_n_96 : STD_LOGIC;
  signal r_integral_component1_n_97 : STD_LOGIC;
  signal r_integral_component1_n_98 : STD_LOGIC;
  signal r_integral_component1_n_99 : STD_LOGIC;
  signal r_integral_component2_n_100 : STD_LOGIC;
  signal r_integral_component2_n_101 : STD_LOGIC;
  signal r_integral_component2_n_102 : STD_LOGIC;
  signal r_integral_component2_n_103 : STD_LOGIC;
  signal r_integral_component2_n_104 : STD_LOGIC;
  signal r_integral_component2_n_105 : STD_LOGIC;
  signal r_integral_component2_n_82 : STD_LOGIC;
  signal r_integral_component2_n_83 : STD_LOGIC;
  signal r_integral_component2_n_84 : STD_LOGIC;
  signal r_integral_component2_n_85 : STD_LOGIC;
  signal r_integral_component2_n_86 : STD_LOGIC;
  signal r_integral_component2_n_87 : STD_LOGIC;
  signal r_integral_component2_n_88 : STD_LOGIC;
  signal r_integral_component2_n_89 : STD_LOGIC;
  signal r_integral_component2_n_90 : STD_LOGIC;
  signal r_integral_component2_n_91 : STD_LOGIC;
  signal r_integral_component2_n_92 : STD_LOGIC;
  signal r_integral_component2_n_93 : STD_LOGIC;
  signal r_integral_component2_n_94 : STD_LOGIC;
  signal r_integral_component2_n_95 : STD_LOGIC;
  signal r_integral_component2_n_96 : STD_LOGIC;
  signal r_integral_component2_n_97 : STD_LOGIC;
  signal r_integral_component2_n_98 : STD_LOGIC;
  signal r_integral_component2_n_99 : STD_LOGIC;
  signal \r_plant_output_reg[12]_inv_n_0\ : STD_LOGIC;
  signal \r_plant_output_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_plant_output_reg_n_0_[10]\ : STD_LOGIC;
  signal \r_plant_output_reg_n_0_[11]\ : STD_LOGIC;
  signal \r_plant_output_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_plant_output_reg_n_0_[2]\ : STD_LOGIC;
  signal \r_plant_output_reg_n_0_[3]\ : STD_LOGIC;
  signal \r_plant_output_reg_n_0_[4]\ : STD_LOGIC;
  signal \r_plant_output_reg_n_0_[5]\ : STD_LOGIC;
  signal \r_plant_output_reg_n_0_[6]\ : STD_LOGIC;
  signal \r_plant_output_reg_n_0_[7]\ : STD_LOGIC;
  signal \r_plant_output_reg_n_0_[8]\ : STD_LOGIC;
  signal \r_plant_output_reg_n_0_[9]\ : STD_LOGIC;
  signal r_pwm0_carry_i_18_n_0 : STD_LOGIC;
  signal r_pwm0_carry_i_19_n_0 : STD_LOGIC;
  signal \r_reference_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_reference_reg_n_0_[10]\ : STD_LOGIC;
  signal \r_reference_reg_n_0_[11]\ : STD_LOGIC;
  signal \r_reference_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_reference_reg_n_0_[2]\ : STD_LOGIC;
  signal \r_reference_reg_n_0_[3]\ : STD_LOGIC;
  signal \r_reference_reg_n_0_[4]\ : STD_LOGIC;
  signal \r_reference_reg_n_0_[5]\ : STD_LOGIC;
  signal \r_reference_reg_n_0_[6]\ : STD_LOGIC;
  signal \r_reference_reg_n_0_[7]\ : STD_LOGIC;
  signal \r_reference_reg_n_0_[8]\ : STD_LOGIC;
  signal \r_reference_reg_n_0_[9]\ : STD_LOGIC;
  signal \^s00_axi_aresetn_0\ : STD_LOGIC;
  signal w_calculate : STD_LOGIC;
  signal \^w_control_input\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_o_control_input3_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_o_control_input3_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_o_control_input3_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_o_control_input3_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_o_control_input3_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_control_input0_carry__5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_control_input0_carry__5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_r_error0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_r_error0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_r_i_term_extended0_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_r_i_term_extended0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_i_term_extended_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_r_integral_component1_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_r_integral_component1_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_r_integral_component1_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_r_integral_component1_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_r_integral_component1_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_r_integral_component1_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_r_integral_component1_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_r_integral_component1_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_r_integral_component1_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_r_integral_component1_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 36 );
  signal NLW_r_integral_component1_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_r_integral_component2_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_r_integral_component2_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_r_integral_component2_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_r_integral_component2_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_r_integral_component2_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_r_integral_component2_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_r_integral_component2_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_r_integral_component2_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_r_integral_component2_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_r_integral_component2_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 24 );
  signal NLW_r_integral_component2_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_r_p_term_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_r_p_term_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_r_p_term_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_r_p_term_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_r_p_term_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_r_p_term_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_r_p_term_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_r_p_term_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_r_p_term_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_r_p_term_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 15 );
  signal NLW_r_p_term_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of r_integral_component1 : label is "{SYNTH-12 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of r_integral_component2 : label is "{SYNTH-11 {cell *THIS*}}";
begin
  P(14 downto 0) <= \^p\(14 downto 0);
  \r_i_term_reg[23]_0\(23 downto 0) <= \^r_i_term_reg[23]_0\(23 downto 0);
  s00_axi_aresetn_0 <= \^s00_axi_aresetn_0\;
  w_control_input(11 downto 0) <= \^w_control_input\(11 downto 0);
KHZ_TICK: entity work.design_2_myBLDC_Controller_0_0_SamplingTimer
     port map (
      AR(0) => \^s00_axi_aresetn_0\,
      i_sw_enable_control => i_sw_enable_control,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      w_calculate => w_calculate
    );
o_control_input3_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => o_control_input3_carry_n_0,
      CO(2) => o_control_input3_carry_n_1,
      CO(1) => o_control_input3_carry_n_2,
      CO(0) => o_control_input3_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_o_control_input3_carry_O_UNCONNECTED(3 downto 0),
      S(3) => o_control_input3_carry_i_1_n_0,
      S(2) => o_control_input3_carry_i_2_n_0,
      S(1) => o_control_input3_carry_i_3_n_0,
      S(0) => o_control_input3_carry_i_4_n_0
    );
\o_control_input3_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => o_control_input3_carry_n_0,
      CO(3) => \o_control_input3_carry__0_n_0\,
      CO(2) => \o_control_input3_carry__0_n_1\,
      CO(1) => \o_control_input3_carry__0_n_2\,
      CO(0) => \o_control_input3_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_o_control_input3_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \o_control_input3_carry__0_i_1_n_0\,
      S(2) => \o_control_input3_carry__0_i_2_n_0\,
      S(1) => \o_control_input3_carry__0_i_3_n_0\,
      S(0) => \o_control_input3_carry__0_i_4_n_0\
    );
\o_control_input3_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_control_input_reg_n_0_[14]\,
      I1 => \r_control_input_reg_n_0_[15]\,
      O => \o_control_input3_carry__0_i_1_n_0\
    );
\o_control_input3_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_control_input_reg_n_0_[12]\,
      I1 => \r_control_input_reg_n_0_[13]\,
      O => \o_control_input3_carry__0_i_2_n_0\
    );
\o_control_input3_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_control_input_reg_n_0_[10]\,
      I1 => \r_control_input_reg_n_0_[11]\,
      O => \o_control_input3_carry__0_i_3_n_0\
    );
\o_control_input3_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_control_input_reg_n_0_[8]\,
      I1 => \r_control_input_reg_n_0_[9]\,
      O => \o_control_input3_carry__0_i_4_n_0\
    );
\o_control_input3_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_control_input3_carry__0_n_0\,
      CO(3) => \o_control_input3_carry__1_n_0\,
      CO(2) => \o_control_input3_carry__1_n_1\,
      CO(1) => \o_control_input3_carry__1_n_2\,
      CO(0) => \o_control_input3_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_o_control_input3_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \o_control_input3_carry__1_i_1_n_0\,
      S(2) => \o_control_input3_carry__1_i_2_n_0\,
      S(1) => \o_control_input3_carry__1_i_3_n_0\,
      S(0) => \o_control_input3_carry__1_i_4_n_0\
    );
\o_control_input3_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_control_input_reg_n_0_[22]\,
      I1 => \r_control_input_reg_n_0_[23]\,
      O => \o_control_input3_carry__1_i_1_n_0\
    );
\o_control_input3_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_control_input_reg_n_0_[20]\,
      I1 => \r_control_input_reg_n_0_[21]\,
      O => \o_control_input3_carry__1_i_2_n_0\
    );
\o_control_input3_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_control_input_reg_n_0_[18]\,
      I1 => \r_control_input_reg_n_0_[19]\,
      O => \o_control_input3_carry__1_i_3_n_0\
    );
\o_control_input3_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_control_input_reg_n_0_[16]\,
      I1 => \r_control_input_reg_n_0_[17]\,
      O => \o_control_input3_carry__1_i_4_n_0\
    );
\o_control_input3_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_control_input3_carry__1_n_0\,
      CO(3 downto 1) => \NLW_o_control_input3_carry__2_CO_UNCONNECTED\(3 downto 1),
      CO(0) => o_control_input3,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \r_control_input_reg_n_0_[24]\,
      O(3 downto 0) => \NLW_o_control_input3_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \o_control_input3_carry__2_i_1_n_0\
    );
\o_control_input3_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_control_input_reg_n_0_[24]\,
      O => \o_control_input3_carry__2_i_1_n_0\
    );
o_control_input3_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_control_input_reg_n_0_[6]\,
      I1 => \r_control_input_reg_n_0_[7]\,
      O => o_control_input3_carry_i_1_n_0
    );
o_control_input3_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_control_input_reg_n_0_[4]\,
      I1 => \r_control_input_reg_n_0_[5]\,
      O => o_control_input3_carry_i_2_n_0
    );
o_control_input3_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_control_input_reg_n_0_[2]\,
      I1 => \r_control_input_reg_n_0_[3]\,
      O => o_control_input3_carry_i_3_n_0
    );
o_control_input3_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_control_input_reg_n_0_[0]\,
      I1 => \r_control_input_reg_n_0_[1]\,
      O => o_control_input3_carry_i_4_n_0
    );
r_control_input0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => r_control_input0_carry_n_0,
      CO(2) => r_control_input0_carry_n_1,
      CO(1) => r_control_input0_carry_n_2,
      CO(0) => r_control_input0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => \^p\(3 downto 0),
      O(3 downto 0) => p_1_in(3 downto 0),
      S(3) => r_control_input0_carry_i_1_n_0,
      S(2) => r_control_input0_carry_i_2_n_0,
      S(1) => r_control_input0_carry_i_3_n_0,
      S(0) => r_control_input0_carry_i_4_n_0
    );
\r_control_input0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => r_control_input0_carry_n_0,
      CO(3) => \r_control_input0_carry__0_n_0\,
      CO(2) => \r_control_input0_carry__0_n_1\,
      CO(1) => \r_control_input0_carry__0_n_2\,
      CO(0) => \r_control_input0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^p\(7 downto 4),
      O(3 downto 0) => p_1_in(7 downto 4),
      S(3) => \r_control_input0_carry__0_i_1_n_0\,
      S(2) => \r_control_input0_carry__0_i_2_n_0\,
      S(1) => \r_control_input0_carry__0_i_3_n_0\,
      S(0) => \r_control_input0_carry__0_i_4_n_0\
    );
\r_control_input0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^p\(7),
      I1 => \^r_i_term_reg[23]_0\(7),
      O => \r_control_input0_carry__0_i_1_n_0\
    );
\r_control_input0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^p\(6),
      I1 => \^r_i_term_reg[23]_0\(6),
      O => \r_control_input0_carry__0_i_2_n_0\
    );
\r_control_input0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^p\(5),
      I1 => \^r_i_term_reg[23]_0\(5),
      O => \r_control_input0_carry__0_i_3_n_0\
    );
\r_control_input0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^p\(4),
      I1 => \^r_i_term_reg[23]_0\(4),
      O => \r_control_input0_carry__0_i_4_n_0\
    );
\r_control_input0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_control_input0_carry__0_n_0\,
      CO(3) => \r_control_input0_carry__1_n_0\,
      CO(2) => \r_control_input0_carry__1_n_1\,
      CO(1) => \r_control_input0_carry__1_n_2\,
      CO(0) => \r_control_input0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^p\(11 downto 8),
      O(3 downto 0) => p_1_in(11 downto 8),
      S(3) => \r_control_input0_carry__1_i_1_n_0\,
      S(2) => \r_control_input0_carry__1_i_2_n_0\,
      S(1) => \r_control_input0_carry__1_i_3_n_0\,
      S(0) => \r_control_input0_carry__1_i_4_n_0\
    );
\r_control_input0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^p\(11),
      I1 => \^r_i_term_reg[23]_0\(11),
      O => \r_control_input0_carry__1_i_1_n_0\
    );
\r_control_input0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^p\(10),
      I1 => \^r_i_term_reg[23]_0\(10),
      O => \r_control_input0_carry__1_i_2_n_0\
    );
\r_control_input0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^p\(9),
      I1 => \^r_i_term_reg[23]_0\(9),
      O => \r_control_input0_carry__1_i_3_n_0\
    );
\r_control_input0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^p\(8),
      I1 => \^r_i_term_reg[23]_0\(8),
      O => \r_control_input0_carry__1_i_4_n_0\
    );
\r_control_input0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_control_input0_carry__1_n_0\,
      CO(3) => \r_control_input0_carry__2_n_0\,
      CO(2) => \r_control_input0_carry__2_n_1\,
      CO(1) => \r_control_input0_carry__2_n_2\,
      CO(0) => \r_control_input0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \^r_i_term_reg[23]_0\(14),
      DI(2) => \r_control_input0_carry__2_i_1_n_0\,
      DI(1 downto 0) => \^p\(13 downto 12),
      O(3 downto 0) => p_1_in(15 downto 12),
      S(3) => \r_control_input0_carry__2_i_2_n_0\,
      S(2) => \r_control_input0_carry__2_i_3_n_0\,
      S(1) => \r_control_input0_carry__2_i_4_n_0\,
      S(0) => \r_control_input0_carry__2_i_5_n_0\
    );
\r_control_input0_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^r_i_term_reg[23]_0\(14),
      O => \r_control_input0_carry__2_i_1_n_0\
    );
\r_control_input0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^r_i_term_reg[23]_0\(14),
      I1 => \^r_i_term_reg[23]_0\(15),
      O => \r_control_input0_carry__2_i_2_n_0\
    );
\r_control_input0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^r_i_term_reg[23]_0\(14),
      I1 => \^p\(14),
      O => \r_control_input0_carry__2_i_3_n_0\
    );
\r_control_input0_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^p\(13),
      I1 => \^r_i_term_reg[23]_0\(13),
      O => \r_control_input0_carry__2_i_4_n_0\
    );
\r_control_input0_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^p\(12),
      I1 => \^r_i_term_reg[23]_0\(12),
      O => \r_control_input0_carry__2_i_5_n_0\
    );
\r_control_input0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_control_input0_carry__2_n_0\,
      CO(3) => \r_control_input0_carry__3_n_0\,
      CO(2) => \r_control_input0_carry__3_n_1\,
      CO(1) => \r_control_input0_carry__3_n_2\,
      CO(0) => \r_control_input0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^r_i_term_reg[23]_0\(18 downto 15),
      O(3 downto 0) => p_1_in(19 downto 16),
      S(3) => \r_control_input0_carry__3_i_1_n_0\,
      S(2) => \r_control_input0_carry__3_i_2_n_0\,
      S(1) => \r_control_input0_carry__3_i_3_n_0\,
      S(0) => \r_control_input0_carry__3_i_4_n_0\
    );
\r_control_input0_carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^r_i_term_reg[23]_0\(18),
      I1 => \^r_i_term_reg[23]_0\(19),
      O => \r_control_input0_carry__3_i_1_n_0\
    );
\r_control_input0_carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^r_i_term_reg[23]_0\(17),
      I1 => \^r_i_term_reg[23]_0\(18),
      O => \r_control_input0_carry__3_i_2_n_0\
    );
\r_control_input0_carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^r_i_term_reg[23]_0\(16),
      I1 => \^r_i_term_reg[23]_0\(17),
      O => \r_control_input0_carry__3_i_3_n_0\
    );
\r_control_input0_carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^r_i_term_reg[23]_0\(15),
      I1 => \^r_i_term_reg[23]_0\(16),
      O => \r_control_input0_carry__3_i_4_n_0\
    );
\r_control_input0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_control_input0_carry__3_n_0\,
      CO(3) => \r_control_input0_carry__4_n_0\,
      CO(2) => \r_control_input0_carry__4_n_1\,
      CO(1) => \r_control_input0_carry__4_n_2\,
      CO(0) => \r_control_input0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^r_i_term_reg[23]_0\(22 downto 19),
      O(3 downto 0) => p_1_in(23 downto 20),
      S(3) => \r_control_input0_carry__4_i_1_n_0\,
      S(2) => \r_control_input0_carry__4_i_2_n_0\,
      S(1) => \r_control_input0_carry__4_i_3_n_0\,
      S(0) => \r_control_input0_carry__4_i_4_n_0\
    );
\r_control_input0_carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^r_i_term_reg[23]_0\(22),
      I1 => \^r_i_term_reg[23]_0\(23),
      O => \r_control_input0_carry__4_i_1_n_0\
    );
\r_control_input0_carry__4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^r_i_term_reg[23]_0\(21),
      I1 => \^r_i_term_reg[23]_0\(22),
      O => \r_control_input0_carry__4_i_2_n_0\
    );
\r_control_input0_carry__4_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^r_i_term_reg[23]_0\(20),
      I1 => \^r_i_term_reg[23]_0\(21),
      O => \r_control_input0_carry__4_i_3_n_0\
    );
\r_control_input0_carry__4_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^r_i_term_reg[23]_0\(19),
      I1 => \^r_i_term_reg[23]_0\(20),
      O => \r_control_input0_carry__4_i_4_n_0\
    );
\r_control_input0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_control_input0_carry__4_n_0\,
      CO(3 downto 0) => \NLW_r_control_input0_carry__5_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_r_control_input0_carry__5_O_UNCONNECTED\(3 downto 1),
      O(0) => p_1_in(24),
      S(3 downto 0) => B"0001"
    );
r_control_input0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^p\(3),
      I1 => \^r_i_term_reg[23]_0\(3),
      O => r_control_input0_carry_i_1_n_0
    );
r_control_input0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^p\(2),
      I1 => \^r_i_term_reg[23]_0\(2),
      O => r_control_input0_carry_i_2_n_0
    );
r_control_input0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^p\(1),
      I1 => \^r_i_term_reg[23]_0\(1),
      O => r_control_input0_carry_i_3_n_0
    );
r_control_input0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^p\(0),
      I1 => \^r_i_term_reg[23]_0\(0),
      O => r_control_input0_carry_i_4_n_0
    );
\r_control_input_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_calculate,
      D => p_1_in(0),
      Q => \r_control_input_reg_n_0_[0]\,
      R => \^s00_axi_aresetn_0\
    );
\r_control_input_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_calculate,
      D => p_1_in(10),
      Q => \r_control_input_reg_n_0_[10]\,
      R => \^s00_axi_aresetn_0\
    );
\r_control_input_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_calculate,
      D => p_1_in(11),
      Q => \r_control_input_reg_n_0_[11]\,
      R => \^s00_axi_aresetn_0\
    );
\r_control_input_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_calculate,
      D => p_1_in(12),
      Q => \r_control_input_reg_n_0_[12]\,
      R => \^s00_axi_aresetn_0\
    );
\r_control_input_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_calculate,
      D => p_1_in(13),
      Q => \r_control_input_reg_n_0_[13]\,
      R => \^s00_axi_aresetn_0\
    );
\r_control_input_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_calculate,
      D => p_1_in(14),
      Q => \r_control_input_reg_n_0_[14]\,
      R => \^s00_axi_aresetn_0\
    );
\r_control_input_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_calculate,
      D => p_1_in(15),
      Q => \r_control_input_reg_n_0_[15]\,
      R => \^s00_axi_aresetn_0\
    );
\r_control_input_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_calculate,
      D => p_1_in(16),
      Q => \r_control_input_reg_n_0_[16]\,
      R => \^s00_axi_aresetn_0\
    );
\r_control_input_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_calculate,
      D => p_1_in(17),
      Q => \r_control_input_reg_n_0_[17]\,
      R => \^s00_axi_aresetn_0\
    );
\r_control_input_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_calculate,
      D => p_1_in(18),
      Q => \r_control_input_reg_n_0_[18]\,
      R => \^s00_axi_aresetn_0\
    );
\r_control_input_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_calculate,
      D => p_1_in(19),
      Q => \r_control_input_reg_n_0_[19]\,
      R => \^s00_axi_aresetn_0\
    );
\r_control_input_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_calculate,
      D => p_1_in(1),
      Q => \r_control_input_reg_n_0_[1]\,
      R => \^s00_axi_aresetn_0\
    );
\r_control_input_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_calculate,
      D => p_1_in(20),
      Q => \r_control_input_reg_n_0_[20]\,
      R => \^s00_axi_aresetn_0\
    );
\r_control_input_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_calculate,
      D => p_1_in(21),
      Q => \r_control_input_reg_n_0_[21]\,
      R => \^s00_axi_aresetn_0\
    );
\r_control_input_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_calculate,
      D => p_1_in(22),
      Q => \r_control_input_reg_n_0_[22]\,
      R => \^s00_axi_aresetn_0\
    );
\r_control_input_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_calculate,
      D => p_1_in(23),
      Q => \r_control_input_reg_n_0_[23]\,
      R => \^s00_axi_aresetn_0\
    );
\r_control_input_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_calculate,
      D => p_1_in(24),
      Q => \r_control_input_reg_n_0_[24]\,
      R => \^s00_axi_aresetn_0\
    );
\r_control_input_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_calculate,
      D => p_1_in(2),
      Q => \r_control_input_reg_n_0_[2]\,
      R => \^s00_axi_aresetn_0\
    );
\r_control_input_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_calculate,
      D => p_1_in(3),
      Q => \r_control_input_reg_n_0_[3]\,
      R => \^s00_axi_aresetn_0\
    );
\r_control_input_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_calculate,
      D => p_1_in(4),
      Q => \r_control_input_reg_n_0_[4]\,
      R => \^s00_axi_aresetn_0\
    );
\r_control_input_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_calculate,
      D => p_1_in(5),
      Q => \r_control_input_reg_n_0_[5]\,
      R => \^s00_axi_aresetn_0\
    );
\r_control_input_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_calculate,
      D => p_1_in(6),
      Q => \r_control_input_reg_n_0_[6]\,
      R => \^s00_axi_aresetn_0\
    );
\r_control_input_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_calculate,
      D => p_1_in(7),
      Q => \r_control_input_reg_n_0_[7]\,
      R => \^s00_axi_aresetn_0\
    );
\r_control_input_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_calculate,
      D => p_1_in(8),
      Q => \r_control_input_reg_n_0_[8]\,
      R => \^s00_axi_aresetn_0\
    );
\r_control_input_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_calculate,
      D => p_1_in(9),
      Q => \r_control_input_reg_n_0_[9]\,
      R => \^s00_axi_aresetn_0\
    );
r_error0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => r_error0_carry_n_0,
      CO(2) => r_error0_carry_n_1,
      CO(1) => r_error0_carry_n_2,
      CO(0) => r_error0_carry_n_3,
      CYINIT => '1',
      DI(3) => \r_reference_reg_n_0_[3]\,
      DI(2) => \r_reference_reg_n_0_[2]\,
      DI(1) => \r_reference_reg_n_0_[1]\,
      DI(0) => \r_reference_reg_n_0_[0]\,
      O(3) => r_error0_carry_n_4,
      O(2) => r_error0_carry_n_5,
      O(1) => r_error0_carry_n_6,
      O(0) => r_error0_carry_n_7,
      S(3) => r_error0_carry_i_1_n_0,
      S(2) => r_error0_carry_i_2_n_0,
      S(1) => r_error0_carry_i_3_n_0,
      S(0) => r_error0_carry_i_4_n_0
    );
\r_error0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => r_error0_carry_n_0,
      CO(3) => \r_error0_carry__0_n_0\,
      CO(2) => \r_error0_carry__0_n_1\,
      CO(1) => \r_error0_carry__0_n_2\,
      CO(0) => \r_error0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \r_reference_reg_n_0_[7]\,
      DI(2) => \r_reference_reg_n_0_[6]\,
      DI(1) => \r_reference_reg_n_0_[5]\,
      DI(0) => \r_reference_reg_n_0_[4]\,
      O(3) => \r_error0_carry__0_n_4\,
      O(2) => \r_error0_carry__0_n_5\,
      O(1) => \r_error0_carry__0_n_6\,
      O(0) => \r_error0_carry__0_n_7\,
      S(3) => \r_error0_carry__0_i_1_n_0\,
      S(2) => \r_error0_carry__0_i_2_n_0\,
      S(1) => \r_error0_carry__0_i_3_n_0\,
      S(0) => \r_error0_carry__0_i_4_n_0\
    );
\r_error0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \r_reference_reg_n_0_[7]\,
      I1 => \r_plant_output_reg_n_0_[7]\,
      O => \r_error0_carry__0_i_1_n_0\
    );
\r_error0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \r_reference_reg_n_0_[6]\,
      I1 => \r_plant_output_reg_n_0_[6]\,
      O => \r_error0_carry__0_i_2_n_0\
    );
\r_error0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \r_reference_reg_n_0_[5]\,
      I1 => \r_plant_output_reg_n_0_[5]\,
      O => \r_error0_carry__0_i_3_n_0\
    );
\r_error0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \r_reference_reg_n_0_[4]\,
      I1 => \r_plant_output_reg_n_0_[4]\,
      O => \r_error0_carry__0_i_4_n_0\
    );
\r_error0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_error0_carry__0_n_0\,
      CO(3) => \r_error0_carry__1_n_0\,
      CO(2) => \r_error0_carry__1_n_1\,
      CO(1) => \r_error0_carry__1_n_2\,
      CO(0) => \r_error0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \r_reference_reg_n_0_[11]\,
      DI(2) => \r_reference_reg_n_0_[10]\,
      DI(1) => \r_reference_reg_n_0_[9]\,
      DI(0) => \r_reference_reg_n_0_[8]\,
      O(3) => \r_error0_carry__1_n_4\,
      O(2) => \r_error0_carry__1_n_5\,
      O(1) => \r_error0_carry__1_n_6\,
      O(0) => \r_error0_carry__1_n_7\,
      S(3) => \r_error0_carry__1_i_1_n_0\,
      S(2) => \r_error0_carry__1_i_2_n_0\,
      S(1) => \r_error0_carry__1_i_3_n_0\,
      S(0) => \r_error0_carry__1_i_4_n_0\
    );
\r_error0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \r_reference_reg_n_0_[11]\,
      I1 => \r_plant_output_reg_n_0_[11]\,
      O => \r_error0_carry__1_i_1_n_0\
    );
\r_error0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \r_reference_reg_n_0_[10]\,
      I1 => \r_plant_output_reg_n_0_[10]\,
      O => \r_error0_carry__1_i_2_n_0\
    );
\r_error0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \r_reference_reg_n_0_[9]\,
      I1 => \r_plant_output_reg_n_0_[9]\,
      O => \r_error0_carry__1_i_3_n_0\
    );
\r_error0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \r_reference_reg_n_0_[8]\,
      I1 => \r_plant_output_reg_n_0_[8]\,
      O => \r_error0_carry__1_i_4_n_0\
    );
\r_error0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_error0_carry__1_n_0\,
      CO(3 downto 1) => \NLW_r_error0_carry__2_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \r_error0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_r_error0_carry__2_O_UNCONNECTED\(3 downto 2),
      O(1) => \r_error0_carry__2_n_6\,
      O(0) => \r_error0_carry__2_n_7\,
      S(3 downto 1) => B"001",
      S(0) => \r_plant_output_reg[12]_inv_n_0\
    );
r_error0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \r_reference_reg_n_0_[3]\,
      I1 => \r_plant_output_reg_n_0_[3]\,
      O => r_error0_carry_i_1_n_0
    );
r_error0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \r_reference_reg_n_0_[2]\,
      I1 => \r_plant_output_reg_n_0_[2]\,
      O => r_error0_carry_i_2_n_0
    );
r_error0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \r_reference_reg_n_0_[1]\,
      I1 => \r_plant_output_reg_n_0_[1]\,
      O => r_error0_carry_i_3_n_0
    );
r_error0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \r_reference_reg_n_0_[0]\,
      I1 => \r_plant_output_reg_n_0_[0]\,
      O => r_error0_carry_i_4_n_0
    );
\r_error_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => r_error0_carry_n_7,
      Q => \r_error_reg[13]_0\(0),
      R => \r_i_gain[8]_i_1_n_0\
    );
\r_error_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \r_error0_carry__1_n_5\,
      Q => \r_error_reg[13]_0\(10),
      R => \r_i_gain[8]_i_1_n_0\
    );
\r_error_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \r_error0_carry__1_n_4\,
      Q => \r_error_reg[13]_0\(11),
      R => \r_i_gain[8]_i_1_n_0\
    );
\r_error_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \r_error0_carry__2_n_7\,
      Q => \r_error_reg[13]_0\(12),
      R => \r_i_gain[8]_i_1_n_0\
    );
\r_error_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \r_error0_carry__2_n_6\,
      Q => \r_error_reg[13]_0\(13),
      R => \r_i_gain[8]_i_1_n_0\
    );
\r_error_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => r_error0_carry_n_6,
      Q => \r_error_reg[13]_0\(1),
      R => \r_i_gain[8]_i_1_n_0\
    );
\r_error_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => r_error0_carry_n_5,
      Q => \r_error_reg[13]_0\(2),
      R => \r_i_gain[8]_i_1_n_0\
    );
\r_error_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => r_error0_carry_n_4,
      Q => \r_error_reg[13]_0\(3),
      R => \r_i_gain[8]_i_1_n_0\
    );
\r_error_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \r_error0_carry__0_n_7\,
      Q => \r_error_reg[13]_0\(4),
      R => \r_i_gain[8]_i_1_n_0\
    );
\r_error_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \r_error0_carry__0_n_6\,
      Q => \r_error_reg[13]_0\(5),
      R => \r_i_gain[8]_i_1_n_0\
    );
\r_error_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \r_error0_carry__0_n_5\,
      Q => \r_error_reg[13]_0\(6),
      R => \r_i_gain[8]_i_1_n_0\
    );
\r_error_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \r_error0_carry__0_n_4\,
      Q => \r_error_reg[13]_0\(7),
      R => \r_i_gain[8]_i_1_n_0\
    );
\r_error_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \r_error0_carry__1_n_7\,
      Q => \r_error_reg[13]_0\(8),
      R => \r_i_gain[8]_i_1_n_0\
    );
\r_error_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \r_error0_carry__1_n_6\,
      Q => \r_error_reg[13]_0\(9),
      R => \r_i_gain[8]_i_1_n_0\
    );
\r_i_gain[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => i_sw_enable_control,
      I1 => s00_axi_aresetn,
      O => \r_i_gain[8]_i_1_n_0\
    );
\r_i_gain_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => Q(0),
      Q => r_i_gain(0),
      R => \r_i_gain[8]_i_1_n_0\
    );
\r_i_gain_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => Q(1),
      Q => r_i_gain(1),
      R => \r_i_gain[8]_i_1_n_0\
    );
\r_i_gain_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => Q(2),
      Q => r_i_gain(2),
      R => \r_i_gain[8]_i_1_n_0\
    );
\r_i_gain_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => Q(3),
      Q => r_i_gain(3),
      R => \r_i_gain[8]_i_1_n_0\
    );
\r_i_gain_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => Q(4),
      Q => r_i_gain(4),
      R => \r_i_gain[8]_i_1_n_0\
    );
\r_i_gain_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => Q(5),
      Q => r_i_gain(5),
      R => \r_i_gain[8]_i_1_n_0\
    );
\r_i_gain_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => Q(6),
      Q => r_i_gain(6),
      R => \r_i_gain[8]_i_1_n_0\
    );
\r_i_gain_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => Q(7),
      Q => r_i_gain(8),
      R => \r_i_gain[8]_i_1_n_0\
    );
\r_i_gain_z_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => r_i_gain(0),
      Q => r_i_gain_z(0),
      R => \r_i_gain[8]_i_1_n_0\
    );
\r_i_gain_z_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => r_i_gain(1),
      Q => r_i_gain_z(1),
      R => \r_i_gain[8]_i_1_n_0\
    );
\r_i_gain_z_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => r_i_gain(2),
      Q => r_i_gain_z(2),
      R => \r_i_gain[8]_i_1_n_0\
    );
\r_i_gain_z_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => r_i_gain(3),
      Q => r_i_gain_z(3),
      R => \r_i_gain[8]_i_1_n_0\
    );
\r_i_gain_z_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => r_i_gain(4),
      Q => r_i_gain_z(4),
      R => \r_i_gain[8]_i_1_n_0\
    );
\r_i_gain_z_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => r_i_gain(5),
      Q => r_i_gain_z(5),
      R => \r_i_gain[8]_i_1_n_0\
    );
\r_i_gain_z_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => r_i_gain(6),
      Q => r_i_gain_z(6),
      R => \r_i_gain[8]_i_1_n_0\
    );
\r_i_gain_z_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => r_i_gain(8),
      Q => r_i_gain_z(7),
      R => \r_i_gain[8]_i_1_n_0\
    );
r_i_term_extended0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => NLW_r_i_term_extended0_carry_CO_UNCONNECTED(3),
      CO(2) => r_i_term_extended0_carry_n_1,
      CO(1) => r_i_term_extended0_carry_n_2,
      CO(0) => r_i_term_extended0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0111",
      O(3 downto 0) => NLW_r_i_term_extended0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => '0',
      S(2) => r_i_term_extended0_carry_i_1_n_0,
      S(1) => r_i_term_extended0_carry_i_2_n_0,
      S(0) => r_i_term_extended0_carry_i_3_n_0
    );
r_i_term_extended0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => r_i_gain(6),
      I1 => r_i_gain_z(6),
      I2 => r_i_gain(8),
      I3 => r_i_gain_z(7),
      O => r_i_term_extended0_carry_i_1_n_0
    );
r_i_term_extended0_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => r_i_gain(3),
      I1 => r_i_gain_z(3),
      I2 => r_i_gain_z(5),
      I3 => r_i_gain(5),
      I4 => r_i_gain_z(4),
      I5 => r_i_gain(4),
      O => r_i_term_extended0_carry_i_2_n_0
    );
r_i_term_extended0_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => r_i_gain(0),
      I1 => r_i_gain_z(0),
      I2 => r_i_gain_z(2),
      I3 => r_i_gain(2),
      I4 => r_i_gain_z(1),
      I5 => r_i_gain(1),
      O => r_i_term_extended0_carry_i_3_n_0
    );
\r_i_term_extended[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(3),
      I1 => r_i_term_extended_reg(3),
      O => \r_i_term_extended[0]_i_2_n_0\
    );
\r_i_term_extended[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(2),
      I1 => r_i_term_extended_reg(2),
      O => \r_i_term_extended[0]_i_3_n_0\
    );
\r_i_term_extended[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(1),
      I1 => r_i_term_extended_reg(1),
      O => \r_i_term_extended[0]_i_4_n_0\
    );
\r_i_term_extended[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(0),
      I1 => r_i_term_extended_reg(0),
      O => \r_i_term_extended[0]_i_5_n_0\
    );
\r_i_term_extended[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(23),
      I1 => r_i_term_extended_reg(15),
      O => \r_i_term_extended[12]_i_2_n_0\
    );
\r_i_term_extended[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(14),
      I1 => r_i_term_extended_reg(14),
      O => \r_i_term_extended[12]_i_3_n_0\
    );
\r_i_term_extended[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(13),
      I1 => r_i_term_extended_reg(13),
      O => \r_i_term_extended[12]_i_4_n_0\
    );
\r_i_term_extended[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(12),
      I1 => r_i_term_extended_reg(12),
      O => \r_i_term_extended[12]_i_5_n_0\
    );
\r_i_term_extended[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(23),
      I1 => r_i_term_extended_reg(19),
      O => \r_i_term_extended[16]_i_2_n_0\
    );
\r_i_term_extended[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(23),
      I1 => r_i_term_extended_reg(18),
      O => \r_i_term_extended[16]_i_3_n_0\
    );
\r_i_term_extended[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(23),
      I1 => r_i_term_extended_reg(17),
      O => \r_i_term_extended[16]_i_4_n_0\
    );
\r_i_term_extended[16]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(23),
      I1 => r_i_term_extended_reg(16),
      O => \r_i_term_extended[16]_i_5_n_0\
    );
\r_i_term_extended[20]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(23),
      I1 => r_i_term_extended_reg(23),
      O => \r_i_term_extended[20]_i_2_n_0\
    );
\r_i_term_extended[20]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(23),
      I1 => r_i_term_extended_reg(22),
      O => \r_i_term_extended[20]_i_3_n_0\
    );
\r_i_term_extended[20]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(23),
      I1 => r_i_term_extended_reg(21),
      O => \r_i_term_extended[20]_i_4_n_0\
    );
\r_i_term_extended[20]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(23),
      I1 => r_i_term_extended_reg(20),
      O => \r_i_term_extended[20]_i_5_n_0\
    );
\r_i_term_extended[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(7),
      I1 => r_i_term_extended_reg(7),
      O => \r_i_term_extended[4]_i_2_n_0\
    );
\r_i_term_extended[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(6),
      I1 => r_i_term_extended_reg(6),
      O => \r_i_term_extended[4]_i_3_n_0\
    );
\r_i_term_extended[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(5),
      I1 => r_i_term_extended_reg(5),
      O => \r_i_term_extended[4]_i_4_n_0\
    );
\r_i_term_extended[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(4),
      I1 => r_i_term_extended_reg(4),
      O => \r_i_term_extended[4]_i_5_n_0\
    );
\r_i_term_extended[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(11),
      I1 => r_i_term_extended_reg(11),
      O => \r_i_term_extended[8]_i_2_n_0\
    );
\r_i_term_extended[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(10),
      I1 => r_i_term_extended_reg(10),
      O => \r_i_term_extended[8]_i_3_n_0\
    );
\r_i_term_extended[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(9),
      I1 => r_i_term_extended_reg(9),
      O => \r_i_term_extended[8]_i_4_n_0\
    );
\r_i_term_extended[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(8),
      I1 => r_i_term_extended_reg(8),
      O => \r_i_term_extended[8]_i_5_n_0\
    );
\r_i_term_extended_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_calculate,
      D => \r_i_term_extended_reg[0]_i_1_n_7\,
      Q => r_i_term_extended_reg(0),
      R => r_integral_component1_i_2_n_0
    );
\r_i_term_extended_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \r_i_term_extended_reg[0]_i_1_n_0\,
      CO(2) => \r_i_term_extended_reg[0]_i_1_n_1\,
      CO(1) => \r_i_term_extended_reg[0]_i_1_n_2\,
      CO(0) => \r_i_term_extended_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \in\(3 downto 0),
      O(3) => \r_i_term_extended_reg[0]_i_1_n_4\,
      O(2) => \r_i_term_extended_reg[0]_i_1_n_5\,
      O(1) => \r_i_term_extended_reg[0]_i_1_n_6\,
      O(0) => \r_i_term_extended_reg[0]_i_1_n_7\,
      S(3) => \r_i_term_extended[0]_i_2_n_0\,
      S(2) => \r_i_term_extended[0]_i_3_n_0\,
      S(1) => \r_i_term_extended[0]_i_4_n_0\,
      S(0) => \r_i_term_extended[0]_i_5_n_0\
    );
\r_i_term_extended_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_calculate,
      D => \r_i_term_extended_reg[8]_i_1_n_5\,
      Q => r_i_term_extended_reg(10),
      R => r_integral_component1_i_2_n_0
    );
\r_i_term_extended_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_calculate,
      D => \r_i_term_extended_reg[8]_i_1_n_4\,
      Q => r_i_term_extended_reg(11),
      R => r_integral_component1_i_2_n_0
    );
\r_i_term_extended_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_calculate,
      D => \r_i_term_extended_reg[12]_i_1_n_7\,
      Q => r_i_term_extended_reg(12),
      R => r_integral_component1_i_2_n_0
    );
\r_i_term_extended_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_i_term_extended_reg[8]_i_1_n_0\,
      CO(3) => \r_i_term_extended_reg[12]_i_1_n_0\,
      CO(2) => \r_i_term_extended_reg[12]_i_1_n_1\,
      CO(1) => \r_i_term_extended_reg[12]_i_1_n_2\,
      CO(0) => \r_i_term_extended_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \in\(23),
      DI(2 downto 0) => \in\(14 downto 12),
      O(3) => \r_i_term_extended_reg[12]_i_1_n_4\,
      O(2) => \r_i_term_extended_reg[12]_i_1_n_5\,
      O(1) => \r_i_term_extended_reg[12]_i_1_n_6\,
      O(0) => \r_i_term_extended_reg[12]_i_1_n_7\,
      S(3) => \r_i_term_extended[12]_i_2_n_0\,
      S(2) => \r_i_term_extended[12]_i_3_n_0\,
      S(1) => \r_i_term_extended[12]_i_4_n_0\,
      S(0) => \r_i_term_extended[12]_i_5_n_0\
    );
\r_i_term_extended_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_calculate,
      D => \r_i_term_extended_reg[12]_i_1_n_6\,
      Q => r_i_term_extended_reg(13),
      R => r_integral_component1_i_2_n_0
    );
\r_i_term_extended_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_calculate,
      D => \r_i_term_extended_reg[12]_i_1_n_5\,
      Q => r_i_term_extended_reg(14),
      R => r_integral_component1_i_2_n_0
    );
\r_i_term_extended_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_calculate,
      D => \r_i_term_extended_reg[12]_i_1_n_4\,
      Q => r_i_term_extended_reg(15),
      R => r_integral_component1_i_2_n_0
    );
\r_i_term_extended_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_calculate,
      D => \r_i_term_extended_reg[16]_i_1_n_7\,
      Q => r_i_term_extended_reg(16),
      R => r_integral_component1_i_2_n_0
    );
\r_i_term_extended_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_i_term_extended_reg[12]_i_1_n_0\,
      CO(3) => \r_i_term_extended_reg[16]_i_1_n_0\,
      CO(2) => \r_i_term_extended_reg[16]_i_1_n_1\,
      CO(1) => \r_i_term_extended_reg[16]_i_1_n_2\,
      CO(0) => \r_i_term_extended_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \in\(23),
      DI(2) => \in\(23),
      DI(1) => \in\(23),
      DI(0) => \in\(23),
      O(3) => \r_i_term_extended_reg[16]_i_1_n_4\,
      O(2) => \r_i_term_extended_reg[16]_i_1_n_5\,
      O(1) => \r_i_term_extended_reg[16]_i_1_n_6\,
      O(0) => \r_i_term_extended_reg[16]_i_1_n_7\,
      S(3) => \r_i_term_extended[16]_i_2_n_0\,
      S(2) => \r_i_term_extended[16]_i_3_n_0\,
      S(1) => \r_i_term_extended[16]_i_4_n_0\,
      S(0) => \r_i_term_extended[16]_i_5_n_0\
    );
\r_i_term_extended_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_calculate,
      D => \r_i_term_extended_reg[16]_i_1_n_6\,
      Q => r_i_term_extended_reg(17),
      R => r_integral_component1_i_2_n_0
    );
\r_i_term_extended_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_calculate,
      D => \r_i_term_extended_reg[16]_i_1_n_5\,
      Q => r_i_term_extended_reg(18),
      R => r_integral_component1_i_2_n_0
    );
\r_i_term_extended_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_calculate,
      D => \r_i_term_extended_reg[16]_i_1_n_4\,
      Q => r_i_term_extended_reg(19),
      R => r_integral_component1_i_2_n_0
    );
\r_i_term_extended_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_calculate,
      D => \r_i_term_extended_reg[0]_i_1_n_6\,
      Q => r_i_term_extended_reg(1),
      R => r_integral_component1_i_2_n_0
    );
\r_i_term_extended_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_calculate,
      D => \r_i_term_extended_reg[20]_i_1_n_7\,
      Q => r_i_term_extended_reg(20),
      R => r_integral_component1_i_2_n_0
    );
\r_i_term_extended_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_i_term_extended_reg[16]_i_1_n_0\,
      CO(3) => \NLW_r_i_term_extended_reg[20]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \r_i_term_extended_reg[20]_i_1_n_1\,
      CO(1) => \r_i_term_extended_reg[20]_i_1_n_2\,
      CO(0) => \r_i_term_extended_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \in\(23),
      DI(1) => \in\(23),
      DI(0) => \in\(23),
      O(3) => \r_i_term_extended_reg[20]_i_1_n_4\,
      O(2) => \r_i_term_extended_reg[20]_i_1_n_5\,
      O(1) => \r_i_term_extended_reg[20]_i_1_n_6\,
      O(0) => \r_i_term_extended_reg[20]_i_1_n_7\,
      S(3) => \r_i_term_extended[20]_i_2_n_0\,
      S(2) => \r_i_term_extended[20]_i_3_n_0\,
      S(1) => \r_i_term_extended[20]_i_4_n_0\,
      S(0) => \r_i_term_extended[20]_i_5_n_0\
    );
\r_i_term_extended_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_calculate,
      D => \r_i_term_extended_reg[20]_i_1_n_6\,
      Q => r_i_term_extended_reg(21),
      R => r_integral_component1_i_2_n_0
    );
\r_i_term_extended_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_calculate,
      D => \r_i_term_extended_reg[20]_i_1_n_5\,
      Q => r_i_term_extended_reg(22),
      R => r_integral_component1_i_2_n_0
    );
\r_i_term_extended_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_calculate,
      D => \r_i_term_extended_reg[20]_i_1_n_4\,
      Q => r_i_term_extended_reg(23),
      R => r_integral_component1_i_2_n_0
    );
\r_i_term_extended_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_calculate,
      D => \r_i_term_extended_reg[0]_i_1_n_5\,
      Q => r_i_term_extended_reg(2),
      R => r_integral_component1_i_2_n_0
    );
\r_i_term_extended_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_calculate,
      D => \r_i_term_extended_reg[0]_i_1_n_4\,
      Q => r_i_term_extended_reg(3),
      R => r_integral_component1_i_2_n_0
    );
\r_i_term_extended_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_calculate,
      D => \r_i_term_extended_reg[4]_i_1_n_7\,
      Q => r_i_term_extended_reg(4),
      R => r_integral_component1_i_2_n_0
    );
\r_i_term_extended_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_i_term_extended_reg[0]_i_1_n_0\,
      CO(3) => \r_i_term_extended_reg[4]_i_1_n_0\,
      CO(2) => \r_i_term_extended_reg[4]_i_1_n_1\,
      CO(1) => \r_i_term_extended_reg[4]_i_1_n_2\,
      CO(0) => \r_i_term_extended_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \in\(7 downto 4),
      O(3) => \r_i_term_extended_reg[4]_i_1_n_4\,
      O(2) => \r_i_term_extended_reg[4]_i_1_n_5\,
      O(1) => \r_i_term_extended_reg[4]_i_1_n_6\,
      O(0) => \r_i_term_extended_reg[4]_i_1_n_7\,
      S(3) => \r_i_term_extended[4]_i_2_n_0\,
      S(2) => \r_i_term_extended[4]_i_3_n_0\,
      S(1) => \r_i_term_extended[4]_i_4_n_0\,
      S(0) => \r_i_term_extended[4]_i_5_n_0\
    );
\r_i_term_extended_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_calculate,
      D => \r_i_term_extended_reg[4]_i_1_n_6\,
      Q => r_i_term_extended_reg(5),
      R => r_integral_component1_i_2_n_0
    );
\r_i_term_extended_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_calculate,
      D => \r_i_term_extended_reg[4]_i_1_n_5\,
      Q => r_i_term_extended_reg(6),
      R => r_integral_component1_i_2_n_0
    );
\r_i_term_extended_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_calculate,
      D => \r_i_term_extended_reg[4]_i_1_n_4\,
      Q => r_i_term_extended_reg(7),
      R => r_integral_component1_i_2_n_0
    );
\r_i_term_extended_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_calculate,
      D => \r_i_term_extended_reg[8]_i_1_n_7\,
      Q => r_i_term_extended_reg(8),
      R => r_integral_component1_i_2_n_0
    );
\r_i_term_extended_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_i_term_extended_reg[4]_i_1_n_0\,
      CO(3) => \r_i_term_extended_reg[8]_i_1_n_0\,
      CO(2) => \r_i_term_extended_reg[8]_i_1_n_1\,
      CO(1) => \r_i_term_extended_reg[8]_i_1_n_2\,
      CO(0) => \r_i_term_extended_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \in\(11 downto 8),
      O(3) => \r_i_term_extended_reg[8]_i_1_n_4\,
      O(2) => \r_i_term_extended_reg[8]_i_1_n_5\,
      O(1) => \r_i_term_extended_reg[8]_i_1_n_6\,
      O(0) => \r_i_term_extended_reg[8]_i_1_n_7\,
      S(3) => \r_i_term_extended[8]_i_2_n_0\,
      S(2) => \r_i_term_extended[8]_i_3_n_0\,
      S(1) => \r_i_term_extended[8]_i_4_n_0\,
      S(0) => \r_i_term_extended[8]_i_5_n_0\
    );
\r_i_term_extended_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_calculate,
      D => \r_i_term_extended_reg[8]_i_1_n_6\,
      Q => r_i_term_extended_reg(9),
      R => r_integral_component1_i_2_n_0
    );
\r_i_term_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_calculate,
      D => r_i_term_extended_reg(0),
      Q => \^r_i_term_reg[23]_0\(0),
      R => r_integral_component1_i_2_n_0
    );
\r_i_term_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_calculate,
      D => r_i_term_extended_reg(10),
      Q => \^r_i_term_reg[23]_0\(10),
      R => r_integral_component1_i_2_n_0
    );
\r_i_term_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_calculate,
      D => r_i_term_extended_reg(11),
      Q => \^r_i_term_reg[23]_0\(11),
      R => r_integral_component1_i_2_n_0
    );
\r_i_term_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_calculate,
      D => r_i_term_extended_reg(12),
      Q => \^r_i_term_reg[23]_0\(12),
      R => r_integral_component1_i_2_n_0
    );
\r_i_term_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_calculate,
      D => r_i_term_extended_reg(13),
      Q => \^r_i_term_reg[23]_0\(13),
      R => r_integral_component1_i_2_n_0
    );
\r_i_term_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_calculate,
      D => r_i_term_extended_reg(14),
      Q => \^r_i_term_reg[23]_0\(14),
      R => r_integral_component1_i_2_n_0
    );
\r_i_term_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_calculate,
      D => r_i_term_extended_reg(15),
      Q => \^r_i_term_reg[23]_0\(15),
      R => r_integral_component1_i_2_n_0
    );
\r_i_term_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_calculate,
      D => r_i_term_extended_reg(16),
      Q => \^r_i_term_reg[23]_0\(16),
      R => r_integral_component1_i_2_n_0
    );
\r_i_term_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_calculate,
      D => r_i_term_extended_reg(17),
      Q => \^r_i_term_reg[23]_0\(17),
      R => r_integral_component1_i_2_n_0
    );
\r_i_term_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_calculate,
      D => r_i_term_extended_reg(18),
      Q => \^r_i_term_reg[23]_0\(18),
      R => r_integral_component1_i_2_n_0
    );
\r_i_term_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_calculate,
      D => r_i_term_extended_reg(19),
      Q => \^r_i_term_reg[23]_0\(19),
      R => r_integral_component1_i_2_n_0
    );
\r_i_term_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_calculate,
      D => r_i_term_extended_reg(1),
      Q => \^r_i_term_reg[23]_0\(1),
      R => r_integral_component1_i_2_n_0
    );
\r_i_term_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_calculate,
      D => r_i_term_extended_reg(20),
      Q => \^r_i_term_reg[23]_0\(20),
      R => r_integral_component1_i_2_n_0
    );
\r_i_term_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_calculate,
      D => r_i_term_extended_reg(21),
      Q => \^r_i_term_reg[23]_0\(21),
      R => r_integral_component1_i_2_n_0
    );
\r_i_term_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_calculate,
      D => r_i_term_extended_reg(22),
      Q => \^r_i_term_reg[23]_0\(22),
      R => r_integral_component1_i_2_n_0
    );
\r_i_term_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_calculate,
      D => r_i_term_extended_reg(23),
      Q => \^r_i_term_reg[23]_0\(23),
      R => r_integral_component1_i_2_n_0
    );
\r_i_term_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_calculate,
      D => r_i_term_extended_reg(2),
      Q => \^r_i_term_reg[23]_0\(2),
      R => r_integral_component1_i_2_n_0
    );
\r_i_term_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_calculate,
      D => r_i_term_extended_reg(3),
      Q => \^r_i_term_reg[23]_0\(3),
      R => r_integral_component1_i_2_n_0
    );
\r_i_term_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_calculate,
      D => r_i_term_extended_reg(4),
      Q => \^r_i_term_reg[23]_0\(4),
      R => r_integral_component1_i_2_n_0
    );
\r_i_term_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_calculate,
      D => r_i_term_extended_reg(5),
      Q => \^r_i_term_reg[23]_0\(5),
      R => r_integral_component1_i_2_n_0
    );
\r_i_term_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_calculate,
      D => r_i_term_extended_reg(6),
      Q => \^r_i_term_reg[23]_0\(6),
      R => r_integral_component1_i_2_n_0
    );
\r_i_term_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_calculate,
      D => r_i_term_extended_reg(7),
      Q => \^r_i_term_reg[23]_0\(7),
      R => r_integral_component1_i_2_n_0
    );
\r_i_term_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_calculate,
      D => r_i_term_extended_reg(8),
      Q => \^r_i_term_reg[23]_0\(8),
      R => r_integral_component1_i_2_n_0
    );
\r_i_term_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => w_calculate,
      D => r_i_term_extended_reg(9),
      Q => \^r_i_term_reg[23]_0\(9),
      R => r_integral_component1_i_2_n_0
    );
r_integral_component1: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => r_integral_component2_n_82,
      A(28) => r_integral_component2_n_82,
      A(27) => r_integral_component2_n_82,
      A(26) => r_integral_component2_n_82,
      A(25) => r_integral_component2_n_82,
      A(24) => r_integral_component2_n_82,
      A(23) => r_integral_component2_n_82,
      A(22) => r_integral_component2_n_83,
      A(21) => r_integral_component2_n_84,
      A(20) => r_integral_component2_n_85,
      A(19) => r_integral_component2_n_86,
      A(18) => r_integral_component2_n_87,
      A(17) => r_integral_component2_n_88,
      A(16) => r_integral_component2_n_89,
      A(15) => r_integral_component2_n_90,
      A(14) => r_integral_component2_n_91,
      A(13) => r_integral_component2_n_92,
      A(12) => r_integral_component2_n_93,
      A(11) => r_integral_component2_n_94,
      A(10) => r_integral_component2_n_95,
      A(9) => r_integral_component2_n_96,
      A(8) => r_integral_component2_n_97,
      A(7) => r_integral_component2_n_98,
      A(6) => r_integral_component2_n_99,
      A(5) => r_integral_component2_n_100,
      A(4) => r_integral_component2_n_101,
      A(3) => r_integral_component2_n_102,
      A(2) => r_integral_component2_n_103,
      A(1) => r_integral_component2_n_104,
      A(0) => r_integral_component2_n_105,
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_r_integral_component1_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"000000010000011001",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_r_integral_component1_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_r_integral_component1_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_r_integral_component1_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => w_calculate,
      CLK => s00_axi_aclk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_r_integral_component1_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_r_integral_component1_OVERFLOW_UNCONNECTED,
      P(47 downto 36) => NLW_r_integral_component1_P_UNCONNECTED(47 downto 36),
      P(35) => \in\(23),
      P(34 downto 20) => \in\(14 downto 0),
      P(19) => r_integral_component1_n_86,
      P(18) => r_integral_component1_n_87,
      P(17) => r_integral_component1_n_88,
      P(16) => r_integral_component1_n_89,
      P(15) => r_integral_component1_n_90,
      P(14) => r_integral_component1_n_91,
      P(13) => r_integral_component1_n_92,
      P(12) => r_integral_component1_n_93,
      P(11) => r_integral_component1_n_94,
      P(10) => r_integral_component1_n_95,
      P(9) => r_integral_component1_n_96,
      P(8) => r_integral_component1_n_97,
      P(7) => r_integral_component1_n_98,
      P(6) => r_integral_component1_n_99,
      P(5) => r_integral_component1_n_100,
      P(4) => r_integral_component1_n_101,
      P(3) => r_integral_component1_n_102,
      P(2) => r_integral_component1_n_103,
      P(1) => r_integral_component1_n_104,
      P(0) => r_integral_component1_n_105,
      PATTERNBDETECT => NLW_r_integral_component1_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_r_integral_component1_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_r_integral_component1_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => r_integral_component1_i_2_n_0,
      UNDERFLOW => NLW_r_integral_component1_UNDERFLOW_UNCONNECTED
    );
r_integral_component1_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => r_i_term_extended0_carry_n_1,
      I1 => s00_axi_aresetn,
      O => r_integral_component1_i_2_n_0
    );
r_integral_component2: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => \r_error0_carry__2_n_6\,
      A(28) => \r_error0_carry__2_n_6\,
      A(27) => \r_error0_carry__2_n_6\,
      A(26) => \r_error0_carry__2_n_6\,
      A(25) => \r_error0_carry__2_n_6\,
      A(24) => \r_error0_carry__2_n_6\,
      A(23) => \r_error0_carry__2_n_6\,
      A(22) => \r_error0_carry__2_n_6\,
      A(21) => \r_error0_carry__2_n_6\,
      A(20) => \r_error0_carry__2_n_6\,
      A(19) => \r_error0_carry__2_n_6\,
      A(18) => \r_error0_carry__2_n_6\,
      A(17) => \r_error0_carry__2_n_6\,
      A(16) => \r_error0_carry__2_n_6\,
      A(15) => \r_error0_carry__2_n_6\,
      A(14) => \r_error0_carry__2_n_6\,
      A(13) => \r_error0_carry__2_n_6\,
      A(12) => \r_error0_carry__2_n_7\,
      A(11) => \r_error0_carry__1_n_4\,
      A(10) => \r_error0_carry__1_n_5\,
      A(9) => \r_error0_carry__1_n_6\,
      A(8) => \r_error0_carry__1_n_7\,
      A(7) => \r_error0_carry__0_n_4\,
      A(6) => \r_error0_carry__0_n_5\,
      A(5) => \r_error0_carry__0_n_6\,
      A(4) => \r_error0_carry__0_n_7\,
      A(3) => r_error0_carry_n_4,
      A(2) => r_error0_carry_n_5,
      A(1) => r_error0_carry_n_6,
      A(0) => r_error0_carry_n_7,
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_r_integral_component2_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => Q(7),
      B(16) => Q(7),
      B(15) => Q(7),
      B(14) => Q(7),
      B(13) => Q(7),
      B(12) => Q(7),
      B(11) => Q(7),
      B(10) => Q(7),
      B(9) => Q(7),
      B(8) => Q(7),
      B(7 downto 0) => Q(7 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_r_integral_component2_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_r_integral_component2_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_r_integral_component2_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => s00_axi_aclk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_r_integral_component2_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_r_integral_component2_OVERFLOW_UNCONNECTED,
      P(47 downto 24) => NLW_r_integral_component2_P_UNCONNECTED(47 downto 24),
      P(23) => r_integral_component2_n_82,
      P(22) => r_integral_component2_n_83,
      P(21) => r_integral_component2_n_84,
      P(20) => r_integral_component2_n_85,
      P(19) => r_integral_component2_n_86,
      P(18) => r_integral_component2_n_87,
      P(17) => r_integral_component2_n_88,
      P(16) => r_integral_component2_n_89,
      P(15) => r_integral_component2_n_90,
      P(14) => r_integral_component2_n_91,
      P(13) => r_integral_component2_n_92,
      P(12) => r_integral_component2_n_93,
      P(11) => r_integral_component2_n_94,
      P(10) => r_integral_component2_n_95,
      P(9) => r_integral_component2_n_96,
      P(8) => r_integral_component2_n_97,
      P(7) => r_integral_component2_n_98,
      P(6) => r_integral_component2_n_99,
      P(5) => r_integral_component2_n_100,
      P(4) => r_integral_component2_n_101,
      P(3) => r_integral_component2_n_102,
      P(2) => r_integral_component2_n_103,
      P(1) => r_integral_component2_n_104,
      P(0) => r_integral_component2_n_105,
      PATTERNBDETECT => NLW_r_integral_component2_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_r_integral_component2_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_r_integral_component2_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => \r_i_gain[8]_i_1_n_0\,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => \r_i_gain[8]_i_1_n_0\,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_r_integral_component2_UNDERFLOW_UNCONNECTED
    );
r_p_term_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => \r_error0_carry__2_n_6\,
      A(28) => \r_error0_carry__2_n_6\,
      A(27) => \r_error0_carry__2_n_6\,
      A(26) => \r_error0_carry__2_n_6\,
      A(25) => \r_error0_carry__2_n_6\,
      A(24) => \r_error0_carry__2_n_6\,
      A(23) => \r_error0_carry__2_n_6\,
      A(22) => \r_error0_carry__2_n_6\,
      A(21) => \r_error0_carry__2_n_6\,
      A(20) => \r_error0_carry__2_n_6\,
      A(19) => \r_error0_carry__2_n_6\,
      A(18) => \r_error0_carry__2_n_6\,
      A(17) => \r_error0_carry__2_n_6\,
      A(16) => \r_error0_carry__2_n_6\,
      A(15) => \r_error0_carry__2_n_6\,
      A(14) => \r_error0_carry__2_n_6\,
      A(13) => \r_error0_carry__2_n_6\,
      A(12) => \r_error0_carry__2_n_7\,
      A(11) => \r_error0_carry__1_n_4\,
      A(10) => \r_error0_carry__1_n_5\,
      A(9) => \r_error0_carry__1_n_6\,
      A(8) => \r_error0_carry__1_n_7\,
      A(7) => \r_error0_carry__0_n_4\,
      A(6) => \r_error0_carry__0_n_5\,
      A(5) => \r_error0_carry__0_n_6\,
      A(4) => \r_error0_carry__0_n_7\,
      A(3) => r_error0_carry_n_4,
      A(2) => r_error0_carry_n_5,
      A(1) => r_error0_carry_n_6,
      A(0) => r_error0_carry_n_7,
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_r_p_term_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => r_p_term_reg_0(7),
      B(16) => r_p_term_reg_0(7),
      B(15) => r_p_term_reg_0(7),
      B(14) => r_p_term_reg_0(7),
      B(13) => r_p_term_reg_0(7),
      B(12) => r_p_term_reg_0(7),
      B(11) => r_p_term_reg_0(7),
      B(10) => r_p_term_reg_0(7),
      B(9) => r_p_term_reg_0(7),
      B(8) => r_p_term_reg_0(7),
      B(7 downto 0) => r_p_term_reg_0(7 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_r_p_term_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_r_p_term_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_r_p_term_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => w_calculate,
      CEP => w_calculate,
      CLK => s00_axi_aclk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_r_p_term_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_r_p_term_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 15) => NLW_r_p_term_reg_P_UNCONNECTED(47 downto 15),
      P(14 downto 0) => \^p\(14 downto 0),
      PATTERNBDETECT => NLW_r_p_term_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_r_p_term_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_r_p_term_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => \r_i_gain[8]_i_1_n_0\,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => \r_i_gain[8]_i_1_n_0\,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => \^s00_axi_aresetn_0\,
      RSTP => \^s00_axi_aresetn_0\,
      UNDERFLOW => NLW_r_p_term_reg_UNDERFLOW_UNCONNECTED
    );
\r_plant_output_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \r_plant_output_reg[0]_0\,
      Q => \r_plant_output_reg_n_0_[0]\,
      R => \^s00_axi_aresetn_0\
    );
\r_plant_output_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \r_plant_output_reg[10]_0\,
      Q => \r_plant_output_reg_n_0_[10]\,
      R => \^s00_axi_aresetn_0\
    );
\r_plant_output_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \r_plant_output_reg[11]_0\,
      Q => \r_plant_output_reg_n_0_[11]\,
      R => \^s00_axi_aresetn_0\
    );
\r_plant_output_reg[12]_inv\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \r_plant_output_reg[12]_inv_0\,
      Q => \r_plant_output_reg[12]_inv_n_0\,
      S => \^s00_axi_aresetn_0\
    );
\r_plant_output_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \r_plant_output_reg[1]_0\,
      Q => \r_plant_output_reg_n_0_[1]\,
      R => \^s00_axi_aresetn_0\
    );
\r_plant_output_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \r_plant_output_reg[2]_0\,
      Q => \r_plant_output_reg_n_0_[2]\,
      R => \^s00_axi_aresetn_0\
    );
\r_plant_output_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \r_plant_output_reg[3]_0\,
      Q => \r_plant_output_reg_n_0_[3]\,
      R => \^s00_axi_aresetn_0\
    );
\r_plant_output_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \r_plant_output_reg[4]_0\,
      Q => \r_plant_output_reg_n_0_[4]\,
      R => \^s00_axi_aresetn_0\
    );
\r_plant_output_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \r_plant_output_reg[5]_0\,
      Q => \r_plant_output_reg_n_0_[5]\,
      R => \^s00_axi_aresetn_0\
    );
\r_plant_output_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \r_plant_output_reg[6]_0\,
      Q => \r_plant_output_reg_n_0_[6]\,
      R => \^s00_axi_aresetn_0\
    );
\r_plant_output_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \r_plant_output_reg[7]_0\,
      Q => \r_plant_output_reg_n_0_[7]\,
      R => \^s00_axi_aresetn_0\
    );
\r_plant_output_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \r_plant_output_reg[8]_0\,
      Q => \r_plant_output_reg_n_0_[8]\,
      R => \^s00_axi_aresetn_0\
    );
\r_plant_output_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \r_plant_output_reg[9]_0\,
      Q => \r_plant_output_reg_n_0_[9]\,
      R => \^s00_axi_aresetn_0\
    );
\r_pwm0_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^w_control_input\(10),
      I1 => \out\(10),
      I2 => \out\(11),
      I3 => \^w_control_input\(11),
      O => \r_count_duty_reg[10]_0\(1)
    );
\r_pwm0_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^w_control_input\(8),
      I1 => \out\(8),
      I2 => \out\(9),
      I3 => \^w_control_input\(9),
      O => \r_count_duty_reg[10]_0\(0)
    );
\r_pwm0_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^w_control_input\(10),
      I1 => \out\(10),
      I2 => \^w_control_input\(11),
      I3 => \out\(11),
      O => \r_count_duty_reg[10]\(1)
    );
\r_pwm0_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^w_control_input\(8),
      I1 => \out\(8),
      I2 => \^w_control_input\(9),
      I3 => \out\(9),
      O => \r_count_duty_reg[10]\(0)
    );
\r_pwm0_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B88888B888"
    )
        port map (
      I0 => \axi_rdata[11]_i_3\(10),
      I1 => i_sw_bypass,
      I2 => i_sw_enable_control,
      I3 => \r_control_input_reg_n_0_[10]\,
      I4 => o_control_input3,
      I5 => o_control_input2,
      O => \^w_control_input\(10)
    );
\r_pwm0_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B88888B888"
    )
        port map (
      I0 => \axi_rdata[11]_i_3\(11),
      I1 => i_sw_bypass,
      I2 => i_sw_enable_control,
      I3 => \r_control_input_reg_n_0_[11]\,
      I4 => o_control_input3,
      I5 => o_control_input2,
      O => \^w_control_input\(11)
    );
\r_pwm0_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B88888B888"
    )
        port map (
      I0 => \axi_rdata[11]_i_3\(8),
      I1 => i_sw_bypass,
      I2 => i_sw_enable_control,
      I3 => \r_control_input_reg_n_0_[8]\,
      I4 => o_control_input3,
      I5 => o_control_input2,
      O => \^w_control_input\(8)
    );
\r_pwm0_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B88888B888"
    )
        port map (
      I0 => \axi_rdata[11]_i_3\(9),
      I1 => i_sw_bypass,
      I2 => i_sw_enable_control,
      I3 => \r_control_input_reg_n_0_[9]\,
      I4 => o_control_input3,
      I5 => o_control_input2,
      O => \^w_control_input\(9)
    );
r_pwm0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^w_control_input\(6),
      I1 => \out\(6),
      I2 => \out\(7),
      I3 => \^w_control_input\(7),
      O => DI(3)
    );
r_pwm0_carry_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B88888B888"
    )
        port map (
      I0 => \axi_rdata[11]_i_3\(7),
      I1 => i_sw_bypass,
      I2 => i_sw_enable_control,
      I3 => \r_control_input_reg_n_0_[7]\,
      I4 => o_control_input3,
      I5 => o_control_input2,
      O => \^w_control_input\(7)
    );
r_pwm0_carry_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B88888B888"
    )
        port map (
      I0 => \axi_rdata[11]_i_3\(4),
      I1 => i_sw_bypass,
      I2 => i_sw_enable_control,
      I3 => \r_control_input_reg_n_0_[4]\,
      I4 => o_control_input3,
      I5 => o_control_input2,
      O => \^w_control_input\(4)
    );
r_pwm0_carry_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B88888B888"
    )
        port map (
      I0 => \axi_rdata[11]_i_3\(5),
      I1 => i_sw_bypass,
      I2 => i_sw_enable_control,
      I3 => \r_control_input_reg_n_0_[5]\,
      I4 => o_control_input3,
      I5 => o_control_input2,
      O => \^w_control_input\(5)
    );
r_pwm0_carry_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B88888B888"
    )
        port map (
      I0 => \axi_rdata[11]_i_3\(2),
      I1 => i_sw_bypass,
      I2 => i_sw_enable_control,
      I3 => \r_control_input_reg_n_0_[2]\,
      I4 => o_control_input3,
      I5 => o_control_input2,
      O => \^w_control_input\(2)
    );
r_pwm0_carry_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B88888B888"
    )
        port map (
      I0 => \axi_rdata[11]_i_3\(3),
      I1 => i_sw_bypass,
      I2 => i_sw_enable_control,
      I3 => \r_control_input_reg_n_0_[3]\,
      I4 => o_control_input3,
      I5 => o_control_input2,
      O => \^w_control_input\(3)
    );
r_pwm0_carry_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B88888B888"
    )
        port map (
      I0 => \axi_rdata[11]_i_3\(0),
      I1 => i_sw_bypass,
      I2 => i_sw_enable_control,
      I3 => \r_control_input_reg_n_0_[0]\,
      I4 => o_control_input3,
      I5 => o_control_input2,
      O => \^w_control_input\(0)
    );
r_pwm0_carry_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B88888B888"
    )
        port map (
      I0 => \axi_rdata[11]_i_3\(1),
      I1 => i_sw_bypass,
      I2 => i_sw_enable_control,
      I3 => \r_control_input_reg_n_0_[1]\,
      I4 => o_control_input3,
      I5 => o_control_input2,
      O => \^w_control_input\(1)
    );
r_pwm0_carry_i_17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => r_pwm0_carry_i_18_n_0,
      I1 => r_pwm0_carry_i_19_n_0,
      I2 => \r_control_input_reg_n_0_[18]\,
      I3 => \r_control_input_reg_n_0_[17]\,
      I4 => \r_control_input_reg_n_0_[20]\,
      I5 => \r_control_input_reg_n_0_[19]\,
      O => o_control_input2
    );
r_pwm0_carry_i_18: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \r_control_input_reg_n_0_[12]\,
      I1 => \r_control_input_reg_n_0_[15]\,
      I2 => \r_control_input_reg_n_0_[16]\,
      I3 => \r_control_input_reg_n_0_[13]\,
      I4 => \r_control_input_reg_n_0_[14]\,
      O => r_pwm0_carry_i_18_n_0
    );
r_pwm0_carry_i_19: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \r_control_input_reg_n_0_[22]\,
      I1 => \r_control_input_reg_n_0_[21]\,
      I2 => \r_control_input_reg_n_0_[24]\,
      I3 => \r_control_input_reg_n_0_[23]\,
      O => r_pwm0_carry_i_19_n_0
    );
r_pwm0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^w_control_input\(4),
      I1 => \out\(4),
      I2 => \out\(5),
      I3 => \^w_control_input\(5),
      O => DI(2)
    );
r_pwm0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^w_control_input\(2),
      I1 => \out\(2),
      I2 => \out\(3),
      I3 => \^w_control_input\(3),
      O => DI(1)
    );
r_pwm0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^w_control_input\(0),
      I1 => \out\(0),
      I2 => \out\(1),
      I3 => \^w_control_input\(1),
      O => DI(0)
    );
r_pwm0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^w_control_input\(6),
      I1 => \out\(6),
      I2 => \^w_control_input\(7),
      I3 => \out\(7),
      O => S(3)
    );
r_pwm0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^w_control_input\(4),
      I1 => \out\(4),
      I2 => \^w_control_input\(5),
      I3 => \out\(5),
      O => S(2)
    );
r_pwm0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^w_control_input\(2),
      I1 => \out\(2),
      I2 => \^w_control_input\(3),
      I3 => \out\(3),
      O => S(1)
    );
r_pwm0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^w_control_input\(0),
      I1 => \out\(0),
      I2 => \^w_control_input\(1),
      I3 => \out\(1),
      O => S(0)
    );
r_pwm0_carry_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B88888B888"
    )
        port map (
      I0 => \axi_rdata[11]_i_3\(6),
      I1 => i_sw_bypass,
      I2 => i_sw_enable_control,
      I3 => \r_control_input_reg_n_0_[6]\,
      I4 => o_control_input3,
      I5 => o_control_input2,
      O => \^w_control_input\(6)
    );
\r_reference_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \r_reference_reg[0]_0\,
      Q => \r_reference_reg_n_0_[0]\,
      R => \^s00_axi_aresetn_0\
    );
\r_reference_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \r_reference_reg[10]_0\,
      Q => \r_reference_reg_n_0_[10]\,
      R => \^s00_axi_aresetn_0\
    );
\r_reference_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \r_reference_reg[11]_0\,
      Q => \r_reference_reg_n_0_[11]\,
      R => \^s00_axi_aresetn_0\
    );
\r_reference_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \r_reference_reg[1]_0\,
      Q => \r_reference_reg_n_0_[1]\,
      R => \^s00_axi_aresetn_0\
    );
\r_reference_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \r_reference_reg[2]_0\,
      Q => \r_reference_reg_n_0_[2]\,
      R => \^s00_axi_aresetn_0\
    );
\r_reference_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \r_reference_reg[3]_0\,
      Q => \r_reference_reg_n_0_[3]\,
      R => \^s00_axi_aresetn_0\
    );
\r_reference_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \r_reference_reg[4]_0\,
      Q => \r_reference_reg_n_0_[4]\,
      R => \^s00_axi_aresetn_0\
    );
\r_reference_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \r_reference_reg[5]_0\,
      Q => \r_reference_reg_n_0_[5]\,
      R => \^s00_axi_aresetn_0\
    );
\r_reference_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \r_reference_reg[6]_0\,
      Q => \r_reference_reg_n_0_[6]\,
      R => \^s00_axi_aresetn_0\
    );
\r_reference_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \r_reference_reg[7]_0\,
      Q => \r_reference_reg_n_0_[7]\,
      R => \^s00_axi_aresetn_0\
    );
\r_reference_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \r_reference_reg[8]_0\,
      Q => \r_reference_reg_n_0_[8]\,
      R => \^s00_axi_aresetn_0\
    );
\r_reference_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \r_reference_reg[9]_0\,
      Q => \r_reference_reg_n_0_[9]\,
      R => \^s00_axi_aresetn_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_2_myBLDC_Controller_0_0_BLDC_Controller is
  port (
    o_U_pos : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    o_U_neg : out STD_LOGIC;
    o_V_pos : out STD_LOGIC;
    o_V_neg : out STD_LOGIC;
    o_W_pos : out STD_LOGIC;
    o_W_neg : out STD_LOGIC;
    P : out STD_LOGIC_VECTOR ( 14 downto 0 );
    o_U_pwm : out STD_LOGIC;
    w_time_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \r_i_term_reg[23]\ : out STD_LOGIC_VECTOR ( 23 downto 0 );
    o_get_RPM : out STD_LOGIC;
    w_control_input : out STD_LOGIC_VECTOR ( 11 downto 0 );
    o_hall_one_hot_state : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \r_error_reg[13]\ : out STD_LOGIC_VECTOR ( 13 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    r_p_term_reg : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \r_time_count_reg[31]\ : in STD_LOGIC;
    i_sw_enable_control : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    i_hall_state : in STD_LOGIC_VECTOR ( 2 downto 0 );
    i_sw_rot_ccw : in STD_LOGIC;
    \axi_rdata[11]_i_3\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    i_sw_bypass : in STD_LOGIC;
    \r_RPM_reg[0]\ : in STD_LOGIC_VECTOR ( 13 downto 0 );
    r_get_RPM_i_3 : in STD_LOGIC;
    \r_reference_reg[11]\ : in STD_LOGIC;
    \r_reference_reg[10]\ : in STD_LOGIC;
    \r_reference_reg[9]\ : in STD_LOGIC;
    \r_reference_reg[8]\ : in STD_LOGIC;
    \r_reference_reg[7]\ : in STD_LOGIC;
    \r_reference_reg[6]\ : in STD_LOGIC;
    \r_reference_reg[5]\ : in STD_LOGIC;
    \r_reference_reg[4]\ : in STD_LOGIC;
    \r_reference_reg[3]\ : in STD_LOGIC;
    \r_reference_reg[2]\ : in STD_LOGIC;
    \r_reference_reg[1]\ : in STD_LOGIC;
    \r_reference_reg[0]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_2_myBLDC_Controller_0_0_BLDC_Controller : entity is "BLDC_Controller";
end design_2_myBLDC_Controller_0_0_BLDC_Controller;

architecture STRUCTURE of design_2_myBLDC_Controller_0_0_BLDC_Controller is
  signal DETERIMNE_DIRECTION_n_39 : STD_LOGIC;
  signal DETERIMNE_DIRECTION_n_40 : STD_LOGIC;
  signal DETERIMNE_DIRECTION_n_41 : STD_LOGIC;
  signal DETERIMNE_DIRECTION_n_42 : STD_LOGIC;
  signal DETERIMNE_DIRECTION_n_43 : STD_LOGIC;
  signal DETERIMNE_DIRECTION_n_44 : STD_LOGIC;
  signal DETERIMNE_DIRECTION_n_45 : STD_LOGIC;
  signal DETERIMNE_DIRECTION_n_46 : STD_LOGIC;
  signal DETERIMNE_DIRECTION_n_47 : STD_LOGIC;
  signal DETERIMNE_DIRECTION_n_48 : STD_LOGIC;
  signal DETERIMNE_DIRECTION_n_49 : STD_LOGIC;
  signal DETERIMNE_DIRECTION_n_50 : STD_LOGIC;
  signal DETERIMNE_DIRECTION_n_51 : STD_LOGIC;
  signal DETERMINE_DUTY_n_40 : STD_LOGIC;
  signal DETERMINE_DUTY_n_41 : STD_LOGIC;
  signal DETERMINE_DUTY_n_42 : STD_LOGIC;
  signal DETERMINE_DUTY_n_43 : STD_LOGIC;
  signal DETERMINE_DUTY_n_56 : STD_LOGIC;
  signal DETERMINE_DUTY_n_57 : STD_LOGIC;
  signal DETERMINE_DUTY_n_58 : STD_LOGIC;
  signal DETERMINE_DUTY_n_59 : STD_LOGIC;
  signal DETERMINE_DUTY_n_60 : STD_LOGIC;
  signal DETERMINE_DUTY_n_61 : STD_LOGIC;
  signal DETERMINE_DUTY_n_62 : STD_LOGIC;
  signal DETERMINE_DUTY_n_63 : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal r_count_duty_reg : STD_LOGIC_VECTOR ( 11 downto 0 );
begin
  SR(0) <= \^sr\(0);
DETERIMNE_DIRECTION: entity work.design_2_myBLDC_Controller_0_0_Hall_Sequencer
     port map (
      i_hall_state(2 downto 0) => i_hall_state(2 downto 0),
      i_sw_enable_control => i_sw_enable_control,
      i_sw_enable_control_0 => DETERIMNE_DIRECTION_n_39,
      i_sw_enable_control_1 => DETERIMNE_DIRECTION_n_40,
      i_sw_enable_control_10 => DETERIMNE_DIRECTION_n_49,
      i_sw_enable_control_11 => DETERIMNE_DIRECTION_n_50,
      i_sw_enable_control_12 => DETERIMNE_DIRECTION_n_51,
      i_sw_enable_control_2 => DETERIMNE_DIRECTION_n_41,
      i_sw_enable_control_3 => DETERIMNE_DIRECTION_n_42,
      i_sw_enable_control_4 => DETERIMNE_DIRECTION_n_43,
      i_sw_enable_control_5 => DETERIMNE_DIRECTION_n_44,
      i_sw_enable_control_6 => DETERIMNE_DIRECTION_n_45,
      i_sw_enable_control_7 => DETERIMNE_DIRECTION_n_46,
      i_sw_enable_control_8 => DETERIMNE_DIRECTION_n_47,
      i_sw_enable_control_9 => DETERIMNE_DIRECTION_n_48,
      i_sw_rot_ccw => i_sw_rot_ccw,
      o_U_neg => o_U_neg,
      o_U_pos => o_U_pos,
      o_V_neg => o_V_neg,
      o_V_pos => o_V_pos,
      o_W_neg => o_W_neg,
      o_W_pos => o_W_pos,
      o_get_RPM => o_get_RPM,
      o_hall_one_hot_state(5 downto 0) => o_hall_one_hot_state(5 downto 0),
      \r_RPM_reg[0]_0\(13 downto 0) => \r_RPM_reg[0]\(13 downto 0),
      r_get_RPM_i_3_0 => r_get_RPM_i_3,
      \r_hall_one_hot_state_reg[0]_0\ => \^sr\(0),
      \r_time_count_reg[31]_0\ => \r_time_count_reg[31]\,
      s00_axi_aclk => s00_axi_aclk,
      w_time_count(31 downto 0) => w_time_count(31 downto 0)
    );
DETERMINE_DUTY: entity work.design_2_myBLDC_Controller_0_0_PI_Controller
     port map (
      DI(3) => DETERMINE_DUTY_n_56,
      DI(2) => DETERMINE_DUTY_n_57,
      DI(1) => DETERMINE_DUTY_n_58,
      DI(0) => DETERMINE_DUTY_n_59,
      P(14 downto 0) => P(14 downto 0),
      Q(7 downto 0) => Q(7 downto 0),
      S(3) => DETERMINE_DUTY_n_40,
      S(2) => DETERMINE_DUTY_n_41,
      S(1) => DETERMINE_DUTY_n_42,
      S(0) => DETERMINE_DUTY_n_43,
      \axi_rdata[11]_i_3\(11 downto 0) => \axi_rdata[11]_i_3\(11 downto 0),
      i_sw_bypass => i_sw_bypass,
      i_sw_enable_control => i_sw_enable_control,
      \out\(11 downto 0) => r_count_duty_reg(11 downto 0),
      \r_count_duty_reg[10]\(1) => DETERMINE_DUTY_n_60,
      \r_count_duty_reg[10]\(0) => DETERMINE_DUTY_n_61,
      \r_count_duty_reg[10]_0\(1) => DETERMINE_DUTY_n_62,
      \r_count_duty_reg[10]_0\(0) => DETERMINE_DUTY_n_63,
      \r_error_reg[13]_0\(13 downto 0) => \r_error_reg[13]\(13 downto 0),
      \r_i_term_reg[23]_0\(23 downto 0) => \r_i_term_reg[23]\(23 downto 0),
      r_p_term_reg_0(7 downto 0) => r_p_term_reg(7 downto 0),
      \r_plant_output_reg[0]_0\ => DETERIMNE_DIRECTION_n_39,
      \r_plant_output_reg[10]_0\ => DETERIMNE_DIRECTION_n_49,
      \r_plant_output_reg[11]_0\ => DETERIMNE_DIRECTION_n_50,
      \r_plant_output_reg[12]_inv_0\ => DETERIMNE_DIRECTION_n_51,
      \r_plant_output_reg[1]_0\ => DETERIMNE_DIRECTION_n_40,
      \r_plant_output_reg[2]_0\ => DETERIMNE_DIRECTION_n_41,
      \r_plant_output_reg[3]_0\ => DETERIMNE_DIRECTION_n_42,
      \r_plant_output_reg[4]_0\ => DETERIMNE_DIRECTION_n_43,
      \r_plant_output_reg[5]_0\ => DETERIMNE_DIRECTION_n_44,
      \r_plant_output_reg[6]_0\ => DETERIMNE_DIRECTION_n_45,
      \r_plant_output_reg[7]_0\ => DETERIMNE_DIRECTION_n_46,
      \r_plant_output_reg[8]_0\ => DETERIMNE_DIRECTION_n_47,
      \r_plant_output_reg[9]_0\ => DETERIMNE_DIRECTION_n_48,
      \r_reference_reg[0]_0\ => \r_reference_reg[0]\,
      \r_reference_reg[10]_0\ => \r_reference_reg[10]\,
      \r_reference_reg[11]_0\ => \r_reference_reg[11]\,
      \r_reference_reg[1]_0\ => \r_reference_reg[1]\,
      \r_reference_reg[2]_0\ => \r_reference_reg[2]\,
      \r_reference_reg[3]_0\ => \r_reference_reg[3]\,
      \r_reference_reg[4]_0\ => \r_reference_reg[4]\,
      \r_reference_reg[5]_0\ => \r_reference_reg[5]\,
      \r_reference_reg[6]_0\ => \r_reference_reg[6]\,
      \r_reference_reg[7]_0\ => \r_reference_reg[7]\,
      \r_reference_reg[8]_0\ => \r_reference_reg[8]\,
      \r_reference_reg[9]_0\ => \r_reference_reg[9]\,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_aresetn_0 => \^sr\(0),
      w_control_input(11 downto 0) => w_control_input(11 downto 0)
    );
PWM_U_PHASE: entity work.design_2_myBLDC_Controller_0_0_PWM
     port map (
      DI(3) => DETERMINE_DUTY_n_56,
      DI(2) => DETERMINE_DUTY_n_57,
      DI(1) => DETERMINE_DUTY_n_58,
      DI(0) => DETERMINE_DUTY_n_59,
      S(3) => DETERMINE_DUTY_n_40,
      S(2) => DETERMINE_DUTY_n_41,
      S(1) => DETERMINE_DUTY_n_42,
      S(0) => DETERMINE_DUTY_n_43,
      o_U_pwm => o_U_pwm,
      \out\(11 downto 0) => r_count_duty_reg(11 downto 0),
      r_cp_reg => \^sr\(0),
      r_pwm_reg_0(1) => DETERMINE_DUTY_n_62,
      r_pwm_reg_0(0) => DETERMINE_DUTY_n_63,
      r_pwm_reg_1(1) => DETERMINE_DUTY_n_60,
      r_pwm_reg_1(0) => DETERMINE_DUTY_n_61,
      s00_axi_aclk => s00_axi_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_2_myBLDC_Controller_0_0_myBLDC_Controller_v1_0 is
  port (
    axi_awready_reg : out STD_LOGIC;
    s00_axi_aresetn_0 : out STD_LOGIC;
    axi_wready_reg : out STD_LOGIC;
    axi_arready_reg : out STD_LOGIC;
    o_U_pos : out STD_LOGIC;
    o_U_neg : out STD_LOGIC;
    o_V_pos : out STD_LOGIC;
    o_V_neg : out STD_LOGIC;
    o_W_pos : out STD_LOGIC;
    o_W_neg : out STD_LOGIC;
    o_U_pwm : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    o_get_RPM : out STD_LOGIC;
    o_fnd_sel : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_fnd : out STD_LOGIC_VECTOR ( 6 downto 0 );
    o_hall_one_hot_state : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    i_vaux6p : in STD_LOGIC;
    i_vaux6n : in STD_LOGIC;
    i_btn_u : in STD_LOGIC;
    i_btn_d : in STD_LOGIC;
    i_btn_r : in STD_LOGIC;
    i_btn_l : in STD_LOGIC;
    i_sw_enable_control : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    i_hall_state : in STD_LOGIC_VECTOR ( 2 downto 0 );
    i_sw_rot_ccw : in STD_LOGIC;
    i_sw_display_gain : in STD_LOGIC;
    i_sw_bypass : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    r_get_RPM_i_3 : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_2_myBLDC_Controller_0_0_myBLDC_Controller_v1_0 : entity is "myBLDC_Controller_v1_0";
end design_2_myBLDC_Controller_0_0_myBLDC_Controller_v1_0;

architecture STRUCTURE of design_2_myBLDC_Controller_0_0_myBLDC_Controller_v1_0 is
  signal \BTN_DEC_CTRL/r_delay_counter_posedge\ : STD_LOGIC;
  signal BTN_I_GAIN_n_13 : STD_LOGIC;
  signal BTN_I_GAIN_n_14 : STD_LOGIC;
  signal BTN_I_GAIN_n_15 : STD_LOGIC;
  signal BTN_I_GAIN_n_16 : STD_LOGIC;
  signal BTN_I_GAIN_n_17 : STD_LOGIC;
  signal BTN_I_GAIN_n_18 : STD_LOGIC;
  signal BTN_I_GAIN_n_19 : STD_LOGIC;
  signal BTN_I_GAIN_n_20 : STD_LOGIC;
  signal BTN_I_GAIN_n_21 : STD_LOGIC;
  signal BTN_I_GAIN_n_22 : STD_LOGIC;
  signal BTN_I_GAIN_n_23 : STD_LOGIC;
  signal BTN_I_GAIN_n_24 : STD_LOGIC;
  signal BTN_I_GAIN_n_3 : STD_LOGIC;
  signal BTN_I_GAIN_n_9 : STD_LOGIC;
  signal BTN_P_GAIN_n_10 : STD_LOGIC;
  signal BTN_P_GAIN_n_11 : STD_LOGIC;
  signal BTN_P_GAIN_n_12 : STD_LOGIC;
  signal BTN_P_GAIN_n_13 : STD_LOGIC;
  signal BTN_P_GAIN_n_16 : STD_LOGIC;
  signal BTN_P_GAIN_n_17 : STD_LOGIC;
  signal BTN_P_GAIN_n_18 : STD_LOGIC;
  signal BTN_P_GAIN_n_19 : STD_LOGIC;
  signal BTN_P_GAIN_n_20 : STD_LOGIC;
  signal BTN_P_GAIN_n_21 : STD_LOGIC;
  signal BTN_P_GAIN_n_22 : STD_LOGIC;
  signal BTN_P_GAIN_n_23 : STD_LOGIC;
  signal BTN_P_GAIN_n_4 : STD_LOGIC;
  signal POT_n_19 : STD_LOGIC;
  signal POT_n_20 : STD_LOGIC;
  signal POT_n_21 : STD_LOGIC;
  signal POT_n_22 : STD_LOGIC;
  signal POT_n_23 : STD_LOGIC;
  signal POT_n_24 : STD_LOGIC;
  signal POT_n_25 : STD_LOGIC;
  signal POT_n_26 : STD_LOGIC;
  signal POT_n_27 : STD_LOGIC;
  signal POT_n_28 : STD_LOGIC;
  signal POT_n_29 : STD_LOGIC;
  signal POT_n_30 : STD_LOGIC;
  signal POT_n_6 : STD_LOGIC;
  signal myBLDC_Controller_v1_0_S00_AXI_inst_n_19 : STD_LOGIC;
  signal \^o_fnd_sel\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \p_0_out__18_carry__0_n_2\ : STD_LOGIC;
  signal \p_0_out__18_carry__0_n_3\ : STD_LOGIC;
  signal \p_0_out__18_carry__0_n_5\ : STD_LOGIC;
  signal \p_0_out__18_carry__0_n_6\ : STD_LOGIC;
  signal \p_0_out__18_carry__0_n_7\ : STD_LOGIC;
  signal \p_0_out__18_carry_n_0\ : STD_LOGIC;
  signal \p_0_out__18_carry_n_1\ : STD_LOGIC;
  signal \p_0_out__18_carry_n_2\ : STD_LOGIC;
  signal \p_0_out__18_carry_n_3\ : STD_LOGIC;
  signal \p_0_out__18_carry_n_4\ : STD_LOGIC;
  signal \p_0_out__18_carry_n_5\ : STD_LOGIC;
  signal \p_0_out__18_carry_n_6\ : STD_LOGIC;
  signal \p_0_out__18_carry_n_7\ : STD_LOGIC;
  signal \p_0_out_carry__0_n_2\ : STD_LOGIC;
  signal \p_0_out_carry__0_n_3\ : STD_LOGIC;
  signal \p_0_out_carry__0_n_5\ : STD_LOGIC;
  signal \p_0_out_carry__0_n_6\ : STD_LOGIC;
  signal \p_0_out_carry__0_n_7\ : STD_LOGIC;
  signal p_0_out_carry_n_0 : STD_LOGIC;
  signal p_0_out_carry_n_1 : STD_LOGIC;
  signal p_0_out_carry_n_2 : STD_LOGIC;
  signal p_0_out_carry_n_3 : STD_LOGIC;
  signal p_0_out_carry_n_4 : STD_LOGIC;
  signal p_0_out_carry_n_5 : STD_LOGIC;
  signal p_0_out_carry_n_6 : STD_LOGIC;
  signal p_0_out_carry_n_7 : STD_LOGIC;
  signal r_hex_value : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^s00_axi_aresetn_0\ : STD_LOGIC;
  signal w_ADC : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal w_ADC_bcd : STD_LOGIC_VECTOR ( 3 to 3 );
  signal w_RPM : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal w_control_input : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal w_error : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \w_fnd_value__46\ : STD_LOGIC_VECTOR ( 11 downto 7 );
  signal w_i_gain : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal w_i_gain_bcd : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal w_i_term : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal w_p_gain : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal w_p_gain_bcd : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal w_p_term : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal w_time_count : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal w_valid : STD_LOGIC;
  signal \NLW_p_0_out__18_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_p_0_out__18_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_p_0_out_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_p_0_out_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \p_0_out__18_carry\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \p_0_out__18_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of p_0_out_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \p_0_out_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
begin
  o_fnd_sel(3 downto 0) <= \^o_fnd_sel\(3 downto 0);
  s00_axi_aresetn_0 <= \^s00_axi_aresetn_0\;
BLDC_MOTOR_DRIVER: entity work.design_2_myBLDC_Controller_0_0_BLDC_Controller
     port map (
      P(14 downto 0) => w_p_term(14 downto 0),
      Q(7 downto 0) => w_i_gain(7 downto 0),
      SR(0) => \^s00_axi_aresetn_0\,
      \axi_rdata[11]_i_3\(11 downto 0) => w_ADC(11 downto 0),
      i_hall_state(2 downto 0) => i_hall_state(2 downto 0),
      i_sw_bypass => i_sw_bypass,
      i_sw_enable_control => i_sw_enable_control,
      i_sw_rot_ccw => i_sw_rot_ccw,
      o_U_neg => o_U_neg,
      o_U_pos => o_U_pos,
      o_U_pwm => o_U_pwm,
      o_V_neg => o_V_neg,
      o_V_pos => o_V_pos,
      o_W_neg => o_W_neg,
      o_W_pos => o_W_pos,
      o_get_RPM => o_get_RPM,
      o_hall_one_hot_state(5 downto 0) => o_hall_one_hot_state(5 downto 0),
      \r_RPM_reg[0]\(13) => w_valid,
      \r_RPM_reg[0]\(12 downto 0) => w_RPM(12 downto 0),
      \r_error_reg[13]\(13 downto 0) => w_error(13 downto 0),
      r_get_RPM_i_3 => r_get_RPM_i_3,
      \r_i_term_reg[23]\(23 downto 0) => w_i_term(23 downto 0),
      r_p_term_reg(7 downto 0) => w_p_gain(7 downto 0),
      \r_reference_reg[0]\ => POT_n_6,
      \r_reference_reg[10]\ => POT_n_28,
      \r_reference_reg[11]\ => POT_n_29,
      \r_reference_reg[1]\ => POT_n_19,
      \r_reference_reg[2]\ => POT_n_20,
      \r_reference_reg[3]\ => POT_n_21,
      \r_reference_reg[4]\ => POT_n_22,
      \r_reference_reg[5]\ => POT_n_23,
      \r_reference_reg[6]\ => POT_n_24,
      \r_reference_reg[7]\ => POT_n_25,
      \r_reference_reg[8]\ => POT_n_26,
      \r_reference_reg[9]\ => POT_n_27,
      \r_time_count_reg[31]\ => myBLDC_Controller_v1_0_S00_AXI_inst_n_19,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      w_control_input(11 downto 0) => w_control_input(11 downto 0),
      w_time_count(31 downto 0) => w_time_count(31 downto 0)
    );
BTN_I_GAIN: entity work.design_2_myBLDC_Controller_0_0_Button2Gain
     port map (
      D(6) => \p_0_out__18_carry__0_n_5\,
      D(5) => \p_0_out__18_carry__0_n_6\,
      D(4) => \p_0_out__18_carry__0_n_7\,
      D(3) => \p_0_out__18_carry_n_4\,
      D(2) => \p_0_out__18_carry_n_5\,
      D(1) => \p_0_out__18_carry_n_6\,
      D(0) => \p_0_out__18_carry_n_7\,
      DI(3 downto 1) => w_i_gain(3 downto 1),
      DI(0) => BTN_I_GAIN_n_3,
      Q(4 downto 1) => w_i_gain(7 downto 4),
      Q(0) => w_i_gain(0),
      S(3) => BTN_I_GAIN_n_17,
      S(2) => BTN_I_GAIN_n_18,
      S(1) => BTN_I_GAIN_n_19,
      S(0) => BTN_I_GAIN_n_20,
      SR(0) => \^s00_axi_aresetn_0\,
      i_btn_l => i_btn_l,
      i_btn_r => i_btn_r,
      i_sw_display_gain => i_sw_display_gain,
      i_sw_display_gain_0 => BTN_I_GAIN_n_21,
      r_delay_counter_posedge => \BTN_DEC_CTRL/r_delay_counter_posedge\,
      \r_gain_reg[0]_0\ => BTN_I_GAIN_n_9,
      \r_gain_reg[1]_0\ => BTN_I_GAIN_n_13,
      \r_gain_reg[1]_1\ => BTN_I_GAIN_n_14,
      \r_gain_reg[1]_2\ => BTN_I_GAIN_n_16,
      \r_gain_reg[2]_0\(2 downto 0) => w_i_gain_bcd(7 downto 5),
      \r_gain_reg[2]_1\ => BTN_I_GAIN_n_15,
      \r_gain_reg[6]_0\(2) => BTN_I_GAIN_n_22,
      \r_gain_reg[6]_0\(1) => BTN_I_GAIN_n_23,
      \r_gain_reg[6]_0\(0) => BTN_I_GAIN_n_24,
      \r_hex_value[1]_i_3\(1 downto 0) => w_p_gain(1 downto 0),
      \r_hex_value[1]_i_3_0\ => BTN_P_GAIN_n_11,
      \r_hex_value_reg[3]\(0) => \^o_fnd_sel\(0),
      s00_axi_aclk => s00_axi_aclk,
      w_ADC_bcd(0) => w_ADC_bcd(3)
    );
BTN_P_GAIN: entity work.design_2_myBLDC_Controller_0_0_Button2Gain_0
     port map (
      D(6) => \p_0_out_carry__0_n_5\,
      D(5) => \p_0_out_carry__0_n_6\,
      D(4) => \p_0_out_carry__0_n_7\,
      D(3) => p_0_out_carry_n_4,
      D(2) => p_0_out_carry_n_5,
      D(1) => p_0_out_carry_n_6,
      D(0) => p_0_out_carry_n_7,
      DI(3 downto 1) => w_p_gain(3 downto 1),
      DI(0) => BTN_P_GAIN_n_4,
      Q(4 downto 1) => w_p_gain(7 downto 4),
      Q(0) => w_p_gain(0),
      S(3) => BTN_P_GAIN_n_16,
      S(2) => BTN_P_GAIN_n_17,
      S(1) => BTN_P_GAIN_n_18,
      S(0) => BTN_P_GAIN_n_19,
      SR(0) => \^s00_axi_aresetn_0\,
      i_btn_d => i_btn_d,
      i_btn_u => i_btn_u,
      i_sw_display_gain => i_sw_display_gain,
      i_sw_display_gain_0 => BTN_P_GAIN_n_20,
      r_delay_counter_posedge => \BTN_DEC_CTRL/r_delay_counter_posedge\,
      \r_gain_reg[1]_0\ => BTN_P_GAIN_n_10,
      \r_gain_reg[1]_1\ => BTN_P_GAIN_n_12,
      \r_gain_reg[1]_2\ => BTN_P_GAIN_n_13,
      \r_gain_reg[2]_0\ => BTN_P_GAIN_n_11,
      \r_gain_reg[6]_0\(2) => BTN_P_GAIN_n_21,
      \r_gain_reg[6]_0\(1) => BTN_P_GAIN_n_22,
      \r_gain_reg[6]_0\(0) => BTN_P_GAIN_n_23,
      \r_hex_value_reg[1]\ => POT_n_30,
      \r_hex_value_reg[1]_0\(0) => \^o_fnd_sel\(3),
      s00_axi_aclk => s00_axi_aclk,
      w_p_gain_bcd(1 downto 0) => w_p_gain_bcd(7 downto 6)
    );
FND_CTRL: entity work.design_2_myBLDC_Controller_0_0_fndControl
     port map (
      D(2 downto 0) => r_hex_value(2 downto 0),
      Q(3 downto 0) => \^o_fnd_sel\(3 downto 0),
      SR(0) => \^s00_axi_aresetn_0\,
      i_sw_display_gain => i_sw_display_gain,
      o_fnd(6 downto 0) => o_fnd(6 downto 0),
      \r_hex_value_reg[3]_0\ => BTN_I_GAIN_n_21,
      s00_axi_aclk => s00_axi_aclk,
      \w_fnd_value__46\(1) => \w_fnd_value__46\(11),
      \w_fnd_value__46\(0) => \w_fnd_value__46\(7),
      w_p_gain_bcd(0) => w_p_gain_bcd(7)
    );
POT: entity work.design_2_myBLDC_Controller_0_0_potentiometer
     port map (
      D(2 downto 0) => r_hex_value(2 downto 0),
      Q(3 downto 0) => \^o_fnd_sel\(3 downto 0),
      SR(0) => \^s00_axi_aresetn_0\,
      i_sw_display_gain => i_sw_display_gain,
      i_sw_display_gain_0(1) => \w_fnd_value__46\(11),
      i_sw_display_gain_0(0) => \w_fnd_value__46\(7),
      i_sw_enable_control => i_sw_enable_control,
      i_sw_enable_control_0 => POT_n_6,
      i_sw_enable_control_1 => POT_n_19,
      i_sw_enable_control_10 => POT_n_28,
      i_sw_enable_control_11 => POT_n_29,
      i_sw_enable_control_2 => POT_n_20,
      i_sw_enable_control_3 => POT_n_21,
      i_sw_enable_control_4 => POT_n_22,
      i_sw_enable_control_5 => POT_n_23,
      i_sw_enable_control_6 => POT_n_24,
      i_sw_enable_control_7 => POT_n_25,
      i_sw_enable_control_8 => POT_n_26,
      i_sw_enable_control_9 => POT_n_27,
      i_vaux6n => i_vaux6n,
      i_vaux6p => i_vaux6p,
      \r_hex_value_reg[0]\ => BTN_P_GAIN_n_13,
      \r_hex_value_reg[0]_0\ => BTN_I_GAIN_n_16,
      \r_hex_value_reg[0]_1\ => BTN_I_GAIN_n_9,
      \r_hex_value_reg[1]\ => BTN_P_GAIN_n_20,
      \r_hex_value_reg[1]_0\ => BTN_I_GAIN_n_13,
      \r_hex_value_reg[1]_1\(1 downto 0) => w_i_gain(1 downto 0),
      \r_hex_value_reg[1]_2\ => BTN_I_GAIN_n_15,
      \r_hex_value_reg[2]\ => BTN_P_GAIN_n_10,
      \r_hex_value_reg[2]_0\ => BTN_I_GAIN_n_14,
      \r_hex_value_reg[3]\(2 downto 0) => w_i_gain_bcd(7 downto 5),
      \r_hex_value_reg[3]_0\ => BTN_P_GAIN_n_12,
      \r_value_reg[11]_0\(11 downto 0) => w_ADC(11 downto 0),
      \r_value_reg[2]_0\(0) => w_ADC_bcd(3),
      \r_value_reg[5]_0\ => POT_n_30,
      s00_axi_aclk => s00_axi_aclk,
      w_p_gain_bcd(0) => w_p_gain_bcd(6)
    );
myBLDC_Controller_v1_0_S00_AXI_inst: entity work.design_2_myBLDC_Controller_0_0_myBLDC_Controller_v1_0_S00_AXI
     port map (
      P(14 downto 0) => w_p_term(14 downto 0),
      Q(13) => w_valid,
      Q(12 downto 0) => w_RPM(12 downto 0),
      SR(0) => \^s00_axi_aresetn_0\,
      axi_arready_reg_0 => axi_arready_reg,
      axi_awready_reg_0 => axi_awready_reg,
      \axi_rdata_reg[11]_0\(11 downto 0) => w_ADC(11 downto 0),
      \axi_rdata_reg[13]_0\(13 downto 0) => w_error(13 downto 0),
      \axi_rdata_reg[23]_0\(23 downto 0) => w_i_term(23 downto 0),
      axi_wready_reg_0 => axi_wready_reg,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(2 downto 0) => s00_axi_araddr(2 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(2 downto 0) => s00_axi_awaddr(2 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      \slv_reg0_reg[31]_0\ => myBLDC_Controller_v1_0_S00_AXI_inst_n_19,
      w_control_input(11 downto 0) => w_control_input(11 downto 0),
      w_time_count(31 downto 0) => w_time_count(31 downto 0)
    );
\p_0_out__18_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \p_0_out__18_carry_n_0\,
      CO(2) => \p_0_out__18_carry_n_1\,
      CO(1) => \p_0_out__18_carry_n_2\,
      CO(0) => \p_0_out__18_carry_n_3\,
      CYINIT => w_i_gain(0),
      DI(3 downto 1) => w_i_gain(3 downto 1),
      DI(0) => BTN_I_GAIN_n_3,
      O(3) => \p_0_out__18_carry_n_4\,
      O(2) => \p_0_out__18_carry_n_5\,
      O(1) => \p_0_out__18_carry_n_6\,
      O(0) => \p_0_out__18_carry_n_7\,
      S(3) => BTN_I_GAIN_n_17,
      S(2) => BTN_I_GAIN_n_18,
      S(1) => BTN_I_GAIN_n_19,
      S(0) => BTN_I_GAIN_n_20
    );
\p_0_out__18_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \p_0_out__18_carry_n_0\,
      CO(3 downto 2) => \NLW_p_0_out__18_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \p_0_out__18_carry__0_n_2\,
      CO(0) => \p_0_out__18_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => w_i_gain(5 downto 4),
      O(3) => \NLW_p_0_out__18_carry__0_O_UNCONNECTED\(3),
      O(2) => \p_0_out__18_carry__0_n_5\,
      O(1) => \p_0_out__18_carry__0_n_6\,
      O(0) => \p_0_out__18_carry__0_n_7\,
      S(3) => '0',
      S(2) => BTN_I_GAIN_n_22,
      S(1) => BTN_I_GAIN_n_23,
      S(0) => BTN_I_GAIN_n_24
    );
p_0_out_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => p_0_out_carry_n_0,
      CO(2) => p_0_out_carry_n_1,
      CO(1) => p_0_out_carry_n_2,
      CO(0) => p_0_out_carry_n_3,
      CYINIT => w_p_gain(0),
      DI(3 downto 1) => w_p_gain(3 downto 1),
      DI(0) => BTN_P_GAIN_n_4,
      O(3) => p_0_out_carry_n_4,
      O(2) => p_0_out_carry_n_5,
      O(1) => p_0_out_carry_n_6,
      O(0) => p_0_out_carry_n_7,
      S(3) => BTN_P_GAIN_n_16,
      S(2) => BTN_P_GAIN_n_17,
      S(1) => BTN_P_GAIN_n_18,
      S(0) => BTN_P_GAIN_n_19
    );
\p_0_out_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => p_0_out_carry_n_0,
      CO(3 downto 2) => \NLW_p_0_out_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \p_0_out_carry__0_n_2\,
      CO(0) => \p_0_out_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => w_p_gain(5 downto 4),
      O(3) => \NLW_p_0_out_carry__0_O_UNCONNECTED\(3),
      O(2) => \p_0_out_carry__0_n_5\,
      O(1) => \p_0_out_carry__0_n_6\,
      O(0) => \p_0_out_carry__0_n_7\,
      S(3) => '0',
      S(2) => BTN_P_GAIN_n_21,
      S(1) => BTN_P_GAIN_n_22,
      S(0) => BTN_P_GAIN_n_23
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_2_myBLDC_Controller_0_0 is
  port (
    i_vaux6p : in STD_LOGIC;
    i_vaux6n : in STD_LOGIC;
    i_sw_enable_control : in STD_LOGIC;
    i_sw_rot_ccw : in STD_LOGIC;
    i_sw_display_gain : in STD_LOGIC;
    i_sw_bypass : in STD_LOGIC;
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_2_myBLDC_Controller_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_2_myBLDC_Controller_0_0 : entity is "design_2_myBLDC_Controller_0_0,myBLDC_Controller_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_2_myBLDC_Controller_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_2_myBLDC_Controller_0_0 : entity is "myBLDC_Controller_v1_0,Vivado 2019.2";
end design_2_myBLDC_Controller_0_0;

architecture STRUCTURE of design_2_myBLDC_Controller_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^i_sw_enable_control\ : STD_LOGIC;
  signal inst_n_1 : STD_LOGIC;
  signal \^o_u_pwm\ : STD_LOGIC;
  signal \^o_fnd\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal r_get_RPM_i_8_n_0 : STD_LOGIC;
  signal r_get_RPM_reg_i_7_n_0 : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute X_INTERFACE_PARAMETER of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute X_INTERFACE_INFO of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute X_INTERFACE_INFO of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute X_INTERFACE_INFO of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute X_INTERFACE_INFO of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute X_INTERFACE_INFO of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute X_INTERFACE_INFO of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s00_axi_rready : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 8, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute X_INTERFACE_INFO of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute X_INTERFACE_INFO of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute X_INTERFACE_INFO of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute X_INTERFACE_INFO of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute X_INTERFACE_INFO of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute X_INTERFACE_INFO of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute X_INTERFACE_INFO of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute X_INTERFACE_INFO of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute X_INTERFACE_INFO of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute X_INTERFACE_INFO of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute X_INTERFACE_INFO of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
begin
  \^i_sw_enable_control\ <= i_sw_enable_control;
  o_U_pwm <= \^o_u_pwm\;
  o_V_pwm <= \^o_u_pwm\;
  o_W_pwm <= \^o_u_pwm\;
  o_fnd(7 downto 1) <= \^o_fnd\(7 downto 1);
  o_fnd(0) <= \<const1>\;
  o_led_enable_control <= \^i_sw_enable_control\;
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.design_2_myBLDC_Controller_0_0_myBLDC_Controller_v1_0
     port map (
      axi_arready_reg => s00_axi_arready,
      axi_awready_reg => s00_axi_awready,
      axi_wready_reg => s00_axi_wready,
      i_btn_d => i_btn_d,
      i_btn_l => i_btn_l,
      i_btn_r => i_btn_r,
      i_btn_u => i_btn_u,
      i_hall_state(2 downto 0) => i_hall_state(2 downto 0),
      i_sw_bypass => i_sw_bypass,
      i_sw_display_gain => i_sw_display_gain,
      i_sw_enable_control => \^i_sw_enable_control\,
      i_sw_rot_ccw => i_sw_rot_ccw,
      i_vaux6n => i_vaux6n,
      i_vaux6p => i_vaux6p,
      o_U_neg => o_U_neg,
      o_U_pos => o_U_pos,
      o_U_pwm => \^o_u_pwm\,
      o_V_neg => o_V_neg,
      o_V_pos => o_V_pos,
      o_W_neg => o_W_neg,
      o_W_pos => o_W_pos,
      o_fnd(6 downto 0) => \^o_fnd\(7 downto 1),
      o_fnd_sel(3 downto 0) => o_fnd_sel(3 downto 0),
      o_get_RPM => o_get_RPM,
      o_hall_one_hot_state(5 downto 0) => o_hall_one_hot_state(5 downto 0),
      r_get_RPM_i_3 => r_get_RPM_reg_i_7_n_0,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(2 downto 0) => s00_axi_araddr(4 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_aresetn_0 => inst_n_1,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(2 downto 0) => s00_axi_awaddr(4 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
r_get_RPM_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7E"
    )
        port map (
      I0 => i_hall_state(2),
      I1 => i_hall_state(0),
      I2 => i_hall_state(1),
      O => r_get_RPM_i_8_n_0
    );
r_get_RPM_reg_i_7: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => r_get_RPM_i_8_n_0,
      Q => r_get_RPM_reg_i_7_n_0,
      S => inst_n_1
    );
end STRUCTURE;
