-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Thu Dec  4 10:46:53 2025
-- Host        : pcetu-129 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/laemo10/Desktop/Labo4_FPGA/ZYBO_HDMI_MGA_2018_2/project_1/project_1.srcs/sources_1/bd/HDMI_bd/ip/HDMI_bd_hdmi_rectangle_overl_0_0/HDMI_bd_hdmi_rectangle_overl_0_0_sim_netlist.vhdl
-- Design      : HDMI_bd_hdmi_rectangle_overl_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity HDMI_bd_hdmi_rectangle_overl_0_0_hdmi_rectangle_overlay is
  port (
    vde_out : out STD_LOGIC;
    hsync_out : out STD_LOGIC;
    vsync_out : out STD_LOGIC;
    rgb_out : out STD_LOGIC_VECTOR ( 23 downto 0 );
    h_count : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rst : in STD_LOGIC;
    rgb_in : in STD_LOGIC_VECTOR ( 23 downto 0 );
    vde_in : in STD_LOGIC;
    clk : in STD_LOGIC;
    hsync_in : in STD_LOGIC;
    vsync_in : in STD_LOGIC;
    v_count : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of HDMI_bd_hdmi_rectangle_overl_0_0_hdmi_rectangle_overlay : entity is "hdmi_rectangle_overlay";
end HDMI_bd_hdmi_rectangle_overl_0_0_hdmi_rectangle_overlay;

architecture STRUCTURE of HDMI_bd_hdmi_rectangle_overl_0_0_hdmi_rectangle_overlay is
  signal C : STD_LOGIC_VECTOR ( 14 downto 1 );
  signal hsync_reg : STD_LOGIC;
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
  signal is_black_reg : STD_LOGIC;
  signal is_black_reg_i_1_n_0 : STD_LOGIC;
  signal is_black_reg_i_2_n_0 : STD_LOGIC;
  signal is_edge_reg : STD_LOGIC;
  signal is_edge_reg_i_10_n_0 : STD_LOGIC;
  signal is_edge_reg_i_11_n_0 : STD_LOGIC;
  signal is_edge_reg_i_12_n_0 : STD_LOGIC;
  signal is_edge_reg_i_13_n_0 : STD_LOGIC;
  signal is_edge_reg_i_14_n_0 : STD_LOGIC;
  signal is_edge_reg_i_15_n_0 : STD_LOGIC;
  signal is_edge_reg_i_16_n_0 : STD_LOGIC;
  signal is_edge_reg_i_17_n_0 : STD_LOGIC;
  signal is_edge_reg_i_18_n_0 : STD_LOGIC;
  signal is_edge_reg_i_19_n_0 : STD_LOGIC;
  signal is_edge_reg_i_1_n_0 : STD_LOGIC;
  signal is_edge_reg_i_20_n_0 : STD_LOGIC;
  signal is_edge_reg_i_21_n_0 : STD_LOGIC;
  signal is_edge_reg_i_22_n_0 : STD_LOGIC;
  signal is_edge_reg_i_2_n_0 : STD_LOGIC;
  signal is_edge_reg_i_3_n_0 : STD_LOGIC;
  signal is_edge_reg_i_4_n_0 : STD_LOGIC;
  signal is_edge_reg_i_5_n_0 : STD_LOGIC;
  signal is_edge_reg_i_6_n_0 : STD_LOGIC;
  signal is_edge_reg_i_7_n_0 : STD_LOGIC;
  signal is_edge_reg_i_8_n_0 : STD_LOGIC;
  signal is_edge_reg_i_9_n_0 : STD_LOGIC;
  signal is_logic_grid_reg : STD_LOGIC;
  signal is_logic_grid_reg_i_10_n_0 : STD_LOGIC;
  signal is_logic_grid_reg_i_11_n_0 : STD_LOGIC;
  signal is_logic_grid_reg_i_12_n_0 : STD_LOGIC;
  signal is_logic_grid_reg_i_13_n_0 : STD_LOGIC;
  signal is_logic_grid_reg_i_14_n_0 : STD_LOGIC;
  signal is_logic_grid_reg_i_15_n_0 : STD_LOGIC;
  signal is_logic_grid_reg_i_16_n_0 : STD_LOGIC;
  signal is_logic_grid_reg_i_17_n_0 : STD_LOGIC;
  signal is_logic_grid_reg_i_18_n_0 : STD_LOGIC;
  signal is_logic_grid_reg_i_19_n_0 : STD_LOGIC;
  signal is_logic_grid_reg_i_1_n_0 : STD_LOGIC;
  signal is_logic_grid_reg_i_20_n_0 : STD_LOGIC;
  signal is_logic_grid_reg_i_21_n_0 : STD_LOGIC;
  signal is_logic_grid_reg_i_22_n_0 : STD_LOGIC;
  signal is_logic_grid_reg_i_23_n_0 : STD_LOGIC;
  signal is_logic_grid_reg_i_24_n_0 : STD_LOGIC;
  signal is_logic_grid_reg_i_25_n_0 : STD_LOGIC;
  signal is_logic_grid_reg_i_26_n_0 : STD_LOGIC;
  signal is_logic_grid_reg_i_27_n_0 : STD_LOGIC;
  signal is_logic_grid_reg_i_28_n_0 : STD_LOGIC;
  signal is_logic_grid_reg_i_29_n_0 : STD_LOGIC;
  signal is_logic_grid_reg_i_2_n_0 : STD_LOGIC;
  signal is_logic_grid_reg_i_30_n_0 : STD_LOGIC;
  signal is_logic_grid_reg_i_31_n_0 : STD_LOGIC;
  signal is_logic_grid_reg_i_32_n_0 : STD_LOGIC;
  signal is_logic_grid_reg_i_3_n_0 : STD_LOGIC;
  signal is_logic_grid_reg_i_4_n_0 : STD_LOGIC;
  signal is_logic_grid_reg_i_5_n_0 : STD_LOGIC;
  signal is_logic_grid_reg_i_6_n_0 : STD_LOGIC;
  signal is_logic_grid_reg_i_7_n_0 : STD_LOGIC;
  signal is_logic_grid_reg_i_8_n_0 : STD_LOGIC;
  signal is_logic_grid_reg_i_9_n_0 : STD_LOGIC;
  signal is_probe_reg : STD_LOGIC;
  signal is_probe_reg_i_10_n_0 : STD_LOGIC;
  signal is_probe_reg_i_11_n_0 : STD_LOGIC;
  signal is_probe_reg_i_12_n_0 : STD_LOGIC;
  signal is_probe_reg_i_13_n_0 : STD_LOGIC;
  signal is_probe_reg_i_14_n_0 : STD_LOGIC;
  signal is_probe_reg_i_15_n_0 : STD_LOGIC;
  signal is_probe_reg_i_16_n_0 : STD_LOGIC;
  signal is_probe_reg_i_17_n_0 : STD_LOGIC;
  signal is_probe_reg_i_18_n_0 : STD_LOGIC;
  signal is_probe_reg_i_19_n_0 : STD_LOGIC;
  signal is_probe_reg_i_1_n_0 : STD_LOGIC;
  signal is_probe_reg_i_20_n_0 : STD_LOGIC;
  signal is_probe_reg_i_21_n_0 : STD_LOGIC;
  signal is_probe_reg_i_22_n_0 : STD_LOGIC;
  signal is_probe_reg_i_23_n_0 : STD_LOGIC;
  signal is_probe_reg_i_24_n_0 : STD_LOGIC;
  signal is_probe_reg_i_25_n_0 : STD_LOGIC;
  signal is_probe_reg_i_26_n_0 : STD_LOGIC;
  signal is_probe_reg_i_27_n_0 : STD_LOGIC;
  signal is_probe_reg_i_28_n_0 : STD_LOGIC;
  signal is_probe_reg_i_29_n_0 : STD_LOGIC;
  signal is_probe_reg_i_2_n_0 : STD_LOGIC;
  signal is_probe_reg_i_30_n_0 : STD_LOGIC;
  signal is_probe_reg_i_31_n_0 : STD_LOGIC;
  signal is_probe_reg_i_32_n_0 : STD_LOGIC;
  signal is_probe_reg_i_33_n_0 : STD_LOGIC;
  signal is_probe_reg_i_34_n_0 : STD_LOGIC;
  signal is_probe_reg_i_3_n_0 : STD_LOGIC;
  signal is_probe_reg_i_4_n_0 : STD_LOGIC;
  signal is_probe_reg_i_5_n_0 : STD_LOGIC;
  signal is_probe_reg_i_6_n_0 : STD_LOGIC;
  signal is_probe_reg_i_7_n_0 : STD_LOGIC;
  signal is_probe_reg_i_8_n_0 : STD_LOGIC;
  signal is_probe_reg_i_9_n_0 : STD_LOGIC;
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
  signal \rgb_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \rgb_out[10]_i_1_n_0\ : STD_LOGIC;
  signal \rgb_out[11]_i_1_n_0\ : STD_LOGIC;
  signal \rgb_out[12]_i_1_n_0\ : STD_LOGIC;
  signal \rgb_out[13]_i_1_n_0\ : STD_LOGIC;
  signal \rgb_out[14]_i_1_n_0\ : STD_LOGIC;
  signal \rgb_out[15]_i_1_n_0\ : STD_LOGIC;
  signal \rgb_out[15]_i_2_n_0\ : STD_LOGIC;
  signal \rgb_out[16]_i_1_n_0\ : STD_LOGIC;
  signal \rgb_out[17]_i_1_n_0\ : STD_LOGIC;
  signal \rgb_out[18]_i_1_n_0\ : STD_LOGIC;
  signal \rgb_out[19]_i_1_n_0\ : STD_LOGIC;
  signal \rgb_out[1]_i_1_n_0\ : STD_LOGIC;
  signal \rgb_out[20]_i_1_n_0\ : STD_LOGIC;
  signal \rgb_out[21]_i_1_n_0\ : STD_LOGIC;
  signal \rgb_out[22]_i_1_n_0\ : STD_LOGIC;
  signal \rgb_out[23]_i_1_n_0\ : STD_LOGIC;
  signal \rgb_out[2]_i_1_n_0\ : STD_LOGIC;
  signal \rgb_out[3]_i_1_n_0\ : STD_LOGIC;
  signal \rgb_out[4]_i_1_n_0\ : STD_LOGIC;
  signal \rgb_out[5]_i_1_n_0\ : STD_LOGIC;
  signal \rgb_out[6]_i_1_n_0\ : STD_LOGIC;
  signal \rgb_out[7]_i_1_n_0\ : STD_LOGIC;
  signal \rgb_out[7]_i_2_n_0\ : STD_LOGIC;
  signal \rgb_out[8]_i_1_n_0\ : STD_LOGIC;
  signal \rgb_out[9]_i_1_n_0\ : STD_LOGIC;
  signal rgb_reg : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal vde_reg : STD_LOGIC;
  signal vsync_reg : STD_LOGIC;
  signal w_sum0 : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal \w_sum0__41_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \w_sum0__41_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \w_sum0__41_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \w_sum0__41_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \w_sum0__41_carry__0_n_0\ : STD_LOGIC;
  signal \w_sum0__41_carry__0_n_1\ : STD_LOGIC;
  signal \w_sum0__41_carry__0_n_2\ : STD_LOGIC;
  signal \w_sum0__41_carry__0_n_3\ : STD_LOGIC;
  signal \w_sum0__41_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \w_sum0__41_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \w_sum0__41_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \w_sum0__41_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \w_sum0__41_carry__1_n_0\ : STD_LOGIC;
  signal \w_sum0__41_carry__1_n_1\ : STD_LOGIC;
  signal \w_sum0__41_carry__1_n_2\ : STD_LOGIC;
  signal \w_sum0__41_carry__1_n_3\ : STD_LOGIC;
  signal \w_sum0__41_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \w_sum0__41_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \w_sum0__41_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \w_sum0__41_carry__2_n_2\ : STD_LOGIC;
  signal \w_sum0__41_carry__2_n_3\ : STD_LOGIC;
  signal \w_sum0__41_carry_i_1_n_0\ : STD_LOGIC;
  signal \w_sum0__41_carry_i_2_n_0\ : STD_LOGIC;
  signal \w_sum0__41_carry_i_3_n_0\ : STD_LOGIC;
  signal \w_sum0__41_carry_i_4_n_0\ : STD_LOGIC;
  signal \w_sum0__41_carry_n_0\ : STD_LOGIC;
  signal \w_sum0__41_carry_n_1\ : STD_LOGIC;
  signal \w_sum0__41_carry_n_2\ : STD_LOGIC;
  signal \w_sum0__41_carry_n_3\ : STD_LOGIC;
  signal \w_sum0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \w_sum0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \w_sum0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \w_sum0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \w_sum0_carry__0_n_0\ : STD_LOGIC;
  signal \w_sum0_carry__0_n_1\ : STD_LOGIC;
  signal \w_sum0_carry__0_n_2\ : STD_LOGIC;
  signal \w_sum0_carry__0_n_3\ : STD_LOGIC;
  signal \w_sum0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \w_sum0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \w_sum0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \w_sum0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \w_sum0_carry__1_n_0\ : STD_LOGIC;
  signal \w_sum0_carry__1_n_1\ : STD_LOGIC;
  signal \w_sum0_carry__1_n_2\ : STD_LOGIC;
  signal \w_sum0_carry__1_n_3\ : STD_LOGIC;
  signal \w_sum0_carry__2_i_1_n_3\ : STD_LOGIC;
  signal \w_sum0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \w_sum0_carry__2_n_0\ : STD_LOGIC;
  signal \w_sum0_carry__2_n_2\ : STD_LOGIC;
  signal \w_sum0_carry__2_n_3\ : STD_LOGIC;
  signal w_sum0_carry_i_1_n_0 : STD_LOGIC;
  signal w_sum0_carry_i_2_n_0 : STD_LOGIC;
  signal w_sum0_carry_i_3_n_0 : STD_LOGIC;
  signal w_sum0_carry_i_4_n_0 : STD_LOGIC;
  signal w_sum0_carry_n_0 : STD_LOGIC;
  signal w_sum0_carry_n_1 : STD_LOGIC;
  signal w_sum0_carry_n_2 : STD_LOGIC;
  signal w_sum0_carry_n_3 : STD_LOGIC;
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
  signal \NLW_w_sum0__41_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_w_sum0__41_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_w_sum0__41_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_w_sum0__41_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_w_sum0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_w_sum0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_w_sum0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_w_sum0_carry__2_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_w_sum0_carry__2_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HLUTNM : string;
  attribute HLUTNM of \i___27_carry__0_i_1\ : label is "lutpair2";
  attribute HLUTNM of \i___27_carry__0_i_2\ : label is "lutpair1";
  attribute HLUTNM of \i___27_carry__0_i_4\ : label is "lutpair3";
  attribute HLUTNM of \i___27_carry__0_i_5\ : label is "lutpair2";
  attribute HLUTNM of \i___27_carry__0_i_6\ : label is "lutpair1";
  attribute HLUTNM of \i___27_carry__1_i_4\ : label is "lutpair3";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of is_edge_reg_i_13 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of is_edge_reg_i_17 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of is_edge_reg_i_18 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of is_edge_reg_i_20 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of is_edge_reg_i_21 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of is_edge_reg_i_3 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of is_edge_reg_i_5 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of is_edge_reg_i_7 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of is_edge_reg_i_8 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of is_edge_reg_i_9 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of is_logic_grid_reg_i_10 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of is_logic_grid_reg_i_11 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of is_logic_grid_reg_i_16 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of is_logic_grid_reg_i_17 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of is_logic_grid_reg_i_20 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of is_logic_grid_reg_i_23 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of is_logic_grid_reg_i_27 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of is_logic_grid_reg_i_30 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of is_logic_grid_reg_i_31 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of is_logic_grid_reg_i_5 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of is_logic_grid_reg_i_8 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of is_probe_reg_i_13 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of is_probe_reg_i_14 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of is_probe_reg_i_15 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of is_probe_reg_i_18 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of is_probe_reg_i_19 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of is_probe_reg_i_25 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of is_probe_reg_i_27 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of is_probe_reg_i_28 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of is_probe_reg_i_9 : label is "soft_lutpair5";
  attribute HLUTNM of \multOp__25_carry__0_i_2\ : label is "lutpair0";
  attribute HLUTNM of \multOp__25_carry__0_i_6\ : label is "lutpair0";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \multOp_inferred__0/i___24_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \multOp_inferred__0/i___24_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \multOp_inferred__0/i___24_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \multOp_inferred__1/i___27_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \multOp_inferred__1/i___27_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \multOp_inferred__1/i___27_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \multOp_inferred__1/i___27_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \w_sum0__41_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \w_sum0__41_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \w_sum0__41_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \w_sum0__41_carry__2\ : label is 35;
begin
hsync_out_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => hsync_reg,
      Q => hsync_out,
      R => rst
    );
