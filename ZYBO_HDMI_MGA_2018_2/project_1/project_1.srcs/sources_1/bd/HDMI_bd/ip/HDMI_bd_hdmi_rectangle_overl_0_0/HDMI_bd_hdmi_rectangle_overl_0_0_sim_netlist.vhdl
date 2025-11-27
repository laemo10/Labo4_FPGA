-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Wed Nov 26 22:58:21 2025
-- Host        : pcetu-139 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/laemo10/Desktop/Labo4_FPGA/ZYBO_HDMI_MGA_2018_2/project_1/project_1.srcs/sources_1/bd/HDMI_bd/ip/HDMI_bd_hdmi_rectangle_overl_0_0/HDMI_bd_hdmi_rectangle_overl_0_0_sim_netlist.vhdl
-- Design      : HDMI_bd_hdmi_rectangle_overl_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity HDMI_bd_hdmi_rectangle_overl_0_0_hdmi_rectangle_overlay is
  port (
    vde_out : out STD_LOGIC;
    hsync_out : out STD_LOGIC;
    vsync_out : out STD_LOGIC;
    rgb_out : out STD_LOGIC_VECTOR ( 23 downto 0 );
    rst : in STD_LOGIC;
    vde_in : in STD_LOGIC;
    clk : in STD_LOGIC;
    hsync_in : in STD_LOGIC;
    vsync_in : in STD_LOGIC;
    rgb_in : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of HDMI_bd_hdmi_rectangle_overl_0_0_hdmi_rectangle_overlay : entity is "hdmi_rectangle_overlay";
end HDMI_bd_hdmi_rectangle_overl_0_0_hdmi_rectangle_overlay;

architecture STRUCTURE of HDMI_bd_hdmi_rectangle_overl_0_0_hdmi_rectangle_overlay is
  signal h_count : STD_LOGIC;
  signal \h_count[10]_i_1_n_0\ : STD_LOGIC;
  signal \h_count[10]_i_4_n_0\ : STD_LOGIC;
  signal \h_count[10]_i_5_n_0\ : STD_LOGIC;
  signal \h_count[10]_i_6_n_0\ : STD_LOGIC;
  signal h_count_reg : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal hsync_prev : STD_LOGIC;
  signal is_edge : STD_LOGIC;
  signal \is_edge0__7\ : STD_LOGIC;
  signal is_edge_reg : STD_LOGIC;
  signal is_edge_reg_i_10_n_0 : STD_LOGIC;
  signal is_edge_reg_i_11_n_0 : STD_LOGIC;
  signal is_edge_reg_i_12_n_0 : STD_LOGIC;
  signal is_edge_reg_i_13_n_0 : STD_LOGIC;
  signal is_edge_reg_i_14_n_0 : STD_LOGIC;
  signal is_edge_reg_i_1_n_0 : STD_LOGIC;
  signal is_edge_reg_i_3_n_0 : STD_LOGIC;
  signal is_edge_reg_i_6_n_0 : STD_LOGIC;
  signal is_edge_reg_i_7_n_0 : STD_LOGIC;
  signal is_edge_reg_i_9_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal p_23_in : STD_LOGIC;
  signal p_29_in : STD_LOGIC;
  signal \rgb_out[15]_i_1_n_0\ : STD_LOGIC;
  signal \rgb_out[16]_i_1_n_0\ : STD_LOGIC;
  signal \rgb_out[17]_i_1_n_0\ : STD_LOGIC;
  signal \rgb_out[18]_i_1_n_0\ : STD_LOGIC;
  signal \rgb_out[19]_i_1_n_0\ : STD_LOGIC;
  signal \rgb_out[20]_i_1_n_0\ : STD_LOGIC;
  signal \rgb_out[21]_i_1_n_0\ : STD_LOGIC;
  signal \rgb_out[22]_i_1_n_0\ : STD_LOGIC;
  signal \rgb_out[23]_i_1_n_0\ : STD_LOGIC;
  signal rgb_reg : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal v_count : STD_LOGIC;
  signal \v_count[10]_i_1_n_0\ : STD_LOGIC;
  signal \v_count[10]_i_4_n_0\ : STD_LOGIC;
  signal \v_count[10]_i_5_n_0\ : STD_LOGIC;
  signal \v_count[10]_i_6_n_0\ : STD_LOGIC;
  signal v_count_reg : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal vde_reg : STD_LOGIC;
  signal vsync_prev : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \h_count[10]_i_4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \h_count[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \h_count[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \h_count[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \h_count[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \h_count[6]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \h_count[7]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \h_count[8]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \h_count[9]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of is_edge_reg_i_3 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \rgb_out[16]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \rgb_out[17]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \rgb_out[18]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \rgb_out[19]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \rgb_out[20]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \rgb_out[21]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \rgb_out[22]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \rgb_out[23]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \v_count[10]_i_5\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \v_count[1]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \v_count[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \v_count[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \v_count[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \v_count[7]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \v_count[8]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \v_count[9]_i_1\ : label is "soft_lutpair2";
begin
\h_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => h_count_reg(0),
      O => p_0_in(0)
    );
\h_count[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAEFFAE"
    )
        port map (
      I0 => rst,
      I1 => hsync_in,
      I2 => hsync_prev,
      I3 => vsync_in,
      I4 => vsync_prev,
      O => \h_count[10]_i_1_n_0\
    );
\h_count[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22222AAA"
    )
        port map (
      I0 => vde_in,
      I1 => \h_count[10]_i_4_n_0\,
      I2 => h_count_reg(0),
      I3 => \h_count[10]_i_5_n_0\,
      I4 => h_count_reg(7),
      O => h_count
    );
\h_count[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => h_count_reg(8),
      I1 => h_count_reg(6),
      I2 => \h_count[10]_i_6_n_0\,
      I3 => h_count_reg(7),
      I4 => h_count_reg(9),
      I5 => h_count_reg(10),
      O => p_0_in(10)
    );
\h_count[10]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => h_count_reg(8),
      I1 => h_count_reg(10),
      I2 => h_count_reg(9),
      O => \h_count[10]_i_4_n_0\
    );
\h_count[10]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => h_count_reg(2),
      I1 => h_count_reg(1),
      I2 => h_count_reg(5),
      I3 => h_count_reg(6),
      I4 => h_count_reg(3),
      I5 => h_count_reg(4),
      O => \h_count[10]_i_5_n_0\
    );
\h_count[10]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => h_count_reg(5),
      I1 => h_count_reg(3),
      I2 => h_count_reg(1),
      I3 => h_count_reg(0),
      I4 => h_count_reg(2),
      I5 => h_count_reg(4),
      O => \h_count[10]_i_6_n_0\
    );
\h_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => h_count_reg(0),
      I1 => h_count_reg(1),
      O => p_0_in(1)
    );
\h_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => h_count_reg(0),
      I1 => h_count_reg(1),
      I2 => h_count_reg(2),
      O => p_0_in(2)
    );
\h_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => h_count_reg(1),
      I1 => h_count_reg(0),
      I2 => h_count_reg(2),
      I3 => h_count_reg(3),
      O => p_0_in(3)
    );
\h_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => h_count_reg(2),
      I1 => h_count_reg(0),
      I2 => h_count_reg(1),
      I3 => h_count_reg(3),
      I4 => h_count_reg(4),
      O => p_0_in(4)
    );
