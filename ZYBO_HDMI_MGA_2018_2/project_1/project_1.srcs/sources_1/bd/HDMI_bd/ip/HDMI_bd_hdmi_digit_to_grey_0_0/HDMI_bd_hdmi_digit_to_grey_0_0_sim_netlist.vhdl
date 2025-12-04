-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Tue Dec  2 00:26:37 2025
-- Host        : pcetu-125 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/laemo10/Desktop/Labo4_FPGA/ZYBO_HDMI_MGA_2018_2/project_1/project_1.srcs/sources_1/bd/HDMI_bd/ip/HDMI_bd_hdmi_digit_to_grey_0_0/HDMI_bd_hdmi_digit_to_grey_0_0_sim_netlist.vhdl
-- Design      : HDMI_bd_hdmi_digit_to_grey_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity HDMI_bd_hdmi_digit_to_grey_0_0_hdmi_digit_to_grey is
  port (
    valid_pixel : out STD_LOGIC;
    current_row : out STD_LOGIC_VECTOR ( 3 downto 0 );
    current_column : out STD_LOGIC_VECTOR ( 1 downto 0 );
    pixel_value : out STD_LOGIC_VECTOR ( 7 downto 0 );
    end_of_frame : out STD_LOGIC;
    rgb_in : in STD_LOGIC_VECTOR ( 23 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    vde_in : in STD_LOGIC;
    v_count : in STD_LOGIC_VECTOR ( 31 downto 0 );
    h_count : in STD_LOGIC_VECTOR ( 31 downto 0 );
    vsync_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of HDMI_bd_hdmi_digit_to_grey_0_0_hdmi_digit_to_grey : entity is "hdmi_digit_to_grey";
end HDMI_bd_hdmi_digit_to_grey_0_0_hdmi_digit_to_grey;

architecture STRUCTURE of HDMI_bd_hdmi_digit_to_grey_0_0_hdmi_digit_to_grey is
  signal C : STD_LOGIC_VECTOR ( 14 downto 1 );
  signal \^end_of_frame\ : STD_LOGIC;
  signal \grey_value_reg0__41_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \grey_value_reg0__41_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \grey_value_reg0__41_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \grey_value_reg0__41_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \grey_value_reg0__41_carry__0_n_0\ : STD_LOGIC;
  signal \grey_value_reg0__41_carry__0_n_1\ : STD_LOGIC;
  signal \grey_value_reg0__41_carry__0_n_2\ : STD_LOGIC;
  signal \grey_value_reg0__41_carry__0_n_3\ : STD_LOGIC;
  signal \grey_value_reg0__41_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \grey_value_reg0__41_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \grey_value_reg0__41_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \grey_value_reg0__41_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \grey_value_reg0__41_carry__1_n_0\ : STD_LOGIC;
  signal \grey_value_reg0__41_carry__1_n_1\ : STD_LOGIC;
  signal \grey_value_reg0__41_carry__1_n_2\ : STD_LOGIC;
  signal \grey_value_reg0__41_carry__1_n_3\ : STD_LOGIC;
  signal \grey_value_reg0__41_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \grey_value_reg0__41_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \grey_value_reg0__41_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \grey_value_reg0__41_carry__2_n_2\ : STD_LOGIC;
  signal \grey_value_reg0__41_carry__2_n_3\ : STD_LOGIC;
  signal \grey_value_reg0__41_carry_i_1_n_0\ : STD_LOGIC;
  signal \grey_value_reg0__41_carry_i_2_n_0\ : STD_LOGIC;
  signal \grey_value_reg0__41_carry_i_3_n_0\ : STD_LOGIC;
  signal \grey_value_reg0__41_carry_i_4_n_0\ : STD_LOGIC;
  signal \grey_value_reg0__41_carry_n_0\ : STD_LOGIC;
  signal \grey_value_reg0__41_carry_n_1\ : STD_LOGIC;
  signal \grey_value_reg0__41_carry_n_2\ : STD_LOGIC;
  signal \grey_value_reg0__41_carry_n_3\ : STD_LOGIC;
  signal \grey_value_reg0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \grey_value_reg0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \grey_value_reg0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \grey_value_reg0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \grey_value_reg0_carry__0_n_0\ : STD_LOGIC;
  signal \grey_value_reg0_carry__0_n_1\ : STD_LOGIC;
  signal \grey_value_reg0_carry__0_n_2\ : STD_LOGIC;
  signal \grey_value_reg0_carry__0_n_3\ : STD_LOGIC;
  signal \grey_value_reg0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \grey_value_reg0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \grey_value_reg0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \grey_value_reg0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \grey_value_reg0_carry__1_n_0\ : STD_LOGIC;
  signal \grey_value_reg0_carry__1_n_1\ : STD_LOGIC;
  signal \grey_value_reg0_carry__1_n_2\ : STD_LOGIC;
  signal \grey_value_reg0_carry__1_n_3\ : STD_LOGIC;
  signal \grey_value_reg0_carry__2_i_1_n_3\ : STD_LOGIC;
  signal \grey_value_reg0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \grey_value_reg0_carry__2_n_0\ : STD_LOGIC;
  signal \grey_value_reg0_carry__2_n_2\ : STD_LOGIC;
  signal \grey_value_reg0_carry__2_n_3\ : STD_LOGIC;
  signal grey_value_reg0_carry_i_1_n_0 : STD_LOGIC;
  signal grey_value_reg0_carry_i_2_n_0 : STD_LOGIC;
  signal grey_value_reg0_carry_i_3_n_0 : STD_LOGIC;
  signal grey_value_reg0_carry_i_4_n_0 : STD_LOGIC;
  signal grey_value_reg0_carry_n_0 : STD_LOGIC;
  signal grey_value_reg0_carry_n_1 : STD_LOGIC;
  signal grey_value_reg0_carry_n_2 : STD_LOGIC;
  signal grey_value_reg0_carry_n_3 : STD_LOGIC;
  signal grid_i : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \grid_i_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \grid_i_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \grid_i_reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \grid_i_reg[0]_i_5_n_0\ : STD_LOGIC;
  signal \grid_i_reg[0]_i_6_n_0\ : STD_LOGIC;
  signal \grid_i_reg[0]_i_7_n_0\ : STD_LOGIC;
  signal \grid_i_reg[0]_i_8_n_0\ : STD_LOGIC;
  signal \grid_i_reg[0]_i_9_n_0\ : STD_LOGIC;
  signal \grid_i_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \grid_i_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \grid_i_reg[1]_i_4_n_0\ : STD_LOGIC;
  signal \grid_i_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \grid_i_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \grid_i_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \grid_i_reg[7]_i_4_n_0\ : STD_LOGIC;
  signal \grid_i_reg[7]_i_5_n_0\ : STD_LOGIC;
  signal \grid_i_reg[7]_i_6_n_0\ : STD_LOGIC;
  signal \grid_i_reg[7]_i_7_n_0\ : STD_LOGIC;
  signal \grid_i_reg[7]_i_8_n_0\ : STD_LOGIC;
  signal \grid_i_reg[7]_i_9_n_0\ : STD_LOGIC;
  signal grid_j : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \grid_j_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \grid_j_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \grid_j_reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \grid_j_reg[0]_i_5_n_0\ : STD_LOGIC;
  signal \grid_j_reg[0]_i_6_n_0\ : STD_LOGIC;
  signal \grid_j_reg[0]_i_7_n_0\ : STD_LOGIC;
  signal \grid_j_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \grid_j_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \grid_j_reg[1]_i_4_n_0\ : STD_LOGIC;
  signal \grid_j_reg[1]_i_5_n_0\ : STD_LOGIC;
  signal \i___24_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i___24_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i___24_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i___24_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i___24_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \i___24_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \i___24_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \i___24_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \i___24_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i___24_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i___24_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i___24_carry_i_1_n_0\ : STD_LOGIC;
  signal \i___24_carry_i_2_n_0\ : STD_LOGIC;
  signal \i___24_carry_i_3_n_0\ : STD_LOGIC;
  signal \i___24_carry_i_4_n_0\ : STD_LOGIC;
  signal \i___24_carry_i_5_n_0\ : STD_LOGIC;
  signal \i___24_carry_i_6_n_0\ : STD_LOGIC;
  signal \i___24_carry_i_7_n_0\ : STD_LOGIC;
  signal \i___27_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i___27_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i___27_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i___27_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i___27_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \i___27_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \i___27_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \i___27_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i___27_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i___27_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i___27_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i___27_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \i___27_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \i___27_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \i___27_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \i___27_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \i___27_carry_i_1_n_0\ : STD_LOGIC;
  signal \i___27_carry_i_2_n_0\ : STD_LOGIC;
  signal \i___27_carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal is_valid_pixel0 : STD_LOGIC;
  signal is_valid_pixel_i_10_n_0 : STD_LOGIC;
  signal is_valid_pixel_i_11_n_0 : STD_LOGIC;
  signal is_valid_pixel_i_12_n_0 : STD_LOGIC;
  signal is_valid_pixel_i_13_n_0 : STD_LOGIC;
  signal is_valid_pixel_i_14_n_0 : STD_LOGIC;
  signal is_valid_pixel_i_15_n_0 : STD_LOGIC;
  signal is_valid_pixel_i_16_n_0 : STD_LOGIC;
  signal is_valid_pixel_i_17_n_0 : STD_LOGIC;
  signal is_valid_pixel_i_18_n_0 : STD_LOGIC;
  signal is_valid_pixel_i_19_n_0 : STD_LOGIC;
  signal is_valid_pixel_i_20_n_0 : STD_LOGIC;
  signal is_valid_pixel_i_2_n_0 : STD_LOGIC;
  signal is_valid_pixel_i_3_n_0 : STD_LOGIC;
  signal is_valid_pixel_i_4_n_0 : STD_LOGIC;
  signal is_valid_pixel_i_5_n_0 : STD_LOGIC;
  signal is_valid_pixel_i_6_n_0 : STD_LOGIC;
  signal is_valid_pixel_i_7_n_0 : STD_LOGIC;
  signal is_valid_pixel_i_8_n_0 : STD_LOGIC;
  signal is_valid_pixel_i_9_n_0 : STD_LOGIC;
  signal multOp : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal \multOp__25_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \multOp__25_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \multOp__25_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \multOp__25_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \multOp__25_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \multOp__25_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \multOp__25_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \multOp__25_carry__0_n_0\ : STD_LOGIC;
  signal \multOp__25_carry__0_n_1\ : STD_LOGIC;
  signal \multOp__25_carry__0_n_2\ : STD_LOGIC;
  signal \multOp__25_carry__0_n_3\ : STD_LOGIC;
  signal \multOp__25_carry__0_n_4\ : STD_LOGIC;
  signal \multOp__25_carry__0_n_5\ : STD_LOGIC;
  signal \multOp__25_carry__0_n_6\ : STD_LOGIC;
  signal \multOp__25_carry__0_n_7\ : STD_LOGIC;
  signal \multOp__25_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \multOp__25_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \multOp__25_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \multOp__25_carry__1_n_0\ : STD_LOGIC;
  signal \multOp__25_carry__1_n_1\ : STD_LOGIC;
  signal \multOp__25_carry__1_n_2\ : STD_LOGIC;
  signal \multOp__25_carry__1_n_3\ : STD_LOGIC;
  signal \multOp__25_carry__1_n_4\ : STD_LOGIC;
  signal \multOp__25_carry__1_n_5\ : STD_LOGIC;
  signal \multOp__25_carry__1_n_6\ : STD_LOGIC;
  signal \multOp__25_carry__1_n_7\ : STD_LOGIC;
  signal \multOp__25_carry_i_1_n_0\ : STD_LOGIC;
  signal \multOp__25_carry_i_2_n_0\ : STD_LOGIC;
  signal \multOp__25_carry_i_3_n_0\ : STD_LOGIC;
  signal \multOp__25_carry_n_0\ : STD_LOGIC;
  signal \multOp__25_carry_n_1\ : STD_LOGIC;
  signal \multOp__25_carry_n_2\ : STD_LOGIC;
  signal \multOp__25_carry_n_3\ : STD_LOGIC;
  signal \multOp__25_carry_n_4\ : STD_LOGIC;
  signal \multOp__25_carry_n_5\ : STD_LOGIC;
  signal \multOp__25_carry_n_6\ : STD_LOGIC;
  signal \multOp__25_carry_n_7\ : STD_LOGIC;
  signal \multOp_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \multOp_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \multOp_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \multOp_carry__0_n_0\ : STD_LOGIC;
  signal \multOp_carry__0_n_1\ : STD_LOGIC;
  signal \multOp_carry__0_n_2\ : STD_LOGIC;
  signal \multOp_carry__0_n_3\ : STD_LOGIC;
  signal \multOp_carry__0_n_4\ : STD_LOGIC;
  signal \multOp_carry__0_n_5\ : STD_LOGIC;
  signal \multOp_carry__0_n_6\ : STD_LOGIC;
  signal \multOp_carry__0_n_7\ : STD_LOGIC;
  signal \multOp_carry__1_n_2\ : STD_LOGIC;
  signal \multOp_carry__1_n_7\ : STD_LOGIC;
  signal multOp_carry_i_1_n_0 : STD_LOGIC;
  signal multOp_carry_i_2_n_0 : STD_LOGIC;
  signal multOp_carry_i_3_n_0 : STD_LOGIC;
  signal multOp_carry_n_0 : STD_LOGIC;
  signal multOp_carry_n_1 : STD_LOGIC;
  signal multOp_carry_n_2 : STD_LOGIC;
  signal multOp_carry_n_3 : STD_LOGIC;
  signal multOp_carry_n_4 : STD_LOGIC;
  signal multOp_carry_n_5 : STD_LOGIC;
  signal multOp_carry_n_6 : STD_LOGIC;
  signal multOp_carry_n_7 : STD_LOGIC;
  signal \multOp_inferred__0/i___24_carry__0_n_0\ : STD_LOGIC;
  signal \multOp_inferred__0/i___24_carry__0_n_1\ : STD_LOGIC;
  signal \multOp_inferred__0/i___24_carry__0_n_2\ : STD_LOGIC;
  signal \multOp_inferred__0/i___24_carry__0_n_3\ : STD_LOGIC;
  signal \multOp_inferred__0/i___24_carry__0_n_4\ : STD_LOGIC;
  signal \multOp_inferred__0/i___24_carry__0_n_5\ : STD_LOGIC;
  signal \multOp_inferred__0/i___24_carry__0_n_6\ : STD_LOGIC;
  signal \multOp_inferred__0/i___24_carry__0_n_7\ : STD_LOGIC;
  signal \multOp_inferred__0/i___24_carry__1_n_3\ : STD_LOGIC;
  signal \multOp_inferred__0/i___24_carry__1_n_6\ : STD_LOGIC;
  signal \multOp_inferred__0/i___24_carry__1_n_7\ : STD_LOGIC;
  signal \multOp_inferred__0/i___24_carry_n_0\ : STD_LOGIC;
  signal \multOp_inferred__0/i___24_carry_n_1\ : STD_LOGIC;
  signal \multOp_inferred__0/i___24_carry_n_2\ : STD_LOGIC;
  signal \multOp_inferred__0/i___24_carry_n_3\ : STD_LOGIC;
  signal \multOp_inferred__0/i___24_carry_n_4\ : STD_LOGIC;
  signal \multOp_inferred__0/i___24_carry_n_5\ : STD_LOGIC;
  signal \multOp_inferred__0/i___24_carry_n_6\ : STD_LOGIC;
  signal \multOp_inferred__0/i___24_carry_n_7\ : STD_LOGIC;
  signal \multOp_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \multOp_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \multOp_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \multOp_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \multOp_inferred__0/i__carry__0_n_4\ : STD_LOGIC;
  signal \multOp_inferred__0/i__carry__0_n_5\ : STD_LOGIC;
  signal \multOp_inferred__0/i__carry__0_n_6\ : STD_LOGIC;
  signal \multOp_inferred__0/i__carry__0_n_7\ : STD_LOGIC;
  signal \multOp_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \multOp_inferred__0/i__carry__1_n_7\ : STD_LOGIC;
  signal \multOp_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \multOp_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \multOp_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \multOp_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \multOp_inferred__0/i__carry_n_4\ : STD_LOGIC;
  signal \multOp_inferred__0/i__carry_n_5\ : STD_LOGIC;
  signal \multOp_inferred__0/i__carry_n_6\ : STD_LOGIC;
  signal \multOp_inferred__0/i__carry_n_7\ : STD_LOGIC;
  signal \multOp_inferred__1/i___27_carry__0_n_0\ : STD_LOGIC;
  signal \multOp_inferred__1/i___27_carry__0_n_1\ : STD_LOGIC;
  signal \multOp_inferred__1/i___27_carry__0_n_2\ : STD_LOGIC;
  signal \multOp_inferred__1/i___27_carry__0_n_3\ : STD_LOGIC;
  signal \multOp_inferred__1/i___27_carry__1_n_0\ : STD_LOGIC;
  signal \multOp_inferred__1/i___27_carry__1_n_1\ : STD_LOGIC;
  signal \multOp_inferred__1/i___27_carry__1_n_2\ : STD_LOGIC;
  signal \multOp_inferred__1/i___27_carry__1_n_3\ : STD_LOGIC;
  signal \multOp_inferred__1/i___27_carry_n_0\ : STD_LOGIC;
  signal \multOp_inferred__1/i___27_carry_n_1\ : STD_LOGIC;
  signal \multOp_inferred__1/i___27_carry_n_2\ : STD_LOGIC;
  signal \multOp_inferred__1/i___27_carry_n_3\ : STD_LOGIC;
  signal \multOp_inferred__1/i__carry__0_n_0\ : STD_LOGIC;
  signal \multOp_inferred__1/i__carry__0_n_1\ : STD_LOGIC;
  signal \multOp_inferred__1/i__carry__0_n_2\ : STD_LOGIC;
  signal \multOp_inferred__1/i__carry__0_n_3\ : STD_LOGIC;
  signal \multOp_inferred__1/i__carry__0_n_4\ : STD_LOGIC;
  signal \multOp_inferred__1/i__carry__0_n_5\ : STD_LOGIC;
  signal \multOp_inferred__1/i__carry__0_n_6\ : STD_LOGIC;
  signal \multOp_inferred__1/i__carry__0_n_7\ : STD_LOGIC;
  signal \multOp_inferred__1/i__carry__1_n_1\ : STD_LOGIC;
  signal \multOp_inferred__1/i__carry__1_n_3\ : STD_LOGIC;
  signal \multOp_inferred__1/i__carry__1_n_6\ : STD_LOGIC;
  signal \multOp_inferred__1/i__carry__1_n_7\ : STD_LOGIC;
  signal \multOp_inferred__1/i__carry_n_0\ : STD_LOGIC;
  signal \multOp_inferred__1/i__carry_n_1\ : STD_LOGIC;
  signal \multOp_inferred__1/i__carry_n_2\ : STD_LOGIC;
  signal \multOp_inferred__1/i__carry_n_3\ : STD_LOGIC;
  signal \multOp_inferred__1/i__carry_n_4\ : STD_LOGIC;
  signal \multOp_inferred__1/i__carry_n_5\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal vSync_reg_i_1_n_0 : STD_LOGIC;
  signal \NLW_grey_value_reg0__41_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_grey_value_reg0__41_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_grey_value_reg0__41_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_grey_value_reg0__41_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_grey_value_reg0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_grey_value_reg0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_grey_value_reg0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_grey_value_reg0_carry__2_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_grey_value_reg0_carry__2_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_multOp_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_multOp_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_multOp_inferred__0/i___24_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_multOp_inferred__0/i___24_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_multOp_inferred__0/i__carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_multOp_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_multOp_inferred__1/i___27_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_multOp_inferred__1/i___27_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_multOp_inferred__1/i__carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_multOp_inferred__1/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \grey_value_reg0__41_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \grey_value_reg0__41_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \grey_value_reg0__41_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \grey_value_reg0__41_carry__2\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \grid_i_reg[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \grid_i_reg[1]_i_4\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \grid_i_reg[2]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \grid_i_reg[7]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \grid_i_reg[7]_i_4\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \grid_i_reg[7]_i_6\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \grid_i_reg[7]_i_7\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \grid_i_reg[7]_i_8\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \grid_i_reg[7]_i_9\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \grid_j_reg[0]_i_5\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \grid_j_reg[0]_i_6\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \grid_j_reg[1]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \grid_j_reg[1]_i_5\ : label is "soft_lutpair7";
  attribute HLUTNM : string;
  attribute HLUTNM of \i___27_carry__0_i_1\ : label is "lutpair4";
  attribute HLUTNM of \i___27_carry__0_i_2\ : label is "lutpair3";
  attribute HLUTNM of \i___27_carry__0_i_4\ : label is "lutpair5";
  attribute HLUTNM of \i___27_carry__0_i_5\ : label is "lutpair4";
  attribute HLUTNM of \i___27_carry__0_i_6\ : label is "lutpair3";
  attribute HLUTNM of \i___27_carry__1_i_4\ : label is "lutpair5";
  attribute SOFT_HLUTNM of is_valid_pixel_i_11 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of is_valid_pixel_i_12 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of is_valid_pixel_i_13 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of is_valid_pixel_i_8 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of is_valid_pixel_i_9 : label is "soft_lutpair7";
  attribute HLUTNM of \multOp__25_carry__0_i_1\ : label is "lutpair1";
  attribute HLUTNM of \multOp__25_carry__0_i_2\ : label is "lutpair0";
  attribute HLUTNM of \multOp__25_carry__0_i_4\ : label is "lutpair2";
  attribute HLUTNM of \multOp__25_carry__0_i_5\ : label is "lutpair1";
  attribute HLUTNM of \multOp__25_carry__0_i_6\ : label is "lutpair0";
  attribute HLUTNM of \multOp__25_carry__1_i_1\ : label is "lutpair2";
  attribute ADDER_THRESHOLD of \multOp_inferred__0/i___24_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \multOp_inferred__0/i___24_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \multOp_inferred__0/i___24_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \multOp_inferred__1/i___27_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \multOp_inferred__1/i___27_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \multOp_inferred__1/i___27_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \multOp_inferred__1/i___27_carry__2\ : label is 35;
begin
  end_of_frame <= \^end_of_frame\;
\grey_value_reg0__41_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \grey_value_reg0__41_carry_n_0\,
      CO(2) => \grey_value_reg0__41_carry_n_1\,
      CO(1) => \grey_value_reg0__41_carry_n_2\,
      CO(0) => \grey_value_reg0__41_carry_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => multOp(4 downto 1),
      O(3 downto 0) => \NLW_grey_value_reg0__41_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \grey_value_reg0__41_carry_i_1_n_0\,
      S(2) => \grey_value_reg0__41_carry_i_2_n_0\,
      S(1) => \grey_value_reg0__41_carry_i_3_n_0\,
      S(0) => \grey_value_reg0__41_carry_i_4_n_0\
    );
\grey_value_reg0__41_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \grey_value_reg0__41_carry_n_0\,
      CO(3) => \grey_value_reg0__41_carry__0_n_0\,
      CO(2) => \grey_value_reg0__41_carry__0_n_1\,
      CO(1) => \grey_value_reg0__41_carry__0_n_2\,
      CO(0) => \grey_value_reg0__41_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => multOp(8 downto 5),
      O(3) => p_0_in(0),
      O(2 downto 0) => \NLW_grey_value_reg0__41_carry__0_O_UNCONNECTED\(2 downto 0),
      S(3) => \grey_value_reg0__41_carry__0_i_1_n_0\,
      S(2) => \grey_value_reg0__41_carry__0_i_2_n_0\,
      S(1) => \grey_value_reg0__41_carry__0_i_3_n_0\,
      S(0) => \grey_value_reg0__41_carry__0_i_4_n_0\
    );
\grey_value_reg0__41_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => multOp(8),
      I1 => C(8),
      O => \grey_value_reg0__41_carry__0_i_1_n_0\
    );