hsync_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => hsync_in,
      Q => hsync_reg,
      R => rst
    );
\i___24_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => rgb_in(6),
      I1 => \multOp_inferred__0/i__carry__1_n_7\,
      I2 => rgb_in(4),
      O => \i___24_carry__0_i_1_n_0\
    );
\i___24_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => rgb_in(5),
      I1 => \multOp_inferred__0/i__carry__0_n_4\,
      I2 => rgb_in(3),
      O => \i___24_carry__0_i_2_n_0\
    );
\i___24_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => rgb_in(4),
      I1 => \multOp_inferred__0/i__carry__0_n_5\,
      I2 => rgb_in(2),
      O => \i___24_carry__0_i_3_n_0\
    );
\i___24_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => rgb_in(3),
      I1 => \multOp_inferred__0/i__carry__0_n_6\,
      I2 => rgb_in(1),
      O => \i___24_carry__0_i_4_n_0\
    );
\i___24_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => rgb_in(4),
      I1 => \multOp_inferred__0/i__carry__1_n_7\,
      I2 => rgb_in(6),
      I3 => rgb_in(7),
      I4 => \multOp_inferred__0/i__carry__1_n_2\,
      I5 => rgb_in(5),
      O => \i___24_carry__0_i_5_n_0\
    );
\i___24_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => rgb_in(3),
      I1 => \multOp_inferred__0/i__carry__0_n_4\,
      I2 => rgb_in(5),
      I3 => rgb_in(6),
      I4 => \multOp_inferred__0/i__carry__1_n_7\,
      I5 => rgb_in(4),
      O => \i___24_carry__0_i_6_n_0\
    );
\i___24_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => rgb_in(2),
      I1 => \multOp_inferred__0/i__carry__0_n_5\,
      I2 => rgb_in(4),
      I3 => rgb_in(5),
      I4 => \multOp_inferred__0/i__carry__0_n_4\,
      I5 => rgb_in(3),
      O => \i___24_carry__0_i_7_n_0\
    );
\i___24_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => rgb_in(1),
      I1 => \multOp_inferred__0/i__carry__0_n_6\,
      I2 => rgb_in(3),
      I3 => rgb_in(4),
      I4 => \multOp_inferred__0/i__carry__0_n_5\,
      I5 => rgb_in(2),
      O => \i___24_carry__0_i_8_n_0\
    );
\i___24_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => rgb_in(7),
      I1 => \multOp_inferred__0/i__carry__1_n_2\,
      I2 => rgb_in(5),
      O => \i___24_carry__1_i_1_n_0\
    );
\i___24_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_in(6),
      I1 => rgb_in(7),
      O => \i___24_carry__1_i_2_n_0\
    );
\i___24_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8E71"
    )
        port map (
      I0 => rgb_in(5),
      I1 => \multOp_inferred__0/i__carry__1_n_2\,
      I2 => rgb_in(7),
      I3 => rgb_in(6),
      O => \i___24_carry__1_i_3_n_0\
    );
\i___24_carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => rgb_in(2),
      I1 => \multOp_inferred__0/i__carry__0_n_7\,
      I2 => rgb_in(0),
      O => \i___24_carry_i_1_n_0\
    );