\h_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => h_count_reg(3),
      I1 => h_count_reg(1),
      I2 => h_count_reg(0),
      I3 => h_count_reg(2),
      I4 => h_count_reg(4),
      I5 => h_count_reg(5),
      O => p_0_in(5)
    );
\h_count[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \h_count[10]_i_6_n_0\,
      I1 => h_count_reg(6),
      O => p_0_in(6)
    );
\h_count[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \h_count[10]_i_6_n_0\,
      I1 => h_count_reg(6),
      I2 => h_count_reg(7),
      O => p_0_in(7)
    );
\h_count[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => h_count_reg(6),
      I1 => \h_count[10]_i_6_n_0\,
      I2 => h_count_reg(7),
      I3 => h_count_reg(8),
      O => p_0_in(8)
    );
\h_count[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => h_count_reg(7),
      I1 => \h_count[10]_i_6_n_0\,
      I2 => h_count_reg(6),
      I3 => h_count_reg(8),
      I4 => h_count_reg(9),
      O => p_0_in(9)
    );
\h_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => h_count,
      D => p_0_in(0),
      Q => h_count_reg(0),
      R => \h_count[10]_i_1_n_0\
    );
\h_count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => h_count,
      D => p_0_in(10),
      Q => h_count_reg(10),
      R => \h_count[10]_i_1_n_0\
    );
