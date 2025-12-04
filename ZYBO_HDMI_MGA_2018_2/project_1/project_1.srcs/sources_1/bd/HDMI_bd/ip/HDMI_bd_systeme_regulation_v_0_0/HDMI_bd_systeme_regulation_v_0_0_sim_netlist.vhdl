-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Thu Dec  4 16:45:03 2025
-- Host        : pcetu-129 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/laemo10/Desktop/Labo4_FPGA/ZYBO_HDMI_MGA_2018_2/project_1/project_1.srcs/sources_1/bd/HDMI_bd/ip/HDMI_bd_systeme_regulation_v_0_0/HDMI_bd_systeme_regulation_v_0_0_sim_netlist.vhdl
-- Design      : HDMI_bd_systeme_regulation_v_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity HDMI_bd_systeme_regulation_v_0_0_gen_vitesse is
  port (
    vitesse_vehicule : out STD_LOGIC_VECTOR ( 7 downto 0 );
    vitesse_panneau_valid : in STD_LOGIC;
    vitesse_panneau_camera : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of HDMI_bd_systeme_regulation_v_0_0_gen_vitesse : entity is "gen_vitesse";
end HDMI_bd_systeme_regulation_v_0_0_gen_vitesse;

architecture STRUCTURE of HDMI_bd_systeme_regulation_v_0_0_gen_vitesse is
begin
\vitess_futur_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => vitesse_panneau_valid,
      CLR => reset,
      D => vitesse_panneau_camera(0),
      Q => vitesse_vehicule(0)
    );
\vitess_futur_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => vitesse_panneau_valid,
      D => vitesse_panneau_camera(1),
      PRE => reset,
      Q => vitesse_vehicule(1)
    );
\vitess_futur_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => vitesse_panneau_valid,
      CLR => reset,
      D => vitesse_panneau_camera(2),
      Q => vitesse_vehicule(2)
    );
\vitess_futur_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => vitesse_panneau_valid,
      CLR => reset,
      D => vitesse_panneau_camera(3),
      Q => vitesse_vehicule(3)
    );
\vitess_futur_reg[4]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => vitesse_panneau_valid,
      D => vitesse_panneau_camera(4),
      PRE => reset,
      Q => vitesse_vehicule(4)
    );
\vitess_futur_reg[5]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => vitesse_panneau_valid,
      D => vitesse_panneau_camera(5),
      PRE => reset,
      Q => vitesse_vehicule(5)
    );
\vitess_futur_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => vitesse_panneau_valid,
      CLR => reset,
      D => vitesse_panneau_camera(6),
      Q => vitesse_vehicule(6)
    );
\vitess_futur_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => vitesse_panneau_valid,
      CLR => reset,
      D => vitesse_panneau_camera(7),
      Q => vitesse_vehicule(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity HDMI_bd_systeme_regulation_v_0_0_systeme_regulation_vitesse is
  port (
    vitesse_vehicule : out STD_LOGIC_VECTOR ( 7 downto 0 );
    vitesse_panneau_valid : in STD_LOGIC;
    vitesse_panneau_camera : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of HDMI_bd_systeme_regulation_v_0_0_systeme_regulation_vitesse : entity is "systeme_regulation_vitesse";
end HDMI_bd_systeme_regulation_v_0_0_systeme_regulation_vitesse;

architecture STRUCTURE of HDMI_bd_systeme_regulation_v_0_0_systeme_regulation_vitesse is
begin
U_GENERATEUR: entity work.HDMI_bd_systeme_regulation_v_0_0_gen_vitesse
     port map (
      clk => clk,
      reset => reset,
      vitesse_panneau_camera(7 downto 0) => vitesse_panneau_camera(7 downto 0),
      vitesse_panneau_valid => vitesse_panneau_valid,
      vitesse_vehicule(7 downto 0) => vitesse_vehicule(7 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity HDMI_bd_systeme_regulation_v_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    vitesse_panneau_camera : in STD_LOGIC_VECTOR ( 7 downto 0 );
    vitesse_panneau_valid : in STD_LOGIC;
    vitesse_vehicule : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of HDMI_bd_systeme_regulation_v_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of HDMI_bd_systeme_regulation_v_0_0 : entity is "HDMI_bd_systeme_regulation_v_0_0,systeme_regulation_vitesse,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of HDMI_bd_systeme_regulation_v_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of HDMI_bd_systeme_regulation_v_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of HDMI_bd_systeme_regulation_v_0_0 : entity is "systeme_regulation_vitesse,Vivado 2023.1";
end HDMI_bd_systeme_regulation_v_0_0;

architecture STRUCTURE of HDMI_bd_systeme_regulation_v_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN HDMI_bd_dvi2rgb_0_0_PixelClk, INSERT_VIP 0";
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.HDMI_bd_systeme_regulation_v_0_0_systeme_regulation_vitesse
     port map (
      clk => clk,
      reset => reset,
      vitesse_panneau_camera(7 downto 0) => vitesse_panneau_camera(7 downto 0),
      vitesse_panneau_valid => vitesse_panneau_valid,
      vitesse_vehicule(7 downto 0) => vitesse_vehicule(7 downto 0)
    );
end STRUCTURE;
