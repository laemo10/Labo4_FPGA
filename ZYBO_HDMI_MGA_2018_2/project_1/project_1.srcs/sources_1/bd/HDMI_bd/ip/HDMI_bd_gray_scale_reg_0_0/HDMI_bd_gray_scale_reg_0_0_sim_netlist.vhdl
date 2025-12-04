-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Tue Dec  2 00:18:07 2025
-- Host        : pcetu-125 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/laemo10/Desktop/Labo4_FPGA/ZYBO_HDMI_MGA_2018_2/project_1/project_1.srcs/sources_1/bd/HDMI_bd/ip/HDMI_bd_gray_scale_reg_0_0/HDMI_bd_gray_scale_reg_0_0_sim_netlist.vhdl
-- Design      : HDMI_bd_gray_scale_reg_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity HDMI_bd_gray_scale_reg_0_0_gray_scale_reg is
  port (
    out0 : out STD_LOGIC;
    out1 : out STD_LOGIC;
    out2 : out STD_LOGIC;
    out3 : out STD_LOGIC;
    out4 : out STD_LOGIC;
    out5 : out STD_LOGIC;
    out6 : out STD_LOGIC;
    flaten_gray_in : in STD_LOGIC_VECTOR ( 55 downto 0 );
    clk : in STD_LOGIC;
    rdy : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of HDMI_bd_gray_scale_reg_0_0_gray_scale_reg : entity is "gray_scale_reg";
end HDMI_bd_gray_scale_reg_0_0_gray_scale_reg;

architecture STRUCTURE of HDMI_bd_gray_scale_reg_0_0_gray_scale_reg is
  signal out00 : STD_LOGIC;
  signal out0_i_3_n_0 : STD_LOGIC;
  signal out1_i_1_n_0 : STD_LOGIC;
  signal out1_i_2_n_0 : STD_LOGIC;
  signal out2_i_1_n_0 : STD_LOGIC;
  signal out2_i_2_n_0 : STD_LOGIC;
  signal out3_i_1_n_0 : STD_LOGIC;
  signal out3_i_2_n_0 : STD_LOGIC;
  signal out4_i_1_n_0 : STD_LOGIC;
  signal out4_i_2_n_0 : STD_LOGIC;
  signal out5_i_1_n_0 : STD_LOGIC;
  signal out5_i_2_n_0 : STD_LOGIC;
  signal out6_i_1_n_0 : STD_LOGIC;
  signal out6_i_2_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
begin
out0_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rdy,
      I1 => rst,
      O => out00
    );
out0_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => flaten_gray_in(6),
      I1 => out0_i_3_n_0,
      I2 => flaten_gray_in(7),
      O => p_0_in
    );
out0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => flaten_gray_in(2),
      I1 => flaten_gray_in(1),
      I2 => flaten_gray_in(5),
      I3 => flaten_gray_in(0),
      I4 => flaten_gray_in(3),
      I5 => flaten_gray_in(4),
      O => out0_i_3_n_0
    );
out0_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => out00,
      D => p_0_in,
      Q => out0,
      R => '0'
    );
out1_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => flaten_gray_in(22),
      I1 => out1_i_2_n_0,
      I2 => flaten_gray_in(23),
      O => out1_i_1_n_0
    );
out1_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => flaten_gray_in(18),
      I1 => flaten_gray_in(17),
      I2 => flaten_gray_in(21),
      I3 => flaten_gray_in(16),
      I4 => flaten_gray_in(19),
      I5 => flaten_gray_in(20),
      O => out1_i_2_n_0
    );
out1_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => out00,
      D => out1_i_1_n_0,
      Q => out1,
      R => '0'
    );
out2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => flaten_gray_in(46),
      I1 => out2_i_2_n_0,
      I2 => flaten_gray_in(47),
      O => out2_i_1_n_0
    );
out2_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => flaten_gray_in(42),
      I1 => flaten_gray_in(41),
      I2 => flaten_gray_in(45),
      I3 => flaten_gray_in(40),
      I4 => flaten_gray_in(43),
      I5 => flaten_gray_in(44),
      O => out2_i_2_n_0
    );
out2_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => out00,
      D => out2_i_1_n_0,
      Q => out2,
      R => '0'
    );
out3_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => flaten_gray_in(54),
      I1 => out3_i_2_n_0,
      I2 => flaten_gray_in(55),
      O => out3_i_1_n_0
    );
out3_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => flaten_gray_in(50),
      I1 => flaten_gray_in(49),
      I2 => flaten_gray_in(53),
      I3 => flaten_gray_in(48),
      I4 => flaten_gray_in(51),
      I5 => flaten_gray_in(52),
      O => out3_i_2_n_0
    );
out3_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => out00,
      D => out3_i_1_n_0,
      Q => out3,
      R => '0'
    );
out4_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => flaten_gray_in(38),
      I1 => out4_i_2_n_0,
      I2 => flaten_gray_in(39),
      O => out4_i_1_n_0
    );