\grey_value_reg0__41_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => multOp(7),
      I1 => C(7),
      O => \grey_value_reg0__41_carry__0_i_2_n_0\
    );
\grey_value_reg0__41_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => multOp(6),
      I1 => C(6),
      O => \grey_value_reg0__41_carry__0_i_3_n_0\
    );
\grey_value_reg0__41_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => multOp(5),
      I1 => C(5),
      O => \grey_value_reg0__41_carry__0_i_4_n_0\
    );
\grey_value_reg0__41_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \grey_value_reg0__41_carry__0_n_0\,
      CO(3) => \grey_value_reg0__41_carry__1_n_0\,
      CO(2) => \grey_value_reg0__41_carry__1_n_1\,
      CO(1) => \grey_value_reg0__41_carry__1_n_2\,
      CO(0) => \grey_value_reg0__41_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => multOp(12 downto 9),
      O(3 downto 0) => p_0_in(4 downto 1),
      S(3) => \grey_value_reg0__41_carry__1_i_1_n_0\,
      S(2) => \grey_value_reg0__41_carry__1_i_2_n_0\,
      S(1) => \grey_value_reg0__41_carry__1_i_3_n_0\,
      S(0) => \grey_value_reg0__41_carry__1_i_4_n_0\
    );
\grey_value_reg0__41_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => multOp(12),
      I1 => C(12),
      O => \grey_value_reg0__41_carry__1_i_1_n_0\
    );