\h_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => h_count,
      D => p_0_in(1),
      Q => h_count_reg(1),
      R => \h_count[10]_i_1_n_0\
    );
\h_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => h_count,
      D => p_0_in(2),
      Q => h_count_reg(2),
      R => \h_count[10]_i_1_n_0\
    );
\h_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => h_count,
      D => p_0_in(3),
      Q => h_count_reg(3),
      R => \h_count[10]_i_1_n_0\
    );
\h_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => h_count,
      D => p_0_in(4),
      Q => h_count_reg(4),
      R => \h_count[10]_i_1_n_0\
    );
\h_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => h_count,
      D => p_0_in(5),
      Q => h_count_reg(5),
      R => \h_count[10]_i_1_n_0\
    );
\h_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => h_count,
      D => p_0_in(6),
      Q => h_count_reg(6),
      R => \h_count[10]_i_1_n_0\
    );
\h_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => h_count,
      D => p_0_in(7),
      Q => h_count_reg(7),
      R => \h_count[10]_i_1_n_0\
    );
\h_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => h_count,
      D => p_0_in(8),
      Q => h_count_reg(8),
      R => \h_count[10]_i_1_n_0\
    );
\h_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => h_count,
      D => p_0_in(9),
      Q => h_count_reg(9),
      R => \h_count[10]_i_1_n_0\
    );
hsync_out_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => hsync_prev,
      Q => hsync_out,
      R => rst
    );
hsync_prev_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => hsync_in,
      Q => hsync_prev,
      R => rst
    );
is_edge_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFAFFEA"
    )
        port map (
      I0 => is_edge,
      I1 => is_edge_reg_i_3_n_0,
      I2 => p_29_in,
      I3 => \is_edge0__7\,
      I4 => is_edge_reg_i_6_n_0,
      O => is_edge_reg_i_1_n_0
    );
is_edge_reg_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000777F7F7F"
    )
        port map (
      I0 => h_count_reg(7),
      I1 => h_count_reg(6),
      I2 => h_count_reg(5),
      I3 => h_count_reg(3),
      I4 => h_count_reg(4),
      I5 => h_count_reg(8),
      O => is_edge_reg_i_10_n_0
    );
is_edge_reg_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEAAAAA00000000"
    )
        port map (
      I0 => v_count_reg(6),
      I1 => v_count_reg(5),
      I2 => v_count_reg(3),
      I3 => v_count_reg(2),
      I4 => v_count_reg(4),
      I5 => v_count_reg(7),
      O => is_edge_reg_i_11_n_0
    );
is_edge_reg_i_12: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007FFFFF"
    )
        port map (
      I0 => v_count_reg(3),
      I1 => v_count_reg(5),
      I2 => v_count_reg(4),
      I3 => v_count_reg(6),
      I4 => v_count_reg(7),
      O => is_edge_reg_i_12_n_0
    );
is_edge_reg_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEEEA0000"
    )
        port map (
      I0 => h_count_reg(6),
      I1 => h_count_reg(5),
      I2 => h_count_reg(3),
      I3 => h_count_reg(4),
      I4 => h_count_reg(7),
      I5 => h_count_reg(8),
      O => is_edge_reg_i_13_n_0
    );
is_edge_reg_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00155555FFFFFFFF"
    )
        port map (
      I0 => h_count_reg(6),
      I1 => h_count_reg(2),
      I2 => h_count_reg(3),
      I3 => h_count_reg(4),
      I4 => h_count_reg(5),
      I5 => h_count_reg(7),
      O => is_edge_reg_i_14_n_0
    );