\i___24_carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => rgb_in(2),
      I1 => \multOp_inferred__0/i__carry__0_n_7\,
      I2 => rgb_in(0),
      O => \i___24_carry_i_2_n_0\
    );
\i___24_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \multOp_inferred__0/i__carry_n_5\,
      I1 => rgb_in(0),
      O => \i___24_carry_i_3_n_0\
    );
\i___24_carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => rgb_in(0),
      I1 => \multOp_inferred__0/i__carry__0_n_7\,
      I2 => rgb_in(2),
      I3 => rgb_in(3),
      I4 => \multOp_inferred__0/i__carry__0_n_6\,
      I5 => rgb_in(1),
      O => \i___24_carry_i_4_n_0\
    );
\i___24_carry_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69966969"
    )
        port map (
      I0 => rgb_in(2),
      I1 => \multOp_inferred__0/i__carry__0_n_7\,
      I2 => rgb_in(0),
      I3 => rgb_in(1),
      I4 => \multOp_inferred__0/i__carry_n_4\,
      O => \i___24_carry_i_5_n_0\
    );
\i___24_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => rgb_in(0),
      I1 => \multOp_inferred__0/i__carry_n_5\,
      I2 => \multOp_inferred__0/i__carry_n_4\,
      I3 => rgb_in(1),
      O => \i___24_carry_i_6_n_0\
    );
\i___24_carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_in(0),
      I1 => \multOp_inferred__0/i__carry_n_5\,
      O => \i___24_carry_i_7_n_0\
    );
\i___27_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => rgb_in(13),
      I1 => \multOp_inferred__1/i__carry__1_n_7\,
      I2 => rgb_in(10),
      O => \i___27_carry__0_i_1_n_0\
    );
\i___27_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => rgb_in(12),
      I1 => \multOp_inferred__1/i__carry__0_n_4\,
      I2 => rgb_in(9),
      O => \i___27_carry__0_i_2_n_0\
    );
\i___27_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => rgb_in(9),
      I1 => rgb_in(12),
      I2 => \multOp_inferred__1/i__carry__0_n_4\,
      O => \i___27_carry__0_i_3_n_0\
    );
\i___27_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => rgb_in(14),
      I1 => \multOp_inferred__1/i__carry__1_n_6\,
      I2 => rgb_in(11),
      I3 => \i___27_carry__0_i_1_n_0\,
      O => \i___27_carry__0_i_4_n_0\
    );
\i___27_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => rgb_in(13),
      I1 => \multOp_inferred__1/i__carry__1_n_7\,
      I2 => rgb_in(10),
      I3 => \i___27_carry__0_i_2_n_0\,
      O => \i___27_carry__0_i_5_n_0\
    );
\i___27_carry__0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => rgb_in(12),
      I1 => \multOp_inferred__1/i__carry__0_n_4\,
      I2 => rgb_in(9),
      I3 => \multOp_inferred__1/i__carry__0_n_5\,
      I4 => rgb_in(11),
      O => \i___27_carry__0_i_6_n_0\
    );
\i___27_carry__0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => rgb_in(11),
      I1 => \multOp_inferred__1/i__carry__0_n_5\,
      I2 => rgb_in(8),
      O => \i___27_carry__0_i_7_n_0\
    );
\i___27_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rgb_in(14),
      I1 => \multOp_inferred__1/i__carry__1_n_1\,
      O => \i___27_carry__1_i_1_n_0\
    );
\i___27_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rgb_in(13),
      I1 => \multOp_inferred__1/i__carry__1_n_1\,
      O => \i___27_carry__1_i_2_n_0\
    );
\i___27_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \multOp_inferred__1/i__carry__1_n_1\,
      I1 => rgb_in(15),
      I2 => rgb_in(12),
      O => \i___27_carry__1_i_3_n_0\
    );
\i___27_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => rgb_in(14),
      I1 => \multOp_inferred__1/i__carry__1_n_6\,
      I2 => rgb_in(11),
      O => \i___27_carry__1_i_4_n_0\
    );
\i___27_carry__1_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => rgb_in(14),
      I1 => \multOp_inferred__1/i__carry__1_n_1\,
      I2 => rgb_in(15),
      O => \i___27_carry__1_i_5_n_0\
    );
\i___27_carry__1_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => rgb_in(13),
      I1 => \multOp_inferred__1/i__carry__1_n_1\,
      I2 => rgb_in(14),
      O => \i___27_carry__1_i_6_n_0\
    );
\i___27_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7E81"
    )
        port map (
      I0 => rgb_in(12),
      I1 => rgb_in(15),
      I2 => \multOp_inferred__1/i__carry__1_n_1\,
      I3 => rgb_in(13),
      O => \i___27_carry__1_i_7_n_0\
    );
\i___27_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \i___27_carry__1_i_4_n_0\,
      I1 => \multOp_inferred__1/i__carry__1_n_1\,
      I2 => rgb_in(15),
      I3 => rgb_in(12),
      O => \i___27_carry__1_i_8_n_0\
    );
\i___27_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rgb_in(15),
      I1 => \multOp_inferred__1/i__carry__1_n_1\,
      O => \i___27_carry__2_i_1_n_0\
    );
\i___27_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp_inferred__1/i__carry__0_n_6\,
      I1 => rgb_in(10),
      O => \i___27_carry_i_1_n_0\
    );
\i___27_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp_inferred__1/i__carry__0_n_7\,
      I1 => rgb_in(9),
      O => \i___27_carry_i_2_n_0\
    );
\i___27_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp_inferred__1/i__carry_n_4\,
      I1 => rgb_in(8),
      O => \i___27_carry_i_3_n_0\
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_in(7),
      I1 => rgb_in(5),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_in(13),
      I1 => rgb_in(15),
      O => \i__carry__0_i_1__0_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_in(6),
      I1 => rgb_in(4),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_in(12),
      I1 => rgb_in(14),
      O => \i__carry__0_i_2__0_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_in(5),
      I1 => rgb_in(3),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_in(11),
      I1 => rgb_in(13),
      O => \i__carry__0_i_3__0_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_in(10),
      I1 => rgb_in(12),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rgb_in(15),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rgb_in(14),
      O => \i__carry__1_i_2_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_in(4),
      I1 => rgb_in(2),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_in(9),
      I1 => rgb_in(11),
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_in(3),
      I1 => rgb_in(1),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_in(8),
      I1 => rgb_in(10),
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rgb_in(9),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_in(2),
      I1 => rgb_in(0),
      O => \i__carry_i_3__0_n_0\
    );
is_black_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0015"
    )
        port map (
      I0 => rst,
      I1 => w_sum0(13),
      I2 => is_black_reg_i_2_n_0,
      I3 => w_sum0(15),
      O => is_black_reg_i_1_n_0
    );
is_black_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA8888888"
    )
        port map (
      I0 => w_sum0(14),
      I1 => w_sum0(12),
      I2 => w_sum0(10),
      I3 => w_sum0(8),
      I4 => w_sum0(9),
      I5 => w_sum0(11),
      O => is_black_reg_i_2_n_0
    );
is_black_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => is_black_reg_i_1_n_0,
      Q => is_black_reg,
      R => '0'
    );
is_edge_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0F0808080"
    )
        port map (
      I0 => is_edge_reg_i_2_n_0,
      I1 => is_edge_reg_i_3_n_0,
      I2 => is_edge_reg_i_4_n_0,
      I3 => is_edge_reg_i_5_n_0,
      I4 => is_edge_reg_i_6_n_0,
      I5 => is_edge_reg_i_7_n_0,
      O => is_edge_reg_i_1_n_0
    );
is_edge_reg_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4446464646464642"
    )
        port map (
      I0 => h_count(10),
      I1 => h_count(9),
      I2 => is_edge_reg_i_8_n_0,
      I3 => h_count(5),
      I4 => h_count(3),
      I5 => h_count(4),
      O => is_edge_reg_i_10_n_0
    );
is_edge_reg_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => v_count(6),
      I1 => v_count(7),
      I2 => v_count(5),
      I3 => v_count(4),
      I4 => v_count(9),
      I5 => v_count(8),
      O => is_edge_reg_i_11_n_0
    );
is_edge_reg_i_12: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010100"
    )
        port map (
      I0 => v_count(5),
      I1 => v_count(7),
      I2 => v_count(9),
      I3 => v_count(2),
      I4 => v_count(1),
      O => is_edge_reg_i_12_n_0
    );
is_edge_reg_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => is_edge_reg_i_16_n_0,
      I1 => h_count(4),
      I2 => h_count(3),
      I3 => h_count(5),
      O => is_edge_reg_i_13_n_0
    );
is_edge_reg_i_14: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF8F8F8"
    )
        port map (
      I0 => is_edge_reg_i_17_n_0,
      I1 => is_edge_reg_i_18_n_0,
      I2 => is_edge_reg_i_19_n_0,
      I3 => is_edge_reg_i_20_n_0,
      I4 => is_edge_reg_i_21_n_0,
      O => is_edge_reg_i_14_n_0
    );
is_edge_reg_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3333FFFFBBBFFCCC"
    )
        port map (
      I0 => is_edge_reg_i_22_n_0,
      I1 => v_count(8),
      I2 => v_count(6),
      I3 => v_count(5),
      I4 => v_count(9),
      I5 => v_count(7),
      O => is_edge_reg_i_15_n_0
    );
is_edge_reg_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => h_count(2),
      I1 => h_count(9),
      I2 => h_count(0),
      I3 => h_count(1),
      I4 => v_count(1),
      I5 => h_count(10),
      O => is_edge_reg_i_16_n_0
    );
is_edge_reg_i_17: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01C0"
    )
        port map (
      I0 => h_count(1),
      I1 => h_count(0),
      I2 => h_count(2),
      I3 => h_count(3),
      O => is_edge_reg_i_17_n_0
    );
is_edge_reg_i_18: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => h_count(5),
      I1 => h_count(4),
      I2 => h_count(9),
      I3 => h_count(10),
      O => is_edge_reg_i_18_n_0
    );