\grey_value_reg0__41_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => multOp(11),
      I1 => C(11),
      O => \grey_value_reg0__41_carry__1_i_2_n_0\
    );
\grey_value_reg0__41_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => multOp(10),
      I1 => C(10),
      O => \grey_value_reg0__41_carry__1_i_3_n_0\
    );
\grey_value_reg0__41_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => multOp(9),
      I1 => C(9),
      O => \grey_value_reg0__41_carry__1_i_4_n_0\
    );
\grey_value_reg0__41_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \grey_value_reg0__41_carry__1_n_0\,
      CO(3 downto 2) => \NLW_grey_value_reg0__41_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \grey_value_reg0__41_carry__2_n_2\,
      CO(0) => \grey_value_reg0__41_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => multOp(14 downto 13),
      O(3) => \NLW_grey_value_reg0__41_carry__2_O_UNCONNECTED\(3),
      O(2 downto 0) => p_0_in(7 downto 5),
      S(3) => '0',
      S(2) => \grey_value_reg0__41_carry__2_i_1_n_0\,
      S(1) => \grey_value_reg0__41_carry__2_i_2_n_0\,
      S(0) => \grey_value_reg0__41_carry__2_i_3_n_0\
    );
\grey_value_reg0__41_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => multOp(15),
      I1 => \grey_value_reg0_carry__2_n_0\,
      O => \grey_value_reg0__41_carry__2_i_1_n_0\
    );
\grey_value_reg0__41_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => multOp(14),
      I1 => C(14),
      O => \grey_value_reg0__41_carry__2_i_2_n_0\
    );
\grey_value_reg0__41_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => multOp(13),
      I1 => C(13),
      O => \grey_value_reg0__41_carry__2_i_3_n_0\
    );
\grey_value_reg0__41_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => multOp(4),
      I1 => C(4),
      O => \grey_value_reg0__41_carry_i_1_n_0\
    );
\grey_value_reg0__41_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => multOp(3),
      I1 => C(3),
      O => \grey_value_reg0__41_carry_i_2_n_0\
    );
\grey_value_reg0__41_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => multOp(2),
      I1 => C(2),
      O => \grey_value_reg0__41_carry_i_3_n_0\
    );
\grey_value_reg0__41_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => multOp(1),
      I1 => C(1),
      O => \grey_value_reg0__41_carry_i_4_n_0\
    );
grey_value_reg0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => grey_value_reg0_carry_n_0,
      CO(2) => grey_value_reg0_carry_n_1,
      CO(1) => grey_value_reg0_carry_n_2,
      CO(0) => grey_value_reg0_carry_n_3,
      CYINIT => '0',
      DI(3) => \multOp_inferred__0/i___24_carry_n_7\,
      DI(2) => \multOp_inferred__0/i__carry_n_6\,
      DI(1) => \multOp_inferred__0/i__carry_n_7\,
      DI(0) => rgb_in(8),
      O(3 downto 1) => C(3 downto 1),
      O(0) => NLW_grey_value_reg0_carry_O_UNCONNECTED(0),
      S(3) => grey_value_reg0_carry_i_1_n_0,
      S(2) => grey_value_reg0_carry_i_2_n_0,
      S(1) => grey_value_reg0_carry_i_3_n_0,
      S(0) => grey_value_reg0_carry_i_4_n_0
    );
\grey_value_reg0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => grey_value_reg0_carry_n_0,
      CO(3) => \grey_value_reg0_carry__0_n_0\,
      CO(2) => \grey_value_reg0_carry__0_n_1\,
      CO(1) => \grey_value_reg0_carry__0_n_2\,
      CO(0) => \grey_value_reg0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \multOp_inferred__0/i___24_carry__0_n_7\,
      DI(2) => \multOp_inferred__0/i___24_carry_n_4\,
      DI(1) => \multOp_inferred__0/i___24_carry_n_5\,
      DI(0) => \multOp_inferred__0/i___24_carry_n_6\,
      O(3 downto 0) => C(7 downto 4),
      S(3) => \grey_value_reg0_carry__0_i_1_n_0\,
      S(2) => \grey_value_reg0_carry__0_i_2_n_0\,
      S(1) => \grey_value_reg0_carry__0_i_3_n_0\,
      S(0) => \grey_value_reg0_carry__0_i_4_n_0\
    );
\grey_value_reg0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp_inferred__0/i___24_carry__0_n_7\,
      I1 => \multOp__25_carry__0_n_6\,
      O => \grey_value_reg0_carry__0_i_1_n_0\
    );
\grey_value_reg0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp_inferred__0/i___24_carry_n_4\,
      I1 => \multOp__25_carry__0_n_7\,
      O => \grey_value_reg0_carry__0_i_2_n_0\
    );
\grey_value_reg0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp_inferred__0/i___24_carry_n_5\,
      I1 => \multOp__25_carry_n_4\,
      O => \grey_value_reg0_carry__0_i_3_n_0\
    );
\grey_value_reg0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp_inferred__0/i___24_carry_n_6\,
      I1 => \multOp__25_carry_n_5\,
      O => \grey_value_reg0_carry__0_i_4_n_0\
    );
