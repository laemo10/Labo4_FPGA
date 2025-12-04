-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Thu Dec  4 11:07:05 2025
-- Host        : pcetu-129 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/laemo10/Desktop/Labo4_FPGA/ZYBO_HDMI_MGA_2018_2/project_1/project_1.srcs/sources_1/bd/HDMI_bd/ip/HDMI_bd_position_counter_0_0/HDMI_bd_position_counter_0_0_sim_netlist.vhdl
-- Design      : HDMI_bd_position_counter_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity HDMI_bd_position_counter_0_0_position_counter is
  port (
    vde_out : out STD_LOGIC;
    hsync_out : out STD_LOGIC;
    vsync_out : out STD_LOGIC;
    h_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    v_count : out STD_LOGIC_VECTOR ( 9 downto 0 );
    rgb_out : out STD_LOGIC_VECTOR ( 23 downto 0 );
    rst : in STD_LOGIC;
    vde_in : in STD_LOGIC;
    clk : in STD_LOGIC;
    hsync_in : in STD_LOGIC;
    vsync_in : in STD_LOGIC;
    rgb_in : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of HDMI_bd_position_counter_0_0_position_counter : entity is "position_counter";
end HDMI_bd_position_counter_0_0_position_counter;

architecture STRUCTURE of HDMI_bd_position_counter_0_0_position_counter is
  signal h_count_u : STD_LOGIC;
  signal \h_count_u[10]_i_1_n_0\ : STD_LOGIC;
  signal \h_count_u[10]_i_4_n_0\ : STD_LOGIC;
  signal \h_count_u[10]_i_5_n_0\ : STD_LOGIC;
  signal \h_count_u[4]_i_1_n_0\ : STD_LOGIC;
  signal h_count_u_reg : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \v_count_u[7]_i_1_n_0\ : STD_LOGIC;
  signal \v_count_u[9]_i_1_n_0\ : STD_LOGIC;
  signal \v_count_u[9]_i_2_n_0\ : STD_LOGIC;
  signal \v_count_u[9]_i_4_n_0\ : STD_LOGIC;
  signal \v_count_u[9]_i_5_n_0\ : STD_LOGIC;
  signal \v_count_u[9]_i_6_n_0\ : STD_LOGIC;
  signal \v_count_u[9]_i_7_n_0\ : STD_LOGIC;
  signal v_count_u_reg : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal v_started_i_1_n_0 : STD_LOGIC;
  signal v_started_reg_n_0 : STD_LOGIC;
  signal \^vde_out\ : STD_LOGIC;
  signal \^vsync_out\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \h_count_u[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \h_count_u[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \h_count_u[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \h_count_u[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \h_count_u[6]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \h_count_u[7]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \h_count_u[8]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \h_count_u[9]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \v_count_u[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \v_count_u[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \v_count_u[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \v_count_u[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \v_count_u[6]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \v_count_u[7]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \v_count_u[8]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \v_count_u[9]_i_5\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \v_count_u[9]_i_6\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \v_count_u[9]_i_7\ : label is "soft_lutpair2";
begin
  vde_out <= \^vde_out\;
  vsync_out <= \^vsync_out\;
\h_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => h_count_u_reg(0),
      Q => h_count(0),
      R => rst
    );
\h_count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => h_count_u_reg(10),
      Q => h_count(10),
      R => rst
    );
\h_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => h_count_u_reg(1),
      Q => h_count(1),
      R => rst
    );
\h_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => h_count_u_reg(2),
      Q => h_count(2),
      R => rst
    );
\h_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => h_count_u_reg(3),
      Q => h_count(3),
      R => rst
    );
\h_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => h_count_u_reg(4),
      Q => h_count(4),
      R => rst
    );
\h_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => h_count_u_reg(5),
      Q => h_count(5),
      R => rst
    );
\h_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => h_count_u_reg(6),
      Q => h_count(6),
      R => rst
    );
\h_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => h_count_u_reg(7),
      Q => h_count(7),
      R => rst
    );
\h_count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => h_count_u_reg(8),
      Q => h_count(8),
      R => rst
    );
\h_count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => h_count_u_reg(9),
      Q => h_count(9),
      R => rst
    );
\h_count_u[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => h_count_u_reg(0),
      O => plusOp(0)
    );
\h_count_u[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => rst,
      I1 => \^vde_out\,
      I2 => vde_in,
      O => \h_count_u[10]_i_1_n_0\
    );
\h_count_u[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A2A2AAA"
    )
        port map (
      I0 => vde_in,
      I1 => h_count_u_reg(9),
      I2 => h_count_u_reg(10),
      I3 => \h_count_u[10]_i_4_n_0\,
      I4 => \h_count_u[10]_i_5_n_0\,
      O => h_count_u
    );