is_edge_reg_i_19: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => h_count(4),
      I1 => h_count(5),
      I2 => h_count(3),
      I3 => h_count(2),
      I4 => h_count(10),
      I5 => h_count(9),
      O => is_edge_reg_i_19_n_0
    );
is_edge_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00010000"
    )
        port map (
      I0 => is_edge_reg_i_8_n_0,
      I1 => h_count(0),
      I2 => h_count(1),
      I3 => h_count(2),
      I4 => is_edge_reg_i_9_n_0,
      I5 => is_edge_reg_i_10_n_0,
      O => is_edge_reg_i_2_n_0
    );
is_edge_reg_i_20: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => h_count(1),
      I1 => h_count(10),
      I2 => h_count(9),
      I3 => h_count(5),
      O => is_edge_reg_i_20_n_0
    );
is_edge_reg_i_21: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => h_count(3),
      I1 => h_count(4),
      I2 => h_count(2),
      O => is_edge_reg_i_21_n_0
    );
is_edge_reg_i_22: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011131313"
    )
        port map (
      I0 => v_count(3),
      I1 => v_count(4),
      I2 => v_count(2),
      I3 => v_count(1),
      I4 => v_count(0),
      I5 => v_count(6),
      O => is_edge_reg_i_22_n_0
    );
is_edge_reg_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20080808"
    )
        port map (
      I0 => is_edge_reg_i_11_n_0,
      I1 => v_count(3),
      I2 => v_count(2),
      I3 => v_count(1),
      I4 => v_count(0),
      O => is_edge_reg_i_3_n_0
    );
is_edge_reg_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => is_probe_reg_i_24_n_0,
      I1 => is_probe_reg_i_23_n_0,
      I2 => is_probe_reg_i_22_n_0,
      I3 => is_probe_reg_i_21_n_0,
      I4 => is_probe_reg_i_20_n_0,
      O => is_edge_reg_i_4_n_0
    );
is_edge_reg_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => v_count(4),
      I1 => v_count(3),
      I2 => v_count(8),
      I3 => v_count(6),
      O => is_edge_reg_i_5_n_0
    );
is_edge_reg_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F8F8F888F888F88"
    )
        port map (
      I0 => is_edge_reg_i_10_n_0,
      I1 => is_edge_reg_i_12_n_0,
      I2 => is_edge_reg_i_8_n_0,
      I3 => is_edge_reg_i_13_n_0,
      I4 => v_count(2),
      I5 => is_edge_reg_i_14_n_0,
      O => is_edge_reg_i_6_n_0
    );
is_edge_reg_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
        port map (
      I0 => h_count(8),
      I1 => h_count(6),
      I2 => h_count(7),
      I3 => is_edge_reg_i_14_n_0,
      I4 => is_edge_reg_i_15_n_0,
      O => is_edge_reg_i_7_n_0
    );
is_edge_reg_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => h_count(8),
      I1 => h_count(6),
      I2 => h_count(7),
      O => is_edge_reg_i_8_n_0
    );
is_edge_reg_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => h_count(10),
      I1 => h_count(9),
      O => is_edge_reg_i_9_n_0
    );
is_edge_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => is_edge_reg_i_1_n_0,
      Q => is_edge_reg,
      R => rst
    );
is_logic_grid_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF88800000000"
    )
        port map (
      I0 => is_logic_grid_reg_i_2_n_0,
      I1 => is_logic_grid_reg_i_3_n_0,
      I2 => is_logic_grid_reg_i_4_n_0,
      I3 => is_logic_grid_reg_i_5_n_0,
      I4 => is_logic_grid_reg_i_6_n_0,
      I5 => is_probe_reg_i_7_n_0,
      O => is_logic_grid_reg_i_1_n_0
    );
is_logic_grid_reg_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => v_count(5),
      I1 => v_count(6),
      O => is_logic_grid_reg_i_10_n_0
    );
is_logic_grid_reg_i_11: unisim.vcomponents.LUT3
    generic map(
      INIT => X"18"
    )
        port map (
      I0 => v_count(1),
      I1 => v_count(2),
      I2 => v_count(3),
      O => is_logic_grid_reg_i_11_n_0
    );
is_logic_grid_reg_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5454545454000000"
    )
        port map (
      I0 => h_count(8),
      I1 => is_logic_grid_reg_i_21_n_0,
      I2 => h_count(7),
      I3 => is_logic_grid_reg_i_22_n_0,
      I4 => is_logic_grid_reg_i_23_n_0,
      I5 => is_logic_grid_reg_i_24_n_0,
      O => is_logic_grid_reg_i_12_n_0
    );
is_logic_grid_reg_i_13: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40404000"
    )
        port map (
      I0 => h_count(7),
      I1 => v_count(1),
      I2 => v_count(2),
      I3 => is_logic_grid_reg_i_25_n_0,
      I4 => is_logic_grid_reg_i_26_n_0,
      O => is_logic_grid_reg_i_13_n_0
    );
is_logic_grid_reg_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000091808080"
    )
        port map (
      I0 => h_count(3),
      I1 => h_count(0),
      I2 => is_logic_grid_reg_i_27_n_0,
      I3 => is_logic_grid_reg_i_28_n_0,
      I4 => is_logic_grid_reg_i_29_n_0,
      I5 => h_count(8),
      O => is_logic_grid_reg_i_14_n_0
    );
is_logic_grid_reg_i_15: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2F2F2F20"
    )
        port map (
      I0 => is_logic_grid_reg_i_30_n_0,
      I1 => h_count(8),
      I2 => h_count(7),
      I3 => is_logic_grid_reg_i_26_n_0,
      I4 => is_logic_grid_reg_i_25_n_0,
      O => is_logic_grid_reg_i_15_n_0
    );
is_logic_grid_reg_i_16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => v_count(4),
      I1 => v_count(3),
      I2 => v_count(6),
      I3 => v_count(5),
      O => is_logic_grid_reg_i_16_n_0
    );
is_logic_grid_reg_i_17: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => v_count(9),
      I1 => v_count(8),
      O => is_logic_grid_reg_i_17_n_0
    );
is_logic_grid_reg_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10115555FFFFFFFF"
    )
        port map (
      I0 => is_logic_grid_reg_i_10_n_0,
      I1 => v_count(3),
      I2 => is_logic_grid_reg_i_31_n_0,
      I3 => v_count(2),
      I4 => v_count(4),
      I5 => v_count(7),
      O => is_logic_grid_reg_i_18_n_0
    );
is_logic_grid_reg_i_19: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020002000200000"
    )
        port map (
      I0 => is_logic_grid_reg_i_32_n_0,
      I1 => v_count(7),
      I2 => v_count(5),
      I3 => h_count(8),
      I4 => h_count(7),
      I5 => is_logic_grid_reg_i_21_n_0,
      O => is_logic_grid_reg_i_19_n_0
    );
is_logic_grid_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4F4F4F44"
    )
        port map (
      I0 => is_probe_reg_i_18_n_0,
      I1 => is_logic_grid_reg_i_7_n_0,
      I2 => h_count(8),
      I3 => is_logic_grid_reg_i_8_n_0,
      I4 => is_logic_grid_reg_i_9_n_0,
      O => is_logic_grid_reg_i_2_n_0
    );
is_logic_grid_reg_i_20: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => h_count(3),
      I1 => h_count(4),
      O => is_logic_grid_reg_i_20_n_0
    );
is_logic_grid_reg_i_21: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAA00000000"
    )
        port map (
      I0 => h_count(5),
      I1 => h_count(1),
      I2 => h_count(0),
      I3 => h_count(4),
      I4 => h_count(3),
      I5 => h_count(6),
      O => is_logic_grid_reg_i_21_n_0
    );
is_logic_grid_reg_i_22: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => v_count(4),
      I1 => v_count(5),
      O => is_logic_grid_reg_i_22_n_0
    );
is_logic_grid_reg_i_23: unisim.vcomponents.LUT5
    generic map(
      INIT => X"001FE000"
    )
        port map (
      I0 => v_count(1),
      I1 => v_count(0),
      I2 => v_count(6),
      I3 => v_count(2),
      I4 => v_count(3),
      O => is_logic_grid_reg_i_23_n_0
    );
is_logic_grid_reg_i_24: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000100"
    )
        port map (
      I0 => v_count(4),
      I1 => v_count(5),
      I2 => v_count(6),
      I3 => v_count(3),
      I4 => v_count(2),
      I5 => v_count(1),
      O => is_logic_grid_reg_i_24_n_0
    );
is_logic_grid_reg_i_25: unisim.vcomponents.LUT6
    generic map(
      INIT => X"100000000000000C"
    )
        port map (
      I0 => h_count(1),
      I1 => h_count(8),
      I2 => h_count(6),
      I3 => h_count(4),
      I4 => h_count(3),
      I5 => h_count(2),
      O => is_logic_grid_reg_i_25_n_0
    );
is_logic_grid_reg_i_26: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => h_count(3),
      I1 => h_count(4),
      I2 => h_count(2),
      I3 => h_count(0),
      I4 => h_count(8),
      I5 => h_count(6),
      O => is_logic_grid_reg_i_26_n_0
    );
is_logic_grid_reg_i_27: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200C00"
    )
        port map (
      I0 => h_count(1),
      I1 => h_count(7),
      I2 => h_count(6),
      I3 => h_count(2),
      I4 => h_count(4),
      O => is_logic_grid_reg_i_27_n_0
    );
is_logic_grid_reg_i_28: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => h_count(1),
      I1 => h_count(2),
      O => is_logic_grid_reg_i_28_n_0
    );
is_logic_grid_reg_i_29: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => h_count(4),
      I1 => h_count(7),
      O => is_logic_grid_reg_i_29_n_0
    );
is_logic_grid_reg_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040000000000000"
    )
        port map (
      I0 => is_logic_grid_reg_i_10_n_0,
      I1 => v_count(7),
      I2 => v_count(4),
      I3 => v_count(8),
      I4 => v_count(9),
      I5 => is_logic_grid_reg_i_11_n_0,
      O => is_logic_grid_reg_i_3_n_0
    );