is_edge_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => v_count_reg(9),
      I1 => v_count_reg(8),
      I2 => is_edge_reg_i_7_n_0,
      I3 => v_count_reg(10),
      I4 => p_23_in,
      I5 => v_count_reg(7),
      O => is_edge
    );
is_edge_reg_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00E00000"
    )
        port map (
      I0 => h_count_reg(8),
      I1 => is_edge_reg_i_9_n_0,
      I2 => h_count_reg(10),
      I3 => h_count_reg(9),
      I4 => is_edge_reg_i_10_n_0,
      O => is_edge_reg_i_3_n_0
    );
is_edge_reg_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"23332330"
    )
        port map (
      I0 => is_edge_reg_i_7_n_0,
      I1 => v_count_reg(10),
      I2 => v_count_reg(9),
      I3 => v_count_reg(8),
      I4 => is_edge_reg_i_11_n_0,
      O => p_29_in
    );
is_edge_reg_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => is_edge_reg_i_11_n_0,
      I1 => v_count_reg(8),
      I2 => v_count_reg(9),
      I3 => v_count_reg(10),
      I4 => is_edge_reg_i_12_n_0,
      I5 => p_23_in,
      O => \is_edge0__7\
    );
is_edge_reg_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => is_edge_reg_i_13_n_0,
      I1 => h_count_reg(10),
      I2 => h_count_reg(8),
      I3 => is_edge_reg_i_14_n_0,
      I4 => h_count_reg(9),
      O => is_edge_reg_i_6_n_0
    );
is_edge_reg_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFF"
    )
        port map (
      I0 => v_count_reg(5),
      I1 => v_count_reg(3),
      I2 => v_count_reg(2),
      I3 => v_count_reg(4),
      I4 => v_count_reg(6),
      I5 => v_count_reg(7),
      O => is_edge_reg_i_7_n_0
    );
is_edge_reg_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => is_edge_reg_i_10_n_0,
      I1 => h_count_reg(10),
      I2 => h_count_reg(9),
      I3 => is_edge_reg_i_13_n_0,
      O => p_23_in
    );
is_edge_reg_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA8888800000000"
    )
        port map (
      I0 => h_count_reg(6),
      I1 => h_count_reg(5),
      I2 => h_count_reg(2),
      I3 => h_count_reg(3),
      I4 => h_count_reg(4),
      I5 => h_count_reg(7),
      O => is_edge_reg_i_9_n_0
    );
is_edge_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => is_edge_reg_i_1_n_0,
      Q => is_edge_reg,
      R => rst
    );
\rgb_out[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => rst,
      I1 => is_edge_reg,
      I2 => vde_reg,
      O => \rgb_out[15]_i_1_n_0\
    );
\rgb_out[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => rgb_reg(16),
      I1 => is_edge_reg,
      I2 => vde_reg,
      O => \rgb_out[16]_i_1_n_0\
    );
\rgb_out[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => rgb_reg(17),
      I1 => is_edge_reg,
      I2 => vde_reg,
      O => \rgb_out[17]_i_1_n_0\
    );
\rgb_out[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => rgb_reg(18),
      I1 => is_edge_reg,
      I2 => vde_reg,
      O => \rgb_out[18]_i_1_n_0\
    );
\rgb_out[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => rgb_reg(19),
      I1 => is_edge_reg,
      I2 => vde_reg,
      O => \rgb_out[19]_i_1_n_0\
    );
\rgb_out[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => rgb_reg(20),
      I1 => is_edge_reg,
      I2 => vde_reg,
      O => \rgb_out[20]_i_1_n_0\
    );
\rgb_out[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => rgb_reg(21),
      I1 => is_edge_reg,
      I2 => vde_reg,
      O => \rgb_out[21]_i_1_n_0\
    );
\rgb_out[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => rgb_reg(22),
      I1 => is_edge_reg,
      I2 => vde_reg,
      O => \rgb_out[22]_i_1_n_0\
    );
\rgb_out[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => rgb_reg(23),
      I1 => is_edge_reg,
      I2 => vde_reg,
      O => \rgb_out[23]_i_1_n_0\
    );
