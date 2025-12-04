-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Wed Dec  3 21:52:00 2025
-- Host        : pcetu-199 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/laemo10/Desktop/Labo4_FPGA/ZYBO_HDMI_MGA_2018_2/project_1/project_1.srcs/sources_1/bd/HDMI_bd/ip/HDMI_bd_digit_detection_0_0/HDMI_bd_digit_detection_0_0_sim_netlist.vhdl
-- Design      : HDMI_bd_digit_detection_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity HDMI_bd_digit_detection_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    h_count : in STD_LOGIC_VECTOR ( 31 downto 0 );
    v_count : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pixel_valid : in STD_LOGIC;
    new_frame : in STD_LOGIC;
    rgb_in : in STD_LOGIC_VECTOR ( 23 downto 0 );
    seven_seg_out : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of HDMI_bd_digit_detection_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of HDMI_bd_digit_detection_0_0 : entity is "HDMI_bd_digit_detection_0_0,digit_detection,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of HDMI_bd_digit_detection_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of HDMI_bd_digit_detection_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of HDMI_bd_digit_detection_0_0 : entity is "digit_detection,Vivado 2023.1";
end HDMI_bd_digit_detection_0_0;

architecture STRUCTURE of HDMI_bd_digit_detection_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN HDMI_bd_dvi2rgb_0_0_PixelClk, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  seven_seg_out(6) <= \<const0>\;
  seven_seg_out(5) <= \<const0>\;
  seven_seg_out(4) <= \<const0>\;
  seven_seg_out(3) <= \<const0>\;
  seven_seg_out(2) <= \<const0>\;
  seven_seg_out(1) <= \<const0>\;
  seven_seg_out(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