\h_count_u[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => h_count_u_reg(10),
      I1 => h_count_u_reg(8),
      I2 => h_count_u_reg(6),
      I3 => \h_count_u[10]_i_4_n_0\,
      I4 => h_count_u_reg(7),
      I5 => h_count_u_reg(9),
      O => plusOp(10)
    );
\h_count_u[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => h_count_u_reg(5),
      I1 => h_count_u_reg(4),
      I2 => h_count_u_reg(3),
      I3 => h_count_u_reg(2),
      I4 => h_count_u_reg(1),
      I5 => h_count_u_reg(0),
      O => \h_count_u[10]_i_4_n_0\
    );
\h_count_u[10]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => h_count_u_reg(6),
      I1 => h_count_u_reg(8),
      I2 => h_count_u_reg(7),
      O => \h_count_u[10]_i_5_n_0\
    );
\h_count_u[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => h_count_u_reg(0),
      I1 => h_count_u_reg(1),
      O => plusOp(1)
    );
\h_count_u[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => h_count_u_reg(0),
      I1 => h_count_u_reg(1),
      I2 => h_count_u_reg(2),
      O => plusOp(2)
    );
\h_count_u[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => h_count_u_reg(3),
      I1 => h_count_u_reg(0),
      I2 => h_count_u_reg(1),
      I3 => h_count_u_reg(2),
      O => plusOp(3)
    );
\h_count_u[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => h_count_u_reg(4),
      I1 => h_count_u_reg(0),
      I2 => h_count_u_reg(1),
      I3 => h_count_u_reg(2),
      I4 => h_count_u_reg(3),
      O => \h_count_u[4]_i_1_n_0\
    );
\h_count_u[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => h_count_u_reg(0),
      I1 => h_count_u_reg(1),
      I2 => h_count_u_reg(2),
      I3 => h_count_u_reg(3),
      I4 => h_count_u_reg(4),
      I5 => h_count_u_reg(5),
      O => plusOp(5)
    );
\h_count_u[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => h_count_u_reg(6),
      I1 => \h_count_u[10]_i_4_n_0\,
      O => plusOp(6)
    );
\h_count_u[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => h_count_u_reg(7),
      I1 => \h_count_u[10]_i_4_n_0\,
      I2 => h_count_u_reg(6),
      O => plusOp(7)
    );
\h_count_u[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => h_count_u_reg(8),
      I1 => h_count_u_reg(6),
      I2 => \h_count_u[10]_i_4_n_0\,
      I3 => h_count_u_reg(7),
      O => plusOp(8)
    );
\h_count_u[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => h_count_u_reg(9),
      I1 => h_count_u_reg(7),
      I2 => \h_count_u[10]_i_4_n_0\,
      I3 => h_count_u_reg(6),
      I4 => h_count_u_reg(8),
      O => plusOp(9)
    );
\h_count_u_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => h_count_u,
      D => plusOp(0),
      Q => h_count_u_reg(0),
      R => \h_count_u[10]_i_1_n_0\
    );
\h_count_u_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => h_count_u,
      D => plusOp(10),
      Q => h_count_u_reg(10),
      R => \h_count_u[10]_i_1_n_0\
    );
\h_count_u_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => h_count_u,
      D => plusOp(1),
      Q => h_count_u_reg(1),
      R => \h_count_u[10]_i_1_n_0\
    );
\h_count_u_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => h_count_u,
      D => plusOp(2),
      Q => h_count_u_reg(2),
      R => \h_count_u[10]_i_1_n_0\
    );
\h_count_u_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => h_count_u,
      D => plusOp(3),
      Q => h_count_u_reg(3),
      R => \h_count_u[10]_i_1_n_0\
    );
\h_count_u_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => h_count_u,
      D => \h_count_u[4]_i_1_n_0\,
      Q => h_count_u_reg(4),
      R => \h_count_u[10]_i_1_n_0\
    );
\h_count_u_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => h_count_u,
      D => plusOp(5),
      Q => h_count_u_reg(5),
      R => \h_count_u[10]_i_1_n_0\
    );
\h_count_u_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => h_count_u,
      D => plusOp(6),
      Q => h_count_u_reg(6),
      R => \h_count_u[10]_i_1_n_0\
    );
\h_count_u_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => h_count_u,
      D => plusOp(7),
      Q => h_count_u_reg(7),
      R => \h_count_u[10]_i_1_n_0\
    );