\rgb_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rgb_reg(0),
      Q => rgb_out(0),
      R => \rgb_out[15]_i_1_n_0\
    );
\rgb_out_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rgb_reg(10),
      Q => rgb_out(10),
      R => \rgb_out[15]_i_1_n_0\
    );
\rgb_out_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rgb_reg(11),
      Q => rgb_out(11),
      R => \rgb_out[15]_i_1_n_0\
    );
\rgb_out_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rgb_reg(12),
      Q => rgb_out(12),
      R => \rgb_out[15]_i_1_n_0\
    );
\rgb_out_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rgb_reg(13),
      Q => rgb_out(13),
      R => \rgb_out[15]_i_1_n_0\
    );
\rgb_out_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rgb_reg(14),
      Q => rgb_out(14),
      R => \rgb_out[15]_i_1_n_0\
    );
\rgb_out_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rgb_reg(15),
      Q => rgb_out(15),
      R => \rgb_out[15]_i_1_n_0\
    );
\rgb_out_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \rgb_out[16]_i_1_n_0\,
      Q => rgb_out(16),
      R => rst
    );
\rgb_out_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \rgb_out[17]_i_1_n_0\,
      Q => rgb_out(17),
      R => rst
    );
\rgb_out_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \rgb_out[18]_i_1_n_0\,
      Q => rgb_out(18),
      R => rst
    );
\rgb_out_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \rgb_out[19]_i_1_n_0\,
      Q => rgb_out(19),
      R => rst
    );
\rgb_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rgb_reg(1),
      Q => rgb_out(1),
      R => \rgb_out[15]_i_1_n_0\
    );
\rgb_out_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \rgb_out[20]_i_1_n_0\,
      Q => rgb_out(20),
      R => rst
    );
\rgb_out_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \rgb_out[21]_i_1_n_0\,
      Q => rgb_out(21),
      R => rst
    );
\rgb_out_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \rgb_out[22]_i_1_n_0\,
      Q => rgb_out(22),
      R => rst
    );
\rgb_out_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \rgb_out[23]_i_1_n_0\,
      Q => rgb_out(23),
      R => rst
    );
\rgb_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rgb_reg(2),
      Q => rgb_out(2),
      R => \rgb_out[15]_i_1_n_0\
    );
\rgb_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rgb_reg(3),
      Q => rgb_out(3),
      R => \rgb_out[15]_i_1_n_0\
    );
\rgb_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rgb_reg(4),
      Q => rgb_out(4),
      R => \rgb_out[15]_i_1_n_0\
    );
\rgb_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rgb_reg(5),
      Q => rgb_out(5),
      R => \rgb_out[15]_i_1_n_0\
    );
\rgb_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rgb_reg(6),
      Q => rgb_out(6),
      R => \rgb_out[15]_i_1_n_0\
    );
\rgb_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rgb_reg(7),
      Q => rgb_out(7),
      R => \rgb_out[15]_i_1_n_0\
    );
\rgb_out_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rgb_reg(8),
      Q => rgb_out(8),
      R => \rgb_out[15]_i_1_n_0\
    );
\rgb_out_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rgb_reg(9),
      Q => rgb_out(9),
      R => \rgb_out[15]_i_1_n_0\
    );
\rgb_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rgb_in(0),
      Q => rgb_reg(0),
      R => rst
    );
\rgb_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rgb_in(10),
      Q => rgb_reg(10),
      R => rst
    );
\rgb_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rgb_in(11),
      Q => rgb_reg(11),
      R => rst
    );
\rgb_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rgb_in(12),
      Q => rgb_reg(12),
      R => rst
    );
\rgb_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rgb_in(13),
      Q => rgb_reg(13),
      R => rst
    );
\rgb_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rgb_in(14),
      Q => rgb_reg(14),
      R => rst
    );
\rgb_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rgb_in(15),
      Q => rgb_reg(15),
      R => rst
    );
\rgb_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rgb_in(16),
      Q => rgb_reg(16),
      R => rst
    );
\rgb_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rgb_in(17),
      Q => rgb_reg(17),
      R => rst
    );
\rgb_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rgb_in(18),
      Q => rgb_reg(18),
      R => rst
    );