\grey_value_reg0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \grey_value_reg0_carry__0_n_0\,
      CO(3) => \grey_value_reg0_carry__1_n_0\,
      CO(2) => \grey_value_reg0_carry__1_n_1\,
      CO(1) => \grey_value_reg0_carry__1_n_2\,
      CO(0) => \grey_value_reg0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \multOp_inferred__0/i___24_carry__1_n_7\,
      DI(2) => \multOp_inferred__0/i___24_carry__0_n_4\,
      DI(1) => \multOp_inferred__0/i___24_carry__0_n_5\,
      DI(0) => \multOp_inferred__0/i___24_carry__0_n_6\,
      O(3 downto 0) => C(11 downto 8),
      S(3) => \grey_value_reg0_carry__1_i_1_n_0\,
      S(2) => \grey_value_reg0_carry__1_i_2_n_0\,
      S(1) => \grey_value_reg0_carry__1_i_3_n_0\,
      S(0) => \grey_value_reg0_carry__1_i_4_n_0\
    );
\grey_value_reg0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp_inferred__0/i___24_carry__1_n_7\,
      I1 => \multOp__25_carry__1_n_6\,
      O => \grey_value_reg0_carry__1_i_1_n_0\
    );
\grey_value_reg0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp_inferred__0/i___24_carry__0_n_4\,
      I1 => \multOp__25_carry__1_n_7\,
      O => \grey_value_reg0_carry__1_i_2_n_0\
    );
\grey_value_reg0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp_inferred__0/i___24_carry__0_n_5\,
      I1 => \multOp__25_carry__0_n_4\,
      O => \grey_value_reg0_carry__1_i_3_n_0\
    );
\grey_value_reg0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp_inferred__0/i___24_carry__0_n_6\,
      I1 => \multOp__25_carry__0_n_5\,
      O => \grey_value_reg0_carry__1_i_4_n_0\
    );
\grey_value_reg0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \grey_value_reg0_carry__1_n_0\,
      CO(3) => \grey_value_reg0_carry__2_n_0\,
      CO(2) => \NLW_grey_value_reg0_carry__2_CO_UNCONNECTED\(2),
      CO(1) => \grey_value_reg0_carry__2_n_2\,
      CO(0) => \grey_value_reg0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \multOp_inferred__0/i___24_carry__1_n_6\,
      O(3) => \NLW_grey_value_reg0_carry__2_O_UNCONNECTED\(3),
      O(2 downto 0) => C(14 downto 12),
      S(3) => '1',
      S(2) => \grey_value_reg0_carry__2_i_1_n_3\,
      S(1) => \multOp__25_carry__1_n_4\,
      S(0) => \grey_value_reg0_carry__2_i_2_n_0\
    );
\grey_value_reg0_carry__2_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \multOp__25_carry__1_n_0\,
      CO(3 downto 1) => \NLW_grey_value_reg0_carry__2_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \grey_value_reg0_carry__2_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_grey_value_reg0_carry__2_i_1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\grey_value_reg0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp_inferred__0/i___24_carry__1_n_6\,
      I1 => \multOp__25_carry__1_n_5\,
      O => \grey_value_reg0_carry__2_i_2_n_0\
    );
grey_value_reg0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp_inferred__0/i___24_carry_n_7\,
      I1 => \multOp__25_carry_n_6\,
      O => grey_value_reg0_carry_i_1_n_0
    );
grey_value_reg0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp_inferred__0/i__carry_n_6\,
      I1 => \multOp__25_carry_n_7\,
      O => grey_value_reg0_carry_i_2_n_0
    );
grey_value_reg0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp_inferred__0/i__carry_n_7\,
      I1 => multOp_carry_n_7,
      O => grey_value_reg0_carry_i_3_n_0
    );
grey_value_reg0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_in(8),
      I1 => rgb_in(16),
      O => grey_value_reg0_carry_i_4_n_0
    );
\grey_value_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => p_0_in(0),
      Q => pixel_value(0)
    );
\grey_value_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => p_0_in(1),
      Q => pixel_value(1)
    );
\grey_value_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => p_0_in(2),
      Q => pixel_value(2)
    );
\grey_value_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => p_0_in(3),
      Q => pixel_value(3)
    );
\grey_value_reg_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => p_0_in(4),
      Q => pixel_value(4)
    );
\grey_value_reg_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => p_0_in(5),
      Q => pixel_value(5)
    );
\grey_value_reg_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => p_0_in(6),
      Q => pixel_value(6)
    );
\grey_value_reg_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => p_0_in(7),
      Q => pixel_value(7)
    );
\grid_i_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \grid_i_reg[0]_i_2_n_0\,
      I1 => \grid_i_reg[0]_i_3_n_0\,
      I2 => \grid_i_reg[0]_i_4_n_0\,
      I3 => \grid_i_reg[0]_i_5_n_0\,
      I4 => \grid_i_reg[0]_i_6_n_0\,
      O => grid_i(0)
    );
\grid_i_reg[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAEAABAAAAAAABA"
    )
        port map (
      I0 => \grid_i_reg[0]_i_7_n_0\,
      I1 => v_count(4),
      I2 => v_count(8),
      I3 => v_count(5),
      I4 => is_valid_pixel_i_8_n_0,
      I5 => v_count(7),
      O => \grid_i_reg[0]_i_2_n_0\
    );
\grid_i_reg[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0808080808080800"
    )
        port map (
      I0 => \grid_i_reg[0]_i_8_n_0\,
      I1 => v_count(3),
      I2 => v_count(6),
      I3 => v_count(2),
      I4 => v_count(0),
      I5 => v_count(1),
      O => \grid_i_reg[0]_i_3_n_0\
    );
\grid_i_reg[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0808080808080888"
    )
        port map (
      I0 => v_count(8),
      I1 => v_count(6),
      I2 => v_count(4),
      I3 => v_count(1),
      I4 => v_count(0),
      I5 => v_count(3),
      O => \grid_i_reg[0]_i_4_n_0\
    );
\grid_i_reg[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \grid_i_reg[7]_i_5_n_0\,
      I1 => is_valid_pixel_i_14_n_0,
      I2 => is_valid_pixel_i_15_n_0,
      I3 => \grid_j_reg[0]_i_2_n_0\,
      I4 => \grid_i_reg[7]_i_4_n_0\,
      O => \grid_i_reg[0]_i_5_n_0\
    );
\grid_i_reg[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEFEFFFEFEFE"
    )
        port map (
      I0 => \grid_i_reg[0]_i_9_n_0\,
      I1 => h_count(28),
      I2 => h_count(29),
      I3 => v_count(7),
      I4 => v_count(5),
      I5 => v_count(8),
      O => \grid_i_reg[0]_i_6_n_0\
    );
\grid_i_reg[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1101FFFFC0F00000"
    )
        port map (
      I0 => v_count(2),
      I1 => v_count(3),
      I2 => v_count(4),
      I3 => v_count(8),
      I4 => v_count(5),
      I5 => v_count(6),
      O => \grid_i_reg[0]_i_7_n_0\
    );
\grid_i_reg[0]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => v_count(5),
      I1 => v_count(8),
      O => \grid_i_reg[0]_i_8_n_0\
    );
\grid_i_reg[0]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF02"
    )
        port map (
      I0 => \grid_j_reg[1]_i_5_n_0\,
      I1 => h_count(5),
      I2 => h_count(7),
      I3 => h_count(30),
      O => \grid_i_reg[0]_i_9_n_0\
    );
\grid_i_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \grid_i_reg[7]_i_2_n_0\,
      I1 => \grid_i_reg[1]_i_2_n_0\,
      I2 => h_count(28),
      I3 => \grid_i_reg[1]_i_3_n_0\,
      O => grid_i(1)
    );
\grid_i_reg[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"800050508000FFFF"
    )
        port map (
      I0 => v_count(8),
      I1 => v_count(4),
      I2 => v_count(6),
      I3 => \grid_i_reg[1]_i_4_n_0\,
      I4 => v_count(5),
      I5 => v_count(7),
      O => \grid_i_reg[1]_i_2_n_0\
    );
\grid_i_reg[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF880000F088"
    )
        port map (
      I0 => v_count(4),
      I1 => is_valid_pixel_i_8_n_0,
      I2 => v_count(7),
      I3 => v_count(5),
      I4 => v_count(8),
      I5 => \grid_i_reg[2]_i_2_n_0\,
      O => \grid_i_reg[1]_i_3_n_0\
    );
\grid_i_reg[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFE0"
    )
        port map (
      I0 => v_count(0),
      I1 => v_count(1),
      I2 => v_count(2),
      I3 => v_count(3),
      O => \grid_i_reg[1]_i_4_n_0\
    );
\grid_i_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAFFAAFFFFFFAE"
    )
        port map (
      I0 => \grid_i_reg[7]_i_2_n_0\,
      I1 => v_count(5),
      I2 => \grid_i_reg[2]_i_2_n_0\,
      I3 => h_count(28),
      I4 => v_count(7),
      I5 => v_count(8),
      O => grid_i(2)
    );
\grid_i_reg[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FF"
    )
        port map (
      I0 => v_count(4),
      I1 => v_count(2),
      I2 => v_count(3),
      I3 => v_count(6),
      O => \grid_i_reg[2]_i_2_n_0\
    );
\grid_i_reg[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \grid_i_reg[7]_i_2_n_0\,
      I1 => \grid_i_reg[7]_i_3_n_0\,
      O => grid_i(3)
    );
\grid_i_reg[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \grid_j_reg[0]_i_4_n_0\,
      I1 => \grid_i_reg[7]_i_4_n_0\,
      I2 => \grid_j_reg[0]_i_2_n_0\,
      I3 => is_valid_pixel_i_15_n_0,
      I4 => is_valid_pixel_i_14_n_0,
      I5 => \grid_i_reg[7]_i_5_n_0\,
      O => \grid_i_reg[7]_i_2_n_0\
    );
\grid_i_reg[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0000F800"
    )
        port map (
      I0 => v_count(4),
      I1 => is_valid_pixel_i_8_n_0,
      I2 => \grid_i_reg[7]_i_6_n_0\,
      I3 => v_count(7),
      I4 => v_count(8),
      I5 => h_count(28),
      O => \grid_i_reg[7]_i_3_n_0\
    );
\grid_i_reg[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"444F"
    )
        port map (
      I0 => v_count(7),
      I1 => v_count(8),
      I2 => h_count(7),
      I3 => h_count(6),
      O => \grid_i_reg[7]_i_4_n_0\
    );
