-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Wed Dec  3 21:36:07 2025
-- Host        : pcetu-199 running 64-bit major release  (build 9200)
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
entity HDMI_bd_speed_detection_0_0 is
  port (
    digit_in : in STD_LOGIC_VECTOR ( 6 downto 0 );
    out0 : out STD_LOGIC;
    out1 : out STD_LOGIC;
    out2 : out STD_LOGIC;
    out3 : out STD_LOGIC;
    out4 : out STD_LOGIC;
    out5 : out STD_LOGIC;
    out6 : out STD_LOGIC
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
  signal \^digit_in\ : STD_LOGIC_VECTOR ( 6 downto 0 );
begin
  \^digit_in\(6 downto 0) <= digit_in(6 downto 0);
  out0 <= \^digit_in\(0);
  out1 <= \^digit_in\(1);
  out2 <= \^digit_in\(2);
  out3 <= \^digit_in\(3);
  out4 <= \^digit_in\(4);
  out5 <= \^digit_in\(5);
  out6 <= \^digit_in\(6);
end STRUCTURE;