\rgb_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rgb_in(19),
      Q => rgb_reg(19),
      R => rst
    );
\rgb_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rgb_in(1),
      Q => rgb_reg(1),
      R => rst
    );
\rgb_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rgb_in(20),
      Q => rgb_reg(20),
      R => rst
    );
\rgb_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rgb_in(21),
      Q => rgb_reg(21),
      R => rst
    );
\rgb_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rgb_in(22),
      Q => rgb_reg(22),
      R => rst
    );
\rgb_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rgb_in(23),
      Q => rgb_reg(23),
      R => rst
    );
\rgb_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rgb_in(2),
      Q => rgb_reg(2),
      R => rst
    );
\rgb_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rgb_in(3),
      Q => rgb_reg(3),
      R => rst
    );
\rgb_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rgb_in(4),
      Q => rgb_reg(4),
      R => rst
    );
\rgb_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rgb_in(5),
      Q => rgb_reg(5),
      R => rst
    );
\rgb_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rgb_in(6),
      Q => rgb_reg(6),
      R => rst
    );
\rgb_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rgb_in(7),
      Q => rgb_reg(7),
      R => rst
    );
\rgb_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rgb_in(8),
      Q => rgb_reg(8),
      R => rst
    );
\rgb_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rgb_in(9),
      Q => rgb_reg(9),
      R => rst
    );
\v_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_count_reg(0),
      O => \p_0_in__0\(0)
    );
\v_count[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => rst,
      I1 => vsync_prev,
      I2 => vsync_in,
      O => \v_count[10]_i_1_n_0\
    );
\v_count[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04044404"
    )
        port map (
      I0 => hsync_prev,
      I1 => hsync_in,
      I2 => v_count_reg(10),
      I3 => \v_count[10]_i_4_n_0\,
      I4 => \v_count[10]_i_5_n_0\,
      O => v_count
    );
\v_count[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => v_count_reg(8),
      I1 => v_count_reg(6),
      I2 => \v_count[10]_i_6_n_0\,
      I3 => v_count_reg(7),
      I4 => v_count_reg(9),
      I5 => v_count_reg(10),
      O => \p_0_in__0\(10)
    );
\v_count[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1555FFFFFFFFFFFF"
    )
        port map (
      I0 => v_count_reg(3),
      I1 => v_count_reg(2),
      I2 => v_count_reg(1),
      I3 => v_count_reg(0),
      I4 => v_count_reg(5),
      I5 => v_count_reg(4),
      O => \v_count[10]_i_4_n_0\
    );
\v_count[10]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => v_count_reg(7),
      I1 => v_count_reg(6),
      I2 => v_count_reg(9),
      I3 => v_count_reg(8),
      O => \v_count[10]_i_5_n_0\
    );
\v_count[10]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => v_count_reg(5),
      I1 => v_count_reg(3),
      I2 => v_count_reg(1),
      I3 => v_count_reg(0),
      I4 => v_count_reg(2),
      I5 => v_count_reg(4),
      O => \v_count[10]_i_6_n_0\
    );
\v_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => v_count_reg(0),
      I1 => v_count_reg(1),
      O => \p_0_in__0\(1)
    );
\v_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => v_count_reg(0),
      I1 => v_count_reg(1),
      I2 => v_count_reg(2),
      O => \p_0_in__0\(2)
    );
\v_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => v_count_reg(1),
      I1 => v_count_reg(0),
      I2 => v_count_reg(2),
      I3 => v_count_reg(3),
      O => \p_0_in__0\(3)
    );
\v_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => v_count_reg(2),
      I1 => v_count_reg(0),
      I2 => v_count_reg(1),
      I3 => v_count_reg(3),
      I4 => v_count_reg(4),
      O => \p_0_in__0\(4)
    );
\v_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => v_count_reg(3),
      I1 => v_count_reg(1),
      I2 => v_count_reg(0),
      I3 => v_count_reg(2),
      I4 => v_count_reg(4),
      I5 => v_count_reg(5),
      O => \p_0_in__0\(5)
    );
\v_count[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v_count[10]_i_6_n_0\,
      I1 => v_count_reg(6),
      O => \p_0_in__0\(6)
    );