\grid_i_reg[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \grid_i_reg[7]_i_7_n_0\,
      I1 => is_valid_pixel_i_18_n_0,
      I2 => \grid_i_reg[7]_i_8_n_0\,
      I3 => is_valid_pixel_i_17_n_0,
      I4 => \grid_i_reg[7]_i_9_n_0\,
      I5 => is_valid_pixel_i_16_n_0,
      O => \grid_i_reg[7]_i_5_n_0\
    );
\grid_i_reg[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => v_count(5),
      I1 => v_count(6),
      O => \grid_i_reg[7]_i_6_n_0\
    );
\grid_i_reg[7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => h_count(17),
      I1 => h_count(16),
      I2 => h_count(19),
      I3 => h_count(18),
      O => \grid_i_reg[7]_i_7_n_0\
    );
\grid_i_reg[7]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => h_count(9),
      I1 => h_count(8),
      I2 => h_count(11),
      I3 => h_count(10),
      O => \grid_i_reg[7]_i_8_n_0\
    );
\grid_i_reg[7]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => v_count(13),
      I1 => v_count(12),
      I2 => v_count(15),
      I3 => v_count(14),
      O => \grid_i_reg[7]_i_9_n_0\
    );
\grid_i_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => grid_i(0),
      Q => current_row(0)
    );
\grid_i_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => grid_i(1),
      Q => current_row(1)
    );
\grid_i_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => grid_i(2),
      Q => current_row(2)
    );
\grid_i_reg_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => grid_i(3),
      Q => current_row(3)
    );
\grid_j_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \grid_j_reg[0]_i_2_n_0\,
      I1 => is_valid_pixel_i_6_n_0,
      I2 => \grid_j_reg[0]_i_3_n_0\,
      I3 => \grid_j_reg[0]_i_4_n_0\,
      I4 => \grid_i_reg[7]_i_3_n_0\,
      I5 => \grid_j_reg[0]_i_5_n_0\,
      O => grid_j(0)
    );
\grid_j_reg[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAABAAABFFFF"
    )
        port map (
      I0 => h_count(31),
      I1 => h_count(7),
      I2 => h_count(5),
      I3 => h_count(4),
      I4 => v_count(9),
      I5 => v_count(8),
      O => \grid_j_reg[0]_i_2_n_0\
    );
\grid_j_reg[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555555556AEA6AAA"
    )
        port map (
      I0 => h_count(6),
      I1 => h_count(2),
      I2 => h_count(3),
      I3 => h_count(1),
      I4 => h_count(0),
      I5 => \grid_j_reg[0]_i_6_n_0\,
      O => \grid_j_reg[0]_i_3_n_0\
    );
\grid_j_reg[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFAE"
    )
        port map (
      I0 => h_count(29),
      I1 => v_count(8),
      I2 => is_valid_pixel_i_10_n_0,
      I3 => h_count(30),
      I4 => \grid_j_reg[0]_i_7_n_0\,
      O => \grid_j_reg[0]_i_4_n_0\
    );
\grid_j_reg[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => v_count(8),
      I1 => v_count(7),
      O => \grid_j_reg[0]_i_5_n_0\
    );
\grid_j_reg[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => h_count(4),
      I1 => h_count(5),
      O => \grid_j_reg[0]_i_6_n_0\
    );
\grid_j_reg[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101011101110111"
    )
        port map (
      I0 => h_count(7),
      I1 => h_count(5),
      I2 => h_count(3),
      I3 => h_count(2),
      I4 => h_count(0),
      I5 => h_count(1),
      O => \grid_j_reg[0]_i_7_n_0\
    );
\grid_j_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \grid_i_reg[0]_i_5_n_0\,
      I1 => \grid_j_reg[1]_i_2_n_0\,
      I2 => \grid_i_reg[7]_i_3_n_0\,
      I3 => h_count(30),
      I4 => \grid_j_reg[1]_i_3_n_0\,
      I5 => \grid_j_reg[1]_i_4_n_0\,
      O => grid_j(1)
    );
\grid_j_reg[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEA00000"
    )
        port map (
      I0 => h_count(7),
      I1 => \grid_j_reg[1]_i_5_n_0\,
      I2 => h_count(5),
      I3 => h_count(4),
      I4 => h_count(6),
      O => \grid_j_reg[1]_i_2_n_0\
    );
\grid_j_reg[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => h_count(4),
      I1 => h_count(5),
      I2 => h_count(6),
      I3 => h_count(1),
      I4 => h_count(2),
      I5 => h_count(3),
      O => \grid_j_reg[1]_i_3_n_0\
    );
\grid_j_reg[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00010000"
    )
        port map (
      I0 => v_count(4),
      I1 => v_count(5),
      I2 => v_count(6),
      I3 => is_valid_pixel_i_8_n_0,
      I4 => v_count(8),
      I5 => h_count(29),
      O => \grid_j_reg[1]_i_4_n_0\
    );
\grid_j_reg[1]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"07FF"
    )
        port map (
      I0 => h_count(1),
      I1 => h_count(0),
      I2 => h_count(2),
      I3 => h_count(3),
      O => \grid_j_reg[1]_i_5_n_0\
    );
\grid_j_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => grid_j(0),
      Q => current_column(0)
    );
\grid_j_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => grid_j(1),
      Q => current_column(1)
    );
\i___24_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => rgb_in(14),
      I1 => \multOp_inferred__0/i__carry__1_n_7\,
      I2 => rgb_in(12),
      O => \i___24_carry__0_i_1_n_0\
    );
\i___24_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => rgb_in(13),
      I1 => \multOp_inferred__0/i__carry__0_n_4\,
      I2 => rgb_in(11),
      O => \i___24_carry__0_i_2_n_0\
    );
\i___24_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => rgb_in(12),
      I1 => \multOp_inferred__0/i__carry__0_n_5\,
      I2 => rgb_in(10),
      O => \i___24_carry__0_i_3_n_0\
    );
\i___24_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => rgb_in(11),
      I1 => \multOp_inferred__0/i__carry__0_n_6\,
      I2 => rgb_in(9),
      O => \i___24_carry__0_i_4_n_0\
    );
\i___24_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => rgb_in(12),
      I1 => \multOp_inferred__0/i__carry__1_n_7\,
      I2 => rgb_in(14),
      I3 => rgb_in(15),
      I4 => \multOp_inferred__0/i__carry__1_n_2\,
      I5 => rgb_in(13),
      O => \i___24_carry__0_i_5_n_0\
    );
\i___24_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => rgb_in(11),
      I1 => \multOp_inferred__0/i__carry__0_n_4\,
      I2 => rgb_in(13),
      I3 => rgb_in(14),
      I4 => \multOp_inferred__0/i__carry__1_n_7\,
      I5 => rgb_in(12),
      O => \i___24_carry__0_i_6_n_0\
    );
\i___24_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => rgb_in(10),
      I1 => \multOp_inferred__0/i__carry__0_n_5\,
      I2 => rgb_in(12),
      I3 => rgb_in(13),
      I4 => \multOp_inferred__0/i__carry__0_n_4\,
      I5 => rgb_in(11),
      O => \i___24_carry__0_i_7_n_0\
    );
\i___24_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => rgb_in(9),
      I1 => \multOp_inferred__0/i__carry__0_n_6\,
      I2 => rgb_in(11),
      I3 => rgb_in(12),
      I4 => \multOp_inferred__0/i__carry__0_n_5\,
      I5 => rgb_in(10),
      O => \i___24_carry__0_i_8_n_0\
    );
\i___24_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => rgb_in(15),
      I1 => \multOp_inferred__0/i__carry__1_n_2\,
      I2 => rgb_in(13),
      O => \i___24_carry__1_i_1_n_0\
    );
\i___24_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_in(14),
      I1 => rgb_in(15),
      O => \i___24_carry__1_i_2_n_0\
    );
\i___24_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8E71"
    )
        port map (
      I0 => rgb_in(13),
      I1 => \multOp_inferred__0/i__carry__1_n_2\,
      I2 => rgb_in(15),
      I3 => rgb_in(14),
      O => \i___24_carry__1_i_3_n_0\
    );
\i___24_carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => rgb_in(10),
      I1 => \multOp_inferred__0/i__carry__0_n_7\,
      I2 => rgb_in(8),
      O => \i___24_carry_i_1_n_0\
    );
\i___24_carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => rgb_in(10),
      I1 => \multOp_inferred__0/i__carry__0_n_7\,
      I2 => rgb_in(8),
      O => \i___24_carry_i_2_n_0\
    );
\i___24_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \multOp_inferred__0/i__carry_n_5\,
      I1 => rgb_in(8),
      O => \i___24_carry_i_3_n_0\
    );
\i___24_carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => rgb_in(8),
      I1 => \multOp_inferred__0/i__carry__0_n_7\,
      I2 => rgb_in(10),
      I3 => rgb_in(11),
      I4 => \multOp_inferred__0/i__carry__0_n_6\,
      I5 => rgb_in(9),
      O => \i___24_carry_i_4_n_0\
    );
\i___24_carry_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69966969"
    )
        port map (
      I0 => rgb_in(10),
      I1 => \multOp_inferred__0/i__carry__0_n_7\,
      I2 => rgb_in(8),
      I3 => rgb_in(9),
      I4 => \multOp_inferred__0/i__carry_n_4\,
      O => \i___24_carry_i_5_n_0\
    );
\i___24_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => rgb_in(8),
      I1 => \multOp_inferred__0/i__carry_n_5\,
      I2 => \multOp_inferred__0/i__carry_n_4\,
      I3 => rgb_in(9),
      O => \i___24_carry_i_6_n_0\
    );
\i___24_carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_in(8),
      I1 => \multOp_inferred__0/i__carry_n_5\,
      O => \i___24_carry_i_7_n_0\
    );
\i___27_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => rgb_in(5),
      I1 => \multOp_inferred__1/i__carry__1_n_7\,
      I2 => rgb_in(2),
      O => \i___27_carry__0_i_1_n_0\
    );
\i___27_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => rgb_in(4),
      I1 => \multOp_inferred__1/i__carry__0_n_4\,
      I2 => rgb_in(1),
      O => \i___27_carry__0_i_2_n_0\
    );
\i___27_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => rgb_in(1),
      I1 => rgb_in(4),
      I2 => \multOp_inferred__1/i__carry__0_n_4\,
      O => \i___27_carry__0_i_3_n_0\
    );