out4_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => flaten_gray_in(34),
      I1 => flaten_gray_in(33),
      I2 => flaten_gray_in(37),
      I3 => flaten_gray_in(32),
      I4 => flaten_gray_in(35),
      I5 => flaten_gray_in(36),
      O => out4_i_2_n_0
    );
out4_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => out00,
      D => out4_i_1_n_0,
      Q => out4,
      R => '0'
    );
out5_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => flaten_gray_in(14),
      I1 => out5_i_2_n_0,
      I2 => flaten_gray_in(15),
      O => out5_i_1_n_0
    );
out5_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => flaten_gray_in(10),
      I1 => flaten_gray_in(9),
      I2 => flaten_gray_in(13),
      I3 => flaten_gray_in(8),
      I4 => flaten_gray_in(11),
      I5 => flaten_gray_in(12),
      O => out5_i_2_n_0
    );
out5_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => out00,
      D => out5_i_1_n_0,
      Q => out5,
      R => '0'
    );
out6_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => flaten_gray_in(30),
      I1 => out6_i_2_n_0,
      I2 => flaten_gray_in(31),
      O => out6_i_1_n_0
    );
out6_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => flaten_gray_in(26),
      I1 => flaten_gray_in(25),
      I2 => flaten_gray_in(29),
      I3 => flaten_gray_in(24),
      I4 => flaten_gray_in(27),
      I5 => flaten_gray_in(28),
      O => out6_i_2_n_0
    );