\v_count[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \v_count[10]_i_6_n_0\,
      I1 => v_count_reg(6),
      I2 => v_count_reg(7),
      O => \p_0_in__0\(7)
    );
\v_count[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => v_count_reg(6),
      I1 => \v_count[10]_i_6_n_0\,
      I2 => v_count_reg(7),
      I3 => v_count_reg(8),
      O => \p_0_in__0\(8)
    );
\v_count[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => v_count_reg(7),
      I1 => \v_count[10]_i_6_n_0\,
      I2 => v_count_reg(6),
      I3 => v_count_reg(8),
      I4 => v_count_reg(9),
      O => \p_0_in__0\(9)
    );
\v_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => v_count,
      D => \p_0_in__0\(0),
      Q => v_count_reg(0),
      R => \v_count[10]_i_1_n_0\
    );
\v_count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => v_count,
      D => \p_0_in__0\(10),
      Q => v_count_reg(10),
      R => \v_count[10]_i_1_n_0\
    );
\v_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => v_count,
      D => \p_0_in__0\(1),
      Q => v_count_reg(1),
      R => \v_count[10]_i_1_n_0\
    );
\v_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => v_count,
      D => \p_0_in__0\(2),
      Q => v_count_reg(2),
      R => \v_count[10]_i_1_n_0\
    );
\v_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => v_count,
      D => \p_0_in__0\(3),
      Q => v_count_reg(3),
      R => \v_count[10]_i_1_n_0\
    );
\v_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => v_count,
      D => \p_0_in__0\(4),
      Q => v_count_reg(4),
      R => \v_count[10]_i_1_n_0\
    );
\v_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => v_count,
      D => \p_0_in__0\(5),
      Q => v_count_reg(5),
      R => \v_count[10]_i_1_n_0\
    );
\v_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => v_count,
      D => \p_0_in__0\(6),
      Q => v_count_reg(6),
      R => \v_count[10]_i_1_n_0\
    );
\v_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => v_count,
      D => \p_0_in__0\(7),
      Q => v_count_reg(7),
      R => \v_count[10]_i_1_n_0\
    );
\v_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => v_count,
      D => \p_0_in__0\(8),
      Q => v_count_reg(8),
      R => \v_count[10]_i_1_n_0\
    );
\v_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => v_count,
      D => \p_0_in__0\(9),
      Q => v_count_reg(9),
      R => \v_count[10]_i_1_n_0\
    );
vde_out_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => vde_reg,
      Q => vde_out,
      R => rst
    );
vde_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => vde_in,
      Q => vde_reg,
      R => rst
    );
vsync_out_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => vsync_prev,
      Q => vsync_out,
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
      Q => vsync_prev,
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity HDMI_bd_hdmi_rectangle_overl_0_0 is
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
    rgb_out : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of HDMI_bd_hdmi_rectangle_overl_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of HDMI_bd_hdmi_rectangle_overl_0_0 : entity is "HDMI_bd_hdmi_rectangle_overl_0_0,hdmi_rectangle_overlay,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of HDMI_bd_hdmi_rectangle_overl_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of HDMI_bd_hdmi_rectangle_overl_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of HDMI_bd_hdmi_rectangle_overl_0_0 : entity is "hdmi_rectangle_overlay,Vivado 2023.1";
end HDMI_bd_hdmi_rectangle_overl_0_0;

architecture STRUCTURE of HDMI_bd_hdmi_rectangle_overl_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN HDMI_bd_dvi2rgb_0_0_PixelClk, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.HDMI_bd_hdmi_rectangle_overl_0_0_hdmi_rectangle_overlay
     port map (
      clk => clk,
      hsync_in => hsync_in,
      hsync_out => hsync_out,
      rgb_in(23 downto 0) => rgb_in(23 downto 0),
      rgb_out(23 downto 0) => rgb_out(23 downto 0),
      rst => rst,
      vde_in => vde_in,
      vde_out => vde_out,
      vsync_in => vsync_in,
      vsync_out => vsync_out
    );
end STRUCTURE;