\i___27_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => rgb_in(6),
      I1 => \multOp_inferred__1/i__carry__1_n_6\,
      I2 => rgb_in(3),
      I3 => \i___27_carry__0_i_1_n_0\,
      O => \i___27_carry__0_i_4_n_0\
    );
\i___27_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => rgb_in(5),
      I1 => \multOp_inferred__1/i__carry__1_n_7\,
      I2 => rgb_in(2),
      I3 => \i___27_carry__0_i_2_n_0\,
      O => \i___27_carry__0_i_5_n_0\
    );
\i___27_carry__0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => rgb_in(4),
      I1 => \multOp_inferred__1/i__carry__0_n_4\,
      I2 => rgb_in(1),
      I3 => \multOp_inferred__1/i__carry__0_n_5\,
      I4 => rgb_in(3),
      O => \i___27_carry__0_i_6_n_0\
    );
\i___27_carry__0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => rgb_in(3),
      I1 => \multOp_inferred__1/i__carry__0_n_5\,
      I2 => rgb_in(0),
      O => \i___27_carry__0_i_7_n_0\
    );
\i___27_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rgb_in(6),
      I1 => \multOp_inferred__1/i__carry__1_n_1\,
      O => \i___27_carry__1_i_1_n_0\
    );
\i___27_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rgb_in(5),
      I1 => \multOp_inferred__1/i__carry__1_n_1\,
      O => \i___27_carry__1_i_2_n_0\
    );
\i___27_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \multOp_inferred__1/i__carry__1_n_1\,
      I1 => rgb_in(7),
      I2 => rgb_in(4),
      O => \i___27_carry__1_i_3_n_0\
    );
\i___27_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => rgb_in(6),
      I1 => \multOp_inferred__1/i__carry__1_n_6\,
      I2 => rgb_in(3),
      O => \i___27_carry__1_i_4_n_0\
    );
\i___27_carry__1_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => rgb_in(6),
      I1 => \multOp_inferred__1/i__carry__1_n_1\,
      I2 => rgb_in(7),
      O => \i___27_carry__1_i_5_n_0\
    );
\i___27_carry__1_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => rgb_in(5),
      I1 => \multOp_inferred__1/i__carry__1_n_1\,
      I2 => rgb_in(6),
      O => \i___27_carry__1_i_6_n_0\
    );
\i___27_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7E81"
    )
        port map (
      I0 => rgb_in(4),
      I1 => rgb_in(7),
      I2 => \multOp_inferred__1/i__carry__1_n_1\,
      I3 => rgb_in(5),
      O => \i___27_carry__1_i_7_n_0\
    );
\i___27_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \i___27_carry__1_i_4_n_0\,
      I1 => \multOp_inferred__1/i__carry__1_n_1\,
      I2 => rgb_in(7),
      I3 => rgb_in(4),
      O => \i___27_carry__1_i_8_n_0\
    );
\i___27_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rgb_in(7),
      I1 => \multOp_inferred__1/i__carry__1_n_1\,
      O => \i___27_carry__2_i_1_n_0\
    );
\i___27_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp_inferred__1/i__carry__0_n_6\,
      I1 => rgb_in(2),
      O => \i___27_carry_i_1_n_0\
    );
\i___27_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp_inferred__1/i__carry__0_n_7\,
      I1 => rgb_in(1),
      O => \i___27_carry_i_2_n_0\
    );
\i___27_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp_inferred__1/i__carry_n_4\,
      I1 => rgb_in(0),
      O => \i___27_carry_i_3_n_0\
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_in(15),
      I1 => rgb_in(13),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_in(5),
      I1 => rgb_in(7),
      O => \i__carry__0_i_1__0_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_in(14),
      I1 => rgb_in(12),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_in(4),
      I1 => rgb_in(6),
      O => \i__carry__0_i_2__0_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_in(13),
      I1 => rgb_in(11),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_in(3),
      I1 => rgb_in(5),
      O => \i__carry__0_i_3__0_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_in(2),
      I1 => rgb_in(4),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rgb_in(7),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rgb_in(6),
      O => \i__carry__1_i_2_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_in(12),
      I1 => rgb_in(10),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_in(1),
      I1 => rgb_in(3),
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_in(11),
      I1 => rgb_in(9),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_in(0),
      I1 => rgb_in(2),
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_in(10),
      I1 => rgb_in(8),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rgb_in(1),
      O => \i__carry_i_3__0_n_0\
    );
is_valid_pixel_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000C888"
    )
        port map (
      I0 => is_valid_pixel_i_2_n_0,
      I1 => is_valid_pixel_i_3_n_0,
      I2 => is_valid_pixel_i_4_n_0,
      I3 => vde_in,
      I4 => is_valid_pixel_i_5_n_0,
      I5 => is_valid_pixel_i_6_n_0,
      O => is_valid_pixel0
    );
is_valid_pixel_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFEFE"
    )
        port map (
      I0 => v_count(4),
      I1 => v_count(5),
      I2 => v_count(6),
      I3 => v_count(1),
      I4 => v_count(2),
      I5 => v_count(3),
      O => is_valid_pixel_i_10_n_0
    );
is_valid_pixel_i_11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => is_valid_pixel_i_16_n_0,
      I1 => v_count(14),
      I2 => v_count(15),
      I3 => v_count(12),
      I4 => v_count(13),
      O => is_valid_pixel_i_11_n_0
    );
is_valid_pixel_i_12: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => h_count(10),
      I1 => h_count(11),
      I2 => h_count(8),
      I3 => h_count(9),
      I4 => is_valid_pixel_i_17_n_0,
      O => is_valid_pixel_i_12_n_0
    );
is_valid_pixel_i_13: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => h_count(18),
      I1 => h_count(19),
      I2 => h_count(16),
      I3 => h_count(17),
      I4 => is_valid_pixel_i_18_n_0,
      O => is_valid_pixel_i_13_n_0
    );
is_valid_pixel_i_14: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => v_count(26),
      I1 => v_count(27),
      I2 => v_count(24),
      I3 => v_count(25),
      I4 => is_valid_pixel_i_19_n_0,
      O => is_valid_pixel_i_14_n_0
    );
is_valid_pixel_i_15: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => v_count(18),
      I1 => v_count(19),
      I2 => v_count(16),
      I3 => v_count(17),
      I4 => is_valid_pixel_i_20_n_0,
      O => is_valid_pixel_i_15_n_0
    );
is_valid_pixel_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => h_count(26),
      I1 => h_count(27),
      I2 => h_count(24),
      I3 => h_count(25),
      I4 => v_count(11),
      I5 => v_count(10),
      O => is_valid_pixel_i_16_n_0
    );
is_valid_pixel_i_17: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => h_count(13),
      I1 => h_count(12),
      I2 => h_count(15),
      I3 => h_count(14),
      O => is_valid_pixel_i_17_n_0
    );
is_valid_pixel_i_18: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => h_count(21),
      I1 => h_count(20),
      I2 => h_count(23),
      I3 => h_count(22),
      O => is_valid_pixel_i_18_n_0
    );
is_valid_pixel_i_19: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => v_count(29),
      I1 => v_count(28),
      I2 => v_count(31),
      I3 => v_count(30),
      O => is_valid_pixel_i_19_n_0
    );
is_valid_pixel_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002AAAA000AAAAA"
    )
        port map (
      I0 => is_valid_pixel_i_7_n_0,
      I1 => v_count(4),
      I2 => v_count(5),
      I3 => v_count(6),
      I4 => v_count(7),
      I5 => is_valid_pixel_i_8_n_0,
      O => is_valid_pixel_i_2_n_0
    );
is_valid_pixel_i_20: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => v_count(21),
      I1 => v_count(20),
      I2 => v_count(23),
      I3 => v_count(22),
      O => is_valid_pixel_i_20_n_0
    );
is_valid_pixel_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAA8000"
    )
        port map (
      I0 => h_count(6),
      I1 => is_valid_pixel_i_9_n_0,
      I2 => h_count(3),
      I3 => h_count(4),
      I4 => h_count(5),
      I5 => h_count(7),
      O => is_valid_pixel_i_3_n_0
    );
is_valid_pixel_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => h_count(30),
      I1 => h_count(31),
      I2 => v_count(9),
      I3 => v_count(8),
      I4 => v_count(7),
      I5 => is_valid_pixel_i_10_n_0,
      O => is_valid_pixel_i_4_n_0
    );
is_valid_pixel_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => h_count(28),
      I1 => h_count(29),
      O => is_valid_pixel_i_5_n_0
    );
is_valid_pixel_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => is_valid_pixel_i_11_n_0,
      I1 => is_valid_pixel_i_12_n_0,
      I2 => is_valid_pixel_i_13_n_0,
      I3 => is_valid_pixel_i_14_n_0,
      I4 => is_valid_pixel_i_15_n_0,
      O => is_valid_pixel_i_6_n_0
    );
is_valid_pixel_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => vde_in,
      I1 => v_count(9),
      I2 => v_count(8),
      I3 => h_count(31),
      I4 => h_count(30),
      O => is_valid_pixel_i_7_n_0
    );
is_valid_pixel_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => v_count(3),
      I1 => v_count(2),
      I2 => v_count(1),
      O => is_valid_pixel_i_8_n_0
    );
is_valid_pixel_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => h_count(1),
      I1 => h_count(0),
      I2 => h_count(2),
      O => is_valid_pixel_i_9_n_0
    );
is_valid_pixel_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => is_valid_pixel0,
      Q => valid_pixel
    );
\multOp__25_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \multOp__25_carry_n_0\,
      CO(2) => \multOp__25_carry_n_1\,
      CO(1) => \multOp__25_carry_n_2\,
      CO(0) => \multOp__25_carry_n_3\,
      CYINIT => '0',
      DI(3) => \multOp_carry__0_n_7\,
      DI(2) => multOp_carry_n_4,
      DI(1) => multOp_carry_n_5,
      DI(0) => '0',
      O(3) => \multOp__25_carry_n_4\,
      O(2) => \multOp__25_carry_n_5\,
      O(1) => \multOp__25_carry_n_6\,
      O(0) => \multOp__25_carry_n_7\,
      S(3) => \multOp__25_carry_i_1_n_0\,
      S(2) => \multOp__25_carry_i_2_n_0\,
      S(1) => \multOp__25_carry_i_3_n_0\,
      S(0) => multOp_carry_n_6
    );