is_logic_grid_reg_i_30: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C000020"
    )
        port map (
      I0 => h_count(6),
      I1 => h_count(3),
      I2 => h_count(4),
      I3 => h_count(1),
      I4 => h_count(2),
      O => is_logic_grid_reg_i_30_n_0
    );
is_logic_grid_reg_i_31: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => v_count(0),
      I1 => v_count(1),
      O => is_logic_grid_reg_i_31_n_0
    );
is_logic_grid_reg_i_32: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000F0010000000E0"
    )
        port map (
      I0 => v_count(1),
      I1 => v_count(0),
      I2 => v_count(3),
      I3 => v_count(4),
      I4 => v_count(6),
      I5 => v_count(2),
      O => is_logic_grid_reg_i_32_n_0
    );
is_logic_grid_reg_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBABABABABA"
    )
        port map (
      I0 => is_logic_grid_reg_i_12_n_0,
      I1 => h_count(5),
      I2 => is_logic_grid_reg_i_13_n_0,
      I3 => is_logic_grid_reg_i_14_n_0,
      I4 => is_logic_grid_reg_i_15_n_0,
      I5 => is_logic_grid_reg_i_16_n_0,
      O => is_logic_grid_reg_i_4_n_0
    );
is_logic_grid_reg_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => v_count(9),
      I1 => v_count(7),
      I2 => v_count(8),
      O => is_logic_grid_reg_i_5_n_0
    );
is_logic_grid_reg_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA20202000"
    )
        port map (
      I0 => is_logic_grid_reg_i_17_n_0,
      I1 => h_count(5),
      I2 => is_logic_grid_reg_i_18_n_0,
      I3 => is_logic_grid_reg_i_15_n_0,
      I4 => is_logic_grid_reg_i_14_n_0,
      I5 => is_logic_grid_reg_i_19_n_0,
      O => is_logic_grid_reg_i_6_n_0
    );
is_logic_grid_reg_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => h_count(1),
      I1 => h_count(2),
      I2 => h_count(8),
      I3 => h_count(0),
      I4 => h_count(7),
      I5 => h_count(6),
      O => is_logic_grid_reg_i_7_n_0
    );
is_logic_grid_reg_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => h_count(3),
      I1 => h_count(2),
      I2 => h_count(6),
      I3 => h_count(4),
      O => is_logic_grid_reg_i_8_n_0
    );
is_logic_grid_reg_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAA8000"
    )
        port map (
      I0 => h_count(6),
      I1 => is_logic_grid_reg_i_20_n_0,
      I2 => h_count(0),
      I3 => h_count(1),
      I4 => h_count(5),
      I5 => h_count(7),
      O => is_logic_grid_reg_i_9_n_0
    );
is_logic_grid_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => is_logic_grid_reg_i_1_n_0,
      Q => is_logic_grid_reg,
      R => rst
    );
is_probe_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF88800000000"
    )
        port map (
      I0 => is_probe_reg_i_2_n_0,
      I1 => is_probe_reg_i_3_n_0,
      I2 => is_probe_reg_i_4_n_0,
      I3 => is_probe_reg_i_5_n_0,
      I4 => is_probe_reg_i_6_n_0,
      I5 => is_probe_reg_i_7_n_0,
      O => is_probe_reg_i_1_n_0
    );
is_probe_reg_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0900000000000040"
    )
        port map (
      I0 => v_count(2),
      I1 => v_count(3),
      I2 => v_count(7),
      I3 => v_count(4),
      I4 => v_count(6),
      I5 => v_count(5),
      O => is_probe_reg_i_10_n_0
    );
is_probe_reg_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => v_count(7),
      I1 => v_count(2),
      I2 => v_count(1),
      I3 => v_count(0),
      I4 => v_count(9),
      I5 => v_count(8),
      O => is_probe_reg_i_11_n_0
    );
is_probe_reg_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF08080808080808"
    )
        port map (
      I0 => is_probe_reg_i_25_n_0,
      I1 => is_logic_grid_reg_i_17_n_0,
      I2 => v_count(7),
      I3 => is_probe_reg_i_26_n_0,
      I4 => v_count(2),
      I5 => v_count(3),
      O => is_probe_reg_i_12_n_0
    );
is_probe_reg_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => h_count(3),
      I1 => h_count(5),
      O => is_probe_reg_i_13_n_0
    );
is_probe_reg_i_14: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => h_count(1),
      I1 => h_count(2),
      O => is_probe_reg_i_14_n_0
    );
is_probe_reg_i_15: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => v_count(6),
      I1 => v_count(5),
      I2 => v_count(2),
      I3 => v_count(3),
      I4 => is_probe_reg_i_26_n_0,
      O => is_probe_reg_i_15_n_0
    );
is_probe_reg_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF20202040404040"
    )
        port map (
      I0 => h_count(0),
      I1 => h_count(3),
      I2 => is_probe_reg_i_27_n_0,
      I3 => is_probe_reg_i_28_n_0,
      I4 => h_count(2),
      I5 => h_count(5),
      O => is_probe_reg_i_16_n_0
    );
is_probe_reg_i_17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => h_count(7),
      I1 => h_count(2),
      I2 => h_count(0),
      I3 => h_count(1),
      I4 => h_count(8),
      I5 => h_count(6),
      O => is_probe_reg_i_17_n_0
    );
is_probe_reg_i_18: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => h_count(5),
      I1 => h_count(4),
      I2 => h_count(3),
      O => is_probe_reg_i_18_n_0
    );
is_probe_reg_i_19: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => h_count(9),
      I1 => h_count(10),
      O => is_probe_reg_i_19_n_0
    );
is_probe_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000200000000000"
    )
        port map (
      I0 => h_count(7),
      I1 => h_count(4),
      I2 => h_count(1),
      I3 => h_count(2),
      I4 => v_count(8),
      I5 => v_count(9),
      O => is_probe_reg_i_2_n_0
    );
is_probe_reg_i_20: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => v_count(19),
      I1 => v_count(20),
      I2 => v_count(21),
      I3 => v_count(22),
      I4 => is_probe_reg_i_29_n_0,
      O => is_probe_reg_i_20_n_0
    );
is_probe_reg_i_21: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => v_count(11),
      I1 => v_count(12),
      I2 => v_count(13),
      I3 => v_count(14),
      I4 => is_probe_reg_i_30_n_0,
      O => is_probe_reg_i_21_n_0
    );
is_probe_reg_i_22: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => is_probe_reg_i_31_n_0,
      I1 => h_count(12),
      I2 => h_count(11),
      I3 => v_count(31),
      I4 => is_probe_reg_i_32_n_0,
      O => is_probe_reg_i_22_n_0
    );
is_probe_reg_i_23: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => h_count(17),
      I1 => h_count(18),
      I2 => h_count(19),
      I3 => h_count(20),
      I4 => is_probe_reg_i_33_n_0,
      O => is_probe_reg_i_23_n_0
    );
is_probe_reg_i_24: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => h_count(25),
      I1 => h_count(26),
      I2 => h_count(27),
      I3 => h_count(28),
      I4 => is_probe_reg_i_34_n_0,
      O => is_probe_reg_i_24_n_0
    );
is_probe_reg_i_25: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000004"
    )
        port map (
      I0 => v_count(0),
      I1 => v_count(1),
      I2 => v_count(4),
      I3 => v_count(3),
      I4 => v_count(2),
      O => is_probe_reg_i_25_n_0
    );
is_probe_reg_i_26: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000840000000"
    )
        port map (
      I0 => v_count(0),
      I1 => v_count(1),
      I2 => v_count(7),
      I3 => v_count(4),
      I4 => v_count(8),
      I5 => v_count(9),
      O => is_probe_reg_i_26_n_0
    );
is_probe_reg_i_27: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => h_count(2),
      I1 => h_count(1),
      I2 => h_count(7),
      I3 => h_count(4),
      O => is_probe_reg_i_27_n_0
    );
is_probe_reg_i_28: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03000010"
    )
        port map (
      I0 => h_count(7),
      I1 => h_count(3),
      I2 => h_count(4),
      I3 => h_count(0),
      I4 => h_count(1),
      O => is_probe_reg_i_28_n_0
    );
is_probe_reg_i_29: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => v_count(26),
      I1 => v_count(25),
      I2 => v_count(24),
      I3 => v_count(23),
      O => is_probe_reg_i_29_n_0
    );
is_probe_reg_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => is_probe_reg_i_8_n_0,
      I1 => h_count(0),
      I2 => is_probe_reg_i_9_n_0,
      I3 => h_count(5),
      I4 => h_count(3),
      I5 => is_probe_reg_i_10_n_0,
      O => is_probe_reg_i_3_n_0
    );
is_probe_reg_i_30: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => v_count(18),
      I1 => v_count(17),
      I2 => v_count(16),
      I3 => v_count(15),
      O => is_probe_reg_i_30_n_0
    );
is_probe_reg_i_31: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => h_count(16),
      I1 => h_count(15),
      I2 => h_count(14),
      I3 => h_count(13),
      O => is_probe_reg_i_31_n_0
    );
is_probe_reg_i_32: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => v_count(30),
      I1 => v_count(29),
      I2 => v_count(28),
      I3 => v_count(27),
      O => is_probe_reg_i_32_n_0
    );
is_probe_reg_i_33: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => h_count(24),
      I1 => h_count(23),
      I2 => h_count(22),
      I3 => h_count(21),
      O => is_probe_reg_i_33_n_0
    );
is_probe_reg_i_34: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => v_count(10),
      I1 => h_count(31),
      I2 => h_count(30),
      I3 => h_count(29),
      O => is_probe_reg_i_34_n_0
    );
is_probe_reg_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000040FF00004020"
    )
        port map (
      I0 => v_count(4),
      I1 => v_count(3),
      I2 => is_probe_reg_i_11_n_0,
      I3 => v_count(5),
      I4 => v_count(6),
      I5 => is_probe_reg_i_12_n_0,
      O => is_probe_reg_i_4_n_0
    );
