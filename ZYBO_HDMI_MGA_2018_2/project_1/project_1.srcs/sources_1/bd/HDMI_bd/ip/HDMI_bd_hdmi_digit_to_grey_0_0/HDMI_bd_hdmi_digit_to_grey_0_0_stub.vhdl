-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Tue Dec  2 00:26:37 2025
-- Host        : pcetu-125 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/laemo10/Desktop/Labo4_FPGA/ZYBO_HDMI_MGA_2018_2/project_1/project_1.srcs/sources_1/bd/HDMI_bd/ip/HDMI_bd_hdmi_digit_to_grey_0_0/HDMI_bd_hdmi_digit_to_grey_0_0_stub.vhdl
-- Design      : HDMI_bd_hdmi_digit_to_grey_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity HDMI_bd_hdmi_digit_to_grey_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    h_count : in STD_LOGIC_VECTOR ( 31 downto 0 );
    v_count : in STD_LOGIC_VECTOR ( 31 downto 0 );
    vde_in : in STD_LOGIC;
    hsync_in : in STD_LOGIC;
    vsync_in : in STD_LOGIC;
    rgb_in : in STD_LOGIC_VECTOR ( 23 downto 0 );
    valid_pixel : out STD_LOGIC;
    current_row : out STD_LOGIC_VECTOR ( 7 downto 0 );
    current_column : out STD_LOGIC_VECTOR ( 7 downto 0 );
    pixel_value : out STD_LOGIC_VECTOR ( 7 downto 0 );
    end_of_frame : out STD_LOGIC
  );

end HDMI_bd_hdmi_digit_to_grey_0_0;

architecture stub of HDMI_bd_hdmi_digit_to_grey_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,h_count[31:0],v_count[31:0],vde_in,hsync_in,vsync_in,rgb_in[23:0],valid_pixel,current_row[7:0],current_column[7:0],pixel_value[7:0],end_of_frame";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "hdmi_digit_to_grey,Vivado 2023.1";
begin
end;