\multOp__25_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \multOp__25_carry_n_0\,
      CO(3) => \multOp__25_carry__0_n_0\,
      CO(2) => \multOp__25_carry__0_n_1\,
      CO(1) => \multOp__25_carry__0_n_2\,
      CO(0) => \multOp__25_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \multOp__25_carry__0_i_1_n_0\,
      DI(2) => \multOp__25_carry__0_i_2_n_0\,
      DI(1) => \multOp__25_carry__0_i_3_n_0\,
      DI(0) => rgb_in(16),
      O(3) => \multOp__25_carry__0_n_4\,
      O(2) => \multOp__25_carry__0_n_5\,
      O(1) => \multOp__25_carry__0_n_6\,
      O(0) => \multOp__25_carry__0_n_7\,
      S(3) => \multOp__25_carry__0_i_4_n_0\,
      S(2) => \multOp__25_carry__0_i_5_n_0\,
      S(1) => \multOp__25_carry__0_i_6_n_0\,
      S(0) => \multOp__25_carry__0_i_7_n_0\
    );
\multOp__25_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => rgb_in(21),
      I1 => \multOp_carry__0_n_4\,
      I2 => rgb_in(18),
      O => \multOp__25_carry__0_i_1_n_0\
    );
\multOp__25_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => rgb_in(20),
      I1 => \multOp_carry__0_n_5\,
      I2 => rgb_in(17),
      O => \multOp__25_carry__0_i_2_n_0\
    );
\multOp__25_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => rgb_in(17),
      I1 => rgb_in(20),
      I2 => \multOp_carry__0_n_5\,
      O => \multOp__25_carry__0_i_3_n_0\
    );
\multOp__25_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => rgb_in(22),
      I1 => \multOp_carry__1_n_7\,
      I2 => rgb_in(19),
      I3 => \multOp__25_carry__0_i_1_n_0\,
      O => \multOp__25_carry__0_i_4_n_0\
    );
\multOp__25_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => rgb_in(21),
      I1 => \multOp_carry__0_n_4\,
      I2 => rgb_in(18),
      I3 => \multOp__25_carry__0_i_2_n_0\,
      O => \multOp__25_carry__0_i_5_n_0\
    );
\multOp__25_carry__0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => rgb_in(20),
      I1 => \multOp_carry__0_n_5\,
      I2 => rgb_in(17),
      I3 => \multOp_carry__0_n_6\,
      I4 => rgb_in(19),
      O => \multOp__25_carry__0_i_6_n_0\
    );
\multOp__25_carry__0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => rgb_in(19),
      I1 => \multOp_carry__0_n_6\,
      I2 => rgb_in(16),
      O => \multOp__25_carry__0_i_7_n_0\
    );
\multOp__25_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \multOp__25_carry__0_n_0\,
      CO(3) => \multOp__25_carry__1_n_0\,
      CO(2) => \multOp__25_carry__1_n_1\,
      CO(1) => \multOp__25_carry__1_n_2\,
      CO(0) => \multOp__25_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => rgb_in(21),
      DI(0) => \multOp__25_carry__1_i_1_n_0\,
      O(3) => \multOp__25_carry__1_n_4\,
      O(2) => \multOp__25_carry__1_n_5\,
      O(1) => \multOp__25_carry__1_n_6\,
      O(0) => \multOp__25_carry__1_n_7\,
      S(3 downto 2) => rgb_in(23 downto 22),
      S(1) => \multOp__25_carry__1_i_2_n_0\,
      S(0) => \multOp__25_carry__1_i_3_n_0\
    );
\multOp__25_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => rgb_in(22),
      I1 => \multOp_carry__1_n_7\,
      I2 => rgb_in(19),
      O => \multOp__25_carry__1_i_1_n_0\
    );
\multOp__25_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"17E8"
    )
        port map (
      I0 => rgb_in(20),
      I1 => \multOp_carry__1_n_2\,
      I2 => rgb_in(23),
      I3 => rgb_in(21),
      O => \multOp__25_carry__1_i_2_n_0\
    );
\multOp__25_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \multOp__25_carry__1_i_1_n_0\,
      I1 => \multOp_carry__1_n_2\,
      I2 => rgb_in(23),
      I3 => rgb_in(20),
      O => \multOp__25_carry__1_i_3_n_0\
    );
\multOp__25_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp_carry__0_n_7\,
      I1 => rgb_in(18),
      O => \multOp__25_carry_i_1_n_0\
    );
\multOp__25_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => multOp_carry_n_4,
      I1 => rgb_in(17),
      O => \multOp__25_carry_i_2_n_0\
    );
\multOp__25_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => multOp_carry_n_5,
      I1 => rgb_in(16),
      O => \multOp__25_carry_i_3_n_0\
    );
multOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => multOp_carry_n_0,
      CO(2) => multOp_carry_n_1,
      CO(1) => multOp_carry_n_2,
      CO(0) => multOp_carry_n_3,
      CYINIT => '0',
      DI(3 downto 1) => rgb_in(20 downto 18),
      DI(0) => '0',
      O(3) => multOp_carry_n_4,
      O(2) => multOp_carry_n_5,
      O(1) => multOp_carry_n_6,
      O(0) => multOp_carry_n_7,
      S(3) => multOp_carry_i_1_n_0,
      S(2) => multOp_carry_i_2_n_0,
      S(1) => multOp_carry_i_3_n_0,
      S(0) => rgb_in(17)
    );
\multOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => multOp_carry_n_0,
      CO(3) => \multOp_carry__0_n_0\,
      CO(2) => \multOp_carry__0_n_1\,
      CO(1) => \multOp_carry__0_n_2\,
      CO(0) => \multOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => rgb_in(23 downto 21),
      O(3) => \multOp_carry__0_n_4\,
      O(2) => \multOp_carry__0_n_5\,
      O(1) => \multOp_carry__0_n_6\,
      O(0) => \multOp_carry__0_n_7\,
      S(3) => rgb_in(22),
      S(2) => \multOp_carry__0_i_1_n_0\,
      S(1) => \multOp_carry__0_i_2_n_0\,
      S(0) => \multOp_carry__0_i_3_n_0\
    );
\multOp_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_in(23),
      I1 => rgb_in(21),
      O => \multOp_carry__0_i_1_n_0\
    );
\multOp_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_in(22),
      I1 => rgb_in(20),
      O => \multOp_carry__0_i_2_n_0\
    );
\multOp_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_in(21),
      I1 => rgb_in(19),
      O => \multOp_carry__0_i_3_n_0\
    );
\multOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \multOp_carry__0_n_0\,
      CO(3 downto 2) => \NLW_multOp_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \multOp_carry__1_n_2\,
      CO(0) => \NLW_multOp_carry__1_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_multOp_carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => \multOp_carry__1_n_7\,
      S(3 downto 1) => B"001",
      S(0) => rgb_in(23)
    );
multOp_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_in(20),
      I1 => rgb_in(18),
      O => multOp_carry_i_1_n_0
    );
multOp_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_in(19),
      I1 => rgb_in(17),
      O => multOp_carry_i_2_n_0
    );
multOp_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_in(18),
      I1 => rgb_in(16),
      O => multOp_carry_i_3_n_0
    );
\multOp_inferred__0/i___24_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \multOp_inferred__0/i___24_carry_n_0\,
      CO(2) => \multOp_inferred__0/i___24_carry_n_1\,
      CO(1) => \multOp_inferred__0/i___24_carry_n_2\,
      CO(0) => \multOp_inferred__0/i___24_carry_n_3\,
      CYINIT => '0',
      DI(3) => \i___24_carry_i_1_n_0\,
      DI(2) => \i___24_carry_i_2_n_0\,
      DI(1) => \i___24_carry_i_3_n_0\,
      DI(0) => '0',
      O(3) => \multOp_inferred__0/i___24_carry_n_4\,
      O(2) => \multOp_inferred__0/i___24_carry_n_5\,
      O(1) => \multOp_inferred__0/i___24_carry_n_6\,
      O(0) => \multOp_inferred__0/i___24_carry_n_7\,
      S(3) => \i___24_carry_i_4_n_0\,
      S(2) => \i___24_carry_i_5_n_0\,
      S(1) => \i___24_carry_i_6_n_0\,
      S(0) => \i___24_carry_i_7_n_0\
    );
\multOp_inferred__0/i___24_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \multOp_inferred__0/i___24_carry_n_0\,
      CO(3) => \multOp_inferred__0/i___24_carry__0_n_0\,
      CO(2) => \multOp_inferred__0/i___24_carry__0_n_1\,
      CO(1) => \multOp_inferred__0/i___24_carry__0_n_2\,
      CO(0) => \multOp_inferred__0/i___24_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i___24_carry__0_i_1_n_0\,
      DI(2) => \i___24_carry__0_i_2_n_0\,
      DI(1) => \i___24_carry__0_i_3_n_0\,
      DI(0) => \i___24_carry__0_i_4_n_0\,
      O(3) => \multOp_inferred__0/i___24_carry__0_n_4\,
      O(2) => \multOp_inferred__0/i___24_carry__0_n_5\,
      O(1) => \multOp_inferred__0/i___24_carry__0_n_6\,
      O(0) => \multOp_inferred__0/i___24_carry__0_n_7\,
      S(3) => \i___24_carry__0_i_5_n_0\,
      S(2) => \i___24_carry__0_i_6_n_0\,
      S(1) => \i___24_carry__0_i_7_n_0\,
      S(0) => \i___24_carry__0_i_8_n_0\
    );
\multOp_inferred__0/i___24_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \multOp_inferred__0/i___24_carry__0_n_0\,
      CO(3 downto 1) => \NLW_multOp_inferred__0/i___24_carry__1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \multOp_inferred__0/i___24_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \i___24_carry__1_i_1_n_0\,
      O(3 downto 2) => \NLW_multOp_inferred__0/i___24_carry__1_O_UNCONNECTED\(3 downto 2),
      O(1) => \multOp_inferred__0/i___24_carry__1_n_6\,
      O(0) => \multOp_inferred__0/i___24_carry__1_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \i___24_carry__1_i_2_n_0\,
      S(0) => \i___24_carry__1_i_3_n_0\
    );