is_probe_reg_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => is_probe_reg_i_13_n_0,
      I1 => h_count(4),
      I2 => h_count(7),
      I3 => is_probe_reg_i_8_n_0,
      I4 => h_count(0),
      I5 => is_probe_reg_i_14_n_0,
      O => is_probe_reg_i_5_n_0
    );
is_probe_reg_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20002000AAAA2000"
    )
        port map (
      I0 => is_probe_reg_i_15_n_0,
      I1 => h_count(8),
      I2 => h_count(6),
      I3 => is_probe_reg_i_16_n_0,
      I4 => is_probe_reg_i_17_n_0,
      I5 => is_probe_reg_i_18_n_0,
      O => is_probe_reg_i_6_n_0
    );
is_probe_reg_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => is_probe_reg_i_19_n_0,
      I1 => is_probe_reg_i_20_n_0,
      I2 => is_probe_reg_i_21_n_0,
      I3 => is_probe_reg_i_22_n_0,
      I4 => is_probe_reg_i_23_n_0,
      I5 => is_probe_reg_i_24_n_0,
      O => is_probe_reg_i_7_n_0
    );
is_probe_reg_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => h_count(6),
      I1 => h_count(8),
      O => is_probe_reg_i_8_n_0
    );
is_probe_reg_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => v_count(0),
      I1 => v_count(1),
      O => is_probe_reg_i_9_n_0
    );
is_probe_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => is_probe_reg_i_1_n_0,
      Q => is_probe_reg,
      R => rst
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
      DI(3 downto 1) => rgb_in(4 downto 2),
      DI(0) => '0',
      O(3) => \multOp_inferred__0/i__carry_n_4\,
      O(2) => \multOp_inferred__0/i__carry_n_5\,
      O(1) => \multOp_inferred__0/i__carry_n_6\,
      O(0) => \multOp_inferred__0/i__carry_n_7\,
      S(3) => \i__carry_i_1_n_0\,
      S(2) => \i__carry_i_2_n_0\,
      S(1) => \i__carry_i_3__0_n_0\,
      S(0) => rgb_in(1)
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
      DI(2 downto 0) => rgb_in(7 downto 5),
      O(3) => \multOp_inferred__0/i__carry__0_n_4\,
      O(2) => \multOp_inferred__0/i__carry__0_n_5\,
      O(1) => \multOp_inferred__0/i__carry__0_n_6\,
      O(0) => \multOp_inferred__0/i__carry__0_n_7\,
      S(3) => rgb_in(6),
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
      S(0) => rgb_in(7)
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
      DI(0) => rgb_in(8),
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
      DI(3 downto 2) => rgb_in(9 downto 8),
      DI(1 downto 0) => B"01",
      O(3) => \multOp_inferred__1/i__carry_n_4\,
      O(2) => \multOp_inferred__1/i__carry_n_5\,
      O(1 downto 0) => multOp(2 downto 1),
      S(3) => \i__carry_i_1__0_n_0\,
      S(2) => \i__carry_i_2__0_n_0\,
      S(1) => \i__carry_i_3_n_0\,
      S(0) => rgb_in(8)
    );
\multOp_inferred__1/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \multOp_inferred__1/i__carry_n_0\,
      CO(3) => \multOp_inferred__1/i__carry__0_n_0\,
      CO(2) => \multOp_inferred__1/i__carry__0_n_1\,
      CO(1) => \multOp_inferred__1/i__carry__0_n_2\,
      CO(0) => \multOp_inferred__1/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => rgb_in(13 downto 10),
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
      DI(1 downto 0) => rgb_in(15 downto 14),
      O(3 downto 2) => \NLW_multOp_inferred__1/i__carry__1_O_UNCONNECTED\(3 downto 2),
      O(1) => \multOp_inferred__1/i__carry__1_n_6\,
      O(0) => \multOp_inferred__1/i__carry__1_n_7\,
      S(3 downto 2) => B"01",
      S(1) => \i__carry__1_i_1_n_0\,
      S(0) => \i__carry__1_i_2_n_0\
    );
\rgb_out[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACECFCEC"
    )
        port map (
      I0 => is_logic_grid_reg,
      I1 => rgb_reg(0),
      I2 => vde_reg,
      I3 => is_probe_reg,
      I4 => is_black_reg,
      O => \rgb_out[0]_i_1_n_0\
    );
\rgb_out[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002AEA"
    )
        port map (
      I0 => rgb_reg(10),
      I1 => vde_reg,
      I2 => is_probe_reg,
      I3 => is_black_reg,
      I4 => rst,
      O => \rgb_out[10]_i_1_n_0\
    );
\rgb_out[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002AEA"
    )
        port map (
      I0 => rgb_reg(11),
      I1 => vde_reg,
      I2 => is_probe_reg,
      I3 => is_black_reg,
      I4 => rst,
      O => \rgb_out[11]_i_1_n_0\
    );
\rgb_out[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002AEA"
    )
        port map (
      I0 => rgb_reg(12),
      I1 => vde_reg,
      I2 => is_probe_reg,
      I3 => is_black_reg,
      I4 => rst,
      O => \rgb_out[12]_i_1_n_0\
    );
\rgb_out[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002AEA"
    )
        port map (
      I0 => rgb_reg(13),
      I1 => vde_reg,
      I2 => is_probe_reg,
      I3 => is_black_reg,
      I4 => rst,
      O => \rgb_out[13]_i_1_n_0\
    );
\rgb_out[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002AEA"
    )
        port map (
      I0 => rgb_reg(14),
      I1 => vde_reg,
      I2 => is_probe_reg,
      I3 => is_black_reg,
      I4 => rst,
      O => \rgb_out[14]_i_1_n_0\
    );
\rgb_out[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => is_edge_reg,
      I1 => vde_reg,
      I2 => is_logic_grid_reg,
      O => \rgb_out[15]_i_1_n_0\
    );
\rgb_out[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002AEA"
    )
        port map (
      I0 => rgb_reg(15),
      I1 => vde_reg,
      I2 => is_probe_reg,
      I3 => is_black_reg,
      I4 => rst,
      O => \rgb_out[15]_i_2_n_0\
    );
\rgb_out[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBFB0A0"
    )
        port map (
      I0 => is_edge_reg,
      I1 => is_logic_grid_reg,
      I2 => vde_reg,
      I3 => is_probe_reg,
      I4 => rgb_reg(16),
      O => \rgb_out[16]_i_1_n_0\
    );
\rgb_out[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBFB0A0"
    )
        port map (
      I0 => is_edge_reg,
      I1 => is_logic_grid_reg,
      I2 => vde_reg,
      I3 => is_probe_reg,
      I4 => rgb_reg(17),
      O => \rgb_out[17]_i_1_n_0\
    );
\rgb_out[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBFB0A0"
    )
        port map (
      I0 => is_edge_reg,
      I1 => is_logic_grid_reg,
      I2 => vde_reg,
      I3 => is_probe_reg,
      I4 => rgb_reg(18),
      O => \rgb_out[18]_i_1_n_0\
    );
\rgb_out[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBFB0A0"
    )
        port map (
      I0 => is_edge_reg,
      I1 => is_logic_grid_reg,
      I2 => vde_reg,
      I3 => is_probe_reg,
      I4 => rgb_reg(19),
      O => \rgb_out[19]_i_1_n_0\
    );
\rgb_out[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACECFCEC"
    )
        port map (
      I0 => is_logic_grid_reg,
      I1 => rgb_reg(1),
      I2 => vde_reg,
      I3 => is_probe_reg,
      I4 => is_black_reg,
      O => \rgb_out[1]_i_1_n_0\
    );
\rgb_out[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBFB0A0"
    )
        port map (
      I0 => is_edge_reg,
      I1 => is_logic_grid_reg,
      I2 => vde_reg,
      I3 => is_probe_reg,
      I4 => rgb_reg(20),
      O => \rgb_out[20]_i_1_n_0\
    );
\rgb_out[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBFB0A0"
    )
        port map (
      I0 => is_edge_reg,
      I1 => is_logic_grid_reg,
      I2 => vde_reg,
      I3 => is_probe_reg,
      I4 => rgb_reg(21),
      O => \rgb_out[21]_i_1_n_0\
    );
\rgb_out[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBFB0A0"
    )
        port map (
      I0 => is_edge_reg,
      I1 => is_logic_grid_reg,
      I2 => vde_reg,
      I3 => is_probe_reg,
      I4 => rgb_reg(22),
      O => \rgb_out[22]_i_1_n_0\
    );
\rgb_out[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBFB0A0"
    )
        port map (
      I0 => is_edge_reg,
      I1 => is_logic_grid_reg,
      I2 => vde_reg,
      I3 => is_probe_reg,
      I4 => rgb_reg(23),
      O => \rgb_out[23]_i_1_n_0\
    );
\rgb_out[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACECFCEC"
    )
        port map (
      I0 => is_logic_grid_reg,
      I1 => rgb_reg(2),
      I2 => vde_reg,
      I3 => is_probe_reg,
      I4 => is_black_reg,
      O => \rgb_out[2]_i_1_n_0\
    );
\rgb_out[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACECFCEC"
    )
        port map (
      I0 => is_logic_grid_reg,
      I1 => rgb_reg(3),
      I2 => vde_reg,
      I3 => is_probe_reg,
      I4 => is_black_reg,
      O => \rgb_out[3]_i_1_n_0\
    );
\rgb_out[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACECFCEC"
    )
        port map (
      I0 => is_logic_grid_reg,
      I1 => rgb_reg(4),
      I2 => vde_reg,
      I3 => is_probe_reg,
      I4 => is_black_reg,
      O => \rgb_out[4]_i_1_n_0\
    );
\rgb_out[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACECFCEC"
    )
        port map (
      I0 => is_logic_grid_reg,
      I1 => rgb_reg(5),
      I2 => vde_reg,
      I3 => is_probe_reg,
      I4 => is_black_reg,
      O => \rgb_out[5]_i_1_n_0\
    );
\rgb_out[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACECFCEC"
    )
        port map (
      I0 => is_logic_grid_reg,
      I1 => rgb_reg(6),
      I2 => vde_reg,
      I3 => is_probe_reg,
      I4 => is_black_reg,
      O => \rgb_out[6]_i_1_n_0\
    );
