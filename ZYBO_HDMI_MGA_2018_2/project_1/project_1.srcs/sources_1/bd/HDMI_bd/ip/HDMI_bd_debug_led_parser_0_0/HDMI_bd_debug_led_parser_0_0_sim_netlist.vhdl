-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Fri Nov 28 00:48:30 2025
-- Host        : pcetu-139 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/laemo10/Desktop/Labo4_FPGA/ZYBO_HDMI_MGA_2018_2/project_1/project_1.srcs/sources_1/bd/HDMI_bd/ip/HDMI_bd_debug_led_parser_0_0/HDMI_bd_debug_led_parser_0_0_sim_netlist.vhdl
-- Design      : HDMI_bd_debug_led_parser_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity HDMI_bd_debug_led_parser_0_0 is
  port (
    grid_in : in STD_LOGIC_VECTOR ( 255 downto 0 );
    out0 : out STD_LOGIC;
    out1 : out STD_LOGIC;
    out2 : out STD_LOGIC;
    out3 : out STD_LOGIC;
    out4 : out STD_LOGIC;
    out5 : out STD_LOGIC;
    out6 : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of HDMI_bd_debug_led_parser_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of HDMI_bd_debug_led_parser_0_0 : entity is "HDMI_bd_debug_led_parser_0_0,debug_led_parser,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of HDMI_bd_debug_led_parser_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of HDMI_bd_debug_led_parser_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of HDMI_bd_debug_led_parser_0_0 : entity is "debug_led_parser,Vivado 2023.1";
end HDMI_bd_debug_led_parser_0_0;

architecture STRUCTURE of HDMI_bd_debug_led_parser_0_0 is
  signal \^grid_in\ : STD_LOGIC_VECTOR ( 255 downto 0 );
begin
  \^grid_in\(6 downto 0) <= grid_in(6 downto 0);
  out0 <= \^grid_in\(0);
  out1 <= \^grid_in\(1);
  out2 <= \^grid_in\(2);
  out3 <= \^grid_in\(3);
  out4 <= \^grid_in\(4);
  out5 <= \^grid_in\(5);
  out6 <= \^grid_in\(6);
end STRUCTURE;