out6_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => out00,
      D => out6_i_1_n_0,
      Q => out6,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity HDMI_bd_gray_scale_reg_0_0 is
  port (
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    rdy : in STD_LOGIC;
    flaten_gray_in : in STD_LOGIC_VECTOR ( 119 downto 0 );
    flaten_gray_out : out STD_LOGIC_VECTOR ( 119 downto 0 );
    out0 : out STD_LOGIC;
    out1 : out STD_LOGIC;
    out2 : out STD_LOGIC;
    out3 : out STD_LOGIC;
    out4 : out STD_LOGIC;
    out5 : out STD_LOGIC;
    out6 : out STD_LOGIC;
    out7 : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of HDMI_bd_gray_scale_reg_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of HDMI_bd_gray_scale_reg_0_0 : entity is "HDMI_bd_gray_scale_reg_0_0,gray_scale_reg,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of HDMI_bd_gray_scale_reg_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of HDMI_bd_gray_scale_reg_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of HDMI_bd_gray_scale_reg_0_0 : entity is "gray_scale_reg,Vivado 2023.1";
end HDMI_bd_gray_scale_reg_0_0;

architecture STRUCTURE of HDMI_bd_gray_scale_reg_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN HDMI_bd_dvi2rgb_0_0_PixelClk, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  flaten_gray_out(119) <= \<const0>\;
  flaten_gray_out(118) <= \<const0>\;
  flaten_gray_out(117) <= \<const0>\;
  flaten_gray_out(116) <= \<const0>\;
  flaten_gray_out(115) <= \<const0>\;
  flaten_gray_out(114) <= \<const0>\;
  flaten_gray_out(113) <= \<const0>\;
  flaten_gray_out(112) <= \<const0>\;
  flaten_gray_out(111) <= \<const0>\;
  flaten_gray_out(110) <= \<const0>\;
  flaten_gray_out(109) <= \<const0>\;
  flaten_gray_out(108) <= \<const0>\;
  flaten_gray_out(107) <= \<const0>\;
  flaten_gray_out(106) <= \<const0>\;
  flaten_gray_out(105) <= \<const0>\;
  flaten_gray_out(104) <= \<const0>\;
  flaten_gray_out(103) <= \<const0>\;
  flaten_gray_out(102) <= \<const0>\;
  flaten_gray_out(101) <= \<const0>\;
  flaten_gray_out(100) <= \<const0>\;
  flaten_gray_out(99) <= \<const0>\;
  flaten_gray_out(98) <= \<const0>\;
  flaten_gray_out(97) <= \<const0>\;
  flaten_gray_out(96) <= \<const0>\;
  flaten_gray_out(95) <= \<const0>\;
  flaten_gray_out(94) <= \<const0>\;
  flaten_gray_out(93) <= \<const0>\;
  flaten_gray_out(92) <= \<const0>\;
  flaten_gray_out(91) <= \<const0>\;
  flaten_gray_out(90) <= \<const0>\;
  flaten_gray_out(89) <= \<const0>\;
  flaten_gray_out(88) <= \<const0>\;
  flaten_gray_out(87) <= \<const0>\;
  flaten_gray_out(86) <= \<const0>\;
  flaten_gray_out(85) <= \<const0>\;
  flaten_gray_out(84) <= \<const0>\;
  flaten_gray_out(83) <= \<const0>\;
  flaten_gray_out(82) <= \<const0>\;
  flaten_gray_out(81) <= \<const0>\;
  flaten_gray_out(80) <= \<const0>\;
  flaten_gray_out(79) <= \<const0>\;
  flaten_gray_out(78) <= \<const0>\;
  flaten_gray_out(77) <= \<const0>\;
  flaten_gray_out(76) <= \<const0>\;
  flaten_gray_out(75) <= \<const0>\;
  flaten_gray_out(74) <= \<const0>\;
  flaten_gray_out(73) <= \<const0>\;
  flaten_gray_out(72) <= \<const0>\;
  flaten_gray_out(71) <= \<const0>\;
  flaten_gray_out(70) <= \<const0>\;
  flaten_gray_out(69) <= \<const0>\;
  flaten_gray_out(68) <= \<const0>\;
  flaten_gray_out(67) <= \<const0>\;
  flaten_gray_out(66) <= \<const0>\;
  flaten_gray_out(65) <= \<const0>\;
  flaten_gray_out(64) <= \<const0>\;
  flaten_gray_out(63) <= \<const0>\;
  flaten_gray_out(62) <= \<const0>\;
  flaten_gray_out(61) <= \<const0>\;
  flaten_gray_out(60) <= \<const0>\;
  flaten_gray_out(59) <= \<const0>\;
  flaten_gray_out(58) <= \<const0>\;
  flaten_gray_out(57) <= \<const0>\;
  flaten_gray_out(56) <= \<const0>\;
  flaten_gray_out(55) <= \<const0>\;
  flaten_gray_out(54) <= \<const0>\;
  flaten_gray_out(53) <= \<const0>\;
  flaten_gray_out(52) <= \<const0>\;
  flaten_gray_out(51) <= \<const0>\;
  flaten_gray_out(50) <= \<const0>\;
  flaten_gray_out(49) <= \<const0>\;
  flaten_gray_out(48) <= \<const0>\;
  flaten_gray_out(47) <= \<const0>\;
  flaten_gray_out(46) <= \<const0>\;
  flaten_gray_out(45) <= \<const0>\;
  flaten_gray_out(44) <= \<const0>\;
  flaten_gray_out(43) <= \<const0>\;
  flaten_gray_out(42) <= \<const0>\;
  flaten_gray_out(41) <= \<const0>\;
  flaten_gray_out(40) <= \<const0>\;
  flaten_gray_out(39) <= \<const0>\;
  flaten_gray_out(38) <= \<const0>\;
  flaten_gray_out(37) <= \<const0>\;
  flaten_gray_out(36) <= \<const0>\;
  flaten_gray_out(35) <= \<const0>\;
  flaten_gray_out(34) <= \<const0>\;
  flaten_gray_out(33) <= \<const0>\;
  flaten_gray_out(32) <= \<const0>\;
  flaten_gray_out(31) <= \<const0>\;
  flaten_gray_out(30) <= \<const0>\;
  flaten_gray_out(29) <= \<const0>\;
  flaten_gray_out(28) <= \<const0>\;
  flaten_gray_out(27) <= \<const0>\;
  flaten_gray_out(26) <= \<const0>\;
  flaten_gray_out(25) <= \<const0>\;
  flaten_gray_out(24) <= \<const0>\;
  flaten_gray_out(23) <= \<const0>\;
  flaten_gray_out(22) <= \<const0>\;
  flaten_gray_out(21) <= \<const0>\;
  flaten_gray_out(20) <= \<const0>\;
  flaten_gray_out(19) <= \<const0>\;
  flaten_gray_out(18) <= \<const0>\;
  flaten_gray_out(17) <= \<const0>\;
  flaten_gray_out(16) <= \<const0>\;
  flaten_gray_out(15) <= \<const0>\;
  flaten_gray_out(14) <= \<const0>\;
  flaten_gray_out(13) <= \<const0>\;
  flaten_gray_out(12) <= \<const0>\;
  flaten_gray_out(11) <= \<const0>\;
  flaten_gray_out(10) <= \<const0>\;
  flaten_gray_out(9) <= \<const0>\;
  flaten_gray_out(8) <= \<const0>\;
  flaten_gray_out(7) <= \<const0>\;
  flaten_gray_out(6) <= \<const0>\;
  flaten_gray_out(5) <= \<const0>\;
  flaten_gray_out(4) <= \<const0>\;
  flaten_gray_out(3) <= \<const0>\;
  flaten_gray_out(2) <= \<const0>\;
  flaten_gray_out(1) <= \<const0>\;
  flaten_gray_out(0) <= \<const0>\;
  out7 <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.HDMI_bd_gray_scale_reg_0_0_gray_scale_reg
     port map (
      clk => clk,
      flaten_gray_in(55 downto 48) => flaten_gray_in(111 downto 104),
      flaten_gray_in(47 downto 40) => flaten_gray_in(95 downto 88),
      flaten_gray_in(39 downto 32) => flaten_gray_in(79 downto 72),
      flaten_gray_in(31 downto 24) => flaten_gray_in(63 downto 56),
      flaten_gray_in(23 downto 16) => flaten_gray_in(47 downto 40),
      flaten_gray_in(15 downto 8) => flaten_gray_in(31 downto 24),
      flaten_gray_in(7 downto 0) => flaten_gray_in(15 downto 8),
      out0 => out0,
      out1 => out1,
      out2 => out2,
      out3 => out3,
      out4 => out4,
      out5 => out5,
      out6 => out6,
      rdy => rdy,
      rst => rst
    );
end STRUCTURE;
