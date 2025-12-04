-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Thu Dec  4 11:22:46 2025
-- Host        : pcetu-129 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/laemo10/Desktop/Labo4_FPGA/ZYBO_HDMI_MGA_2018_2/project_1/project_1.srcs/sources_1/bd/HDMI_bd/ip/HDMI_bd_speed_detection_0_0/HDMI_bd_speed_detection_0_0_sim_netlist.vhdl
-- Design      : HDMI_bd_speed_detection_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity HDMI_bd_speed_detection_0_0_speed_detection is
  port (
    speed_out : out STD_LOGIC_VECTOR ( 5 downto 0 );
    speed_valid : out STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    grid_in : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of HDMI_bd_speed_detection_0_0_speed_detection : entity is "speed_detection";
end HDMI_bd_speed_detection_0_0_speed_detection;

architecture STRUCTURE of HDMI_bd_speed_detection_0_0_speed_detection is
  signal p_0_out : STD_LOGIC_VECTOR ( 6 downto 1 );
  signal \speed_out[1]_i_2_n_0\ : STD_LOGIC;
  signal \speed_out[1]_i_3_n_0\ : STD_LOGIC;
  signal \speed_out[2]_i_2_n_0\ : STD_LOGIC;
  signal \speed_out[3]_i_2_n_0\ : STD_LOGIC;
  signal \speed_out[4]_i_2_n_0\ : STD_LOGIC;
  signal \speed_out[5]_i_2_n_0\ : STD_LOGIC;
  signal \speed_out[5]_i_3_n_0\ : STD_LOGIC;
  signal \speed_out[6]_i_1_n_0\ : STD_LOGIC;
  signal \speed_out[6]_i_3_n_0\ : STD_LOGIC;
  signal \speed_out[6]_i_4_n_0\ : STD_LOGIC;
  signal \speed_out[6]_i_5_n_0\ : STD_LOGIC;
  signal \speed_out[6]_i_6_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \speed_out[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \speed_out[4]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \speed_out[5]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \speed_out[6]_i_2\ : label is "soft_lutpair0";
begin
\speed_out[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFFFFFFFFFF"
    )
        port map (
      I0 => grid_in(3),
      I1 => grid_in(5),
      I2 => grid_in(4),
      I3 => grid_in(2),
      I4 => grid_in(6),
      I5 => grid_in(1),
      O => \speed_out[1]_i_2_n_0\
    );
\speed_out[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77FFBFFFFFFFFFFF"
    )
        port map (
      I0 => grid_in(1),
      I1 => grid_in(6),
      I2 => grid_in(2),
      I3 => grid_in(4),
      I4 => grid_in(5),
      I5 => grid_in(3),
      O => \speed_out[1]_i_3_n_0\
    );
\speed_out[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \speed_out[2]_i_2_n_0\,
      I1 => grid_in(0),
      O => p_0_out(2)
    );
\speed_out[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0480400000001000"
    )
        port map (
      I0 => grid_in(1),
      I1 => grid_in(3),
      I2 => grid_in(5),
      I3 => grid_in(2),
      I4 => grid_in(4),
      I5 => grid_in(6),
      O => \speed_out[2]_i_2_n_0\
    );
\speed_out[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \speed_out[3]_i_2_n_0\,
      I1 => grid_in(0),
      O => p_0_out(3)
    );
\speed_out[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7BFFFF7FFFEFFFFF"
    )
        port map (
      I0 => grid_in(1),
      I1 => grid_in(3),
      I2 => grid_in(5),
      I3 => grid_in(4),
      I4 => grid_in(2),
      I5 => grid_in(6),
      O => \speed_out[3]_i_2_n_0\
    );
\speed_out[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFFFCFFFFFF"
    )
        port map (
      I0 => grid_in(0),
      I1 => grid_in(1),
      I2 => grid_in(6),
      I3 => \speed_out[4]_i_2_n_0\,
      I4 => grid_in(5),
      I5 => grid_in(3),
      O => p_0_out(4)
    );
\speed_out[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => grid_in(2),
      I1 => grid_in(4),
      O => \speed_out[4]_i_2_n_0\
    );
\speed_out[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7040000000000000"
    )
        port map (
      I0 => \speed_out[5]_i_2_n_0\,
      I1 => grid_in(0),
      I2 => grid_in(3),
      I3 => \speed_out[5]_i_3_n_0\,
      I4 => grid_in(6),
      I5 => grid_in(1),
      O => p_0_out(5)
    );
\speed_out[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => grid_in(2),
      I1 => grid_in(5),
      O => \speed_out[5]_i_2_n_0\
    );
\speed_out[5]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => grid_in(4),
      I1 => grid_in(2),
      I2 => grid_in(5),
      O => \speed_out[5]_i_3_n_0\
    );
\speed_out[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \speed_out[6]_i_3_n_0\,
      I1 => grid_in(0),
      I2 => \speed_out[6]_i_4_n_0\,
      I3 => grid_in(7),
      O => \speed_out[6]_i_1_n_0\
    );
\speed_out[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \speed_out[6]_i_5_n_0\,
      I1 => grid_in(0),
      I2 => \speed_out[6]_i_6_n_0\,
      O => p_0_out(6)
    );
\speed_out[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000001000000"
    )
        port map (
      I0 => grid_in(1),
      I1 => grid_in(6),
      I2 => grid_in(4),
      I3 => grid_in(2),
      I4 => grid_in(5),
      I5 => grid_in(3),
      O => \speed_out[6]_i_3_n_0\
    );
\speed_out[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8480408000009000"
    )
        port map (
      I0 => grid_in(1),
      I1 => grid_in(3),
      I2 => grid_in(5),
      I3 => grid_in(2),
      I4 => grid_in(4),
      I5 => grid_in(6),
      O => \speed_out[6]_i_4_n_0\
    );
\speed_out[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBBF7F7FFFFFFFFF"
    )
        port map (
      I0 => grid_in(1),
      I1 => grid_in(6),
      I2 => grid_in(5),
      I3 => grid_in(4),
      I4 => grid_in(2),
      I5 => grid_in(3),
      O => \speed_out[6]_i_5_n_0\
    );
\speed_out[6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7FFFFFFFEFFFFF"
    )
        port map (
      I0 => grid_in(1),
      I1 => grid_in(6),
      I2 => grid_in(2),
      I3 => grid_in(4),
      I4 => grid_in(5),
      I5 => grid_in(3),
      O => \speed_out[6]_i_6_n_0\
    );
\speed_out_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \speed_out[6]_i_1_n_0\,
      CLR => rst,
      D => p_0_out(1),
      Q => speed_out(0)
    );
