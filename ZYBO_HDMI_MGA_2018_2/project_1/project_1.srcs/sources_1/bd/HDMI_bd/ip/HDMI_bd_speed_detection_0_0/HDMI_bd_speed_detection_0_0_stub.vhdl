-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Wed Dec  3 21:36:07 2025
-- Host        : pcetu-199 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/laemo10/Desktop/Labo4_FPGA/ZYBO_HDMI_MGA_2018_2/project_1/project_1.srcs/sources_1/bd/HDMI_bd/ip/HDMI_bd_speed_detection_0_0/HDMI_bd_speed_detection_0_0_stub.vhdl
-- Design      : HDMI_bd_speed_detection_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity HDMI_bd_speed_detection_0_0 is
  Port ( 
    digit_in : in STD_LOGIC_VECTOR ( 6 downto 0 );
    out0 : out STD_LOGIC;
    out1 : out STD_LOGIC;
    out2 : out STD_LOGIC;
    out3 : out STD_LOGIC;
    out4 : out STD_LOGIC;
    out5 : out STD_LOGIC;
    out6 : out STD_LOGIC
  );

end HDMI_bd_speed_detection_0_0;

architecture stub of HDMI_bd_speed_detection_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "digit_in[6:0],out0,out1,out2,out3,out4,out5,out6";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "speed_detection,Vivado 2023.1";
begin
end;