\rgb_out[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => vde_reg,
      I1 => is_edge_reg,
      I2 => rst,
      O => \rgb_out[7]_i_1_n_0\
    );
\rgb_out[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACECFCEC"
    )
        port map (
      I0 => is_logic_grid_reg,
      I1 => rgb_reg(7),
      I2 => vde_reg,
      I3 => is_probe_reg,
      I4 => is_black_reg,
      O => \rgb_out[7]_i_2_n_0\
    );
\rgb_out[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002AEA"
    )
        port map (
      I0 => rgb_reg(8),
      I1 => vde_reg,
      I2 => is_probe_reg,
      I3 => is_black_reg,
      I4 => rst,
      O => \rgb_out[8]_i_1_n_0\
    );
\rgb_out[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002AEA"
    )
        port map (
      I0 => rgb_reg(9),
      I1 => vde_reg,
      I2 => is_probe_reg,
      I3 => is_black_reg,
      I4 => rst,
      O => \rgb_out[9]_i_1_n_0\
    );
\rgb_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \rgb_out[0]_i_1_n_0\,
      Q => rgb_out(0),
      R => \rgb_out[7]_i_1_n_0\
    );
\rgb_out_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \rgb_out[10]_i_1_n_0\,
      Q => rgb_out(10),
      R => \rgb_out[15]_i_1_n_0\
    );
\rgb_out_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \rgb_out[11]_i_1_n_0\,
      Q => rgb_out(11),
      R => \rgb_out[15]_i_1_n_0\
    );
\rgb_out_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \rgb_out[12]_i_1_n_0\,
      Q => rgb_out(12),
      R => \rgb_out[15]_i_1_n_0\
    );
\rgb_out_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \rgb_out[13]_i_1_n_0\,
      Q => rgb_out(13),
      R => \rgb_out[15]_i_1_n_0\
    );
\rgb_out_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \rgb_out[14]_i_1_n_0\,
      Q => rgb_out(14),
      R => \rgb_out[15]_i_1_n_0\
    );
\rgb_out_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \rgb_out[15]_i_2_n_0\,
      Q => rgb_out(15),
      R => \rgb_out[15]_i_1_n_0\
    );
\rgb_out_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \rgb_out[16]_i_1_n_0\,
      Q => rgb_out(16),
      R => rst
    );
\rgb_out_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \rgb_out[17]_i_1_n_0\,
      Q => rgb_out(17),
      R => rst
    );
\rgb_out_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \rgb_out[18]_i_1_n_0\,
      Q => rgb_out(18),
      R => rst
    );
\rgb_out_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \rgb_out[19]_i_1_n_0\,
      Q => rgb_out(19),
      R => rst
    );
\rgb_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \rgb_out[1]_i_1_n_0\,
      Q => rgb_out(1),
      R => \rgb_out[7]_i_1_n_0\
    );
\rgb_out_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \rgb_out[20]_i_1_n_0\,
      Q => rgb_out(20),
      R => rst
    );
\rgb_out_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \rgb_out[21]_i_1_n_0\,
      Q => rgb_out(21),
      R => rst
    );
\rgb_out_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \rgb_out[22]_i_1_n_0\,
      Q => rgb_out(22),
      R => rst
    );
\rgb_out_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \rgb_out[23]_i_1_n_0\,
      Q => rgb_out(23),
      R => rst
    );
\rgb_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \rgb_out[2]_i_1_n_0\,
      Q => rgb_out(2),
      R => \rgb_out[7]_i_1_n_0\
    );
\rgb_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \rgb_out[3]_i_1_n_0\,
      Q => rgb_out(3),
      R => \rgb_out[7]_i_1_n_0\
    );
\rgb_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \rgb_out[4]_i_1_n_0\,
      Q => rgb_out(4),
      R => \rgb_out[7]_i_1_n_0\
    );
\rgb_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \rgb_out[5]_i_1_n_0\,
      Q => rgb_out(5),
      R => \rgb_out[7]_i_1_n_0\
    );
\rgb_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \rgb_out[6]_i_1_n_0\,
      Q => rgb_out(6),
      R => \rgb_out[7]_i_1_n_0\
    );
\rgb_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \rgb_out[7]_i_2_n_0\,
      Q => rgb_out(7),
      R => \rgb_out[7]_i_1_n_0\
    );
\rgb_out_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \rgb_out[8]_i_1_n_0\,
      Q => rgb_out(8),
      R => \rgb_out[15]_i_1_n_0\
    );
\rgb_out_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \rgb_out[9]_i_1_n_0\,
      Q => rgb_out(9),
      R => \rgb_out[15]_i_1_n_0\
    );
\rgb_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rgb_in(0),
      Q => rgb_reg(0),
      R => rst
    );
\rgb_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rgb_in(10),
      Q => rgb_reg(10),
      R => rst
    );
\rgb_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rgb_in(11),
      Q => rgb_reg(11),
      R => rst
    );
\rgb_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rgb_in(12),
      Q => rgb_reg(12),
      R => rst
    );
\rgb_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rgb_in(13),
      Q => rgb_reg(13),
      R => rst
    );
\rgb_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rgb_in(14),
      Q => rgb_reg(14),
      R => rst
    );
\rgb_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rgb_in(15),
      Q => rgb_reg(15),
      R => rst
    );
\rgb_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rgb_in(16),
      Q => rgb_reg(16),
      R => rst
    );
\rgb_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rgb_in(17),
      Q => rgb_reg(17),
      R => rst
    );
\rgb_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rgb_in(18),
      Q => rgb_reg(18),
      R => rst
    );
\rgb_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rgb_in(19),
      Q => rgb_reg(19),
      R => rst
    );
\rgb_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rgb_in(1),
      Q => rgb_reg(1),
      R => rst
    );
\rgb_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rgb_in(20),
      Q => rgb_reg(20),
      R => rst
    );
\rgb_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rgb_in(21),
      Q => rgb_reg(21),
      R => rst
    );
\rgb_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rgb_in(22),
      Q => rgb_reg(22),
      R => rst
    );
\rgb_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rgb_in(23),
      Q => rgb_reg(23),
      R => rst
    );
\rgb_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rgb_in(2),
      Q => rgb_reg(2),
      R => rst
    );
\rgb_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rgb_in(3),
      Q => rgb_reg(3),
      R => rst
    );
\rgb_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rgb_in(4),
      Q => rgb_reg(4),
      R => rst
    );
\rgb_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rgb_in(5),
      Q => rgb_reg(5),
      R => rst
    );
\rgb_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rgb_in(6),
      Q => rgb_reg(6),
      R => rst
    );
\rgb_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rgb_in(7),
      Q => rgb_reg(7),
      R => rst
    );
\rgb_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rgb_in(8),
      Q => rgb_reg(8),
      R => rst
    );
\rgb_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rgb_in(9),
      Q => rgb_reg(9),
      R => rst
    );
vde_out_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => vde_reg,
      Q => vde_out,
      R => rst
    );
vde_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => vde_in,
      Q => vde_reg,
      R => rst
    );
vsync_out_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => vsync_reg,
      Q => vsync_out,
      R => rst
    );
vsync_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => vsync_in,
      Q => vsync_reg,
      R => rst
    );
\w_sum0__41_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \w_sum0__41_carry_n_0\,
      CO(2) => \w_sum0__41_carry_n_1\,
      CO(1) => \w_sum0__41_carry_n_2\,
      CO(0) => \w_sum0__41_carry_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => multOp(4 downto 1),
      O(3 downto 0) => \NLW_w_sum0__41_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \w_sum0__41_carry_i_1_n_0\,
      S(2) => \w_sum0__41_carry_i_2_n_0\,
      S(1) => \w_sum0__41_carry_i_3_n_0\,
      S(0) => \w_sum0__41_carry_i_4_n_0\
    );
\w_sum0__41_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \w_sum0__41_carry_n_0\,
      CO(3) => \w_sum0__41_carry__0_n_0\,
      CO(2) => \w_sum0__41_carry__0_n_1\,
      CO(1) => \w_sum0__41_carry__0_n_2\,
      CO(0) => \w_sum0__41_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => multOp(8 downto 5),
      O(3) => w_sum0(8),
      O(2 downto 0) => \NLW_w_sum0__41_carry__0_O_UNCONNECTED\(2 downto 0),
      S(3) => \w_sum0__41_carry__0_i_1_n_0\,
      S(2) => \w_sum0__41_carry__0_i_2_n_0\,
      S(1) => \w_sum0__41_carry__0_i_3_n_0\,
      S(0) => \w_sum0__41_carry__0_i_4_n_0\
    );
\w_sum0__41_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => multOp(8),
      I1 => C(8),
      O => \w_sum0__41_carry__0_i_1_n_0\
    );
\w_sum0__41_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => multOp(7),
      I1 => C(7),
      O => \w_sum0__41_carry__0_i_2_n_0\
    );
\w_sum0__41_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => multOp(6),
      I1 => C(6),
      O => \w_sum0__41_carry__0_i_3_n_0\
    );
\w_sum0__41_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => multOp(5),
      I1 => C(5),
      O => \w_sum0__41_carry__0_i_4_n_0\
    );
\w_sum0__41_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \w_sum0__41_carry__0_n_0\,
      CO(3) => \w_sum0__41_carry__1_n_0\,
      CO(2) => \w_sum0__41_carry__1_n_1\,
      CO(1) => \w_sum0__41_carry__1_n_2\,
      CO(0) => \w_sum0__41_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => multOp(12 downto 9),
      O(3 downto 0) => w_sum0(12 downto 9),
      S(3) => \w_sum0__41_carry__1_i_1_n_0\,
      S(2) => \w_sum0__41_carry__1_i_2_n_0\,
      S(1) => \w_sum0__41_carry__1_i_3_n_0\,
      S(0) => \w_sum0__41_carry__1_i_4_n_0\
    );
\w_sum0__41_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => multOp(12),
      I1 => C(12),
      O => \w_sum0__41_carry__1_i_1_n_0\
    );
