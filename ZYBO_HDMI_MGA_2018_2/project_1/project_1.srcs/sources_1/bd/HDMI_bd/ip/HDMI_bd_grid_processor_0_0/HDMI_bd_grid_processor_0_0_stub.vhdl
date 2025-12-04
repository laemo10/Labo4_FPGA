-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Tue Dec  2 00:37:37 2025
-- Host        : pcetu-125 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/laemo10/Desktop/Labo4_FPGA/ZYBO_HDMI_MGA_2018_2/project_1/project_1.srcs/sources_1/bd/HDMI_bd/ip/HDMI_bd_grid_processor_0_0/HDMI_bd_grid_processor_0_0_stub.vhdl
-- Design      : HDMI_bd_grid_processor_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity HDMI_bd_grid_processor_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    valid_pixel : in STD_LOGIC;
    pixel_row : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pixel_col : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pixel_val : in STD_LOGIC_VECTOR ( 7 downto 0 );
    frame_done : in STD_LOGIC;
    flattened_out : out STD_LOGIC_VECTOR ( 119 downto 0 );
    data_ready : out STD_LOGIC
  );

end HDMI_bd_grid_processor_0_0;

architecture stub of HDMI_bd_grid_processor_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,reset,valid_pixel,pixel_row[7:0],pixel_col[7:0],pixel_val[7:0],frame_done,flattened_out[119:0],data_ready";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "grid_processor,Vivado 2023.1";
begin
end;
