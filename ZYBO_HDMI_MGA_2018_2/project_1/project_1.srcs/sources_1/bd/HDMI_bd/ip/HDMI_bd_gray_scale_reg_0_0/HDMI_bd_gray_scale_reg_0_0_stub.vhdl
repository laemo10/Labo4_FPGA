-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Fri Nov 28 00:51:20 2025
-- Host        : pcetu-139 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/laemo10/Desktop/Labo4_FPGA/ZYBO_HDMI_MGA_2018_2/project_1/project_1.srcs/sources_1/bd/HDMI_bd/ip/HDMI_bd_gray_scale_reg_0_0/HDMI_bd_gray_scale_reg_0_0_stub.vhdl
-- Design      : HDMI_bd_gray_scale_reg_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity HDMI_bd_gray_scale_reg_0_0 is
  Port ( 
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    rdy : in STD_LOGIC;
    grid_in : in STD_LOGIC_VECTOR ( 255 downto 0 );
    grid_out : out STD_LOGIC_VECTOR ( 255 downto 0 )
  );

end HDMI_bd_gray_scale_reg_0_0;

architecture stub of HDMI_bd_gray_scale_reg_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "rst,clk,rdy,grid_in[255:0],grid_out[255:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "gray_scale_reg,Vivado 2023.1";
begin
end;