\speed_out_reg[1]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \speed_out[1]_i_2_n_0\,
      I1 => \speed_out[1]_i_3_n_0\,
      O => p_0_out(1),
      S => grid_in(0)
    );
\speed_out_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \speed_out[6]_i_1_n_0\,
      CLR => rst,
      D => p_0_out(2),
      Q => speed_out(1)
    );
\speed_out_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \speed_out[6]_i_1_n_0\,
      CLR => rst,
      D => p_0_out(3),
      Q => speed_out(2)
    );
\speed_out_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \speed_out[6]_i_1_n_0\,
      CLR => rst,
      D => p_0_out(4),
      Q => speed_out(3)
    );
\speed_out_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \speed_out[6]_i_1_n_0\,
      CLR => rst,
      D => p_0_out(5),
      Q => speed_out(4)
    );
\speed_out_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \speed_out[6]_i_1_n_0\,
      CLR => rst,
      D => p_0_out(6),
      Q => speed_out(5)
    );
speed_valid_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \speed_out[6]_i_1_n_0\,
      Q => speed_valid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity HDMI_bd_speed_detection_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    grid_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    speed_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    speed_valid : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of HDMI_bd_speed_detection_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of HDMI_bd_speed_detection_0_0 : entity is "HDMI_bd_speed_detection_0_0,speed_detection,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of HDMI_bd_speed_detection_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of HDMI_bd_speed_detection_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of HDMI_bd_speed_detection_0_0 : entity is "speed_detection,Vivado 2023.1";
end HDMI_bd_speed_detection_0_0;

architecture STRUCTURE of HDMI_bd_speed_detection_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^speed_out\ : STD_LOGIC_VECTOR ( 6 downto 1 );
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN HDMI_bd_dvi2rgb_0_0_PixelClk, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  speed_out(7) <= \<const0>\;
  speed_out(6 downto 1) <= \^speed_out\(6 downto 1);
  speed_out(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.HDMI_bd_speed_detection_0_0_speed_detection
     port map (
      clk => clk,
      grid_in(7 downto 0) => grid_in(7 downto 0),
      rst => rst,
      speed_out(5 downto 0) => \^speed_out\(6 downto 1),
      speed_valid => speed_valid
    );
end STRUCTURE;