\h_count_u_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => h_count_u,
      D => plusOp(8),
      Q => h_count_u_reg(8),
      R => \h_count_u[10]_i_1_n_0\
    );
\h_count_u_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => h_count_u,
      D => plusOp(9),
      Q => h_count_u_reg(9),
      R => \h_count_u[10]_i_1_n_0\
    );
hsync_out_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => hsync_in,
      Q => hsync_out,
      R => rst
    );
\rgb_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rgb_in(0),
      Q => rgb_out(0),
      R => rst
    );
\rgb_out_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rgb_in(10),
      Q => rgb_out(10),
      R => rst
    );
\rgb_out_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rgb_in(11),
      Q => rgb_out(11),
      R => rst
    );
\rgb_out_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rgb_in(12),
      Q => rgb_out(12),
      R => rst
    );
\rgb_out_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rgb_in(13),
      Q => rgb_out(13),
      R => rst
    );
\rgb_out_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rgb_in(14),
      Q => rgb_out(14),
      R => rst
    );
\rgb_out_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rgb_in(15),
      Q => rgb_out(15),
      R => rst
    );
\rgb_out_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rgb_in(16),
      Q => rgb_out(16),
      R => rst
    );
\rgb_out_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rgb_in(17),
      Q => rgb_out(17),
      R => rst
    );
\rgb_out_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rgb_in(18),
      Q => rgb_out(18),
      R => rst
    );
\rgb_out_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rgb_in(19),
      Q => rgb_out(19),
      R => rst
    );
\rgb_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rgb_in(1),
      Q => rgb_out(1),
      R => rst
    );
\rgb_out_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rgb_in(20),
      Q => rgb_out(20),
      R => rst
    );
\rgb_out_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rgb_in(21),
      Q => rgb_out(21),
      R => rst
    );
\rgb_out_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rgb_in(22),
      Q => rgb_out(22),
      R => rst
    );
\rgb_out_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rgb_in(23),
      Q => rgb_out(23),
      R => rst
    );
\rgb_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rgb_in(2),
      Q => rgb_out(2),
      R => rst
    );
\rgb_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rgb_in(3),
      Q => rgb_out(3),
      R => rst
    );
\rgb_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rgb_in(4),
      Q => rgb_out(4),
      R => rst
    );
\rgb_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rgb_in(5),
      Q => rgb_out(5),
      R => rst
    );
\rgb_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rgb_in(6),
      Q => rgb_out(6),
      R => rst
    );
\rgb_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rgb_in(7),
      Q => rgb_out(7),
      R => rst
    );
\rgb_out_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rgb_in(8),
      Q => rgb_out(8),
      R => rst
    );
\rgb_out_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rgb_in(9),
      Q => rgb_out(9),
      R => rst
    );
\v_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => v_count_u_reg(0),
      Q => v_count(0),
      R => rst
    );
\v_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => v_count_u_reg(1),
      Q => v_count(1),
      R => rst
    );
\v_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => v_count_u_reg(2),
      Q => v_count(2),
      R => rst
    );
\v_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => v_count_u_reg(3),
      Q => v_count(3),
      R => rst
    );
\v_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => v_count_u_reg(4),
      Q => v_count(4),
      R => rst
    );
\v_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => v_count_u_reg(5),
      Q => v_count(5),
      R => rst
    );
\v_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => v_count_u_reg(6),
      Q => v_count(6),
      R => rst
    );
\v_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => v_count_u_reg(7),
      Q => v_count(7),
      R => rst
    );
\v_count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => v_count_u_reg(8),
      Q => v_count(8),
      R => rst
    );
\v_count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => v_count_u_reg(9),
      Q => v_count(9),
      R => rst
    );
\v_count_u[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_count_u_reg(0),
      O => \plusOp__0\(0)
    );
\v_count_u[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => v_count_u_reg(0),
      I1 => v_count_u_reg(1),
      O => \plusOp__0\(1)
    );
\v_count_u[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => v_count_u_reg(2),
      I1 => v_count_u_reg(1),
      I2 => v_count_u_reg(0),
      O => \plusOp__0\(2)
    );
\v_count_u[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => v_count_u_reg(3),
      I1 => v_count_u_reg(2),
      I2 => v_count_u_reg(1),
      I3 => v_count_u_reg(0),
      O => \plusOp__0\(3)
    );
\v_count_u[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => v_count_u_reg(0),
      I1 => v_count_u_reg(1),
      I2 => v_count_u_reg(2),
      I3 => v_count_u_reg(3),
      I4 => v_count_u_reg(4),
      O => \plusOp__0\(4)
    );