\multOp_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \multOp_inferred__0/i__carry_n_0\,
      CO(2) => \multOp_inferred__0/i__carry_n_1\,
      CO(1) => \multOp_inferred__0/i__carry_n_2\,
      CO(0) => \multOp_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => rgb_in(12 downto 10),
      DI(0) => '0',
      O(3) => \multOp_inferred__0/i__carry_n_4\,
      O(2) => \multOp_inferred__0/i__carry_n_5\,
      O(1) => \multOp_inferred__0/i__carry_n_6\,
      O(0) => \multOp_inferred__0/i__carry_n_7\,
      S(3) => \i__carry_i_1_n_0\,
      S(2) => \i__carry_i_2_n_0\,
      S(1) => \i__carry_i_3_n_0\,
      S(0) => rgb_in(9)
    );
\multOp_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \multOp_inferred__0/i__carry_n_0\,
      CO(3) => \multOp_inferred__0/i__carry__0_n_0\,
      CO(2) => \multOp_inferred__0/i__carry__0_n_1\,
      CO(1) => \multOp_inferred__0/i__carry__0_n_2\,
      CO(0) => \multOp_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => rgb_in(15 downto 13),
      O(3) => \multOp_inferred__0/i__carry__0_n_4\,
      O(2) => \multOp_inferred__0/i__carry__0_n_5\,
      O(1) => \multOp_inferred__0/i__carry__0_n_6\,
      O(0) => \multOp_inferred__0/i__carry__0_n_7\,
      S(3) => rgb_in(14),
      S(2) => \i__carry__0_i_1_n_0\,
      S(1) => \i__carry__0_i_2_n_0\,
      S(0) => \i__carry__0_i_3_n_0\
    );
\multOp_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \multOp_inferred__0/i__carry__0_n_0\,
      CO(3 downto 2) => \NLW_multOp_inferred__0/i__carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \multOp_inferred__0/i__carry__1_n_2\,
      CO(0) => \NLW_multOp_inferred__0/i__carry__1_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_multOp_inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => \multOp_inferred__0/i__carry__1_n_7\,
      S(3 downto 1) => B"001",
      S(0) => rgb_in(15)
    );
\multOp_inferred__1/i___27_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \multOp_inferred__1/i___27_carry_n_0\,
      CO(2) => \multOp_inferred__1/i___27_carry_n_1\,
      CO(1) => \multOp_inferred__1/i___27_carry_n_2\,
      CO(0) => \multOp_inferred__1/i___27_carry_n_3\,
      CYINIT => '0',
      DI(3) => \multOp_inferred__1/i__carry__0_n_6\,
      DI(2) => \multOp_inferred__1/i__carry__0_n_7\,
      DI(1) => \multOp_inferred__1/i__carry_n_4\,
      DI(0) => '0',
      O(3 downto 0) => multOp(6 downto 3),
      S(3) => \i___27_carry_i_1_n_0\,
      S(2) => \i___27_carry_i_2_n_0\,
      S(1) => \i___27_carry_i_3_n_0\,
      S(0) => \multOp_inferred__1/i__carry_n_5\
    );
\multOp_inferred__1/i___27_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \multOp_inferred__1/i___27_carry_n_0\,
      CO(3) => \multOp_inferred__1/i___27_carry__0_n_0\,
      CO(2) => \multOp_inferred__1/i___27_carry__0_n_1\,
      CO(1) => \multOp_inferred__1/i___27_carry__0_n_2\,
      CO(0) => \multOp_inferred__1/i___27_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i___27_carry__0_i_1_n_0\,
      DI(2) => \i___27_carry__0_i_2_n_0\,
      DI(1) => \i___27_carry__0_i_3_n_0\,
      DI(0) => rgb_in(0),
      O(3 downto 0) => multOp(10 downto 7),
      S(3) => \i___27_carry__0_i_4_n_0\,
      S(2) => \i___27_carry__0_i_5_n_0\,
      S(1) => \i___27_carry__0_i_6_n_0\,
      S(0) => \i___27_carry__0_i_7_n_0\
    );
\multOp_inferred__1/i___27_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \multOp_inferred__1/i___27_carry__0_n_0\,
      CO(3) => \multOp_inferred__1/i___27_carry__1_n_0\,
      CO(2) => \multOp_inferred__1/i___27_carry__1_n_1\,
      CO(1) => \multOp_inferred__1/i___27_carry__1_n_2\,
      CO(0) => \multOp_inferred__1/i___27_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \i___27_carry__1_i_1_n_0\,
      DI(2) => \i___27_carry__1_i_2_n_0\,
      DI(1) => \i___27_carry__1_i_3_n_0\,
      DI(0) => \i___27_carry__1_i_4_n_0\,
      O(3 downto 0) => multOp(14 downto 11),
      S(3) => \i___27_carry__1_i_5_n_0\,
      S(2) => \i___27_carry__1_i_6_n_0\,
      S(1) => \i___27_carry__1_i_7_n_0\,
      S(0) => \i___27_carry__1_i_8_n_0\
    );
\multOp_inferred__1/i___27_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \multOp_inferred__1/i___27_carry__1_n_0\,
      CO(3 downto 0) => \NLW_multOp_inferred__1/i___27_carry__2_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_multOp_inferred__1/i___27_carry__2_O_UNCONNECTED\(3 downto 1),
      O(0) => multOp(15),
      S(3 downto 1) => B"000",
      S(0) => \i___27_carry__2_i_1_n_0\
    );
\multOp_inferred__1/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \multOp_inferred__1/i__carry_n_0\,
      CO(2) => \multOp_inferred__1/i__carry_n_1\,
      CO(1) => \multOp_inferred__1/i__carry_n_2\,
      CO(0) => \multOp_inferred__1/i__carry_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => rgb_in(1 downto 0),
      DI(1 downto 0) => B"01",
      O(3) => \multOp_inferred__1/i__carry_n_4\,
      O(2) => \multOp_inferred__1/i__carry_n_5\,
      O(1 downto 0) => multOp(2 downto 1),
      S(3) => \i__carry_i_1__0_n_0\,
      S(2) => \i__carry_i_2__0_n_0\,
      S(1) => \i__carry_i_3__0_n_0\,
      S(0) => rgb_in(0)
    );
\multOp_inferred__1/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \multOp_inferred__1/i__carry_n_0\,
      CO(3) => \multOp_inferred__1/i__carry__0_n_0\,
      CO(2) => \multOp_inferred__1/i__carry__0_n_1\,
      CO(1) => \multOp_inferred__1/i__carry__0_n_2\,
      CO(0) => \multOp_inferred__1/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => rgb_in(5 downto 2),
      O(3) => \multOp_inferred__1/i__carry__0_n_4\,
      O(2) => \multOp_inferred__1/i__carry__0_n_5\,
      O(1) => \multOp_inferred__1/i__carry__0_n_6\,
      O(0) => \multOp_inferred__1/i__carry__0_n_7\,
      S(3) => \i__carry__0_i_1__0_n_0\,
      S(2) => \i__carry__0_i_2__0_n_0\,
      S(1) => \i__carry__0_i_3__0_n_0\,
      S(0) => \i__carry__0_i_4_n_0\
    );
\multOp_inferred__1/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \multOp_inferred__1/i__carry__0_n_0\,
      CO(3) => \NLW_multOp_inferred__1/i__carry__1_CO_UNCONNECTED\(3),
      CO(2) => \multOp_inferred__1/i__carry__1_n_1\,
      CO(1) => \NLW_multOp_inferred__1/i__carry__1_CO_UNCONNECTED\(1),
      CO(0) => \multOp_inferred__1/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => rgb_in(7 downto 6),
      O(3 downto 2) => \NLW_multOp_inferred__1/i__carry__1_O_UNCONNECTED\(3 downto 2),
      O(1) => \multOp_inferred__1/i__carry__1_n_6\,
      O(0) => \multOp_inferred__1/i__carry__1_n_7\,
      S(3 downto 2) => B"01",
      S(1) => \i__carry__1_i_1_n_0\,
      S(0) => \i__carry__1_i_2_n_0\
    );
vSync_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^end_of_frame\,
      I1 => rst,
      I2 => vsync_in,
      O => vSync_reg_i_1_n_0
    );
vSync_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => vSync_reg_i_1_n_0,
      Q => \^end_of_frame\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity HDMI_bd_hdmi_digit_to_grey_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of HDMI_bd_hdmi_digit_to_grey_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of HDMI_bd_hdmi_digit_to_grey_0_0 : entity is "HDMI_bd_hdmi_digit_to_grey_0_0,hdmi_digit_to_grey,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of HDMI_bd_hdmi_digit_to_grey_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of HDMI_bd_hdmi_digit_to_grey_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of HDMI_bd_hdmi_digit_to_grey_0_0 : entity is "hdmi_digit_to_grey,Vivado 2023.1";
end HDMI_bd_hdmi_digit_to_grey_0_0;

architecture STRUCTURE of HDMI_bd_hdmi_digit_to_grey_0_0 is
  signal \^current_column\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^current_row\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN HDMI_bd_dvi2rgb_0_0_PixelClk, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  current_column(7) <= \^current_column\(7);
  current_column(6) <= \^current_column\(7);
  current_column(5) <= \^current_column\(7);
  current_column(4) <= \^current_column\(7);
  current_column(3) <= \^current_column\(7);
  current_column(2) <= \^current_column\(7);
  current_column(1 downto 0) <= \^current_column\(1 downto 0);
  current_row(7) <= \^current_column\(7);
  current_row(6) <= \^current_column\(7);
  current_row(5) <= \^current_column\(7);
  current_row(4) <= \^current_column\(7);
  current_row(3) <= \^current_column\(7);
  current_row(2 downto 0) <= \^current_row\(2 downto 0);
U0: entity work.HDMI_bd_hdmi_digit_to_grey_0_0_hdmi_digit_to_grey
     port map (
      clk => clk,
      current_column(1 downto 0) => \^current_column\(1 downto 0),
      current_row(3) => \^current_column\(7),
      current_row(2 downto 0) => \^current_row\(2 downto 0),
      end_of_frame => end_of_frame,
      h_count(31 downto 0) => h_count(31 downto 0),
      pixel_value(7 downto 0) => pixel_value(7 downto 0),
      rgb_in(23 downto 0) => rgb_in(23 downto 0),
      rst => rst,
      v_count(31 downto 0) => v_count(31 downto 0),
      valid_pixel => valid_pixel,
      vde_in => vde_in,
      vsync_in => vsync_in
    );
end STRUCTURE;