\w_sum0__41_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => multOp(11),
      I1 => C(11),
      O => \w_sum0__41_carry__1_i_2_n_0\
    );
\w_sum0__41_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => multOp(10),
      I1 => C(10),
      O => \w_sum0__41_carry__1_i_3_n_0\
    );
\w_sum0__41_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => multOp(9),
      I1 => C(9),
      O => \w_sum0__41_carry__1_i_4_n_0\
    );
\w_sum0__41_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \w_sum0__41_carry__1_n_0\,
      CO(3 downto 2) => \NLW_w_sum0__41_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \w_sum0__41_carry__2_n_2\,
      CO(0) => \w_sum0__41_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => multOp(14 downto 13),
      O(3) => \NLW_w_sum0__41_carry__2_O_UNCONNECTED\(3),
      O(2 downto 0) => w_sum0(15 downto 13),
      S(3) => '0',
      S(2) => \w_sum0__41_carry__2_i_1_n_0\,
      S(1) => \w_sum0__41_carry__2_i_2_n_0\,
      S(0) => \w_sum0__41_carry__2_i_3_n_0\
    );
\w_sum0__41_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => multOp(15),
      I1 => \w_sum0_carry__2_n_0\,
      O => \w_sum0__41_carry__2_i_1_n_0\
    );
\w_sum0__41_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => multOp(14),
      I1 => C(14),
      O => \w_sum0__41_carry__2_i_2_n_0\
    );
\w_sum0__41_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => multOp(13),
      I1 => C(13),
      O => \w_sum0__41_carry__2_i_3_n_0\
    );
\w_sum0__41_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => multOp(4),
      I1 => C(4),
      O => \w_sum0__41_carry_i_1_n_0\
    );
\w_sum0__41_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => multOp(3),
      I1 => C(3),
      O => \w_sum0__41_carry_i_2_n_0\
    );
\w_sum0__41_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => multOp(2),
      I1 => C(2),
      O => \w_sum0__41_carry_i_3_n_0\
    );
\w_sum0__41_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => multOp(1),
      I1 => C(1),
      O => \w_sum0__41_carry_i_4_n_0\
    );
w_sum0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => w_sum0_carry_n_0,
      CO(2) => w_sum0_carry_n_1,
      CO(1) => w_sum0_carry_n_2,
      CO(0) => w_sum0_carry_n_3,
      CYINIT => '0',
      DI(3) => \multOp_inferred__0/i___24_carry_n_7\,
      DI(2) => \multOp_inferred__0/i__carry_n_6\,
      DI(1) => \multOp_inferred__0/i__carry_n_7\,
      DI(0) => rgb_in(0),
      O(3 downto 1) => C(3 downto 1),
      O(0) => NLW_w_sum0_carry_O_UNCONNECTED(0),
      S(3) => w_sum0_carry_i_1_n_0,
      S(2) => w_sum0_carry_i_2_n_0,
      S(1) => w_sum0_carry_i_3_n_0,
      S(0) => w_sum0_carry_i_4_n_0
    );
\w_sum0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => w_sum0_carry_n_0,
      CO(3) => \w_sum0_carry__0_n_0\,
      CO(2) => \w_sum0_carry__0_n_1\,
      CO(1) => \w_sum0_carry__0_n_2\,
      CO(0) => \w_sum0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \multOp_inferred__0/i___24_carry__0_n_7\,
      DI(2) => \multOp_inferred__0/i___24_carry_n_4\,
      DI(1) => \multOp_inferred__0/i___24_carry_n_5\,
      DI(0) => \multOp_inferred__0/i___24_carry_n_6\,
      O(3 downto 0) => C(7 downto 4),
      S(3) => \w_sum0_carry__0_i_1_n_0\,
      S(2) => \w_sum0_carry__0_i_2_n_0\,
      S(1) => \w_sum0_carry__0_i_3_n_0\,
      S(0) => \w_sum0_carry__0_i_4_n_0\
    );
\w_sum0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp_inferred__0/i___24_carry__0_n_7\,
      I1 => \multOp__25_carry__0_n_6\,
      O => \w_sum0_carry__0_i_1_n_0\
    );
\w_sum0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp_inferred__0/i___24_carry_n_4\,
      I1 => \multOp__25_carry__0_n_7\,
      O => \w_sum0_carry__0_i_2_n_0\
    );
\w_sum0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp_inferred__0/i___24_carry_n_5\,
      I1 => \multOp__25_carry_n_4\,
      O => \w_sum0_carry__0_i_3_n_0\
    );
\w_sum0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp_inferred__0/i___24_carry_n_6\,
      I1 => \multOp__25_carry_n_5\,
      O => \w_sum0_carry__0_i_4_n_0\
    );
\w_sum0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \w_sum0_carry__0_n_0\,
      CO(3) => \w_sum0_carry__1_n_0\,
      CO(2) => \w_sum0_carry__1_n_1\,
      CO(1) => \w_sum0_carry__1_n_2\,
      CO(0) => \w_sum0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \multOp_inferred__0/i___24_carry__1_n_7\,
      DI(2) => \multOp_inferred__0/i___24_carry__0_n_4\,
      DI(1) => \multOp_inferred__0/i___24_carry__0_n_5\,
      DI(0) => \multOp_inferred__0/i___24_carry__0_n_6\,
      O(3 downto 0) => C(11 downto 8),
      S(3) => \w_sum0_carry__1_i_1_n_0\,
      S(2) => \w_sum0_carry__1_i_2_n_0\,
      S(1) => \w_sum0_carry__1_i_3_n_0\,
      S(0) => \w_sum0_carry__1_i_4_n_0\
    );
\w_sum0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp_inferred__0/i___24_carry__1_n_7\,
      I1 => \multOp__25_carry__1_n_6\,
      O => \w_sum0_carry__1_i_1_n_0\
    );
\w_sum0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp_inferred__0/i___24_carry__0_n_4\,
      I1 => \multOp__25_carry__1_n_7\,
      O => \w_sum0_carry__1_i_2_n_0\
    );
\w_sum0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp_inferred__0/i___24_carry__0_n_5\,
      I1 => \multOp__25_carry__0_n_4\,
      O => \w_sum0_carry__1_i_3_n_0\
    );
\w_sum0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp_inferred__0/i___24_carry__0_n_6\,
      I1 => \multOp__25_carry__0_n_5\,
      O => \w_sum0_carry__1_i_4_n_0\
    );
\w_sum0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \w_sum0_carry__1_n_0\,
      CO(3) => \w_sum0_carry__2_n_0\,
      CO(2) => \NLW_w_sum0_carry__2_CO_UNCONNECTED\(2),
      CO(1) => \w_sum0_carry__2_n_2\,
      CO(0) => \w_sum0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \multOp_inferred__0/i___24_carry__1_n_6\,
      O(3) => \NLW_w_sum0_carry__2_O_UNCONNECTED\(3),
      O(2 downto 0) => C(14 downto 12),
      S(3) => '1',
      S(2) => \w_sum0_carry__2_i_1_n_3\,
      S(1) => \multOp__25_carry__1_n_4\,
      S(0) => \w_sum0_carry__2_i_2_n_0\
    );
\w_sum0_carry__2_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \multOp__25_carry__1_n_0\,
      CO(3 downto 1) => \NLW_w_sum0_carry__2_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \w_sum0_carry__2_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_w_sum0_carry__2_i_1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\w_sum0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp_inferred__0/i___24_carry__1_n_6\,
      I1 => \multOp__25_carry__1_n_5\,
      O => \w_sum0_carry__2_i_2_n_0\
    );
w_sum0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp_inferred__0/i___24_carry_n_7\,
      I1 => \multOp__25_carry_n_6\,
      O => w_sum0_carry_i_1_n_0
    );
w_sum0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp_inferred__0/i__carry_n_6\,
      I1 => \multOp__25_carry_n_7\,
      O => w_sum0_carry_i_2_n_0
    );
w_sum0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp_inferred__0/i__carry_n_7\,
      I1 => multOp_carry_n_7,
      O => w_sum0_carry_i_3_n_0
    );
w_sum0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_in(0),
      I1 => rgb_in(16),
      O => w_sum0_carry_i_4_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity HDMI_bd_hdmi_rectangle_overl_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    h_count : in STD_LOGIC_VECTOR ( 31 downto 0 );
    v_count : in STD_LOGIC_VECTOR ( 31 downto 0 );
    vde_in : in STD_LOGIC;
    hsync_in : in STD_LOGIC;
    vsync_in : in STD_LOGIC;
    rgb_in : in STD_LOGIC_VECTOR ( 23 downto 0 );
    vde_out : out STD_LOGIC;
    hsync_out : out STD_LOGIC;
    vsync_out : out STD_LOGIC;
    rgb_out : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of HDMI_bd_hdmi_rectangle_overl_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of HDMI_bd_hdmi_rectangle_overl_0_0 : entity is "HDMI_bd_hdmi_rectangle_overl_0_0,hdmi_rectangle_overlay,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of HDMI_bd_hdmi_rectangle_overl_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of HDMI_bd_hdmi_rectangle_overl_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of HDMI_bd_hdmi_rectangle_overl_0_0 : entity is "hdmi_rectangle_overlay,Vivado 2023.1";
end HDMI_bd_hdmi_rectangle_overl_0_0;

architecture STRUCTURE of HDMI_bd_hdmi_rectangle_overl_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN HDMI_bd_dvi2rgb_0_0_PixelClk, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.HDMI_bd_hdmi_rectangle_overl_0_0_hdmi_rectangle_overlay
     port map (
      clk => clk,
      h_count(31 downto 0) => h_count(31 downto 0),
      hsync_in => hsync_in,
      hsync_out => hsync_out,
      rgb_in(23 downto 0) => rgb_in(23 downto 0),
      rgb_out(23 downto 0) => rgb_out(23 downto 0),
      rst => rst,
      v_count(31 downto 0) => v_count(31 downto 0),
      vde_in => vde_in,
      vde_out => vde_out,
      vsync_in => vsync_in,
      vsync_out => vsync_out
    );
end STRUCTURE;