\v_count_u[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => v_count_u_reg(5),
      I1 => v_count_u_reg(0),
      I2 => v_count_u_reg(1),
      I3 => v_count_u_reg(2),
      I4 => v_count_u_reg(3),
      I5 => v_count_u_reg(4),
      O => \plusOp__0\(5)
    );
\v_count_u[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => v_count_u_reg(6),
      I1 => \v_count_u[9]_i_7_n_0\,
      I2 => v_count_u_reg(5),
      O => \plusOp__0\(6)
    );
\v_count_u[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => v_count_u_reg(7),
      I1 => v_count_u_reg(5),
      I2 => \v_count_u[9]_i_7_n_0\,
      I3 => v_count_u_reg(6),
      O => \v_count_u[7]_i_1_n_0\
    );
\v_count_u[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => v_count_u_reg(8),
      I1 => v_count_u_reg(6),
      I2 => \v_count_u[9]_i_7_n_0\,
      I3 => v_count_u_reg(5),
      I4 => v_count_u_reg(7),
      O => \plusOp__0\(8)
    );
\v_count_u[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AABA"
    )
        port map (
      I0 => rst,
      I1 => v_started_reg_n_0,
      I2 => vde_in,
      I3 => \^vde_out\,
      O => \v_count_u[9]_i_1_n_0\
    );
\v_count_u[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4040404040404044"
    )
        port map (
      I0 => \^vde_out\,
      I1 => vde_in,
      I2 => \v_count_u[9]_i_4_n_0\,
      I3 => \v_count_u[9]_i_5_n_0\,
      I4 => v_count_u_reg(2),
      I5 => \v_count_u[9]_i_6_n_0\,
      O => \v_count_u[9]_i_2_n_0\
    );
\v_count_u[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => v_count_u_reg(9),
      I1 => v_count_u_reg(7),
      I2 => v_count_u_reg(5),
      I3 => \v_count_u[9]_i_7_n_0\,
      I4 => v_count_u_reg(6),
      I5 => v_count_u_reg(8),
      O => \plusOp__0\(9)
    );
\v_count_u[9]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => v_count_u_reg(9),
      I1 => v_count_u_reg(8),
      I2 => v_count_u_reg(7),
      O => \v_count_u[9]_i_4_n_0\
    );
\v_count_u[9]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => v_count_u_reg(0),
      I1 => v_count_u_reg(1),
      O => \v_count_u[9]_i_5_n_0\
    );
\v_count_u[9]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => v_count_u_reg(4),
      I1 => v_count_u_reg(3),
      I2 => v_count_u_reg(6),
      I3 => v_count_u_reg(5),
      O => \v_count_u[9]_i_6_n_0\
    );
\v_count_u[9]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => v_count_u_reg(4),
      I1 => v_count_u_reg(3),
      I2 => v_count_u_reg(2),
      I3 => v_count_u_reg(1),
      I4 => v_count_u_reg(0),
      O => \v_count_u[9]_i_7_n_0\
    );
\v_count_u_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \v_count_u[9]_i_2_n_0\,
      D => \plusOp__0\(0),
      Q => v_count_u_reg(0),
      R => \v_count_u[9]_i_1_n_0\
    );
\v_count_u_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \v_count_u[9]_i_2_n_0\,
      D => \plusOp__0\(1),
      Q => v_count_u_reg(1),
      R => \v_count_u[9]_i_1_n_0\
    );
\v_count_u_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \v_count_u[9]_i_2_n_0\,
      D => \plusOp__0\(2),
      Q => v_count_u_reg(2),
      R => \v_count_u[9]_i_1_n_0\
    );
\v_count_u_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \v_count_u[9]_i_2_n_0\,
      D => \plusOp__0\(3),
      Q => v_count_u_reg(3),
      R => \v_count_u[9]_i_1_n_0\
    );
\v_count_u_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \v_count_u[9]_i_2_n_0\,
      D => \plusOp__0\(4),
      Q => v_count_u_reg(4),
      R => \v_count_u[9]_i_1_n_0\
    );
\v_count_u_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \v_count_u[9]_i_2_n_0\,
      D => \plusOp__0\(5),
      Q => v_count_u_reg(5),
      R => \v_count_u[9]_i_1_n_0\
    );
\v_count_u_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \v_count_u[9]_i_2_n_0\,
      D => \plusOp__0\(6),
      Q => v_count_u_reg(6),
      R => \v_count_u[9]_i_1_n_0\
    );
\v_count_u_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \v_count_u[9]_i_2_n_0\,
      D => \v_count_u[7]_i_1_n_0\,
      Q => v_count_u_reg(7),
      R => \v_count_u[9]_i_1_n_0\
    );
\v_count_u_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \v_count_u[9]_i_2_n_0\,
      D => \plusOp__0\(8),
      Q => v_count_u_reg(8),
      R => \v_count_u[9]_i_1_n_0\
    );
\v_count_u_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \v_count_u[9]_i_2_n_0\,
      D => \plusOp__0\(9),
      Q => v_count_u_reg(9),
      R => \v_count_u[9]_i_1_n_0\
    );
v_started_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AE04AEAE"
    )
        port map (
      I0 => v_started_reg_n_0,
      I1 => vde_in,
      I2 => \^vde_out\,
      I3 => \^vsync_out\,
      I4 => vsync_in,
      O => v_started_i_1_n_0
    );
v_started_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => v_started_i_1_n_0,
      Q => v_started_reg_n_0,
      R => rst
    );
vde_prev_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => vde_in,
      Q => \^vde_out\,
      R => rst
    );
vsync_prev_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => vsync_in,
      Q => \^vsync_out\,
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity HDMI_bd_position_counter_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    vde_in : in STD_LOGIC;
    hsync_in : in STD_LOGIC;
    vsync_in : in STD_LOGIC;
    rgb_in : in STD_LOGIC_VECTOR ( 23 downto 0 );
    vde_out : out STD_LOGIC;
    hsync_out : out STD_LOGIC;
    vsync_out : out STD_LOGIC;
    h_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    v_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rgb_out : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of HDMI_bd_position_counter_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of HDMI_bd_position_counter_0_0 : entity is "HDMI_bd_position_counter_0_0,position_counter,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of HDMI_bd_position_counter_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of HDMI_bd_position_counter_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of HDMI_bd_position_counter_0_0 : entity is "position_counter,Vivado 2023.1";
end HDMI_bd_position_counter_0_0;

architecture STRUCTURE of HDMI_bd_position_counter_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^h_count\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \^v_count\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN HDMI_bd_dvi2rgb_0_0_PixelClk, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  h_count(31) <= \<const0>\;
  h_count(30) <= \<const0>\;
  h_count(29) <= \<const0>\;
  h_count(28) <= \<const0>\;
  h_count(27) <= \<const0>\;
  h_count(26) <= \<const0>\;
  h_count(25) <= \<const0>\;
  h_count(24) <= \<const0>\;
  h_count(23) <= \<const0>\;
  h_count(22) <= \<const0>\;
  h_count(21) <= \<const0>\;
  h_count(20) <= \<const0>\;
  h_count(19) <= \<const0>\;
  h_count(18) <= \<const0>\;
  h_count(17) <= \<const0>\;
  h_count(16) <= \<const0>\;
  h_count(15) <= \<const0>\;
  h_count(14) <= \<const0>\;
  h_count(13) <= \<const0>\;
  h_count(12) <= \<const0>\;
  h_count(11) <= \<const0>\;
  h_count(10 downto 0) <= \^h_count\(10 downto 0);
  v_count(31) <= \<const0>\;
  v_count(30) <= \<const0>\;
  v_count(29) <= \<const0>\;
  v_count(28) <= \<const0>\;
  v_count(27) <= \<const0>\;
  v_count(26) <= \<const0>\;
  v_count(25) <= \<const0>\;
  v_count(24) <= \<const0>\;
  v_count(23) <= \<const0>\;
  v_count(22) <= \<const0>\;
  v_count(21) <= \<const0>\;
  v_count(20) <= \<const0>\;
  v_count(19) <= \<const0>\;
  v_count(18) <= \<const0>\;
  v_count(17) <= \<const0>\;
  v_count(16) <= \<const0>\;
  v_count(15) <= \<const0>\;
  v_count(14) <= \<const0>\;
  v_count(13) <= \<const0>\;
  v_count(12) <= \<const0>\;
  v_count(11) <= \<const0>\;
  v_count(10) <= \<const0>\;
  v_count(9 downto 0) <= \^v_count\(9 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.HDMI_bd_position_counter_0_0_position_counter
     port map (
      clk => clk,
      h_count(10 downto 0) => \^h_count\(10 downto 0),
      hsync_in => hsync_in,
      hsync_out => hsync_out,
      rgb_in(23 downto 0) => rgb_in(23 downto 0),
      rgb_out(23 downto 0) => rgb_out(23 downto 0),
      rst => rst,
      v_count(9 downto 0) => \^v_count\(9 downto 0),
      vde_in => vde_in,
      vde_out => vde_out,
      vsync_in => vsync_in,
      vsync_out => vsync_out
    );
end STRUCTURE;
