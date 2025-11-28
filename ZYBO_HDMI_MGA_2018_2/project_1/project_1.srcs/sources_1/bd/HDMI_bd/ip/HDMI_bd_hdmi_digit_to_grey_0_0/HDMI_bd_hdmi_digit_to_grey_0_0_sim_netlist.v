// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Fri Nov 28 00:51:23 2025
// Host        : pcetu-139 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/laemo10/Desktop/Labo4_FPGA/ZYBO_HDMI_MGA_2018_2/project_1/project_1.srcs/sources_1/bd/HDMI_bd/ip/HDMI_bd_hdmi_digit_to_grey_0_0/HDMI_bd_hdmi_digit_to_grey_0_0_sim_netlist.v
// Design      : HDMI_bd_hdmi_digit_to_grey_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "HDMI_bd_hdmi_digit_to_grey_0_0,hdmi_digit_to_grey,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "hdmi_digit_to_grey,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module HDMI_bd_hdmi_digit_to_grey_0_0
   (clk,
    rst,
    vde_in,
    hsync_in,
    vsync_in,
    rgb_in,
    matrix_flat_out,
    data_ready);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN HDMI_bd_dvi2rgb_0_0_PixelClk, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input vde_in;
  input hsync_in;
  input vsync_in;
  input [23:0]rgb_in;
  output [255:0]matrix_flat_out;
  output data_ready;

  wire clk;
  wire data_ready;
  wire [255:0]matrix_flat_out;
  wire [23:0]rgb_in;
  wire rst;
  wire vde_in;
  wire vsync_in;

  HDMI_bd_hdmi_digit_to_grey_0_0_hdmi_digit_to_grey U0
       (.clk(clk),
        .data_ready(data_ready),
        .matrix_flat_out(matrix_flat_out),
        .rgb_in(rgb_in),
        .rst(rst),
        .vde_in(vde_in),
        .vsync_in(vsync_in));
endmodule

(* ORIG_REF_NAME = "hdmi_digit_to_grey" *) 
module HDMI_bd_hdmi_digit_to_grey_0_0_hdmi_digit_to_grey
   (matrix_flat_out,
    data_ready,
    vde_in,
    vsync_in,
    rst,
    clk,
    rgb_in);
  output [255:0]matrix_flat_out;
  output data_ready;
  input vde_in;
  input vsync_in;
  input rst;
  input clk;
  input [23:0]rgb_in;

  wire [14:1]C;
  wire [7:0]b_val;
  wire clk;
  wire [1:0]curr_col;
  wire \curr_col[0]_i_1_n_0 ;
  wire \curr_col[1]_i_1_n_0 ;
  wire \curr_col[1]_i_3_n_0 ;
  wire \curr_col[1]_i_4_n_0 ;
  wire \curr_col[1]_i_5_n_0 ;
  wire curr_col__5;
  wire [2:0]curr_row;
  wire \curr_row[0]_i_1_n_0 ;
  wire \curr_row[1]_i_1_n_0 ;
  wire \curr_row[2]_i_10_n_0 ;
  wire \curr_row[2]_i_11_n_0 ;
  wire \curr_row[2]_i_1_n_0 ;
  wire \curr_row[2]_i_2_n_0 ;
  wire \curr_row[2]_i_3_n_0 ;
  wire \curr_row[2]_i_4_n_0 ;
  wire \curr_row[2]_i_5_n_0 ;
  wire \curr_row[2]_i_6_n_0 ;
  wire \curr_row[2]_i_7_n_0 ;
  wire \curr_row[2]_i_8_n_0 ;
  wire \curr_row[2]_i_9_n_0 ;
  wire data_ready;
  wire [7:0]g_val;
  wire [15:8]\grid_accumulators[0,0] ;
  wire \grid_accumulators[0,0]1__1 ;
  wire \grid_accumulators[0,0][15]_i_1_n_0 ;
  wire [15:8]\grid_accumulators[0,0]__226 ;
  wire \grid_accumulators[0,1][15]_i_1_n_0 ;
  wire [15:8]\grid_accumulators[0,1]__111 ;
  wire \grid_accumulators[0,2][15]_i_1_n_0 ;
  wire [15:8]\grid_accumulators[0,2]__111 ;
  wire \grid_accumulators[0,3][11]_i_22_n_0 ;
  wire \grid_accumulators[0,3][11]_i_23_n_0 ;
  wire \grid_accumulators[0,3][11]_i_24_n_0 ;
  wire \grid_accumulators[0,3][11]_i_25_n_0 ;
  wire \grid_accumulators[0,3][11]_i_26_n_0 ;
  wire \grid_accumulators[0,3][11]_i_27_n_0 ;
  wire \grid_accumulators[0,3][11]_i_28_n_0 ;
  wire \grid_accumulators[0,3][11]_i_29_n_0 ;
  wire \grid_accumulators[0,3][11]_i_30_n_0 ;
  wire \grid_accumulators[0,3][11]_i_31_n_0 ;
  wire \grid_accumulators[0,3][11]_i_32_n_0 ;
  wire \grid_accumulators[0,3][11]_i_33_n_0 ;
  wire \grid_accumulators[0,3][11]_i_34_n_0 ;
  wire \grid_accumulators[0,3][11]_i_35_n_0 ;
  wire \grid_accumulators[0,3][11]_i_36_n_0 ;
  wire \grid_accumulators[0,3][11]_i_37_n_0 ;
  wire \grid_accumulators[0,3][11]_i_38_n_0 ;
  wire \grid_accumulators[0,3][11]_i_39_n_0 ;
  wire \grid_accumulators[0,3][11]_i_40_n_0 ;
  wire \grid_accumulators[0,3][11]_i_41_n_0 ;
  wire \grid_accumulators[0,3][11]_i_42_n_0 ;
  wire \grid_accumulators[0,3][11]_i_43_n_0 ;
  wire \grid_accumulators[0,3][11]_i_44_n_0 ;
  wire \grid_accumulators[0,3][11]_i_45_n_0 ;
  wire \grid_accumulators[0,3][11]_i_46_n_0 ;
  wire \grid_accumulators[0,3][11]_i_47_n_0 ;
  wire \grid_accumulators[0,3][11]_i_48_n_0 ;
  wire \grid_accumulators[0,3][11]_i_49_n_0 ;
  wire \grid_accumulators[0,3][11]_i_50_n_0 ;
  wire \grid_accumulators[0,3][11]_i_51_n_0 ;
  wire \grid_accumulators[0,3][11]_i_52_n_0 ;
  wire \grid_accumulators[0,3][11]_i_53_n_0 ;
  wire \grid_accumulators[0,3][15]_i_25_n_0 ;
  wire \grid_accumulators[0,3][15]_i_26_n_0 ;
  wire \grid_accumulators[0,3][15]_i_27_n_0 ;
  wire \grid_accumulators[0,3][15]_i_28_n_0 ;
  wire \grid_accumulators[0,3][15]_i_29_n_0 ;
  wire \grid_accumulators[0,3][15]_i_2_n_0 ;
  wire \grid_accumulators[0,3][15]_i_30_n_0 ;
  wire \grid_accumulators[0,3][15]_i_31_n_0 ;
  wire \grid_accumulators[0,3][15]_i_32_n_0 ;
  wire \grid_accumulators[0,3][15]_i_33_n_0 ;
  wire \grid_accumulators[0,3][15]_i_34_n_0 ;
  wire \grid_accumulators[0,3][15]_i_35_n_0 ;
  wire \grid_accumulators[0,3][15]_i_36_n_0 ;
  wire \grid_accumulators[0,3][15]_i_37_n_0 ;
  wire \grid_accumulators[0,3][15]_i_38_n_0 ;
  wire \grid_accumulators[0,3][15]_i_39_n_0 ;
  wire \grid_accumulators[0,3][15]_i_40_n_0 ;
  wire \grid_accumulators[0,3][15]_i_41_n_0 ;
  wire \grid_accumulators[0,3][15]_i_42_n_0 ;
  wire \grid_accumulators[0,3][15]_i_43_n_0 ;
  wire \grid_accumulators[0,3][15]_i_44_n_0 ;
  wire \grid_accumulators[0,3][15]_i_45_n_0 ;
  wire \grid_accumulators[0,3][15]_i_46_n_0 ;
  wire \grid_accumulators[0,3][15]_i_47_n_0 ;
  wire \grid_accumulators[0,3][15]_i_48_n_0 ;
  wire \grid_accumulators[0,3][15]_i_49_n_0 ;
  wire \grid_accumulators[0,3][15]_i_50_n_0 ;
  wire \grid_accumulators[0,3][15]_i_51_n_0 ;
  wire \grid_accumulators[0,3][15]_i_52_n_0 ;
  wire \grid_accumulators[0,3][15]_i_53_n_0 ;
  wire \grid_accumulators[0,3][15]_i_54_n_0 ;
  wire \grid_accumulators[0,3][15]_i_55_n_0 ;
  wire \grid_accumulators[0,3][15]_i_56_n_0 ;
  wire \grid_accumulators[0,3][3]_i_10_n_0 ;
  wire \grid_accumulators[0,3][3]_i_12_n_0 ;
  wire \grid_accumulators[0,3][3]_i_13_n_0 ;
  wire \grid_accumulators[0,3][3]_i_14_n_0 ;
  wire \grid_accumulators[0,3][3]_i_16_n_0 ;
  wire \grid_accumulators[0,3][3]_i_17_n_0 ;
  wire \grid_accumulators[0,3][3]_i_18_n_0 ;
  wire \grid_accumulators[0,3][3]_i_20_n_0 ;
  wire \grid_accumulators[0,3][3]_i_21_n_0 ;
  wire \grid_accumulators[0,3][3]_i_22_n_0 ;
  wire \grid_accumulators[0,3][3]_i_23_n_0 ;
  wire \grid_accumulators[0,3][3]_i_24_n_0 ;
  wire \grid_accumulators[0,3][3]_i_25_n_0 ;
  wire \grid_accumulators[0,3][3]_i_26_n_0 ;
  wire \grid_accumulators[0,3][3]_i_27_n_0 ;
  wire \grid_accumulators[0,3][3]_i_28_n_0 ;
  wire \grid_accumulators[0,3][3]_i_29_n_0 ;
  wire \grid_accumulators[0,3][3]_i_2_n_0 ;
  wire \grid_accumulators[0,3][3]_i_30_n_0 ;
  wire \grid_accumulators[0,3][3]_i_31_n_0 ;
  wire \grid_accumulators[0,3][3]_i_32_n_0 ;
  wire \grid_accumulators[0,3][3]_i_33_n_0 ;
  wire \grid_accumulators[0,3][3]_i_34_n_0 ;
  wire \grid_accumulators[0,3][3]_i_35_n_0 ;
  wire \grid_accumulators[0,3][3]_i_36_n_0 ;
  wire \grid_accumulators[0,3][3]_i_37_n_0 ;
  wire \grid_accumulators[0,3][3]_i_38_n_0 ;
  wire \grid_accumulators[0,3][3]_i_39_n_0 ;
  wire \grid_accumulators[0,3][3]_i_3_n_0 ;
  wire \grid_accumulators[0,3][3]_i_40_n_0 ;
  wire \grid_accumulators[0,3][3]_i_41_n_0 ;
  wire \grid_accumulators[0,3][3]_i_42_n_0 ;
  wire \grid_accumulators[0,3][3]_i_43_n_0 ;
  wire \grid_accumulators[0,3][3]_i_44_n_0 ;
  wire \grid_accumulators[0,3][3]_i_45_n_0 ;
  wire \grid_accumulators[0,3][3]_i_46_n_0 ;
  wire \grid_accumulators[0,3][3]_i_47_n_0 ;
  wire \grid_accumulators[0,3][3]_i_48_n_0 ;
  wire \grid_accumulators[0,3][3]_i_49_n_0 ;
  wire \grid_accumulators[0,3][3]_i_4_n_0 ;
  wire \grid_accumulators[0,3][3]_i_50_n_0 ;
  wire \grid_accumulators[0,3][3]_i_51_n_0 ;
  wire \grid_accumulators[0,3][3]_i_52_n_0 ;
  wire \grid_accumulators[0,3][3]_i_53_n_0 ;
  wire \grid_accumulators[0,3][3]_i_5_n_0 ;
  wire \grid_accumulators[0,3][3]_i_6_n_0 ;
  wire \grid_accumulators[0,3][3]_i_8_n_0 ;
  wire \grid_accumulators[0,3][3]_i_9_n_0 ;
  wire \grid_accumulators[0,3][7]_i_10_n_0 ;
  wire \grid_accumulators[0,3][7]_i_11_n_0 ;
  wire \grid_accumulators[0,3][7]_i_13_n_0 ;
  wire \grid_accumulators[0,3][7]_i_14_n_0 ;
  wire \grid_accumulators[0,3][7]_i_15_n_0 ;
  wire \grid_accumulators[0,3][7]_i_17_n_0 ;
  wire \grid_accumulators[0,3][7]_i_18_n_0 ;
  wire \grid_accumulators[0,3][7]_i_19_n_0 ;
  wire \grid_accumulators[0,3][7]_i_21_n_0 ;
  wire \grid_accumulators[0,3][7]_i_22_n_0 ;
  wire \grid_accumulators[0,3][7]_i_23_n_0 ;
  wire \grid_accumulators[0,3][7]_i_24_n_0 ;
  wire \grid_accumulators[0,3][7]_i_25_n_0 ;
  wire \grid_accumulators[0,3][7]_i_26_n_0 ;
  wire \grid_accumulators[0,3][7]_i_27_n_0 ;
  wire \grid_accumulators[0,3][7]_i_28_n_0 ;
  wire \grid_accumulators[0,3][7]_i_29_n_0 ;
  wire \grid_accumulators[0,3][7]_i_2_n_0 ;
  wire \grid_accumulators[0,3][7]_i_30_n_0 ;
  wire \grid_accumulators[0,3][7]_i_31_n_0 ;
  wire \grid_accumulators[0,3][7]_i_32_n_0 ;
  wire \grid_accumulators[0,3][7]_i_33_n_0 ;
  wire \grid_accumulators[0,3][7]_i_34_n_0 ;
  wire \grid_accumulators[0,3][7]_i_35_n_0 ;
  wire \grid_accumulators[0,3][7]_i_36_n_0 ;
  wire \grid_accumulators[0,3][7]_i_37_n_0 ;
  wire \grid_accumulators[0,3][7]_i_38_n_0 ;
  wire \grid_accumulators[0,3][7]_i_39_n_0 ;
  wire \grid_accumulators[0,3][7]_i_3_n_0 ;
  wire \grid_accumulators[0,3][7]_i_40_n_0 ;
  wire \grid_accumulators[0,3][7]_i_41_n_0 ;
  wire \grid_accumulators[0,3][7]_i_42_n_0 ;
  wire \grid_accumulators[0,3][7]_i_43_n_0 ;
  wire \grid_accumulators[0,3][7]_i_44_n_0 ;
  wire \grid_accumulators[0,3][7]_i_45_n_0 ;
  wire \grid_accumulators[0,3][7]_i_46_n_0 ;
  wire \grid_accumulators[0,3][7]_i_47_n_0 ;
  wire \grid_accumulators[0,3][7]_i_48_n_0 ;
  wire \grid_accumulators[0,3][7]_i_49_n_0 ;
  wire \grid_accumulators[0,3][7]_i_4_n_0 ;
  wire \grid_accumulators[0,3][7]_i_50_n_0 ;
  wire \grid_accumulators[0,3][7]_i_51_n_0 ;
  wire \grid_accumulators[0,3][7]_i_52_n_0 ;
  wire \grid_accumulators[0,3][7]_i_53_n_0 ;
  wire \grid_accumulators[0,3][7]_i_54_n_0 ;
  wire \grid_accumulators[0,3][7]_i_5_n_0 ;
  wire \grid_accumulators[0,3][7]_i_6_n_0 ;
  wire \grid_accumulators[0,3][7]_i_7_n_0 ;
  wire \grid_accumulators[0,3][7]_i_9_n_0 ;
  wire [15:0]\grid_accumulators[0,3]__111 ;
  wire \grid_accumulators[1,0] ;
  wire \grid_accumulators[1,1] ;
  wire \grid_accumulators[1,2] ;
  wire \grid_accumulators[1,3] ;
  wire \grid_accumulators[2,0] ;
  wire \grid_accumulators[2,1] ;
  wire \grid_accumulators[2,2] ;
  wire \grid_accumulators[2,3] ;
  wire \grid_accumulators[3,0] ;
  wire \grid_accumulators[3,1] ;
  wire \grid_accumulators[3,2] ;
  wire \grid_accumulators[3,3] ;
  wire \grid_accumulators[4,0] ;
  wire \grid_accumulators[4,1] ;
  wire \grid_accumulators[4,2] ;
  wire \grid_accumulators[4,3] ;
  wire \grid_accumulators[5,0] ;
  wire \grid_accumulators[5,1] ;
  wire \grid_accumulators[5,2] ;
  wire \grid_accumulators[5,3] ;
  wire \grid_accumulators[6,0] ;
  wire \grid_accumulators[6,1] ;
  wire \grid_accumulators[6,2] ;
  wire \grid_accumulators[6,3] ;
  wire \grid_accumulators[7,0] ;
  wire \grid_accumulators[7,1] ;
  wire \grid_accumulators[7,2] ;
  wire \grid_accumulators[7,3] ;
  wire \grid_accumulators[7,3][15]_i_1_n_0 ;
  wire \grid_accumulators_reg[0,0]1__41_carry__0_i_1_n_0 ;
  wire \grid_accumulators_reg[0,0]1__41_carry__0_i_2_n_0 ;
  wire \grid_accumulators_reg[0,0]1__41_carry__0_i_3_n_0 ;
  wire \grid_accumulators_reg[0,0]1__41_carry__0_i_4_n_0 ;
  wire \grid_accumulators_reg[0,0]1__41_carry__0_n_0 ;
  wire \grid_accumulators_reg[0,0]1__41_carry__0_n_1 ;
  wire \grid_accumulators_reg[0,0]1__41_carry__0_n_2 ;
  wire \grid_accumulators_reg[0,0]1__41_carry__0_n_3 ;
  wire \grid_accumulators_reg[0,0]1__41_carry__1_i_1_n_0 ;
  wire \grid_accumulators_reg[0,0]1__41_carry__1_i_2_n_0 ;
  wire \grid_accumulators_reg[0,0]1__41_carry__1_i_3_n_0 ;
  wire \grid_accumulators_reg[0,0]1__41_carry__1_i_4_n_0 ;
  wire \grid_accumulators_reg[0,0]1__41_carry__1_n_0 ;
  wire \grid_accumulators_reg[0,0]1__41_carry__1_n_1 ;
  wire \grid_accumulators_reg[0,0]1__41_carry__1_n_2 ;
  wire \grid_accumulators_reg[0,0]1__41_carry__1_n_3 ;
  wire \grid_accumulators_reg[0,0]1__41_carry__2_i_1_n_0 ;
  wire \grid_accumulators_reg[0,0]1__41_carry__2_i_2_n_0 ;
  wire \grid_accumulators_reg[0,0]1__41_carry__2_i_3_n_0 ;
  wire \grid_accumulators_reg[0,0]1__41_carry__2_n_2 ;
  wire \grid_accumulators_reg[0,0]1__41_carry__2_n_3 ;
  wire \grid_accumulators_reg[0,0]1__41_carry_i_1_n_0 ;
  wire \grid_accumulators_reg[0,0]1__41_carry_i_2_n_0 ;
  wire \grid_accumulators_reg[0,0]1__41_carry_i_3_n_0 ;
  wire \grid_accumulators_reg[0,0]1__41_carry_i_4_n_0 ;
  wire \grid_accumulators_reg[0,0]1__41_carry_n_0 ;
  wire \grid_accumulators_reg[0,0]1__41_carry_n_1 ;
  wire \grid_accumulators_reg[0,0]1__41_carry_n_2 ;
  wire \grid_accumulators_reg[0,0]1__41_carry_n_3 ;
  wire \grid_accumulators_reg[0,0]1_carry__0_i_1_n_0 ;
  wire \grid_accumulators_reg[0,0]1_carry__0_i_2_n_0 ;
  wire \grid_accumulators_reg[0,0]1_carry__0_i_3_n_0 ;
  wire \grid_accumulators_reg[0,0]1_carry__0_i_4_n_0 ;
  wire \grid_accumulators_reg[0,0]1_carry__0_n_0 ;
  wire \grid_accumulators_reg[0,0]1_carry__0_n_1 ;
  wire \grid_accumulators_reg[0,0]1_carry__0_n_2 ;
  wire \grid_accumulators_reg[0,0]1_carry__0_n_3 ;
  wire \grid_accumulators_reg[0,0]1_carry__1_i_1_n_0 ;
  wire \grid_accumulators_reg[0,0]1_carry__1_i_2_n_0 ;
  wire \grid_accumulators_reg[0,0]1_carry__1_i_3_n_0 ;
  wire \grid_accumulators_reg[0,0]1_carry__1_i_4_n_0 ;
  wire \grid_accumulators_reg[0,0]1_carry__1_n_0 ;
  wire \grid_accumulators_reg[0,0]1_carry__1_n_1 ;
  wire \grid_accumulators_reg[0,0]1_carry__1_n_2 ;
  wire \grid_accumulators_reg[0,0]1_carry__1_n_3 ;
  wire \grid_accumulators_reg[0,0]1_carry__2_i_1_n_3 ;
  wire \grid_accumulators_reg[0,0]1_carry__2_i_2_n_0 ;
  wire \grid_accumulators_reg[0,0]1_carry__2_n_0 ;
  wire \grid_accumulators_reg[0,0]1_carry__2_n_2 ;
  wire \grid_accumulators_reg[0,0]1_carry__2_n_3 ;
  wire \grid_accumulators_reg[0,0]1_carry_i_1_n_0 ;
  wire \grid_accumulators_reg[0,0]1_carry_i_2_n_0 ;
  wire \grid_accumulators_reg[0,0]1_carry_i_3_n_0 ;
  wire \grid_accumulators_reg[0,0]1_carry_i_4_n_0 ;
  wire \grid_accumulators_reg[0,0]1_carry_n_0 ;
  wire \grid_accumulators_reg[0,0]1_carry_n_1 ;
  wire \grid_accumulators_reg[0,0]1_carry_n_2 ;
  wire \grid_accumulators_reg[0,0]1_carry_n_3 ;
  wire [12:1]\grid_accumulators_reg[0,0]2 ;
  wire \grid_accumulators_reg[0,0]2__24_carry__0_i_1_n_0 ;
  wire \grid_accumulators_reg[0,0]2__24_carry__0_i_2_n_0 ;
  wire \grid_accumulators_reg[0,0]2__24_carry__0_i_3_n_0 ;
  wire \grid_accumulators_reg[0,0]2__24_carry__0_i_4_n_0 ;
  wire \grid_accumulators_reg[0,0]2__24_carry__0_i_5_n_0 ;
  wire \grid_accumulators_reg[0,0]2__24_carry__0_i_6_n_0 ;
  wire \grid_accumulators_reg[0,0]2__24_carry__0_i_7_n_0 ;
  wire \grid_accumulators_reg[0,0]2__24_carry__0_i_8_n_0 ;
  wire \grid_accumulators_reg[0,0]2__24_carry__0_n_0 ;
  wire \grid_accumulators_reg[0,0]2__24_carry__0_n_1 ;
  wire \grid_accumulators_reg[0,0]2__24_carry__0_n_2 ;
  wire \grid_accumulators_reg[0,0]2__24_carry__0_n_3 ;
  wire \grid_accumulators_reg[0,0]2__24_carry__1_i_1_n_0 ;
  wire \grid_accumulators_reg[0,0]2__24_carry__1_i_2_n_0 ;
  wire \grid_accumulators_reg[0,0]2__24_carry__1_i_3_n_0 ;
  wire \grid_accumulators_reg[0,0]2__24_carry__1_n_3 ;
  wire \grid_accumulators_reg[0,0]2__24_carry_i_1_n_0 ;
  wire \grid_accumulators_reg[0,0]2__24_carry_i_2_n_0 ;
  wire \grid_accumulators_reg[0,0]2__24_carry_i_3_n_0 ;
  wire \grid_accumulators_reg[0,0]2__24_carry_i_4_n_0 ;
  wire \grid_accumulators_reg[0,0]2__24_carry_i_5_n_0 ;
  wire \grid_accumulators_reg[0,0]2__24_carry_i_6_n_0 ;
  wire \grid_accumulators_reg[0,0]2__24_carry_i_7_n_0 ;
  wire \grid_accumulators_reg[0,0]2__24_carry_n_0 ;
  wire \grid_accumulators_reg[0,0]2__24_carry_n_1 ;
  wire \grid_accumulators_reg[0,0]2__24_carry_n_2 ;
  wire \grid_accumulators_reg[0,0]2__24_carry_n_3 ;
  wire \grid_accumulators_reg[0,0]2_carry__0_i_1_n_0 ;
  wire \grid_accumulators_reg[0,0]2_carry__0_i_2_n_0 ;
  wire \grid_accumulators_reg[0,0]2_carry__0_i_3_n_0 ;
  wire \grid_accumulators_reg[0,0]2_carry__0_n_0 ;
  wire \grid_accumulators_reg[0,0]2_carry__0_n_1 ;
  wire \grid_accumulators_reg[0,0]2_carry__0_n_2 ;
  wire \grid_accumulators_reg[0,0]2_carry__0_n_3 ;
  wire \grid_accumulators_reg[0,0]2_carry__0_n_4 ;
  wire \grid_accumulators_reg[0,0]2_carry__0_n_5 ;
  wire \grid_accumulators_reg[0,0]2_carry__0_n_6 ;
  wire \grid_accumulators_reg[0,0]2_carry__0_n_7 ;
  wire \grid_accumulators_reg[0,0]2_carry__1_n_2 ;
  wire \grid_accumulators_reg[0,0]2_carry__1_n_7 ;
  wire \grid_accumulators_reg[0,0]2_carry_i_1_n_0 ;
  wire \grid_accumulators_reg[0,0]2_carry_i_2_n_0 ;
  wire \grid_accumulators_reg[0,0]2_carry_i_3_n_0 ;
  wire \grid_accumulators_reg[0,0]2_carry_n_0 ;
  wire \grid_accumulators_reg[0,0]2_carry_n_1 ;
  wire \grid_accumulators_reg[0,0]2_carry_n_2 ;
  wire \grid_accumulators_reg[0,0]2_carry_n_3 ;
  wire \grid_accumulators_reg[0,0]2_carry_n_4 ;
  wire \grid_accumulators_reg[0,0]2_carry_n_5 ;
  wire [15:1]\grid_accumulators_reg[0,0]3 ;
  wire \grid_accumulators_reg[0,0]3__25_carry__0_i_1_n_0 ;
  wire \grid_accumulators_reg[0,0]3__25_carry__0_i_2_n_0 ;
  wire \grid_accumulators_reg[0,0]3__25_carry__0_i_3_n_0 ;
  wire \grid_accumulators_reg[0,0]3__25_carry__0_i_4_n_0 ;
  wire \grid_accumulators_reg[0,0]3__25_carry__0_i_5_n_0 ;
  wire \grid_accumulators_reg[0,0]3__25_carry__0_i_6_n_0 ;
  wire \grid_accumulators_reg[0,0]3__25_carry__0_i_7_n_0 ;
  wire \grid_accumulators_reg[0,0]3__25_carry__0_n_0 ;
  wire \grid_accumulators_reg[0,0]3__25_carry__0_n_1 ;
  wire \grid_accumulators_reg[0,0]3__25_carry__0_n_2 ;
  wire \grid_accumulators_reg[0,0]3__25_carry__0_n_3 ;
  wire \grid_accumulators_reg[0,0]3__25_carry__0_n_4 ;
  wire \grid_accumulators_reg[0,0]3__25_carry__0_n_5 ;
  wire \grid_accumulators_reg[0,0]3__25_carry__0_n_6 ;
  wire \grid_accumulators_reg[0,0]3__25_carry__0_n_7 ;
  wire \grid_accumulators_reg[0,0]3__25_carry__1_i_1_n_0 ;
  wire \grid_accumulators_reg[0,0]3__25_carry__1_i_2_n_0 ;
  wire \grid_accumulators_reg[0,0]3__25_carry__1_i_3_n_0 ;
  wire \grid_accumulators_reg[0,0]3__25_carry__1_n_0 ;
  wire \grid_accumulators_reg[0,0]3__25_carry__1_n_1 ;
  wire \grid_accumulators_reg[0,0]3__25_carry__1_n_2 ;
  wire \grid_accumulators_reg[0,0]3__25_carry__1_n_3 ;
  wire \grid_accumulators_reg[0,0]3__25_carry__1_n_4 ;
  wire \grid_accumulators_reg[0,0]3__25_carry__1_n_5 ;
  wire \grid_accumulators_reg[0,0]3__25_carry__1_n_6 ;
  wire \grid_accumulators_reg[0,0]3__25_carry__1_n_7 ;
  wire \grid_accumulators_reg[0,0]3__25_carry_i_1_n_0 ;
  wire \grid_accumulators_reg[0,0]3__25_carry_i_2_n_0 ;
  wire \grid_accumulators_reg[0,0]3__25_carry_i_3_n_0 ;
  wire \grid_accumulators_reg[0,0]3__25_carry_n_0 ;
  wire \grid_accumulators_reg[0,0]3__25_carry_n_1 ;
  wire \grid_accumulators_reg[0,0]3__25_carry_n_2 ;
  wire \grid_accumulators_reg[0,0]3__25_carry_n_3 ;
  wire \grid_accumulators_reg[0,0]3__25_carry_n_4 ;
  wire \grid_accumulators_reg[0,0]3__25_carry_n_5 ;
  wire \grid_accumulators_reg[0,0]3__25_carry_n_6 ;
  wire \grid_accumulators_reg[0,0]3__25_carry_n_7 ;
  wire \grid_accumulators_reg[0,0]3__58_carry__0_i_1_n_0 ;
  wire \grid_accumulators_reg[0,0]3__58_carry__0_i_2_n_0 ;
  wire \grid_accumulators_reg[0,0]3__58_carry__0_i_3_n_0 ;
  wire \grid_accumulators_reg[0,0]3__58_carry__0_i_4_n_0 ;
  wire \grid_accumulators_reg[0,0]3__58_carry__0_n_0 ;
  wire \grid_accumulators_reg[0,0]3__58_carry__0_n_1 ;
  wire \grid_accumulators_reg[0,0]3__58_carry__0_n_2 ;
  wire \grid_accumulators_reg[0,0]3__58_carry__0_n_3 ;
  wire \grid_accumulators_reg[0,0]3__58_carry__0_n_4 ;
  wire \grid_accumulators_reg[0,0]3__58_carry__0_n_5 ;
  wire \grid_accumulators_reg[0,0]3__58_carry__0_n_6 ;
  wire \grid_accumulators_reg[0,0]3__58_carry__0_n_7 ;
  wire \grid_accumulators_reg[0,0]3__58_carry__1_i_1_n_0 ;
  wire \grid_accumulators_reg[0,0]3__58_carry__1_i_2_n_0 ;
  wire \grid_accumulators_reg[0,0]3__58_carry__1_n_1 ;
  wire \grid_accumulators_reg[0,0]3__58_carry__1_n_3 ;
  wire \grid_accumulators_reg[0,0]3__58_carry__1_n_6 ;
  wire \grid_accumulators_reg[0,0]3__58_carry__1_n_7 ;
  wire \grid_accumulators_reg[0,0]3__58_carry_i_1_n_0 ;
  wire \grid_accumulators_reg[0,0]3__58_carry_i_2_n_0 ;
  wire \grid_accumulators_reg[0,0]3__58_carry_i_3_n_0 ;
  wire \grid_accumulators_reg[0,0]3__58_carry_n_0 ;
  wire \grid_accumulators_reg[0,0]3__58_carry_n_1 ;
  wire \grid_accumulators_reg[0,0]3__58_carry_n_2 ;
  wire \grid_accumulators_reg[0,0]3__58_carry_n_3 ;
  wire \grid_accumulators_reg[0,0]3__58_carry_n_4 ;
  wire \grid_accumulators_reg[0,0]3__58_carry_n_5 ;
  wire \grid_accumulators_reg[0,0]3__86_carry__0_i_1_n_0 ;
  wire \grid_accumulators_reg[0,0]3__86_carry__0_i_2_n_0 ;
  wire \grid_accumulators_reg[0,0]3__86_carry__0_i_3_n_0 ;
  wire \grid_accumulators_reg[0,0]3__86_carry__0_i_4_n_0 ;
  wire \grid_accumulators_reg[0,0]3__86_carry__0_i_5_n_0 ;
  wire \grid_accumulators_reg[0,0]3__86_carry__0_i_6_n_0 ;
  wire \grid_accumulators_reg[0,0]3__86_carry__0_i_7_n_0 ;
  wire \grid_accumulators_reg[0,0]3__86_carry__0_n_0 ;
  wire \grid_accumulators_reg[0,0]3__86_carry__0_n_1 ;
  wire \grid_accumulators_reg[0,0]3__86_carry__0_n_2 ;
  wire \grid_accumulators_reg[0,0]3__86_carry__0_n_3 ;
  wire \grid_accumulators_reg[0,0]3__86_carry__1_i_1_n_0 ;
  wire \grid_accumulators_reg[0,0]3__86_carry__1_i_2_n_0 ;
  wire \grid_accumulators_reg[0,0]3__86_carry__1_i_3_n_0 ;
  wire \grid_accumulators_reg[0,0]3__86_carry__1_i_4_n_0 ;
  wire \grid_accumulators_reg[0,0]3__86_carry__1_i_5_n_0 ;
  wire \grid_accumulators_reg[0,0]3__86_carry__1_i_6_n_0 ;
  wire \grid_accumulators_reg[0,0]3__86_carry__1_i_7_n_0 ;
  wire \grid_accumulators_reg[0,0]3__86_carry__1_i_8_n_0 ;
  wire \grid_accumulators_reg[0,0]3__86_carry__1_n_0 ;
  wire \grid_accumulators_reg[0,0]3__86_carry__1_n_1 ;
  wire \grid_accumulators_reg[0,0]3__86_carry__1_n_2 ;
  wire \grid_accumulators_reg[0,0]3__86_carry__1_n_3 ;
  wire \grid_accumulators_reg[0,0]3__86_carry__2_i_1_n_0 ;
  wire \grid_accumulators_reg[0,0]3__86_carry_i_1_n_0 ;
  wire \grid_accumulators_reg[0,0]3__86_carry_i_2_n_0 ;
  wire \grid_accumulators_reg[0,0]3__86_carry_i_3_n_0 ;
  wire \grid_accumulators_reg[0,0]3__86_carry_n_0 ;
  wire \grid_accumulators_reg[0,0]3__86_carry_n_1 ;
  wire \grid_accumulators_reg[0,0]3__86_carry_n_2 ;
  wire \grid_accumulators_reg[0,0]3__86_carry_n_3 ;
  wire \grid_accumulators_reg[0,0]3_carry__0_i_1_n_0 ;
  wire \grid_accumulators_reg[0,0]3_carry__0_i_2_n_0 ;
  wire \grid_accumulators_reg[0,0]3_carry__0_i_3_n_0 ;
  wire \grid_accumulators_reg[0,0]3_carry__0_n_0 ;
  wire \grid_accumulators_reg[0,0]3_carry__0_n_1 ;
  wire \grid_accumulators_reg[0,0]3_carry__0_n_2 ;
  wire \grid_accumulators_reg[0,0]3_carry__0_n_3 ;
  wire \grid_accumulators_reg[0,0]3_carry__0_n_4 ;
  wire \grid_accumulators_reg[0,0]3_carry__0_n_5 ;
  wire \grid_accumulators_reg[0,0]3_carry__0_n_6 ;
  wire \grid_accumulators_reg[0,0]3_carry__0_n_7 ;
  wire \grid_accumulators_reg[0,0]3_carry__1_n_2 ;
  wire \grid_accumulators_reg[0,0]3_carry__1_n_7 ;
  wire \grid_accumulators_reg[0,0]3_carry_i_1_n_0 ;
  wire \grid_accumulators_reg[0,0]3_carry_i_2_n_0 ;
  wire \grid_accumulators_reg[0,0]3_carry_i_3_n_0 ;
  wire \grid_accumulators_reg[0,0]3_carry_n_0 ;
  wire \grid_accumulators_reg[0,0]3_carry_n_1 ;
  wire \grid_accumulators_reg[0,0]3_carry_n_2 ;
  wire \grid_accumulators_reg[0,0]3_carry_n_3 ;
  wire \grid_accumulators_reg[0,0]3_carry_n_4 ;
  wire \grid_accumulators_reg[0,0]3_carry_n_5 ;
  wire \grid_accumulators_reg[0,0]3_carry_n_6 ;
  wire \grid_accumulators_reg[0,0]3_carry_n_7 ;
  wire \grid_accumulators_reg[0,3][11]_i_1_n_0 ;
  wire \grid_accumulators_reg[0,3][11]_i_1_n_1 ;
  wire \grid_accumulators_reg[0,3][11]_i_1_n_2 ;
  wire \grid_accumulators_reg[0,3][11]_i_1_n_3 ;
  wire \grid_accumulators_reg[0,3][11]_i_1_n_4 ;
  wire \grid_accumulators_reg[0,3][11]_i_1_n_5 ;
  wire \grid_accumulators_reg[0,3][11]_i_1_n_6 ;
  wire \grid_accumulators_reg[0,3][11]_i_1_n_7 ;
  wire \grid_accumulators_reg[0,3][15]_i_3_n_1 ;
  wire \grid_accumulators_reg[0,3][15]_i_3_n_2 ;
  wire \grid_accumulators_reg[0,3][15]_i_3_n_3 ;
  wire \grid_accumulators_reg[0,3][15]_i_3_n_4 ;
  wire \grid_accumulators_reg[0,3][15]_i_3_n_5 ;
  wire \grid_accumulators_reg[0,3][15]_i_3_n_6 ;
  wire \grid_accumulators_reg[0,3][15]_i_3_n_7 ;
  wire \grid_accumulators_reg[0,3][3]_i_1_n_0 ;
  wire \grid_accumulators_reg[0,3][3]_i_1_n_1 ;
  wire \grid_accumulators_reg[0,3][3]_i_1_n_2 ;
  wire \grid_accumulators_reg[0,3][3]_i_1_n_3 ;
  wire \grid_accumulators_reg[0,3][3]_i_1_n_4 ;
  wire \grid_accumulators_reg[0,3][3]_i_1_n_5 ;
  wire \grid_accumulators_reg[0,3][3]_i_1_n_6 ;
  wire \grid_accumulators_reg[0,3][3]_i_1_n_7 ;
  wire \grid_accumulators_reg[0,3][7]_i_1_n_0 ;
  wire \grid_accumulators_reg[0,3][7]_i_1_n_1 ;
  wire \grid_accumulators_reg[0,3][7]_i_1_n_2 ;
  wire \grid_accumulators_reg[0,3][7]_i_1_n_3 ;
  wire \grid_accumulators_reg[0,3][7]_i_1_n_4 ;
  wire \grid_accumulators_reg[0,3][7]_i_1_n_5 ;
  wire \grid_accumulators_reg[0,3][7]_i_1_n_6 ;
  wire \grid_accumulators_reg[0,3][7]_i_1_n_7 ;
  wire \grid_accumulators_reg[0,_n_0_0][0] ;
  wire \grid_accumulators_reg[0,_n_0_0][1] ;
  wire \grid_accumulators_reg[0,_n_0_0][2] ;
  wire \grid_accumulators_reg[0,_n_0_0][3] ;
  wire \grid_accumulators_reg[0,_n_0_0][4] ;
  wire \grid_accumulators_reg[0,_n_0_0][5] ;
  wire \grid_accumulators_reg[0,_n_0_0][6] ;
  wire \grid_accumulators_reg[0,_n_0_0][7] ;
  wire \grid_accumulators_reg[0,_n_0_1][0] ;
  wire \grid_accumulators_reg[0,_n_0_1][1] ;
  wire \grid_accumulators_reg[0,_n_0_1][2] ;
  wire \grid_accumulators_reg[0,_n_0_1][3] ;
  wire \grid_accumulators_reg[0,_n_0_1][4] ;
  wire \grid_accumulators_reg[0,_n_0_1][5] ;
  wire \grid_accumulators_reg[0,_n_0_1][6] ;
  wire \grid_accumulators_reg[0,_n_0_1][7] ;
  wire \grid_accumulators_reg[0,_n_0_2][0] ;
  wire \grid_accumulators_reg[0,_n_0_2][1] ;
  wire \grid_accumulators_reg[0,_n_0_2][2] ;
  wire \grid_accumulators_reg[0,_n_0_2][3] ;
  wire \grid_accumulators_reg[0,_n_0_2][4] ;
  wire \grid_accumulators_reg[0,_n_0_2][5] ;
  wire \grid_accumulators_reg[0,_n_0_2][6] ;
  wire \grid_accumulators_reg[0,_n_0_2][7] ;
  wire \grid_accumulators_reg[0,_n_0_3][0] ;
  wire \grid_accumulators_reg[0,_n_0_3][1] ;
  wire \grid_accumulators_reg[0,_n_0_3][2] ;
  wire \grid_accumulators_reg[0,_n_0_3][3] ;
  wire \grid_accumulators_reg[0,_n_0_3][4] ;
  wire \grid_accumulators_reg[0,_n_0_3][5] ;
  wire \grid_accumulators_reg[0,_n_0_3][6] ;
  wire \grid_accumulators_reg[0,_n_0_3][7] ;
  wire [15:0]\grid_accumulators_reg[1,0] ;
  wire [15:0]\grid_accumulators_reg[1,1] ;
  wire [15:0]\grid_accumulators_reg[1,2] ;
  wire [15:0]\grid_accumulators_reg[1,3] ;
  wire [15:0]\grid_accumulators_reg[2,0] ;
  wire [15:0]\grid_accumulators_reg[2,1] ;
  wire [15:0]\grid_accumulators_reg[2,2] ;
  wire [15:0]\grid_accumulators_reg[2,3] ;
  wire [15:0]\grid_accumulators_reg[3,0] ;
  wire [15:0]\grid_accumulators_reg[3,1] ;
  wire [15:0]\grid_accumulators_reg[3,2] ;
  wire [15:0]\grid_accumulators_reg[3,3] ;
  wire [15:0]\grid_accumulators_reg[4,0] ;
  wire [15:0]\grid_accumulators_reg[4,1] ;
  wire [15:0]\grid_accumulators_reg[4,2] ;
  wire [15:0]\grid_accumulators_reg[4,3] ;
  wire [15:0]\grid_accumulators_reg[5,0] ;
  wire [15:0]\grid_accumulators_reg[5,1] ;
  wire [15:0]\grid_accumulators_reg[5,2] ;
  wire [15:0]\grid_accumulators_reg[5,3] ;
  wire [15:0]\grid_accumulators_reg[6,0] ;
  wire [15:0]\grid_accumulators_reg[6,1] ;
  wire [15:0]\grid_accumulators_reg[6,2] ;
  wire [15:0]\grid_accumulators_reg[6,3] ;
  wire \grid_accumulators_reg[7,_n_0_0][0] ;
  wire \grid_accumulators_reg[7,_n_0_0][10] ;
  wire \grid_accumulators_reg[7,_n_0_0][11] ;
  wire \grid_accumulators_reg[7,_n_0_0][12] ;
  wire \grid_accumulators_reg[7,_n_0_0][13] ;
  wire \grid_accumulators_reg[7,_n_0_0][14] ;
  wire \grid_accumulators_reg[7,_n_0_0][15] ;
  wire \grid_accumulators_reg[7,_n_0_0][1] ;
  wire \grid_accumulators_reg[7,_n_0_0][2] ;
  wire \grid_accumulators_reg[7,_n_0_0][3] ;
  wire \grid_accumulators_reg[7,_n_0_0][4] ;
  wire \grid_accumulators_reg[7,_n_0_0][5] ;
  wire \grid_accumulators_reg[7,_n_0_0][6] ;
  wire \grid_accumulators_reg[7,_n_0_0][7] ;
  wire \grid_accumulators_reg[7,_n_0_0][8] ;
  wire \grid_accumulators_reg[7,_n_0_0][9] ;
  wire \grid_accumulators_reg[7,_n_0_1][0] ;
  wire \grid_accumulators_reg[7,_n_0_1][10] ;
  wire \grid_accumulators_reg[7,_n_0_1][11] ;
  wire \grid_accumulators_reg[7,_n_0_1][12] ;
  wire \grid_accumulators_reg[7,_n_0_1][13] ;
  wire \grid_accumulators_reg[7,_n_0_1][14] ;
  wire \grid_accumulators_reg[7,_n_0_1][15] ;
  wire \grid_accumulators_reg[7,_n_0_1][1] ;
  wire \grid_accumulators_reg[7,_n_0_1][2] ;
  wire \grid_accumulators_reg[7,_n_0_1][3] ;
  wire \grid_accumulators_reg[7,_n_0_1][4] ;
  wire \grid_accumulators_reg[7,_n_0_1][5] ;
  wire \grid_accumulators_reg[7,_n_0_1][6] ;
  wire \grid_accumulators_reg[7,_n_0_1][7] ;
  wire \grid_accumulators_reg[7,_n_0_1][8] ;
  wire \grid_accumulators_reg[7,_n_0_1][9] ;
  wire \grid_accumulators_reg[7,_n_0_2][0] ;
  wire \grid_accumulators_reg[7,_n_0_2][10] ;
  wire \grid_accumulators_reg[7,_n_0_2][11] ;
  wire \grid_accumulators_reg[7,_n_0_2][12] ;
  wire \grid_accumulators_reg[7,_n_0_2][13] ;
  wire \grid_accumulators_reg[7,_n_0_2][14] ;
  wire \grid_accumulators_reg[7,_n_0_2][15] ;
  wire \grid_accumulators_reg[7,_n_0_2][1] ;
  wire \grid_accumulators_reg[7,_n_0_2][2] ;
  wire \grid_accumulators_reg[7,_n_0_2][3] ;
  wire \grid_accumulators_reg[7,_n_0_2][4] ;
  wire \grid_accumulators_reg[7,_n_0_2][5] ;
  wire \grid_accumulators_reg[7,_n_0_2][6] ;
  wire \grid_accumulators_reg[7,_n_0_2][7] ;
  wire \grid_accumulators_reg[7,_n_0_2][8] ;
  wire \grid_accumulators_reg[7,_n_0_2][9] ;
  wire \grid_accumulators_reg[7,_n_0_3][0] ;
  wire \grid_accumulators_reg[7,_n_0_3][10] ;
  wire \grid_accumulators_reg[7,_n_0_3][11] ;
  wire \grid_accumulators_reg[7,_n_0_3][12] ;
  wire \grid_accumulators_reg[7,_n_0_3][13] ;
  wire \grid_accumulators_reg[7,_n_0_3][14] ;
  wire \grid_accumulators_reg[7,_n_0_3][15] ;
  wire \grid_accumulators_reg[7,_n_0_3][1] ;
  wire \grid_accumulators_reg[7,_n_0_3][2] ;
  wire \grid_accumulators_reg[7,_n_0_3][3] ;
  wire \grid_accumulators_reg[7,_n_0_3][4] ;
  wire \grid_accumulators_reg[7,_n_0_3][5] ;
  wire \grid_accumulators_reg[7,_n_0_3][6] ;
  wire \grid_accumulators_reg[7,_n_0_3][7] ;
  wire \grid_accumulators_reg[7,_n_0_3][8] ;
  wire \grid_accumulators_reg[7,_n_0_3][9] ;
  wire h_count;
  wire \h_count[10]_i_1_n_0 ;
  wire \h_count[10]_i_4_n_0 ;
  wire \h_count[10]_i_5_n_0 ;
  wire \h_count[10]_i_6_n_0 ;
  wire [10:0]h_count_reg;
  wire inside_grid_h__30;
  wire inside_grid_h_i_1_n_0;
  wire inside_grid_h_i_3_n_0;
  wire inside_grid_h_reg_n_0;
  wire inside_grid_v__2;
  wire inside_grid_v_i_1_n_0;
  wire inside_grid_v_i_3_n_0;
  wire inside_grid_v_reg_n_0;
  wire [255:0]matrix_flat_out;
  wire [10:0]p_0_in;
  wire [9:1]p_0_in__0;
  wire [7:0]p_0_in__1;
  wire [7:0]p_0_out;
  wire [7:0]p_1_out;
  wire [7:0]p_2_out;
  wire [7:0]p_3_out;
  wire [7:0]r_val;
  wire r_val_0;
  wire [23:0]rgb_in;
  wire rst;
  wire [7:0]sub_col_cnt;
  wire \sub_col_cnt[0]_i_1_n_0 ;
  wire \sub_col_cnt[5]_i_2_n_0 ;
  wire \sub_col_cnt[7]_i_1_n_0 ;
  wire \sub_col_cnt[7]_i_2_n_0 ;
  wire \sub_col_cnt[7]_i_4_n_0 ;
  wire \sub_col_cnt[7]_i_5_n_0 ;
  wire \sub_col_cnt[7]_i_6_n_0 ;
  wire \sub_col_cnt[7]_i_7_n_0 ;
  wire [7:1]sub_col_cnt_2;
  wire [6:0]sub_row_cnt;
  wire \sub_row_cnt[3]_i_2_n_0 ;
  wire \sub_row_cnt[4]_i_2_n_0 ;
  wire \sub_row_cnt[5]_i_2_n_0 ;
  wire \sub_row_cnt[6]_i_1_n_0 ;
  wire \sub_row_cnt[6]_i_2_n_0 ;
  wire \sub_row_cnt[6]_i_4_n_0 ;
  wire \sub_row_cnt[6]_i_5_n_0 ;
  wire \sub_row_cnt[6]_i_6_n_0 ;
  wire \sub_row_cnt[6]_i_7_n_0 ;
  wire \sub_row_cnt[6]_i_8_n_0 ;
  wire \sub_row_cnt[6]_i_9_n_0 ;
  wire [6:0]sub_row_cnt_1;
  wire \v_count[0]_i_1_n_0 ;
  wire \v_count[2]_i_1_n_0 ;
  wire \v_count[6]_i_2_n_0 ;
  wire \v_count[9]_i_1_n_0 ;
  wire \v_count[9]_i_2_n_0 ;
  wire \v_count[9]_i_4_n_0 ;
  wire \v_count[9]_i_5_n_0 ;
  wire [9:0]v_count_reg;
  wire v_started0;
  wire v_started_i_1_n_0;
  wire v_started_reg_n_0;
  wire vde_in;
  wire vde_prev;
  wire vsync_in;
  wire vsync_prev;
  wire [3:0]\NLW_grid_accumulators_reg[0,0]1__41_carry_O_UNCONNECTED ;
  wire [2:0]\NLW_grid_accumulators_reg[0,0]1__41_carry__0_O_UNCONNECTED ;
  wire [3:2]\NLW_grid_accumulators_reg[0,0]1__41_carry__2_CO_UNCONNECTED ;
  wire [3:3]\NLW_grid_accumulators_reg[0,0]1__41_carry__2_O_UNCONNECTED ;
  wire [0:0]\NLW_grid_accumulators_reg[0,0]1_carry_O_UNCONNECTED ;
  wire [2:2]\NLW_grid_accumulators_reg[0,0]1_carry__2_CO_UNCONNECTED ;
  wire [3:3]\NLW_grid_accumulators_reg[0,0]1_carry__2_O_UNCONNECTED ;
  wire [3:1]\NLW_grid_accumulators_reg[0,0]1_carry__2_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_grid_accumulators_reg[0,0]1_carry__2_i_1_O_UNCONNECTED ;
  wire [3:1]\NLW_grid_accumulators_reg[0,0]2__24_carry__1_CO_UNCONNECTED ;
  wire [3:2]\NLW_grid_accumulators_reg[0,0]2__24_carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_grid_accumulators_reg[0,0]2_carry__1_CO_UNCONNECTED ;
  wire [3:1]\NLW_grid_accumulators_reg[0,0]2_carry__1_O_UNCONNECTED ;
  wire [3:1]\NLW_grid_accumulators_reg[0,0]3__58_carry__1_CO_UNCONNECTED ;
  wire [3:2]\NLW_grid_accumulators_reg[0,0]3__58_carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_grid_accumulators_reg[0,0]3__86_carry__2_CO_UNCONNECTED ;
  wire [3:1]\NLW_grid_accumulators_reg[0,0]3__86_carry__2_O_UNCONNECTED ;
  wire [3:0]\NLW_grid_accumulators_reg[0,0]3_carry__1_CO_UNCONNECTED ;
  wire [3:1]\NLW_grid_accumulators_reg[0,0]3_carry__1_O_UNCONNECTED ;
  wire [3:3]\NLW_grid_accumulators_reg[0,3][15]_i_3_CO_UNCONNECTED ;

  FDRE \b_val_reg[0] 
       (.C(clk),
        .CE(r_val_0),
        .D(rgb_in[0]),
        .Q(b_val[0]),
        .R(1'b0));
  FDRE \b_val_reg[1] 
       (.C(clk),
        .CE(r_val_0),
        .D(rgb_in[1]),
        .Q(b_val[1]),
        .R(1'b0));
  FDRE \b_val_reg[2] 
       (.C(clk),
        .CE(r_val_0),
        .D(rgb_in[2]),
        .Q(b_val[2]),
        .R(1'b0));
  FDRE \b_val_reg[3] 
       (.C(clk),
        .CE(r_val_0),
        .D(rgb_in[3]),
        .Q(b_val[3]),
        .R(1'b0));
  FDRE \b_val_reg[4] 
       (.C(clk),
        .CE(r_val_0),
        .D(rgb_in[4]),
        .Q(b_val[4]),
        .R(1'b0));
  FDRE \b_val_reg[5] 
       (.C(clk),
        .CE(r_val_0),
        .D(rgb_in[5]),
        .Q(b_val[5]),
        .R(1'b0));
  FDRE \b_val_reg[6] 
       (.C(clk),
        .CE(r_val_0),
        .D(rgb_in[6]),
        .Q(b_val[6]),
        .R(1'b0));
  FDRE \b_val_reg[7] 
       (.C(clk),
        .CE(r_val_0),
        .D(rgb_in[7]),
        .Q(b_val[7]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAA00AA6A)) 
    \curr_col[0]_i_1 
       (.I0(curr_col[0]),
        .I1(curr_col__5),
        .I2(inside_grid_h_reg_n_0),
        .I3(\grid_accumulators[7,3] ),
        .I4(\curr_col[1]_i_3_n_0 ),
        .O(\curr_col[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA0000AAAA6AAA)) 
    \curr_col[1]_i_1 
       (.I0(curr_col[1]),
        .I1(inside_grid_h_reg_n_0),
        .I2(curr_col__5),
        .I3(curr_col[0]),
        .I4(\grid_accumulators[7,3] ),
        .I5(\curr_col[1]_i_3_n_0 ),
        .O(\curr_col[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \curr_col[1]_i_2 
       (.I0(sub_col_cnt[7]),
        .I1(sub_col_cnt[6]),
        .I2(\curr_col[1]_i_4_n_0 ),
        .I3(sub_col_cnt[3]),
        .I4(sub_col_cnt[5]),
        .I5(sub_col_cnt[4]),
        .O(curr_col__5));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    \curr_col[1]_i_3 
       (.I0(h_count_reg[6]),
        .I1(\curr_col[1]_i_5_n_0 ),
        .I2(h_count_reg[8]),
        .I3(h_count_reg[7]),
        .I4(h_count_reg[9]),
        .I5(h_count_reg[10]),
        .O(\curr_col[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00007000)) 
    \curr_col[1]_i_4 
       (.I0(curr_col[0]),
        .I1(curr_col[1]),
        .I2(sub_col_cnt[0]),
        .I3(sub_col_cnt[1]),
        .I4(sub_col_cnt[2]),
        .O(\curr_col[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \curr_col[1]_i_5 
       (.I0(h_count_reg[0]),
        .I1(h_count_reg[1]),
        .I2(h_count_reg[2]),
        .I3(h_count_reg[3]),
        .I4(h_count_reg[5]),
        .I5(h_count_reg[4]),
        .O(\curr_col[1]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \curr_col_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\curr_col[0]_i_1_n_0 ),
        .Q(curr_col[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \curr_col_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\curr_col[1]_i_1_n_0 ),
        .Q(curr_col[1]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00006660)) 
    \curr_row[0]_i_1 
       (.I0(curr_row[0]),
        .I1(\curr_row[2]_i_2_n_0 ),
        .I2(\curr_row[2]_i_4_n_0 ),
        .I3(\curr_row[2]_i_5_n_0 ),
        .I4(\grid_accumulators[7,3] ),
        .O(\curr_row[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000006A6A6A00)) 
    \curr_row[1]_i_1 
       (.I0(curr_row[1]),
        .I1(\curr_row[2]_i_2_n_0 ),
        .I2(curr_row[0]),
        .I3(\curr_row[2]_i_4_n_0 ),
        .I4(\curr_row[2]_i_5_n_0 ),
        .I5(\grid_accumulators[7,3] ),
        .O(\curr_row[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A6A6A600)) 
    \curr_row[2]_i_1 
       (.I0(curr_row[2]),
        .I1(\curr_row[2]_i_2_n_0 ),
        .I2(\curr_row[2]_i_3_n_0 ),
        .I3(\curr_row[2]_i_4_n_0 ),
        .I4(\curr_row[2]_i_5_n_0 ),
        .I5(\grid_accumulators[7,3] ),
        .O(\curr_row[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \curr_row[2]_i_10 
       (.I0(h_count_reg[6]),
        .I1(h_count_reg[7]),
        .I2(h_count_reg[4]),
        .I3(h_count_reg[5]),
        .O(\curr_row[2]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \curr_row[2]_i_11 
       (.I0(h_count_reg[2]),
        .I1(h_count_reg[3]),
        .I2(h_count_reg[0]),
        .I3(h_count_reg[1]),
        .O(\curr_row[2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \curr_row[2]_i_2 
       (.I0(inside_grid_v_reg_n_0),
        .I1(\curr_row[2]_i_6_n_0 ),
        .I2(\curr_row[2]_i_7_n_0 ),
        .I3(sub_row_cnt[0]),
        .I4(\curr_row[2]_i_8_n_0 ),
        .I5(inside_grid_v_i_3_n_0),
        .O(\curr_row[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \curr_row[2]_i_3 
       (.I0(curr_row[0]),
        .I1(curr_row[1]),
        .O(\curr_row[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \curr_row[2]_i_4 
       (.I0(vde_prev),
        .I1(v_count_reg[9]),
        .I2(\curr_row[2]_i_9_n_0 ),
        .I3(v_count_reg[7]),
        .I4(v_count_reg[8]),
        .I5(v_count_reg[6]),
        .O(\curr_row[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \curr_row[2]_i_5 
       (.I0(vde_in),
        .I1(\curr_row[2]_i_10_n_0 ),
        .I2(\curr_row[2]_i_11_n_0 ),
        .I3(h_count_reg[9]),
        .I4(h_count_reg[8]),
        .I5(h_count_reg[10]),
        .O(\curr_row[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \curr_row[2]_i_6 
       (.I0(sub_row_cnt[1]),
        .I1(sub_row_cnt[2]),
        .I2(sub_row_cnt[6]),
        .I3(sub_row_cnt[5]),
        .O(\curr_row[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \curr_row[2]_i_7 
       (.I0(curr_row[2]),
        .I1(curr_row[1]),
        .I2(curr_row[0]),
        .O(\curr_row[2]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \curr_row[2]_i_8 
       (.I0(sub_row_cnt[3]),
        .I1(sub_row_cnt[4]),
        .O(\curr_row[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFBFFFF)) 
    \curr_row[2]_i_9 
       (.I0(v_count_reg[0]),
        .I1(v_count_reg[1]),
        .I2(v_count_reg[2]),
        .I3(v_count_reg[3]),
        .I4(v_count_reg[5]),
        .I5(v_count_reg[4]),
        .O(\curr_row[2]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \curr_row_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\curr_row[0]_i_1_n_0 ),
        .Q(curr_row[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \curr_row_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\curr_row[1]_i_1_n_0 ),
        .Q(curr_row[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \curr_row_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\curr_row[2]_i_1_n_0 ),
        .Q(curr_row[2]),
        .R(1'b0));
  FDRE data_ready_reg
       (.C(clk),
        .CE(1'b1),
        .D(v_started0),
        .Q(data_ready),
        .R(rst));
  FDRE \g_val_reg[0] 
       (.C(clk),
        .CE(r_val_0),
        .D(rgb_in[8]),
        .Q(g_val[0]),
        .R(1'b0));
  FDRE \g_val_reg[1] 
       (.C(clk),
        .CE(r_val_0),
        .D(rgb_in[9]),
        .Q(g_val[1]),
        .R(1'b0));
  FDRE \g_val_reg[2] 
       (.C(clk),
        .CE(r_val_0),
        .D(rgb_in[10]),
        .Q(g_val[2]),
        .R(1'b0));
  FDRE \g_val_reg[3] 
       (.C(clk),
        .CE(r_val_0),
        .D(rgb_in[11]),
        .Q(g_val[3]),
        .R(1'b0));
  FDRE \g_val_reg[4] 
       (.C(clk),
        .CE(r_val_0),
        .D(rgb_in[12]),
        .Q(g_val[4]),
        .R(1'b0));
  FDRE \g_val_reg[5] 
       (.C(clk),
        .CE(r_val_0),
        .D(rgb_in[13]),
        .Q(g_val[5]),
        .R(1'b0));
  FDRE \g_val_reg[6] 
       (.C(clk),
        .CE(r_val_0),
        .D(rgb_in[14]),
        .Q(g_val[6]),
        .R(1'b0));
  FDRE \g_val_reg[7] 
       (.C(clk),
        .CE(r_val_0),
        .D(rgb_in[15]),
        .Q(g_val[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \grid_accumulators[0,0][15]_i_1 
       (.I0(\grid_accumulators[0,0]1__1 ),
        .I1(curr_row[0]),
        .I2(curr_col[0]),
        .I3(curr_col[1]),
        .I4(curr_row[1]),
        .I5(curr_row[2]),
        .O(\grid_accumulators[0,0][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \grid_accumulators[0,1][15]_i_1 
       (.I0(\grid_accumulators[0,0]1__1 ),
        .I1(curr_row[0]),
        .I2(curr_col[1]),
        .I3(curr_col[0]),
        .I4(curr_row[1]),
        .I5(curr_row[2]),
        .O(\grid_accumulators[0,1][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \grid_accumulators[0,2][15]_i_1 
       (.I0(\grid_accumulators[0,0]1__1 ),
        .I1(curr_row[0]),
        .I2(curr_col[0]),
        .I3(curr_col[1]),
        .I4(curr_row[1]),
        .I5(curr_row[2]),
        .O(\grid_accumulators[0,2][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \grid_accumulators[0,3][11]_i_2 
       (.I0(\grid_accumulators[0,1]__111 [11]),
        .I1(\grid_accumulators[0,0]__226 [11]),
        .I2(\grid_accumulators[0,3]__111 [11]),
        .I3(curr_col[1]),
        .I4(curr_col[0]),
        .I5(\grid_accumulators[0,2]__111 [11]),
        .O(\grid_accumulators[0,0] [11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][11]_i_22 
       (.I0(\grid_accumulators_reg[3,1] [11]),
        .I1(\grid_accumulators_reg[2,1] [11]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[1,1] [11]),
        .I4(curr_row[0]),
        .I5(p_2_out[3]),
        .O(\grid_accumulators[0,3][11]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][11]_i_23 
       (.I0(\grid_accumulators_reg[7,_n_0_1][11] ),
        .I1(\grid_accumulators_reg[6,1] [11]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[5,1] [11]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[4,1] [11]),
        .O(\grid_accumulators[0,3][11]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][11]_i_24 
       (.I0(\grid_accumulators_reg[3,0] [11]),
        .I1(\grid_accumulators_reg[2,0] [11]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[1,0] [11]),
        .I4(curr_row[0]),
        .I5(p_3_out[3]),
        .O(\grid_accumulators[0,3][11]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][11]_i_25 
       (.I0(\grid_accumulators_reg[7,_n_0_0][11] ),
        .I1(\grid_accumulators_reg[6,0] [11]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[5,0] [11]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[4,0] [11]),
        .O(\grid_accumulators[0,3][11]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][11]_i_26 
       (.I0(\grid_accumulators_reg[3,3] [11]),
        .I1(\grid_accumulators_reg[2,3] [11]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[1,3] [11]),
        .I4(curr_row[0]),
        .I5(p_0_out[3]),
        .O(\grid_accumulators[0,3][11]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][11]_i_27 
       (.I0(\grid_accumulators_reg[7,_n_0_3][11] ),
        .I1(\grid_accumulators_reg[6,3] [11]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[5,3] [11]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[4,3] [11]),
        .O(\grid_accumulators[0,3][11]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][11]_i_28 
       (.I0(\grid_accumulators_reg[3,2] [11]),
        .I1(\grid_accumulators_reg[2,2] [11]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[1,2] [11]),
        .I4(curr_row[0]),
        .I5(p_1_out[3]),
        .O(\grid_accumulators[0,3][11]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][11]_i_29 
       (.I0(\grid_accumulators_reg[7,_n_0_2][11] ),
        .I1(\grid_accumulators_reg[6,2] [11]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[5,2] [11]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[4,2] [11]),
        .O(\grid_accumulators[0,3][11]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \grid_accumulators[0,3][11]_i_3 
       (.I0(\grid_accumulators[0,1]__111 [10]),
        .I1(\grid_accumulators[0,0]__226 [10]),
        .I2(\grid_accumulators[0,3]__111 [10]),
        .I3(curr_col[1]),
        .I4(curr_col[0]),
        .I5(\grid_accumulators[0,2]__111 [10]),
        .O(\grid_accumulators[0,0] [10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][11]_i_30 
       (.I0(\grid_accumulators_reg[3,1] [10]),
        .I1(\grid_accumulators_reg[2,1] [10]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[1,1] [10]),
        .I4(curr_row[0]),
        .I5(p_2_out[2]),
        .O(\grid_accumulators[0,3][11]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][11]_i_31 
       (.I0(\grid_accumulators_reg[7,_n_0_1][10] ),
        .I1(\grid_accumulators_reg[6,1] [10]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[5,1] [10]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[4,1] [10]),
        .O(\grid_accumulators[0,3][11]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][11]_i_32 
       (.I0(\grid_accumulators_reg[3,0] [10]),
        .I1(\grid_accumulators_reg[2,0] [10]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[1,0] [10]),
        .I4(curr_row[0]),
        .I5(p_3_out[2]),
        .O(\grid_accumulators[0,3][11]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][11]_i_33 
       (.I0(\grid_accumulators_reg[7,_n_0_0][10] ),
        .I1(\grid_accumulators_reg[6,0] [10]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[5,0] [10]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[4,0] [10]),
        .O(\grid_accumulators[0,3][11]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][11]_i_34 
       (.I0(\grid_accumulators_reg[3,3] [10]),
        .I1(\grid_accumulators_reg[2,3] [10]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[1,3] [10]),
        .I4(curr_row[0]),
        .I5(p_0_out[2]),
        .O(\grid_accumulators[0,3][11]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][11]_i_35 
       (.I0(\grid_accumulators_reg[7,_n_0_3][10] ),
        .I1(\grid_accumulators_reg[6,3] [10]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[5,3] [10]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[4,3] [10]),
        .O(\grid_accumulators[0,3][11]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][11]_i_36 
       (.I0(\grid_accumulators_reg[3,2] [10]),
        .I1(\grid_accumulators_reg[2,2] [10]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[1,2] [10]),
        .I4(curr_row[0]),
        .I5(p_1_out[2]),
        .O(\grid_accumulators[0,3][11]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][11]_i_37 
       (.I0(\grid_accumulators_reg[7,_n_0_2][10] ),
        .I1(\grid_accumulators_reg[6,2] [10]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[5,2] [10]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[4,2] [10]),
        .O(\grid_accumulators[0,3][11]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][11]_i_38 
       (.I0(\grid_accumulators_reg[3,1] [9]),
        .I1(\grid_accumulators_reg[2,1] [9]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[1,1] [9]),
        .I4(curr_row[0]),
        .I5(p_2_out[1]),
        .O(\grid_accumulators[0,3][11]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][11]_i_39 
       (.I0(\grid_accumulators_reg[7,_n_0_1][9] ),
        .I1(\grid_accumulators_reg[6,1] [9]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[5,1] [9]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[4,1] [9]),
        .O(\grid_accumulators[0,3][11]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \grid_accumulators[0,3][11]_i_4 
       (.I0(\grid_accumulators[0,1]__111 [9]),
        .I1(\grid_accumulators[0,0]__226 [9]),
        .I2(\grid_accumulators[0,3]__111 [9]),
        .I3(curr_col[1]),
        .I4(curr_col[0]),
        .I5(\grid_accumulators[0,2]__111 [9]),
        .O(\grid_accumulators[0,0] [9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][11]_i_40 
       (.I0(\grid_accumulators_reg[3,0] [9]),
        .I1(\grid_accumulators_reg[2,0] [9]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[1,0] [9]),
        .I4(curr_row[0]),
        .I5(p_3_out[1]),
        .O(\grid_accumulators[0,3][11]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][11]_i_41 
       (.I0(\grid_accumulators_reg[7,_n_0_0][9] ),
        .I1(\grid_accumulators_reg[6,0] [9]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[5,0] [9]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[4,0] [9]),
        .O(\grid_accumulators[0,3][11]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][11]_i_42 
       (.I0(\grid_accumulators_reg[3,3] [9]),
        .I1(\grid_accumulators_reg[2,3] [9]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[1,3] [9]),
        .I4(curr_row[0]),
        .I5(p_0_out[1]),
        .O(\grid_accumulators[0,3][11]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][11]_i_43 
       (.I0(\grid_accumulators_reg[7,_n_0_3][9] ),
        .I1(\grid_accumulators_reg[6,3] [9]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[5,3] [9]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[4,3] [9]),
        .O(\grid_accumulators[0,3][11]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][11]_i_44 
       (.I0(\grid_accumulators_reg[3,2] [9]),
        .I1(\grid_accumulators_reg[2,2] [9]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[1,2] [9]),
        .I4(curr_row[0]),
        .I5(p_1_out[1]),
        .O(\grid_accumulators[0,3][11]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][11]_i_45 
       (.I0(\grid_accumulators_reg[7,_n_0_2][9] ),
        .I1(\grid_accumulators_reg[6,2] [9]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[5,2] [9]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[4,2] [9]),
        .O(\grid_accumulators[0,3][11]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][11]_i_46 
       (.I0(\grid_accumulators_reg[3,1] [8]),
        .I1(\grid_accumulators_reg[2,1] [8]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[1,1] [8]),
        .I4(curr_row[0]),
        .I5(p_2_out[0]),
        .O(\grid_accumulators[0,3][11]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][11]_i_47 
       (.I0(\grid_accumulators_reg[7,_n_0_1][8] ),
        .I1(\grid_accumulators_reg[6,1] [8]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[5,1] [8]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[4,1] [8]),
        .O(\grid_accumulators[0,3][11]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][11]_i_48 
       (.I0(\grid_accumulators_reg[3,0] [8]),
        .I1(\grid_accumulators_reg[2,0] [8]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[1,0] [8]),
        .I4(curr_row[0]),
        .I5(p_3_out[0]),
        .O(\grid_accumulators[0,3][11]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][11]_i_49 
       (.I0(\grid_accumulators_reg[7,_n_0_0][8] ),
        .I1(\grid_accumulators_reg[6,0] [8]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[5,0] [8]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[4,0] [8]),
        .O(\grid_accumulators[0,3][11]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \grid_accumulators[0,3][11]_i_5 
       (.I0(\grid_accumulators[0,1]__111 [8]),
        .I1(\grid_accumulators[0,0]__226 [8]),
        .I2(\grid_accumulators[0,3]__111 [8]),
        .I3(curr_col[1]),
        .I4(curr_col[0]),
        .I5(\grid_accumulators[0,2]__111 [8]),
        .O(\grid_accumulators[0,0] [8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][11]_i_50 
       (.I0(\grid_accumulators_reg[3,3] [8]),
        .I1(\grid_accumulators_reg[2,3] [8]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[1,3] [8]),
        .I4(curr_row[0]),
        .I5(p_0_out[0]),
        .O(\grid_accumulators[0,3][11]_i_50_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][11]_i_51 
       (.I0(\grid_accumulators_reg[7,_n_0_3][8] ),
        .I1(\grid_accumulators_reg[6,3] [8]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[5,3] [8]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[4,3] [8]),
        .O(\grid_accumulators[0,3][11]_i_51_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][11]_i_52 
       (.I0(\grid_accumulators_reg[3,2] [8]),
        .I1(\grid_accumulators_reg[2,2] [8]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[1,2] [8]),
        .I4(curr_row[0]),
        .I5(p_1_out[0]),
        .O(\grid_accumulators[0,3][11]_i_52_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][11]_i_53 
       (.I0(\grid_accumulators_reg[7,_n_0_2][8] ),
        .I1(\grid_accumulators_reg[6,2] [8]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[5,2] [8]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[4,2] [8]),
        .O(\grid_accumulators[0,3][11]_i_53_n_0 ));
  LUT3 #(
    .INIT(8'hF2)) 
    \grid_accumulators[0,3][15]_i_1 
       (.I0(vsync_in),
        .I1(vsync_prev),
        .I2(rst),
        .O(\grid_accumulators[7,3] ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \grid_accumulators[0,3][15]_i_2 
       (.I0(\grid_accumulators[0,0]1__1 ),
        .I1(curr_row[0]),
        .I2(curr_col[1]),
        .I3(curr_col[0]),
        .I4(curr_row[1]),
        .I5(curr_row[2]),
        .O(\grid_accumulators[0,3][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][15]_i_25 
       (.I0(\grid_accumulators_reg[3,1] [15]),
        .I1(\grid_accumulators_reg[2,1] [15]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[1,1] [15]),
        .I4(curr_row[0]),
        .I5(p_2_out[7]),
        .O(\grid_accumulators[0,3][15]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][15]_i_26 
       (.I0(\grid_accumulators_reg[7,_n_0_1][15] ),
        .I1(\grid_accumulators_reg[6,1] [15]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[5,1] [15]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[4,1] [15]),
        .O(\grid_accumulators[0,3][15]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][15]_i_27 
       (.I0(\grid_accumulators_reg[3,0] [15]),
        .I1(\grid_accumulators_reg[2,0] [15]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[1,0] [15]),
        .I4(curr_row[0]),
        .I5(p_3_out[7]),
        .O(\grid_accumulators[0,3][15]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][15]_i_28 
       (.I0(\grid_accumulators_reg[7,_n_0_0][15] ),
        .I1(\grid_accumulators_reg[6,0] [15]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[5,0] [15]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[4,0] [15]),
        .O(\grid_accumulators[0,3][15]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][15]_i_29 
       (.I0(\grid_accumulators_reg[3,3] [15]),
        .I1(\grid_accumulators_reg[2,3] [15]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[1,3] [15]),
        .I4(curr_row[0]),
        .I5(p_0_out[7]),
        .O(\grid_accumulators[0,3][15]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][15]_i_30 
       (.I0(\grid_accumulators_reg[7,_n_0_3][15] ),
        .I1(\grid_accumulators_reg[6,3] [15]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[5,3] [15]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[4,3] [15]),
        .O(\grid_accumulators[0,3][15]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][15]_i_31 
       (.I0(\grid_accumulators_reg[3,2] [15]),
        .I1(\grid_accumulators_reg[2,2] [15]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[1,2] [15]),
        .I4(curr_row[0]),
        .I5(p_1_out[7]),
        .O(\grid_accumulators[0,3][15]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][15]_i_32 
       (.I0(\grid_accumulators_reg[7,_n_0_2][15] ),
        .I1(\grid_accumulators_reg[6,2] [15]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[5,2] [15]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[4,2] [15]),
        .O(\grid_accumulators[0,3][15]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][15]_i_33 
       (.I0(\grid_accumulators_reg[3,1] [14]),
        .I1(\grid_accumulators_reg[2,1] [14]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[1,1] [14]),
        .I4(curr_row[0]),
        .I5(p_2_out[6]),
        .O(\grid_accumulators[0,3][15]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][15]_i_34 
       (.I0(\grid_accumulators_reg[7,_n_0_1][14] ),
        .I1(\grid_accumulators_reg[6,1] [14]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[5,1] [14]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[4,1] [14]),
        .O(\grid_accumulators[0,3][15]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][15]_i_35 
       (.I0(\grid_accumulators_reg[3,0] [14]),
        .I1(\grid_accumulators_reg[2,0] [14]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[1,0] [14]),
        .I4(curr_row[0]),
        .I5(p_3_out[6]),
        .O(\grid_accumulators[0,3][15]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][15]_i_36 
       (.I0(\grid_accumulators_reg[7,_n_0_0][14] ),
        .I1(\grid_accumulators_reg[6,0] [14]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[5,0] [14]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[4,0] [14]),
        .O(\grid_accumulators[0,3][15]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][15]_i_37 
       (.I0(\grid_accumulators_reg[3,3] [14]),
        .I1(\grid_accumulators_reg[2,3] [14]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[1,3] [14]),
        .I4(curr_row[0]),
        .I5(p_0_out[6]),
        .O(\grid_accumulators[0,3][15]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][15]_i_38 
       (.I0(\grid_accumulators_reg[7,_n_0_3][14] ),
        .I1(\grid_accumulators_reg[6,3] [14]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[5,3] [14]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[4,3] [14]),
        .O(\grid_accumulators[0,3][15]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][15]_i_39 
       (.I0(\grid_accumulators_reg[3,2] [14]),
        .I1(\grid_accumulators_reg[2,2] [14]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[1,2] [14]),
        .I4(curr_row[0]),
        .I5(p_1_out[6]),
        .O(\grid_accumulators[0,3][15]_i_39_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \grid_accumulators[0,3][15]_i_4 
       (.I0(vde_in),
        .I1(inside_grid_v_reg_n_0),
        .I2(inside_grid_h_reg_n_0),
        .O(\grid_accumulators[0,0]1__1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][15]_i_40 
       (.I0(\grid_accumulators_reg[7,_n_0_2][14] ),
        .I1(\grid_accumulators_reg[6,2] [14]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[5,2] [14]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[4,2] [14]),
        .O(\grid_accumulators[0,3][15]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][15]_i_41 
       (.I0(\grid_accumulators_reg[3,1] [13]),
        .I1(\grid_accumulators_reg[2,1] [13]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[1,1] [13]),
        .I4(curr_row[0]),
        .I5(p_2_out[5]),
        .O(\grid_accumulators[0,3][15]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][15]_i_42 
       (.I0(\grid_accumulators_reg[7,_n_0_1][13] ),
        .I1(\grid_accumulators_reg[6,1] [13]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[5,1] [13]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[4,1] [13]),
        .O(\grid_accumulators[0,3][15]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][15]_i_43 
       (.I0(\grid_accumulators_reg[3,0] [13]),
        .I1(\grid_accumulators_reg[2,0] [13]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[1,0] [13]),
        .I4(curr_row[0]),
        .I5(p_3_out[5]),
        .O(\grid_accumulators[0,3][15]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][15]_i_44 
       (.I0(\grid_accumulators_reg[7,_n_0_0][13] ),
        .I1(\grid_accumulators_reg[6,0] [13]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[5,0] [13]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[4,0] [13]),
        .O(\grid_accumulators[0,3][15]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][15]_i_45 
       (.I0(\grid_accumulators_reg[3,3] [13]),
        .I1(\grid_accumulators_reg[2,3] [13]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[1,3] [13]),
        .I4(curr_row[0]),
        .I5(p_0_out[5]),
        .O(\grid_accumulators[0,3][15]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][15]_i_46 
       (.I0(\grid_accumulators_reg[7,_n_0_3][13] ),
        .I1(\grid_accumulators_reg[6,3] [13]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[5,3] [13]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[4,3] [13]),
        .O(\grid_accumulators[0,3][15]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][15]_i_47 
       (.I0(\grid_accumulators_reg[3,2] [13]),
        .I1(\grid_accumulators_reg[2,2] [13]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[1,2] [13]),
        .I4(curr_row[0]),
        .I5(p_1_out[5]),
        .O(\grid_accumulators[0,3][15]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][15]_i_48 
       (.I0(\grid_accumulators_reg[7,_n_0_2][13] ),
        .I1(\grid_accumulators_reg[6,2] [13]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[5,2] [13]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[4,2] [13]),
        .O(\grid_accumulators[0,3][15]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][15]_i_49 
       (.I0(\grid_accumulators_reg[3,1] [12]),
        .I1(\grid_accumulators_reg[2,1] [12]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[1,1] [12]),
        .I4(curr_row[0]),
        .I5(p_2_out[4]),
        .O(\grid_accumulators[0,3][15]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \grid_accumulators[0,3][15]_i_5 
       (.I0(\grid_accumulators[0,1]__111 [15]),
        .I1(\grid_accumulators[0,0]__226 [15]),
        .I2(\grid_accumulators[0,3]__111 [15]),
        .I3(curr_col[1]),
        .I4(curr_col[0]),
        .I5(\grid_accumulators[0,2]__111 [15]),
        .O(\grid_accumulators[0,0] [15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][15]_i_50 
       (.I0(\grid_accumulators_reg[7,_n_0_1][12] ),
        .I1(\grid_accumulators_reg[6,1] [12]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[5,1] [12]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[4,1] [12]),
        .O(\grid_accumulators[0,3][15]_i_50_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][15]_i_51 
       (.I0(\grid_accumulators_reg[3,0] [12]),
        .I1(\grid_accumulators_reg[2,0] [12]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[1,0] [12]),
        .I4(curr_row[0]),
        .I5(p_3_out[4]),
        .O(\grid_accumulators[0,3][15]_i_51_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][15]_i_52 
       (.I0(\grid_accumulators_reg[7,_n_0_0][12] ),
        .I1(\grid_accumulators_reg[6,0] [12]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[5,0] [12]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[4,0] [12]),
        .O(\grid_accumulators[0,3][15]_i_52_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][15]_i_53 
       (.I0(\grid_accumulators_reg[3,3] [12]),
        .I1(\grid_accumulators_reg[2,3] [12]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[1,3] [12]),
        .I4(curr_row[0]),
        .I5(p_0_out[4]),
        .O(\grid_accumulators[0,3][15]_i_53_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][15]_i_54 
       (.I0(\grid_accumulators_reg[7,_n_0_3][12] ),
        .I1(\grid_accumulators_reg[6,3] [12]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[5,3] [12]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[4,3] [12]),
        .O(\grid_accumulators[0,3][15]_i_54_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][15]_i_55 
       (.I0(\grid_accumulators_reg[3,2] [12]),
        .I1(\grid_accumulators_reg[2,2] [12]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[1,2] [12]),
        .I4(curr_row[0]),
        .I5(p_1_out[4]),
        .O(\grid_accumulators[0,3][15]_i_55_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][15]_i_56 
       (.I0(\grid_accumulators_reg[7,_n_0_2][12] ),
        .I1(\grid_accumulators_reg[6,2] [12]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[5,2] [12]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[4,2] [12]),
        .O(\grid_accumulators[0,3][15]_i_56_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \grid_accumulators[0,3][15]_i_6 
       (.I0(\grid_accumulators[0,1]__111 [14]),
        .I1(\grid_accumulators[0,0]__226 [14]),
        .I2(\grid_accumulators[0,3]__111 [14]),
        .I3(curr_col[1]),
        .I4(curr_col[0]),
        .I5(\grid_accumulators[0,2]__111 [14]),
        .O(\grid_accumulators[0,0] [14]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \grid_accumulators[0,3][15]_i_7 
       (.I0(\grid_accumulators[0,1]__111 [13]),
        .I1(\grid_accumulators[0,0]__226 [13]),
        .I2(\grid_accumulators[0,3]__111 [13]),
        .I3(curr_col[1]),
        .I4(curr_col[0]),
        .I5(\grid_accumulators[0,2]__111 [13]),
        .O(\grid_accumulators[0,0] [13]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \grid_accumulators[0,3][15]_i_8 
       (.I0(\grid_accumulators[0,1]__111 [12]),
        .I1(\grid_accumulators[0,0]__226 [12]),
        .I2(\grid_accumulators[0,3]__111 [12]),
        .I3(curr_col[1]),
        .I4(curr_col[0]),
        .I5(\grid_accumulators[0,2]__111 [12]),
        .O(\grid_accumulators[0,0] [12]));
  LUT5 #(
    .INIT(32'h00E20000)) 
    \grid_accumulators[0,3][3]_i_10 
       (.I0(\grid_accumulators[0,3][3]_i_30_n_0 ),
        .I1(curr_row[2]),
        .I2(\grid_accumulators[0,3][3]_i_31_n_0 ),
        .I3(curr_col[0]),
        .I4(curr_col[1]),
        .O(\grid_accumulators[0,3][3]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \grid_accumulators[0,3][3]_i_12 
       (.I0(\grid_accumulators[0,3][3]_i_34_n_0 ),
        .I1(curr_row[2]),
        .I2(\grid_accumulators[0,3][3]_i_35_n_0 ),
        .I3(curr_col[1]),
        .I4(curr_col[0]),
        .O(\grid_accumulators[0,3][3]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h00E20000)) 
    \grid_accumulators[0,3][3]_i_13 
       (.I0(\grid_accumulators[0,3][3]_i_36_n_0 ),
        .I1(curr_row[2]),
        .I2(\grid_accumulators[0,3][3]_i_37_n_0 ),
        .I3(curr_col[1]),
        .I4(curr_col[0]),
        .O(\grid_accumulators[0,3][3]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h00E20000)) 
    \grid_accumulators[0,3][3]_i_14 
       (.I0(\grid_accumulators[0,3][3]_i_38_n_0 ),
        .I1(curr_row[2]),
        .I2(\grid_accumulators[0,3][3]_i_39_n_0 ),
        .I3(curr_col[0]),
        .I4(curr_col[1]),
        .O(\grid_accumulators[0,3][3]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \grid_accumulators[0,3][3]_i_16 
       (.I0(\grid_accumulators[0,3][3]_i_42_n_0 ),
        .I1(curr_row[2]),
        .I2(\grid_accumulators[0,3][3]_i_43_n_0 ),
        .I3(curr_col[1]),
        .I4(curr_col[0]),
        .O(\grid_accumulators[0,3][3]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h00E20000)) 
    \grid_accumulators[0,3][3]_i_17 
       (.I0(\grid_accumulators[0,3][3]_i_44_n_0 ),
        .I1(curr_row[2]),
        .I2(\grid_accumulators[0,3][3]_i_45_n_0 ),
        .I3(curr_col[1]),
        .I4(curr_col[0]),
        .O(\grid_accumulators[0,3][3]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00E20000)) 
    \grid_accumulators[0,3][3]_i_18 
       (.I0(\grid_accumulators[0,3][3]_i_46_n_0 ),
        .I1(curr_row[2]),
        .I2(\grid_accumulators[0,3][3]_i_47_n_0 ),
        .I3(curr_col[0]),
        .I4(curr_col[1]),
        .O(\grid_accumulators[0,3][3]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h00000015FFFFFFEA)) 
    \grid_accumulators[0,3][3]_i_2 
       (.I0(\grid_accumulators[0,3][3]_i_6_n_0 ),
        .I1(\grid_accumulators[0,3][7]_i_7_n_0 ),
        .I2(\grid_accumulators[0,3]__111 [3]),
        .I3(\grid_accumulators[0,3][3]_i_8_n_0 ),
        .I4(\grid_accumulators[0,3][3]_i_9_n_0 ),
        .I5(p_0_in__1[3]),
        .O(\grid_accumulators[0,3][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \grid_accumulators[0,3][3]_i_20 
       (.I0(\grid_accumulators[0,3][3]_i_50_n_0 ),
        .I1(curr_row[2]),
        .I2(\grid_accumulators[0,3][3]_i_51_n_0 ),
        .I3(curr_col[1]),
        .I4(curr_col[0]),
        .O(\grid_accumulators[0,3][3]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'h00E20000)) 
    \grid_accumulators[0,3][3]_i_21 
       (.I0(\grid_accumulators[0,3][3]_i_52_n_0 ),
        .I1(curr_row[2]),
        .I2(\grid_accumulators[0,3][3]_i_53_n_0 ),
        .I3(curr_col[1]),
        .I4(curr_col[0]),
        .O(\grid_accumulators[0,3][3]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][3]_i_22 
       (.I0(\grid_accumulators_reg[3,2] [3]),
        .I1(\grid_accumulators_reg[2,2] [3]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[1,2] [3]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[0,_n_0_2][3] ),
        .O(\grid_accumulators[0,3][3]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][3]_i_23 
       (.I0(\grid_accumulators_reg[7,_n_0_2][3] ),
        .I1(\grid_accumulators_reg[6,2] [3]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[5,2] [3]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[4,2] [3]),
        .O(\grid_accumulators[0,3][3]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][3]_i_24 
       (.I0(\grid_accumulators_reg[3,3] [3]),
        .I1(\grid_accumulators_reg[2,3] [3]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[1,3] [3]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[0,_n_0_3][3] ),
        .O(\grid_accumulators[0,3][3]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][3]_i_25 
       (.I0(\grid_accumulators_reg[7,_n_0_3][3] ),
        .I1(\grid_accumulators_reg[6,3] [3]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[5,3] [3]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[4,3] [3]),
        .O(\grid_accumulators[0,3][3]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][3]_i_26 
       (.I0(\grid_accumulators_reg[3,0] [3]),
        .I1(\grid_accumulators_reg[2,0] [3]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[1,0] [3]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[0,_n_0_0][3] ),
        .O(\grid_accumulators[0,3][3]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][3]_i_27 
       (.I0(\grid_accumulators_reg[7,_n_0_0][3] ),
        .I1(\grid_accumulators_reg[6,0] [3]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[5,0] [3]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[4,0] [3]),
        .O(\grid_accumulators[0,3][3]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][3]_i_28 
       (.I0(\grid_accumulators_reg[3,1] [3]),
        .I1(\grid_accumulators_reg[2,1] [3]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[1,1] [3]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[0,_n_0_1][3] ),
        .O(\grid_accumulators[0,3][3]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][3]_i_29 
       (.I0(\grid_accumulators_reg[7,_n_0_1][3] ),
        .I1(\grid_accumulators_reg[6,1] [3]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[5,1] [3]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[4,1] [3]),
        .O(\grid_accumulators[0,3][3]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h00000015FFFFFFEA)) 
    \grid_accumulators[0,3][3]_i_3 
       (.I0(\grid_accumulators[0,3][3]_i_10_n_0 ),
        .I1(\grid_accumulators[0,3][7]_i_7_n_0 ),
        .I2(\grid_accumulators[0,3]__111 [2]),
        .I3(\grid_accumulators[0,3][3]_i_12_n_0 ),
        .I4(\grid_accumulators[0,3][3]_i_13_n_0 ),
        .I5(p_0_in__1[2]),
        .O(\grid_accumulators[0,3][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][3]_i_30 
       (.I0(\grid_accumulators_reg[3,2] [2]),
        .I1(\grid_accumulators_reg[2,2] [2]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[1,2] [2]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[0,_n_0_2][2] ),
        .O(\grid_accumulators[0,3][3]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][3]_i_31 
       (.I0(\grid_accumulators_reg[7,_n_0_2][2] ),
        .I1(\grid_accumulators_reg[6,2] [2]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[5,2] [2]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[4,2] [2]),
        .O(\grid_accumulators[0,3][3]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][3]_i_32 
       (.I0(\grid_accumulators_reg[3,3] [2]),
        .I1(\grid_accumulators_reg[2,3] [2]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[1,3] [2]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[0,_n_0_3][2] ),
        .O(\grid_accumulators[0,3][3]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][3]_i_33 
       (.I0(\grid_accumulators_reg[7,_n_0_3][2] ),
        .I1(\grid_accumulators_reg[6,3] [2]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[5,3] [2]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[4,3] [2]),
        .O(\grid_accumulators[0,3][3]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][3]_i_34 
       (.I0(\grid_accumulators_reg[3,0] [2]),
        .I1(\grid_accumulators_reg[2,0] [2]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[1,0] [2]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[0,_n_0_0][2] ),
        .O(\grid_accumulators[0,3][3]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][3]_i_35 
       (.I0(\grid_accumulators_reg[7,_n_0_0][2] ),
        .I1(\grid_accumulators_reg[6,0] [2]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[5,0] [2]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[4,0] [2]),
        .O(\grid_accumulators[0,3][3]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][3]_i_36 
       (.I0(\grid_accumulators_reg[3,1] [2]),
        .I1(\grid_accumulators_reg[2,1] [2]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[1,1] [2]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[0,_n_0_1][2] ),
        .O(\grid_accumulators[0,3][3]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][3]_i_37 
       (.I0(\grid_accumulators_reg[7,_n_0_1][2] ),
        .I1(\grid_accumulators_reg[6,1] [2]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[5,1] [2]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[4,1] [2]),
        .O(\grid_accumulators[0,3][3]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][3]_i_38 
       (.I0(\grid_accumulators_reg[3,2] [1]),
        .I1(\grid_accumulators_reg[2,2] [1]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[1,2] [1]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[0,_n_0_2][1] ),
        .O(\grid_accumulators[0,3][3]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][3]_i_39 
       (.I0(\grid_accumulators_reg[7,_n_0_2][1] ),
        .I1(\grid_accumulators_reg[6,2] [1]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[5,2] [1]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[4,2] [1]),
        .O(\grid_accumulators[0,3][3]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h00000015FFFFFFEA)) 
    \grid_accumulators[0,3][3]_i_4 
       (.I0(\grid_accumulators[0,3][3]_i_14_n_0 ),
        .I1(\grid_accumulators[0,3][7]_i_7_n_0 ),
        .I2(\grid_accumulators[0,3]__111 [1]),
        .I3(\grid_accumulators[0,3][3]_i_16_n_0 ),
        .I4(\grid_accumulators[0,3][3]_i_17_n_0 ),
        .I5(p_0_in__1[1]),
        .O(\grid_accumulators[0,3][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][3]_i_40 
       (.I0(\grid_accumulators_reg[3,3] [1]),
        .I1(\grid_accumulators_reg[2,3] [1]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[1,3] [1]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[0,_n_0_3][1] ),
        .O(\grid_accumulators[0,3][3]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][3]_i_41 
       (.I0(\grid_accumulators_reg[7,_n_0_3][1] ),
        .I1(\grid_accumulators_reg[6,3] [1]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[5,3] [1]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[4,3] [1]),
        .O(\grid_accumulators[0,3][3]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][3]_i_42 
       (.I0(\grid_accumulators_reg[3,0] [1]),
        .I1(\grid_accumulators_reg[2,0] [1]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[1,0] [1]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[0,_n_0_0][1] ),
        .O(\grid_accumulators[0,3][3]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][3]_i_43 
       (.I0(\grid_accumulators_reg[7,_n_0_0][1] ),
        .I1(\grid_accumulators_reg[6,0] [1]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[5,0] [1]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[4,0] [1]),
        .O(\grid_accumulators[0,3][3]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][3]_i_44 
       (.I0(\grid_accumulators_reg[3,1] [1]),
        .I1(\grid_accumulators_reg[2,1] [1]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[1,1] [1]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[0,_n_0_1][1] ),
        .O(\grid_accumulators[0,3][3]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][3]_i_45 
       (.I0(\grid_accumulators_reg[7,_n_0_1][1] ),
        .I1(\grid_accumulators_reg[6,1] [1]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[5,1] [1]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[4,1] [1]),
        .O(\grid_accumulators[0,3][3]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][3]_i_46 
       (.I0(\grid_accumulators_reg[3,2] [0]),
        .I1(\grid_accumulators_reg[2,2] [0]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[1,2] [0]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[0,_n_0_2][0] ),
        .O(\grid_accumulators[0,3][3]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][3]_i_47 
       (.I0(\grid_accumulators_reg[7,_n_0_2][0] ),
        .I1(\grid_accumulators_reg[6,2] [0]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[5,2] [0]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[4,2] [0]),
        .O(\grid_accumulators[0,3][3]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][3]_i_48 
       (.I0(\grid_accumulators_reg[3,3] [0]),
        .I1(\grid_accumulators_reg[2,3] [0]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[1,3] [0]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[0,_n_0_3][0] ),
        .O(\grid_accumulators[0,3][3]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][3]_i_49 
       (.I0(\grid_accumulators_reg[7,_n_0_3][0] ),
        .I1(\grid_accumulators_reg[6,3] [0]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[5,3] [0]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[4,3] [0]),
        .O(\grid_accumulators[0,3][3]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h00000015FFFFFFEA)) 
    \grid_accumulators[0,3][3]_i_5 
       (.I0(\grid_accumulators[0,3][3]_i_18_n_0 ),
        .I1(\grid_accumulators[0,3][7]_i_7_n_0 ),
        .I2(\grid_accumulators[0,3]__111 [0]),
        .I3(\grid_accumulators[0,3][3]_i_20_n_0 ),
        .I4(\grid_accumulators[0,3][3]_i_21_n_0 ),
        .I5(p_0_in__1[0]),
        .O(\grid_accumulators[0,3][3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][3]_i_50 
       (.I0(\grid_accumulators_reg[3,0] [0]),
        .I1(\grid_accumulators_reg[2,0] [0]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[1,0] [0]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[0,_n_0_0][0] ),
        .O(\grid_accumulators[0,3][3]_i_50_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][3]_i_51 
       (.I0(\grid_accumulators_reg[7,_n_0_0][0] ),
        .I1(\grid_accumulators_reg[6,0] [0]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[5,0] [0]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[4,0] [0]),
        .O(\grid_accumulators[0,3][3]_i_51_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][3]_i_52 
       (.I0(\grid_accumulators_reg[3,1] [0]),
        .I1(\grid_accumulators_reg[2,1] [0]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[1,1] [0]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[0,_n_0_1][0] ),
        .O(\grid_accumulators[0,3][3]_i_52_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][3]_i_53 
       (.I0(\grid_accumulators_reg[7,_n_0_1][0] ),
        .I1(\grid_accumulators_reg[6,1] [0]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[5,1] [0]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[4,1] [0]),
        .O(\grid_accumulators[0,3][3]_i_53_n_0 ));
  LUT5 #(
    .INIT(32'h00E20000)) 
    \grid_accumulators[0,3][3]_i_6 
       (.I0(\grid_accumulators[0,3][3]_i_22_n_0 ),
        .I1(curr_row[2]),
        .I2(\grid_accumulators[0,3][3]_i_23_n_0 ),
        .I3(curr_col[0]),
        .I4(curr_col[1]),
        .O(\grid_accumulators[0,3][3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \grid_accumulators[0,3][3]_i_8 
       (.I0(\grid_accumulators[0,3][3]_i_26_n_0 ),
        .I1(curr_row[2]),
        .I2(\grid_accumulators[0,3][3]_i_27_n_0 ),
        .I3(curr_col[1]),
        .I4(curr_col[0]),
        .O(\grid_accumulators[0,3][3]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h00E20000)) 
    \grid_accumulators[0,3][3]_i_9 
       (.I0(\grid_accumulators[0,3][3]_i_28_n_0 ),
        .I1(curr_row[2]),
        .I2(\grid_accumulators[0,3][3]_i_29_n_0 ),
        .I3(curr_col[1]),
        .I4(curr_col[0]),
        .O(\grid_accumulators[0,3][3]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h00E20000)) 
    \grid_accumulators[0,3][7]_i_10 
       (.I0(\grid_accumulators[0,3][7]_i_29_n_0 ),
        .I1(curr_row[2]),
        .I2(\grid_accumulators[0,3][7]_i_30_n_0 ),
        .I3(curr_col[1]),
        .I4(curr_col[0]),
        .O(\grid_accumulators[0,3][7]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h00E20000)) 
    \grid_accumulators[0,3][7]_i_11 
       (.I0(\grid_accumulators[0,3][7]_i_31_n_0 ),
        .I1(curr_row[2]),
        .I2(\grid_accumulators[0,3][7]_i_32_n_0 ),
        .I3(curr_col[0]),
        .I4(curr_col[1]),
        .O(\grid_accumulators[0,3][7]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \grid_accumulators[0,3][7]_i_13 
       (.I0(\grid_accumulators[0,3][7]_i_35_n_0 ),
        .I1(curr_row[2]),
        .I2(\grid_accumulators[0,3][7]_i_36_n_0 ),
        .I3(curr_col[1]),
        .I4(curr_col[0]),
        .O(\grid_accumulators[0,3][7]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h00E20000)) 
    \grid_accumulators[0,3][7]_i_14 
       (.I0(\grid_accumulators[0,3][7]_i_37_n_0 ),
        .I1(curr_row[2]),
        .I2(\grid_accumulators[0,3][7]_i_38_n_0 ),
        .I3(curr_col[1]),
        .I4(curr_col[0]),
        .O(\grid_accumulators[0,3][7]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h00E20000)) 
    \grid_accumulators[0,3][7]_i_15 
       (.I0(\grid_accumulators[0,3][7]_i_39_n_0 ),
        .I1(curr_row[2]),
        .I2(\grid_accumulators[0,3][7]_i_40_n_0 ),
        .I3(curr_col[0]),
        .I4(curr_col[1]),
        .O(\grid_accumulators[0,3][7]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \grid_accumulators[0,3][7]_i_17 
       (.I0(\grid_accumulators[0,3][7]_i_43_n_0 ),
        .I1(curr_row[2]),
        .I2(\grid_accumulators[0,3][7]_i_44_n_0 ),
        .I3(curr_col[1]),
        .I4(curr_col[0]),
        .O(\grid_accumulators[0,3][7]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h00E20000)) 
    \grid_accumulators[0,3][7]_i_18 
       (.I0(\grid_accumulators[0,3][7]_i_45_n_0 ),
        .I1(curr_row[2]),
        .I2(\grid_accumulators[0,3][7]_i_46_n_0 ),
        .I3(curr_col[1]),
        .I4(curr_col[0]),
        .O(\grid_accumulators[0,3][7]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'h00E20000)) 
    \grid_accumulators[0,3][7]_i_19 
       (.I0(\grid_accumulators[0,3][7]_i_47_n_0 ),
        .I1(curr_row[2]),
        .I2(\grid_accumulators[0,3][7]_i_48_n_0 ),
        .I3(curr_col[0]),
        .I4(curr_col[1]),
        .O(\grid_accumulators[0,3][7]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h00000015FFFFFFEA)) 
    \grid_accumulators[0,3][7]_i_2 
       (.I0(\grid_accumulators[0,3][7]_i_6_n_0 ),
        .I1(\grid_accumulators[0,3][7]_i_7_n_0 ),
        .I2(\grid_accumulators[0,3]__111 [7]),
        .I3(\grid_accumulators[0,3][7]_i_9_n_0 ),
        .I4(\grid_accumulators[0,3][7]_i_10_n_0 ),
        .I5(p_0_in__1[7]),
        .O(\grid_accumulators[0,3][7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \grid_accumulators[0,3][7]_i_21 
       (.I0(\grid_accumulators[0,3][7]_i_51_n_0 ),
        .I1(curr_row[2]),
        .I2(\grid_accumulators[0,3][7]_i_52_n_0 ),
        .I3(curr_col[1]),
        .I4(curr_col[0]),
        .O(\grid_accumulators[0,3][7]_i_21_n_0 ));
  LUT5 #(
    .INIT(32'h00E20000)) 
    \grid_accumulators[0,3][7]_i_22 
       (.I0(\grid_accumulators[0,3][7]_i_53_n_0 ),
        .I1(curr_row[2]),
        .I2(\grid_accumulators[0,3][7]_i_54_n_0 ),
        .I3(curr_col[1]),
        .I4(curr_col[0]),
        .O(\grid_accumulators[0,3][7]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][7]_i_23 
       (.I0(\grid_accumulators_reg[3,2] [7]),
        .I1(\grid_accumulators_reg[2,2] [7]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[1,2] [7]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[0,_n_0_2][7] ),
        .O(\grid_accumulators[0,3][7]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][7]_i_24 
       (.I0(\grid_accumulators_reg[7,_n_0_2][7] ),
        .I1(\grid_accumulators_reg[6,2] [7]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[5,2] [7]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[4,2] [7]),
        .O(\grid_accumulators[0,3][7]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][7]_i_25 
       (.I0(\grid_accumulators_reg[3,3] [7]),
        .I1(\grid_accumulators_reg[2,3] [7]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[1,3] [7]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[0,_n_0_3][7] ),
        .O(\grid_accumulators[0,3][7]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][7]_i_26 
       (.I0(\grid_accumulators_reg[7,_n_0_3][7] ),
        .I1(\grid_accumulators_reg[6,3] [7]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[5,3] [7]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[4,3] [7]),
        .O(\grid_accumulators[0,3][7]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][7]_i_27 
       (.I0(\grid_accumulators_reg[3,0] [7]),
        .I1(\grid_accumulators_reg[2,0] [7]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[1,0] [7]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[0,_n_0_0][7] ),
        .O(\grid_accumulators[0,3][7]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][7]_i_28 
       (.I0(\grid_accumulators_reg[7,_n_0_0][7] ),
        .I1(\grid_accumulators_reg[6,0] [7]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[5,0] [7]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[4,0] [7]),
        .O(\grid_accumulators[0,3][7]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][7]_i_29 
       (.I0(\grid_accumulators_reg[3,1] [7]),
        .I1(\grid_accumulators_reg[2,1] [7]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[1,1] [7]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[0,_n_0_1][7] ),
        .O(\grid_accumulators[0,3][7]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h00000015FFFFFFEA)) 
    \grid_accumulators[0,3][7]_i_3 
       (.I0(\grid_accumulators[0,3][7]_i_11_n_0 ),
        .I1(\grid_accumulators[0,3][7]_i_7_n_0 ),
        .I2(\grid_accumulators[0,3]__111 [6]),
        .I3(\grid_accumulators[0,3][7]_i_13_n_0 ),
        .I4(\grid_accumulators[0,3][7]_i_14_n_0 ),
        .I5(p_0_in__1[6]),
        .O(\grid_accumulators[0,3][7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][7]_i_30 
       (.I0(\grid_accumulators_reg[7,_n_0_1][7] ),
        .I1(\grid_accumulators_reg[6,1] [7]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[5,1] [7]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[4,1] [7]),
        .O(\grid_accumulators[0,3][7]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][7]_i_31 
       (.I0(\grid_accumulators_reg[3,2] [6]),
        .I1(\grid_accumulators_reg[2,2] [6]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[1,2] [6]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[0,_n_0_2][6] ),
        .O(\grid_accumulators[0,3][7]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][7]_i_32 
       (.I0(\grid_accumulators_reg[7,_n_0_2][6] ),
        .I1(\grid_accumulators_reg[6,2] [6]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[5,2] [6]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[4,2] [6]),
        .O(\grid_accumulators[0,3][7]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][7]_i_33 
       (.I0(\grid_accumulators_reg[3,3] [6]),
        .I1(\grid_accumulators_reg[2,3] [6]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[1,3] [6]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[0,_n_0_3][6] ),
        .O(\grid_accumulators[0,3][7]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][7]_i_34 
       (.I0(\grid_accumulators_reg[7,_n_0_3][6] ),
        .I1(\grid_accumulators_reg[6,3] [6]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[5,3] [6]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[4,3] [6]),
        .O(\grid_accumulators[0,3][7]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][7]_i_35 
       (.I0(\grid_accumulators_reg[3,0] [6]),
        .I1(\grid_accumulators_reg[2,0] [6]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[1,0] [6]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[0,_n_0_0][6] ),
        .O(\grid_accumulators[0,3][7]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][7]_i_36 
       (.I0(\grid_accumulators_reg[7,_n_0_0][6] ),
        .I1(\grid_accumulators_reg[6,0] [6]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[5,0] [6]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[4,0] [6]),
        .O(\grid_accumulators[0,3][7]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][7]_i_37 
       (.I0(\grid_accumulators_reg[3,1] [6]),
        .I1(\grid_accumulators_reg[2,1] [6]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[1,1] [6]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[0,_n_0_1][6] ),
        .O(\grid_accumulators[0,3][7]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][7]_i_38 
       (.I0(\grid_accumulators_reg[7,_n_0_1][6] ),
        .I1(\grid_accumulators_reg[6,1] [6]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[5,1] [6]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[4,1] [6]),
        .O(\grid_accumulators[0,3][7]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][7]_i_39 
       (.I0(\grid_accumulators_reg[3,2] [5]),
        .I1(\grid_accumulators_reg[2,2] [5]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[1,2] [5]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[0,_n_0_2][5] ),
        .O(\grid_accumulators[0,3][7]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h00000015FFFFFFEA)) 
    \grid_accumulators[0,3][7]_i_4 
       (.I0(\grid_accumulators[0,3][7]_i_15_n_0 ),
        .I1(\grid_accumulators[0,3][7]_i_7_n_0 ),
        .I2(\grid_accumulators[0,3]__111 [5]),
        .I3(\grid_accumulators[0,3][7]_i_17_n_0 ),
        .I4(\grid_accumulators[0,3][7]_i_18_n_0 ),
        .I5(p_0_in__1[5]),
        .O(\grid_accumulators[0,3][7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][7]_i_40 
       (.I0(\grid_accumulators_reg[7,_n_0_2][5] ),
        .I1(\grid_accumulators_reg[6,2] [5]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[5,2] [5]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[4,2] [5]),
        .O(\grid_accumulators[0,3][7]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][7]_i_41 
       (.I0(\grid_accumulators_reg[3,3] [5]),
        .I1(\grid_accumulators_reg[2,3] [5]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[1,3] [5]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[0,_n_0_3][5] ),
        .O(\grid_accumulators[0,3][7]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][7]_i_42 
       (.I0(\grid_accumulators_reg[7,_n_0_3][5] ),
        .I1(\grid_accumulators_reg[6,3] [5]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[5,3] [5]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[4,3] [5]),
        .O(\grid_accumulators[0,3][7]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][7]_i_43 
       (.I0(\grid_accumulators_reg[3,0] [5]),
        .I1(\grid_accumulators_reg[2,0] [5]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[1,0] [5]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[0,_n_0_0][5] ),
        .O(\grid_accumulators[0,3][7]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][7]_i_44 
       (.I0(\grid_accumulators_reg[7,_n_0_0][5] ),
        .I1(\grid_accumulators_reg[6,0] [5]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[5,0] [5]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[4,0] [5]),
        .O(\grid_accumulators[0,3][7]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][7]_i_45 
       (.I0(\grid_accumulators_reg[3,1] [5]),
        .I1(\grid_accumulators_reg[2,1] [5]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[1,1] [5]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[0,_n_0_1][5] ),
        .O(\grid_accumulators[0,3][7]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][7]_i_46 
       (.I0(\grid_accumulators_reg[7,_n_0_1][5] ),
        .I1(\grid_accumulators_reg[6,1] [5]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[5,1] [5]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[4,1] [5]),
        .O(\grid_accumulators[0,3][7]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][7]_i_47 
       (.I0(\grid_accumulators_reg[3,2] [4]),
        .I1(\grid_accumulators_reg[2,2] [4]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[1,2] [4]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[0,_n_0_2][4] ),
        .O(\grid_accumulators[0,3][7]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][7]_i_48 
       (.I0(\grid_accumulators_reg[7,_n_0_2][4] ),
        .I1(\grid_accumulators_reg[6,2] [4]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[5,2] [4]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[4,2] [4]),
        .O(\grid_accumulators[0,3][7]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][7]_i_49 
       (.I0(\grid_accumulators_reg[3,3] [4]),
        .I1(\grid_accumulators_reg[2,3] [4]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[1,3] [4]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[0,_n_0_3][4] ),
        .O(\grid_accumulators[0,3][7]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h00000015FFFFFFEA)) 
    \grid_accumulators[0,3][7]_i_5 
       (.I0(\grid_accumulators[0,3][7]_i_19_n_0 ),
        .I1(\grid_accumulators[0,3][7]_i_7_n_0 ),
        .I2(\grid_accumulators[0,3]__111 [4]),
        .I3(\grid_accumulators[0,3][7]_i_21_n_0 ),
        .I4(\grid_accumulators[0,3][7]_i_22_n_0 ),
        .I5(p_0_in__1[4]),
        .O(\grid_accumulators[0,3][7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][7]_i_50 
       (.I0(\grid_accumulators_reg[7,_n_0_3][4] ),
        .I1(\grid_accumulators_reg[6,3] [4]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[5,3] [4]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[4,3] [4]),
        .O(\grid_accumulators[0,3][7]_i_50_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][7]_i_51 
       (.I0(\grid_accumulators_reg[3,0] [4]),
        .I1(\grid_accumulators_reg[2,0] [4]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[1,0] [4]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[0,_n_0_0][4] ),
        .O(\grid_accumulators[0,3][7]_i_51_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][7]_i_52 
       (.I0(\grid_accumulators_reg[7,_n_0_0][4] ),
        .I1(\grid_accumulators_reg[6,0] [4]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[5,0] [4]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[4,0] [4]),
        .O(\grid_accumulators[0,3][7]_i_52_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][7]_i_53 
       (.I0(\grid_accumulators_reg[3,1] [4]),
        .I1(\grid_accumulators_reg[2,1] [4]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[1,1] [4]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[0,_n_0_1][4] ),
        .O(\grid_accumulators[0,3][7]_i_53_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \grid_accumulators[0,3][7]_i_54 
       (.I0(\grid_accumulators_reg[7,_n_0_1][4] ),
        .I1(\grid_accumulators_reg[6,1] [4]),
        .I2(curr_row[1]),
        .I3(\grid_accumulators_reg[5,1] [4]),
        .I4(curr_row[0]),
        .I5(\grid_accumulators_reg[4,1] [4]),
        .O(\grid_accumulators[0,3][7]_i_54_n_0 ));
  LUT5 #(
    .INIT(32'h00E20000)) 
    \grid_accumulators[0,3][7]_i_6 
       (.I0(\grid_accumulators[0,3][7]_i_23_n_0 ),
        .I1(curr_row[2]),
        .I2(\grid_accumulators[0,3][7]_i_24_n_0 ),
        .I3(curr_col[0]),
        .I4(curr_col[1]),
        .O(\grid_accumulators[0,3][7]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \grid_accumulators[0,3][7]_i_7 
       (.I0(curr_col[0]),
        .I1(curr_col[1]),
        .O(\grid_accumulators[0,3][7]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \grid_accumulators[0,3][7]_i_9 
       (.I0(\grid_accumulators[0,3][7]_i_27_n_0 ),
        .I1(curr_row[2]),
        .I2(\grid_accumulators[0,3][7]_i_28_n_0 ),
        .I3(curr_col[1]),
        .I4(curr_col[0]),
        .O(\grid_accumulators[0,3][7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \grid_accumulators[1,0][15]_i_1 
       (.I0(\grid_accumulators[0,0]1__1 ),
        .I1(curr_row[0]),
        .I2(curr_col[0]),
        .I3(curr_col[1]),
        .I4(curr_row[1]),
        .I5(curr_row[2]),
        .O(\grid_accumulators[1,0] ));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \grid_accumulators[1,1][15]_i_1 
       (.I0(\grid_accumulators[0,0]1__1 ),
        .I1(curr_row[0]),
        .I2(curr_col[1]),
        .I3(curr_col[0]),
        .I4(curr_row[1]),
        .I5(curr_row[2]),
        .O(\grid_accumulators[1,1] ));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \grid_accumulators[1,2][15]_i_1 
       (.I0(\grid_accumulators[0,0]1__1 ),
        .I1(curr_row[0]),
        .I2(curr_col[0]),
        .I3(curr_col[1]),
        .I4(curr_row[1]),
        .I5(curr_row[2]),
        .O(\grid_accumulators[1,2] ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \grid_accumulators[1,3][15]_i_1 
       (.I0(\grid_accumulators[0,0]1__1 ),
        .I1(curr_row[0]),
        .I2(curr_col[1]),
        .I3(curr_col[0]),
        .I4(curr_row[1]),
        .I5(curr_row[2]),
        .O(\grid_accumulators[1,3] ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \grid_accumulators[2,0][15]_i_1 
       (.I0(\grid_accumulators[0,0]1__1 ),
        .I1(curr_row[1]),
        .I2(curr_col[0]),
        .I3(curr_col[1]),
        .I4(curr_row[0]),
        .I5(curr_row[2]),
        .O(\grid_accumulators[2,0] ));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \grid_accumulators[2,1][15]_i_1 
       (.I0(\grid_accumulators[0,0]1__1 ),
        .I1(curr_row[1]),
        .I2(curr_col[1]),
        .I3(curr_col[0]),
        .I4(curr_row[0]),
        .I5(curr_row[2]),
        .O(\grid_accumulators[2,1] ));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \grid_accumulators[2,2][15]_i_1 
       (.I0(\grid_accumulators[0,0]1__1 ),
        .I1(curr_row[1]),
        .I2(curr_col[0]),
        .I3(curr_col[1]),
        .I4(curr_row[0]),
        .I5(curr_row[2]),
        .O(\grid_accumulators[2,2] ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \grid_accumulators[2,3][15]_i_1 
       (.I0(\grid_accumulators[0,0]1__1 ),
        .I1(curr_row[1]),
        .I2(curr_col[1]),
        .I3(curr_col[0]),
        .I4(curr_row[0]),
        .I5(curr_row[2]),
        .O(\grid_accumulators[2,3] ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \grid_accumulators[3,0][15]_i_1 
       (.I0(\grid_accumulators[0,0]1__1 ),
        .I1(curr_row[0]),
        .I2(curr_row[1]),
        .I3(curr_col[0]),
        .I4(curr_col[1]),
        .I5(curr_row[2]),
        .O(\grid_accumulators[3,0] ));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \grid_accumulators[3,1][15]_i_1 
       (.I0(\grid_accumulators[0,0]1__1 ),
        .I1(curr_row[0]),
        .I2(curr_row[1]),
        .I3(curr_col[1]),
        .I4(curr_col[0]),
        .I5(curr_row[2]),
        .O(\grid_accumulators[3,1] ));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \grid_accumulators[3,2][15]_i_1 
       (.I0(\grid_accumulators[0,0]1__1 ),
        .I1(curr_row[0]),
        .I2(curr_row[1]),
        .I3(curr_col[0]),
        .I4(curr_col[1]),
        .I5(curr_row[2]),
        .O(\grid_accumulators[3,2] ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \grid_accumulators[3,3][15]_i_1 
       (.I0(\grid_accumulators[0,0]1__1 ),
        .I1(curr_row[0]),
        .I2(curr_row[1]),
        .I3(curr_col[1]),
        .I4(curr_col[0]),
        .I5(curr_row[2]),
        .O(\grid_accumulators[3,3] ));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \grid_accumulators[4,0][15]_i_1 
       (.I0(\grid_accumulators[0,0]1__1 ),
        .I1(curr_col[0]),
        .I2(curr_col[1]),
        .I3(curr_row[2]),
        .I4(curr_row[0]),
        .I5(curr_row[1]),
        .O(\grid_accumulators[4,0] ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \grid_accumulators[4,1][15]_i_1 
       (.I0(\grid_accumulators[0,0]1__1 ),
        .I1(curr_col[1]),
        .I2(curr_col[0]),
        .I3(curr_row[2]),
        .I4(curr_row[0]),
        .I5(curr_row[1]),
        .O(\grid_accumulators[4,1] ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \grid_accumulators[4,2][15]_i_1 
       (.I0(\grid_accumulators[0,0]1__1 ),
        .I1(curr_col[0]),
        .I2(curr_col[1]),
        .I3(curr_row[2]),
        .I4(curr_row[0]),
        .I5(curr_row[1]),
        .O(\grid_accumulators[4,2] ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \grid_accumulators[4,3][15]_i_1 
       (.I0(\grid_accumulators[0,0]1__1 ),
        .I1(curr_col[1]),
        .I2(curr_col[0]),
        .I3(curr_row[2]),
        .I4(curr_row[0]),
        .I5(curr_row[1]),
        .O(\grid_accumulators[4,3] ));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \grid_accumulators[5,0][15]_i_1 
       (.I0(\grid_accumulators[0,0]1__1 ),
        .I1(curr_row[0]),
        .I2(curr_col[0]),
        .I3(curr_col[1]),
        .I4(curr_row[2]),
        .I5(curr_row[1]),
        .O(\grid_accumulators[5,0] ));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \grid_accumulators[5,1][15]_i_1 
       (.I0(\grid_accumulators[0,0]1__1 ),
        .I1(curr_row[0]),
        .I2(curr_col[1]),
        .I3(curr_col[0]),
        .I4(curr_row[2]),
        .I5(curr_row[1]),
        .O(\grid_accumulators[5,1] ));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \grid_accumulators[5,2][15]_i_1 
       (.I0(\grid_accumulators[0,0]1__1 ),
        .I1(curr_row[0]),
        .I2(curr_col[0]),
        .I3(curr_col[1]),
        .I4(curr_row[2]),
        .I5(curr_row[1]),
        .O(\grid_accumulators[5,2] ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \grid_accumulators[5,3][15]_i_1 
       (.I0(\grid_accumulators[0,0]1__1 ),
        .I1(curr_row[0]),
        .I2(curr_col[1]),
        .I3(curr_col[0]),
        .I4(curr_row[2]),
        .I5(curr_row[1]),
        .O(\grid_accumulators[5,3] ));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \grid_accumulators[6,0][15]_i_1 
       (.I0(\grid_accumulators[0,0]1__1 ),
        .I1(curr_row[1]),
        .I2(curr_col[0]),
        .I3(curr_col[1]),
        .I4(curr_row[2]),
        .I5(curr_row[0]),
        .O(\grid_accumulators[6,0] ));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \grid_accumulators[6,1][15]_i_1 
       (.I0(\grid_accumulators[0,0]1__1 ),
        .I1(curr_row[1]),
        .I2(curr_col[1]),
        .I3(curr_col[0]),
        .I4(curr_row[2]),
        .I5(curr_row[0]),
        .O(\grid_accumulators[6,1] ));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \grid_accumulators[6,2][15]_i_1 
       (.I0(\grid_accumulators[0,0]1__1 ),
        .I1(curr_row[1]),
        .I2(curr_col[0]),
        .I3(curr_col[1]),
        .I4(curr_row[2]),
        .I5(curr_row[0]),
        .O(\grid_accumulators[6,2] ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \grid_accumulators[6,3][15]_i_1 
       (.I0(\grid_accumulators[0,0]1__1 ),
        .I1(curr_row[1]),
        .I2(curr_col[1]),
        .I3(curr_col[0]),
        .I4(curr_row[2]),
        .I5(curr_row[0]),
        .O(\grid_accumulators[6,3] ));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    \grid_accumulators[7,0][15]_i_1 
       (.I0(\grid_accumulators[0,0]1__1 ),
        .I1(curr_col[0]),
        .I2(curr_col[1]),
        .I3(curr_row[2]),
        .I4(curr_row[0]),
        .I5(curr_row[1]),
        .O(\grid_accumulators[7,0] ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \grid_accumulators[7,1][15]_i_1 
       (.I0(\grid_accumulators[0,0]1__1 ),
        .I1(curr_col[1]),
        .I2(curr_col[0]),
        .I3(curr_row[2]),
        .I4(curr_row[0]),
        .I5(curr_row[1]),
        .O(\grid_accumulators[7,1] ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \grid_accumulators[7,2][15]_i_1 
       (.I0(\grid_accumulators[0,0]1__1 ),
        .I1(curr_col[0]),
        .I2(curr_col[1]),
        .I3(curr_row[2]),
        .I4(curr_row[0]),
        .I5(curr_row[1]),
        .O(\grid_accumulators[7,2] ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \grid_accumulators[7,3][15]_i_1 
       (.I0(\grid_accumulators[0,0]1__1 ),
        .I1(curr_col[1]),
        .I2(curr_col[0]),
        .I3(curr_row[2]),
        .I4(curr_row[0]),
        .I5(curr_row[1]),
        .O(\grid_accumulators[7,3][15]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \grid_accumulators_reg[0,0]1__41_carry 
       (.CI(1'b0),
        .CO({\grid_accumulators_reg[0,0]1__41_carry_n_0 ,\grid_accumulators_reg[0,0]1__41_carry_n_1 ,\grid_accumulators_reg[0,0]1__41_carry_n_2 ,\grid_accumulators_reg[0,0]1__41_carry_n_3 }),
        .CYINIT(1'b0),
        .DI(\grid_accumulators_reg[0,0]3 [4:1]),
        .O(\NLW_grid_accumulators_reg[0,0]1__41_carry_O_UNCONNECTED [3:0]),
        .S({\grid_accumulators_reg[0,0]1__41_carry_i_1_n_0 ,\grid_accumulators_reg[0,0]1__41_carry_i_2_n_0 ,\grid_accumulators_reg[0,0]1__41_carry_i_3_n_0 ,\grid_accumulators_reg[0,0]1__41_carry_i_4_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \grid_accumulators_reg[0,0]1__41_carry__0 
       (.CI(\grid_accumulators_reg[0,0]1__41_carry_n_0 ),
        .CO({\grid_accumulators_reg[0,0]1__41_carry__0_n_0 ,\grid_accumulators_reg[0,0]1__41_carry__0_n_1 ,\grid_accumulators_reg[0,0]1__41_carry__0_n_2 ,\grid_accumulators_reg[0,0]1__41_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(\grid_accumulators_reg[0,0]3 [8:5]),
        .O({p_0_in__1[0],\NLW_grid_accumulators_reg[0,0]1__41_carry__0_O_UNCONNECTED [2:0]}),
        .S({\grid_accumulators_reg[0,0]1__41_carry__0_i_1_n_0 ,\grid_accumulators_reg[0,0]1__41_carry__0_i_2_n_0 ,\grid_accumulators_reg[0,0]1__41_carry__0_i_3_n_0 ,\grid_accumulators_reg[0,0]1__41_carry__0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \grid_accumulators_reg[0,0]1__41_carry__0_i_1 
       (.I0(\grid_accumulators_reg[0,0]3 [8]),
        .I1(C[8]),
        .O(\grid_accumulators_reg[0,0]1__41_carry__0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \grid_accumulators_reg[0,0]1__41_carry__0_i_2 
       (.I0(\grid_accumulators_reg[0,0]3 [7]),
        .I1(C[7]),
        .O(\grid_accumulators_reg[0,0]1__41_carry__0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \grid_accumulators_reg[0,0]1__41_carry__0_i_3 
       (.I0(\grid_accumulators_reg[0,0]3 [6]),
        .I1(C[6]),
        .O(\grid_accumulators_reg[0,0]1__41_carry__0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \grid_accumulators_reg[0,0]1__41_carry__0_i_4 
       (.I0(\grid_accumulators_reg[0,0]3 [5]),
        .I1(C[5]),
        .O(\grid_accumulators_reg[0,0]1__41_carry__0_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \grid_accumulators_reg[0,0]1__41_carry__1 
       (.CI(\grid_accumulators_reg[0,0]1__41_carry__0_n_0 ),
        .CO({\grid_accumulators_reg[0,0]1__41_carry__1_n_0 ,\grid_accumulators_reg[0,0]1__41_carry__1_n_1 ,\grid_accumulators_reg[0,0]1__41_carry__1_n_2 ,\grid_accumulators_reg[0,0]1__41_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI(\grid_accumulators_reg[0,0]3 [12:9]),
        .O(p_0_in__1[4:1]),
        .S({\grid_accumulators_reg[0,0]1__41_carry__1_i_1_n_0 ,\grid_accumulators_reg[0,0]1__41_carry__1_i_2_n_0 ,\grid_accumulators_reg[0,0]1__41_carry__1_i_3_n_0 ,\grid_accumulators_reg[0,0]1__41_carry__1_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \grid_accumulators_reg[0,0]1__41_carry__1_i_1 
       (.I0(\grid_accumulators_reg[0,0]3 [12]),
        .I1(C[12]),
        .O(\grid_accumulators_reg[0,0]1__41_carry__1_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \grid_accumulators_reg[0,0]1__41_carry__1_i_2 
       (.I0(\grid_accumulators_reg[0,0]3 [11]),
        .I1(C[11]),
        .O(\grid_accumulators_reg[0,0]1__41_carry__1_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \grid_accumulators_reg[0,0]1__41_carry__1_i_3 
       (.I0(\grid_accumulators_reg[0,0]3 [10]),
        .I1(C[10]),
        .O(\grid_accumulators_reg[0,0]1__41_carry__1_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \grid_accumulators_reg[0,0]1__41_carry__1_i_4 
       (.I0(\grid_accumulators_reg[0,0]3 [9]),
        .I1(C[9]),
        .O(\grid_accumulators_reg[0,0]1__41_carry__1_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \grid_accumulators_reg[0,0]1__41_carry__2 
       (.CI(\grid_accumulators_reg[0,0]1__41_carry__1_n_0 ),
        .CO({\NLW_grid_accumulators_reg[0,0]1__41_carry__2_CO_UNCONNECTED [3:2],\grid_accumulators_reg[0,0]1__41_carry__2_n_2 ,\grid_accumulators_reg[0,0]1__41_carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\grid_accumulators_reg[0,0]3 [14:13]}),
        .O({\NLW_grid_accumulators_reg[0,0]1__41_carry__2_O_UNCONNECTED [3],p_0_in__1[7:5]}),
        .S({1'b0,\grid_accumulators_reg[0,0]1__41_carry__2_i_1_n_0 ,\grid_accumulators_reg[0,0]1__41_carry__2_i_2_n_0 ,\grid_accumulators_reg[0,0]1__41_carry__2_i_3_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \grid_accumulators_reg[0,0]1__41_carry__2_i_1 
       (.I0(\grid_accumulators_reg[0,0]3 [15]),
        .I1(\grid_accumulators_reg[0,0]1_carry__2_n_0 ),
        .O(\grid_accumulators_reg[0,0]1__41_carry__2_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \grid_accumulators_reg[0,0]1__41_carry__2_i_2 
       (.I0(\grid_accumulators_reg[0,0]3 [14]),
        .I1(C[14]),
        .O(\grid_accumulators_reg[0,0]1__41_carry__2_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \grid_accumulators_reg[0,0]1__41_carry__2_i_3 
       (.I0(\grid_accumulators_reg[0,0]3 [13]),
        .I1(C[13]),
        .O(\grid_accumulators_reg[0,0]1__41_carry__2_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \grid_accumulators_reg[0,0]1__41_carry_i_1 
       (.I0(\grid_accumulators_reg[0,0]3 [4]),
        .I1(C[4]),
        .O(\grid_accumulators_reg[0,0]1__41_carry_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \grid_accumulators_reg[0,0]1__41_carry_i_2 
       (.I0(\grid_accumulators_reg[0,0]3 [3]),
        .I1(C[3]),
        .O(\grid_accumulators_reg[0,0]1__41_carry_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \grid_accumulators_reg[0,0]1__41_carry_i_3 
       (.I0(\grid_accumulators_reg[0,0]3 [2]),
        .I1(C[2]),
        .O(\grid_accumulators_reg[0,0]1__41_carry_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \grid_accumulators_reg[0,0]1__41_carry_i_4 
       (.I0(\grid_accumulators_reg[0,0]3 [1]),
        .I1(C[1]),
        .O(\grid_accumulators_reg[0,0]1__41_carry_i_4_n_0 ));
  CARRY4 \grid_accumulators_reg[0,0]1_carry 
       (.CI(1'b0),
        .CO({\grid_accumulators_reg[0,0]1_carry_n_0 ,\grid_accumulators_reg[0,0]1_carry_n_1 ,\grid_accumulators_reg[0,0]1_carry_n_2 ,\grid_accumulators_reg[0,0]1_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({\grid_accumulators_reg[0,0]2 [3:1],b_val[0]}),
        .O({C[3:1],\NLW_grid_accumulators_reg[0,0]1_carry_O_UNCONNECTED [0]}),
        .S({\grid_accumulators_reg[0,0]1_carry_i_1_n_0 ,\grid_accumulators_reg[0,0]1_carry_i_2_n_0 ,\grid_accumulators_reg[0,0]1_carry_i_3_n_0 ,\grid_accumulators_reg[0,0]1_carry_i_4_n_0 }));
  CARRY4 \grid_accumulators_reg[0,0]1_carry__0 
       (.CI(\grid_accumulators_reg[0,0]1_carry_n_0 ),
        .CO({\grid_accumulators_reg[0,0]1_carry__0_n_0 ,\grid_accumulators_reg[0,0]1_carry__0_n_1 ,\grid_accumulators_reg[0,0]1_carry__0_n_2 ,\grid_accumulators_reg[0,0]1_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(\grid_accumulators_reg[0,0]2 [7:4]),
        .O(C[7:4]),
        .S({\grid_accumulators_reg[0,0]1_carry__0_i_1_n_0 ,\grid_accumulators_reg[0,0]1_carry__0_i_2_n_0 ,\grid_accumulators_reg[0,0]1_carry__0_i_3_n_0 ,\grid_accumulators_reg[0,0]1_carry__0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \grid_accumulators_reg[0,0]1_carry__0_i_1 
       (.I0(\grid_accumulators_reg[0,0]2 [7]),
        .I1(\grid_accumulators_reg[0,0]3__25_carry__0_n_6 ),
        .O(\grid_accumulators_reg[0,0]1_carry__0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \grid_accumulators_reg[0,0]1_carry__0_i_2 
       (.I0(\grid_accumulators_reg[0,0]2 [6]),
        .I1(\grid_accumulators_reg[0,0]3__25_carry__0_n_7 ),
        .O(\grid_accumulators_reg[0,0]1_carry__0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \grid_accumulators_reg[0,0]1_carry__0_i_3 
       (.I0(\grid_accumulators_reg[0,0]2 [5]),
        .I1(\grid_accumulators_reg[0,0]3__25_carry_n_4 ),
        .O(\grid_accumulators_reg[0,0]1_carry__0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \grid_accumulators_reg[0,0]1_carry__0_i_4 
       (.I0(\grid_accumulators_reg[0,0]2 [4]),
        .I1(\grid_accumulators_reg[0,0]3__25_carry_n_5 ),
        .O(\grid_accumulators_reg[0,0]1_carry__0_i_4_n_0 ));
  CARRY4 \grid_accumulators_reg[0,0]1_carry__1 
       (.CI(\grid_accumulators_reg[0,0]1_carry__0_n_0 ),
        .CO({\grid_accumulators_reg[0,0]1_carry__1_n_0 ,\grid_accumulators_reg[0,0]1_carry__1_n_1 ,\grid_accumulators_reg[0,0]1_carry__1_n_2 ,\grid_accumulators_reg[0,0]1_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI(\grid_accumulators_reg[0,0]2 [11:8]),
        .O(C[11:8]),
        .S({\grid_accumulators_reg[0,0]1_carry__1_i_1_n_0 ,\grid_accumulators_reg[0,0]1_carry__1_i_2_n_0 ,\grid_accumulators_reg[0,0]1_carry__1_i_3_n_0 ,\grid_accumulators_reg[0,0]1_carry__1_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \grid_accumulators_reg[0,0]1_carry__1_i_1 
       (.I0(\grid_accumulators_reg[0,0]2 [11]),
        .I1(\grid_accumulators_reg[0,0]3__25_carry__1_n_6 ),
        .O(\grid_accumulators_reg[0,0]1_carry__1_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \grid_accumulators_reg[0,0]1_carry__1_i_2 
       (.I0(\grid_accumulators_reg[0,0]2 [10]),
        .I1(\grid_accumulators_reg[0,0]3__25_carry__1_n_7 ),
        .O(\grid_accumulators_reg[0,0]1_carry__1_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \grid_accumulators_reg[0,0]1_carry__1_i_3 
       (.I0(\grid_accumulators_reg[0,0]2 [9]),
        .I1(\grid_accumulators_reg[0,0]3__25_carry__0_n_4 ),
        .O(\grid_accumulators_reg[0,0]1_carry__1_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \grid_accumulators_reg[0,0]1_carry__1_i_4 
       (.I0(\grid_accumulators_reg[0,0]2 [8]),
        .I1(\grid_accumulators_reg[0,0]3__25_carry__0_n_5 ),
        .O(\grid_accumulators_reg[0,0]1_carry__1_i_4_n_0 ));
  CARRY4 \grid_accumulators_reg[0,0]1_carry__2 
       (.CI(\grid_accumulators_reg[0,0]1_carry__1_n_0 ),
        .CO({\grid_accumulators_reg[0,0]1_carry__2_n_0 ,\NLW_grid_accumulators_reg[0,0]1_carry__2_CO_UNCONNECTED [2],\grid_accumulators_reg[0,0]1_carry__2_n_2 ,\grid_accumulators_reg[0,0]1_carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\grid_accumulators_reg[0,0]2 [12]}),
        .O({\NLW_grid_accumulators_reg[0,0]1_carry__2_O_UNCONNECTED [3],C[14:12]}),
        .S({1'b1,\grid_accumulators_reg[0,0]1_carry__2_i_1_n_3 ,\grid_accumulators_reg[0,0]3__25_carry__1_n_4 ,\grid_accumulators_reg[0,0]1_carry__2_i_2_n_0 }));
  CARRY4 \grid_accumulators_reg[0,0]1_carry__2_i_1 
       (.CI(\grid_accumulators_reg[0,0]3__25_carry__1_n_0 ),
        .CO({\NLW_grid_accumulators_reg[0,0]1_carry__2_i_1_CO_UNCONNECTED [3:1],\grid_accumulators_reg[0,0]1_carry__2_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_grid_accumulators_reg[0,0]1_carry__2_i_1_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT2 #(
    .INIT(4'h6)) 
    \grid_accumulators_reg[0,0]1_carry__2_i_2 
       (.I0(\grid_accumulators_reg[0,0]2 [12]),
        .I1(\grid_accumulators_reg[0,0]3__25_carry__1_n_5 ),
        .O(\grid_accumulators_reg[0,0]1_carry__2_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \grid_accumulators_reg[0,0]1_carry_i_1 
       (.I0(\grid_accumulators_reg[0,0]2 [3]),
        .I1(\grid_accumulators_reg[0,0]3__25_carry_n_6 ),
        .O(\grid_accumulators_reg[0,0]1_carry_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \grid_accumulators_reg[0,0]1_carry_i_2 
       (.I0(\grid_accumulators_reg[0,0]2 [2]),
        .I1(\grid_accumulators_reg[0,0]3__25_carry_n_7 ),
        .O(\grid_accumulators_reg[0,0]1_carry_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \grid_accumulators_reg[0,0]1_carry_i_3 
       (.I0(\grid_accumulators_reg[0,0]2 [1]),
        .I1(\grid_accumulators_reg[0,0]3_carry_n_7 ),
        .O(\grid_accumulators_reg[0,0]1_carry_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \grid_accumulators_reg[0,0]1_carry_i_4 
       (.I0(b_val[0]),
        .I1(r_val[0]),
        .O(\grid_accumulators_reg[0,0]1_carry_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \grid_accumulators_reg[0,0]2__24_carry 
       (.CI(1'b0),
        .CO({\grid_accumulators_reg[0,0]2__24_carry_n_0 ,\grid_accumulators_reg[0,0]2__24_carry_n_1 ,\grid_accumulators_reg[0,0]2__24_carry_n_2 ,\grid_accumulators_reg[0,0]2__24_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({\grid_accumulators_reg[0,0]2__24_carry_i_1_n_0 ,\grid_accumulators_reg[0,0]2__24_carry_i_2_n_0 ,\grid_accumulators_reg[0,0]2__24_carry_i_3_n_0 ,1'b0}),
        .O(\grid_accumulators_reg[0,0]2 [6:3]),
        .S({\grid_accumulators_reg[0,0]2__24_carry_i_4_n_0 ,\grid_accumulators_reg[0,0]2__24_carry_i_5_n_0 ,\grid_accumulators_reg[0,0]2__24_carry_i_6_n_0 ,\grid_accumulators_reg[0,0]2__24_carry_i_7_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \grid_accumulators_reg[0,0]2__24_carry__0 
       (.CI(\grid_accumulators_reg[0,0]2__24_carry_n_0 ),
        .CO({\grid_accumulators_reg[0,0]2__24_carry__0_n_0 ,\grid_accumulators_reg[0,0]2__24_carry__0_n_1 ,\grid_accumulators_reg[0,0]2__24_carry__0_n_2 ,\grid_accumulators_reg[0,0]2__24_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\grid_accumulators_reg[0,0]2__24_carry__0_i_1_n_0 ,\grid_accumulators_reg[0,0]2__24_carry__0_i_2_n_0 ,\grid_accumulators_reg[0,0]2__24_carry__0_i_3_n_0 ,\grid_accumulators_reg[0,0]2__24_carry__0_i_4_n_0 }),
        .O(\grid_accumulators_reg[0,0]2 [10:7]),
        .S({\grid_accumulators_reg[0,0]2__24_carry__0_i_5_n_0 ,\grid_accumulators_reg[0,0]2__24_carry__0_i_6_n_0 ,\grid_accumulators_reg[0,0]2__24_carry__0_i_7_n_0 ,\grid_accumulators_reg[0,0]2__24_carry__0_i_8_n_0 }));
  LUT3 #(
    .INIT(8'hD4)) 
    \grid_accumulators_reg[0,0]2__24_carry__0_i_1 
       (.I0(b_val[6]),
        .I1(\grid_accumulators_reg[0,0]2_carry__1_n_7 ),
        .I2(b_val[4]),
        .O(\grid_accumulators_reg[0,0]2__24_carry__0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \grid_accumulators_reg[0,0]2__24_carry__0_i_2 
       (.I0(b_val[5]),
        .I1(\grid_accumulators_reg[0,0]2_carry__0_n_4 ),
        .I2(b_val[3]),
        .O(\grid_accumulators_reg[0,0]2__24_carry__0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \grid_accumulators_reg[0,0]2__24_carry__0_i_3 
       (.I0(b_val[4]),
        .I1(\grid_accumulators_reg[0,0]2_carry__0_n_5 ),
        .I2(b_val[2]),
        .O(\grid_accumulators_reg[0,0]2__24_carry__0_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \grid_accumulators_reg[0,0]2__24_carry__0_i_4 
       (.I0(b_val[3]),
        .I1(\grid_accumulators_reg[0,0]2_carry__0_n_6 ),
        .I2(b_val[1]),
        .O(\grid_accumulators_reg[0,0]2__24_carry__0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \grid_accumulators_reg[0,0]2__24_carry__0_i_5 
       (.I0(b_val[4]),
        .I1(\grid_accumulators_reg[0,0]2_carry__1_n_7 ),
        .I2(b_val[6]),
        .I3(b_val[7]),
        .I4(\grid_accumulators_reg[0,0]2_carry__1_n_2 ),
        .I5(b_val[5]),
        .O(\grid_accumulators_reg[0,0]2__24_carry__0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \grid_accumulators_reg[0,0]2__24_carry__0_i_6 
       (.I0(b_val[3]),
        .I1(\grid_accumulators_reg[0,0]2_carry__0_n_4 ),
        .I2(b_val[5]),
        .I3(b_val[6]),
        .I4(\grid_accumulators_reg[0,0]2_carry__1_n_7 ),
        .I5(b_val[4]),
        .O(\grid_accumulators_reg[0,0]2__24_carry__0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \grid_accumulators_reg[0,0]2__24_carry__0_i_7 
       (.I0(b_val[2]),
        .I1(\grid_accumulators_reg[0,0]2_carry__0_n_5 ),
        .I2(b_val[4]),
        .I3(b_val[5]),
        .I4(\grid_accumulators_reg[0,0]2_carry__0_n_4 ),
        .I5(b_val[3]),
        .O(\grid_accumulators_reg[0,0]2__24_carry__0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \grid_accumulators_reg[0,0]2__24_carry__0_i_8 
       (.I0(b_val[1]),
        .I1(\grid_accumulators_reg[0,0]2_carry__0_n_6 ),
        .I2(b_val[3]),
        .I3(b_val[4]),
        .I4(\grid_accumulators_reg[0,0]2_carry__0_n_5 ),
        .I5(b_val[2]),
        .O(\grid_accumulators_reg[0,0]2__24_carry__0_i_8_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \grid_accumulators_reg[0,0]2__24_carry__1 
       (.CI(\grid_accumulators_reg[0,0]2__24_carry__0_n_0 ),
        .CO({\NLW_grid_accumulators_reg[0,0]2__24_carry__1_CO_UNCONNECTED [3:1],\grid_accumulators_reg[0,0]2__24_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\grid_accumulators_reg[0,0]2__24_carry__1_i_1_n_0 }),
        .O({\NLW_grid_accumulators_reg[0,0]2__24_carry__1_O_UNCONNECTED [3:2],\grid_accumulators_reg[0,0]2 [12:11]}),
        .S({1'b0,1'b0,\grid_accumulators_reg[0,0]2__24_carry__1_i_2_n_0 ,\grid_accumulators_reg[0,0]2__24_carry__1_i_3_n_0 }));
  LUT3 #(
    .INIT(8'hD4)) 
    \grid_accumulators_reg[0,0]2__24_carry__1_i_1 
       (.I0(b_val[7]),
        .I1(\grid_accumulators_reg[0,0]2_carry__1_n_2 ),
        .I2(b_val[5]),
        .O(\grid_accumulators_reg[0,0]2__24_carry__1_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \grid_accumulators_reg[0,0]2__24_carry__1_i_2 
       (.I0(b_val[6]),
        .I1(b_val[7]),
        .O(\grid_accumulators_reg[0,0]2__24_carry__1_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8E71)) 
    \grid_accumulators_reg[0,0]2__24_carry__1_i_3 
       (.I0(b_val[5]),
        .I1(\grid_accumulators_reg[0,0]2_carry__1_n_2 ),
        .I2(b_val[7]),
        .I3(b_val[6]),
        .O(\grid_accumulators_reg[0,0]2__24_carry__1_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \grid_accumulators_reg[0,0]2__24_carry_i_1 
       (.I0(b_val[2]),
        .I1(\grid_accumulators_reg[0,0]2_carry__0_n_7 ),
        .I2(b_val[0]),
        .O(\grid_accumulators_reg[0,0]2__24_carry_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \grid_accumulators_reg[0,0]2__24_carry_i_2 
       (.I0(b_val[2]),
        .I1(\grid_accumulators_reg[0,0]2_carry__0_n_7 ),
        .I2(b_val[0]),
        .O(\grid_accumulators_reg[0,0]2__24_carry_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \grid_accumulators_reg[0,0]2__24_carry_i_3 
       (.I0(\grid_accumulators_reg[0,0]2_carry_n_5 ),
        .I1(b_val[0]),
        .O(\grid_accumulators_reg[0,0]2__24_carry_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \grid_accumulators_reg[0,0]2__24_carry_i_4 
       (.I0(b_val[0]),
        .I1(\grid_accumulators_reg[0,0]2_carry__0_n_7 ),
        .I2(b_val[2]),
        .I3(b_val[3]),
        .I4(\grid_accumulators_reg[0,0]2_carry__0_n_6 ),
        .I5(b_val[1]),
        .O(\grid_accumulators_reg[0,0]2__24_carry_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h69966969)) 
    \grid_accumulators_reg[0,0]2__24_carry_i_5 
       (.I0(b_val[2]),
        .I1(\grid_accumulators_reg[0,0]2_carry__0_n_7 ),
        .I2(b_val[0]),
        .I3(b_val[1]),
        .I4(\grid_accumulators_reg[0,0]2_carry_n_4 ),
        .O(\grid_accumulators_reg[0,0]2__24_carry_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \grid_accumulators_reg[0,0]2__24_carry_i_6 
       (.I0(b_val[0]),
        .I1(\grid_accumulators_reg[0,0]2_carry_n_5 ),
        .I2(\grid_accumulators_reg[0,0]2_carry_n_4 ),
        .I3(b_val[1]),
        .O(\grid_accumulators_reg[0,0]2__24_carry_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \grid_accumulators_reg[0,0]2__24_carry_i_7 
       (.I0(b_val[0]),
        .I1(\grid_accumulators_reg[0,0]2_carry_n_5 ),
        .O(\grid_accumulators_reg[0,0]2__24_carry_i_7_n_0 ));
  CARRY4 \grid_accumulators_reg[0,0]2_carry 
       (.CI(1'b0),
        .CO({\grid_accumulators_reg[0,0]2_carry_n_0 ,\grid_accumulators_reg[0,0]2_carry_n_1 ,\grid_accumulators_reg[0,0]2_carry_n_2 ,\grid_accumulators_reg[0,0]2_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({b_val[4:2],1'b0}),
        .O({\grid_accumulators_reg[0,0]2_carry_n_4 ,\grid_accumulators_reg[0,0]2_carry_n_5 ,\grid_accumulators_reg[0,0]2 [2:1]}),
        .S({\grid_accumulators_reg[0,0]2_carry_i_1_n_0 ,\grid_accumulators_reg[0,0]2_carry_i_2_n_0 ,\grid_accumulators_reg[0,0]2_carry_i_3_n_0 ,b_val[1]}));
  CARRY4 \grid_accumulators_reg[0,0]2_carry__0 
       (.CI(\grid_accumulators_reg[0,0]2_carry_n_0 ),
        .CO({\grid_accumulators_reg[0,0]2_carry__0_n_0 ,\grid_accumulators_reg[0,0]2_carry__0_n_1 ,\grid_accumulators_reg[0,0]2_carry__0_n_2 ,\grid_accumulators_reg[0,0]2_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,b_val[7:5]}),
        .O({\grid_accumulators_reg[0,0]2_carry__0_n_4 ,\grid_accumulators_reg[0,0]2_carry__0_n_5 ,\grid_accumulators_reg[0,0]2_carry__0_n_6 ,\grid_accumulators_reg[0,0]2_carry__0_n_7 }),
        .S({b_val[6],\grid_accumulators_reg[0,0]2_carry__0_i_1_n_0 ,\grid_accumulators_reg[0,0]2_carry__0_i_2_n_0 ,\grid_accumulators_reg[0,0]2_carry__0_i_3_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \grid_accumulators_reg[0,0]2_carry__0_i_1 
       (.I0(b_val[7]),
        .I1(b_val[5]),
        .O(\grid_accumulators_reg[0,0]2_carry__0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \grid_accumulators_reg[0,0]2_carry__0_i_2 
       (.I0(b_val[6]),
        .I1(b_val[4]),
        .O(\grid_accumulators_reg[0,0]2_carry__0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \grid_accumulators_reg[0,0]2_carry__0_i_3 
       (.I0(b_val[5]),
        .I1(b_val[3]),
        .O(\grid_accumulators_reg[0,0]2_carry__0_i_3_n_0 ));
  CARRY4 \grid_accumulators_reg[0,0]2_carry__1 
       (.CI(\grid_accumulators_reg[0,0]2_carry__0_n_0 ),
        .CO({\NLW_grid_accumulators_reg[0,0]2_carry__1_CO_UNCONNECTED [3:2],\grid_accumulators_reg[0,0]2_carry__1_n_2 ,\NLW_grid_accumulators_reg[0,0]2_carry__1_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_grid_accumulators_reg[0,0]2_carry__1_O_UNCONNECTED [3:1],\grid_accumulators_reg[0,0]2_carry__1_n_7 }),
        .S({1'b0,1'b0,1'b1,b_val[7]}));
  LUT2 #(
    .INIT(4'h6)) 
    \grid_accumulators_reg[0,0]2_carry_i_1 
       (.I0(b_val[4]),
        .I1(b_val[2]),
        .O(\grid_accumulators_reg[0,0]2_carry_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \grid_accumulators_reg[0,0]2_carry_i_2 
       (.I0(b_val[3]),
        .I1(b_val[1]),
        .O(\grid_accumulators_reg[0,0]2_carry_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \grid_accumulators_reg[0,0]2_carry_i_3 
       (.I0(b_val[2]),
        .I1(b_val[0]),
        .O(\grid_accumulators_reg[0,0]2_carry_i_3_n_0 ));
  CARRY4 \grid_accumulators_reg[0,0]3__25_carry 
       (.CI(1'b0),
        .CO({\grid_accumulators_reg[0,0]3__25_carry_n_0 ,\grid_accumulators_reg[0,0]3__25_carry_n_1 ,\grid_accumulators_reg[0,0]3__25_carry_n_2 ,\grid_accumulators_reg[0,0]3__25_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({\grid_accumulators_reg[0,0]3_carry__0_n_7 ,\grid_accumulators_reg[0,0]3_carry_n_4 ,\grid_accumulators_reg[0,0]3_carry_n_5 ,1'b0}),
        .O({\grid_accumulators_reg[0,0]3__25_carry_n_4 ,\grid_accumulators_reg[0,0]3__25_carry_n_5 ,\grid_accumulators_reg[0,0]3__25_carry_n_6 ,\grid_accumulators_reg[0,0]3__25_carry_n_7 }),
        .S({\grid_accumulators_reg[0,0]3__25_carry_i_1_n_0 ,\grid_accumulators_reg[0,0]3__25_carry_i_2_n_0 ,\grid_accumulators_reg[0,0]3__25_carry_i_3_n_0 ,\grid_accumulators_reg[0,0]3_carry_n_6 }));
  CARRY4 \grid_accumulators_reg[0,0]3__25_carry__0 
       (.CI(\grid_accumulators_reg[0,0]3__25_carry_n_0 ),
        .CO({\grid_accumulators_reg[0,0]3__25_carry__0_n_0 ,\grid_accumulators_reg[0,0]3__25_carry__0_n_1 ,\grid_accumulators_reg[0,0]3__25_carry__0_n_2 ,\grid_accumulators_reg[0,0]3__25_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\grid_accumulators_reg[0,0]3__25_carry__0_i_1_n_0 ,\grid_accumulators_reg[0,0]3__25_carry__0_i_2_n_0 ,\grid_accumulators_reg[0,0]3__25_carry__0_i_3_n_0 ,r_val[0]}),
        .O({\grid_accumulators_reg[0,0]3__25_carry__0_n_4 ,\grid_accumulators_reg[0,0]3__25_carry__0_n_5 ,\grid_accumulators_reg[0,0]3__25_carry__0_n_6 ,\grid_accumulators_reg[0,0]3__25_carry__0_n_7 }),
        .S({\grid_accumulators_reg[0,0]3__25_carry__0_i_4_n_0 ,\grid_accumulators_reg[0,0]3__25_carry__0_i_5_n_0 ,\grid_accumulators_reg[0,0]3__25_carry__0_i_6_n_0 ,\grid_accumulators_reg[0,0]3__25_carry__0_i_7_n_0 }));
  LUT3 #(
    .INIT(8'hE8)) 
    \grid_accumulators_reg[0,0]3__25_carry__0_i_1 
       (.I0(r_val[5]),
        .I1(\grid_accumulators_reg[0,0]3_carry__0_n_4 ),
        .I2(r_val[2]),
        .O(\grid_accumulators_reg[0,0]3__25_carry__0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \grid_accumulators_reg[0,0]3__25_carry__0_i_2 
       (.I0(r_val[4]),
        .I1(\grid_accumulators_reg[0,0]3_carry__0_n_5 ),
        .I2(r_val[1]),
        .O(\grid_accumulators_reg[0,0]3__25_carry__0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \grid_accumulators_reg[0,0]3__25_carry__0_i_3 
       (.I0(r_val[1]),
        .I1(r_val[4]),
        .I2(\grid_accumulators_reg[0,0]3_carry__0_n_5 ),
        .O(\grid_accumulators_reg[0,0]3__25_carry__0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \grid_accumulators_reg[0,0]3__25_carry__0_i_4 
       (.I0(r_val[6]),
        .I1(\grid_accumulators_reg[0,0]3_carry__1_n_7 ),
        .I2(r_val[3]),
        .I3(\grid_accumulators_reg[0,0]3__25_carry__0_i_1_n_0 ),
        .O(\grid_accumulators_reg[0,0]3__25_carry__0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \grid_accumulators_reg[0,0]3__25_carry__0_i_5 
       (.I0(r_val[5]),
        .I1(\grid_accumulators_reg[0,0]3_carry__0_n_4 ),
        .I2(r_val[2]),
        .I3(\grid_accumulators_reg[0,0]3__25_carry__0_i_2_n_0 ),
        .O(\grid_accumulators_reg[0,0]3__25_carry__0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h69969696)) 
    \grid_accumulators_reg[0,0]3__25_carry__0_i_6 
       (.I0(r_val[4]),
        .I1(\grid_accumulators_reg[0,0]3_carry__0_n_5 ),
        .I2(r_val[1]),
        .I3(\grid_accumulators_reg[0,0]3_carry__0_n_6 ),
        .I4(r_val[3]),
        .O(\grid_accumulators_reg[0,0]3__25_carry__0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \grid_accumulators_reg[0,0]3__25_carry__0_i_7 
       (.I0(r_val[3]),
        .I1(\grid_accumulators_reg[0,0]3_carry__0_n_6 ),
        .I2(r_val[0]),
        .O(\grid_accumulators_reg[0,0]3__25_carry__0_i_7_n_0 ));
  CARRY4 \grid_accumulators_reg[0,0]3__25_carry__1 
       (.CI(\grid_accumulators_reg[0,0]3__25_carry__0_n_0 ),
        .CO({\grid_accumulators_reg[0,0]3__25_carry__1_n_0 ,\grid_accumulators_reg[0,0]3__25_carry__1_n_1 ,\grid_accumulators_reg[0,0]3__25_carry__1_n_2 ,\grid_accumulators_reg[0,0]3__25_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,r_val[5],\grid_accumulators_reg[0,0]3__25_carry__1_i_1_n_0 }),
        .O({\grid_accumulators_reg[0,0]3__25_carry__1_n_4 ,\grid_accumulators_reg[0,0]3__25_carry__1_n_5 ,\grid_accumulators_reg[0,0]3__25_carry__1_n_6 ,\grid_accumulators_reg[0,0]3__25_carry__1_n_7 }),
        .S({r_val[7:6],\grid_accumulators_reg[0,0]3__25_carry__1_i_2_n_0 ,\grid_accumulators_reg[0,0]3__25_carry__1_i_3_n_0 }));
  LUT3 #(
    .INIT(8'hE8)) 
    \grid_accumulators_reg[0,0]3__25_carry__1_i_1 
       (.I0(r_val[6]),
        .I1(\grid_accumulators_reg[0,0]3_carry__1_n_7 ),
        .I2(r_val[3]),
        .O(\grid_accumulators_reg[0,0]3__25_carry__1_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h17E8)) 
    \grid_accumulators_reg[0,0]3__25_carry__1_i_2 
       (.I0(r_val[4]),
        .I1(\grid_accumulators_reg[0,0]3_carry__1_n_2 ),
        .I2(r_val[7]),
        .I3(r_val[5]),
        .O(\grid_accumulators_reg[0,0]3__25_carry__1_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \grid_accumulators_reg[0,0]3__25_carry__1_i_3 
       (.I0(\grid_accumulators_reg[0,0]3__25_carry__1_i_1_n_0 ),
        .I1(\grid_accumulators_reg[0,0]3_carry__1_n_2 ),
        .I2(r_val[7]),
        .I3(r_val[4]),
        .O(\grid_accumulators_reg[0,0]3__25_carry__1_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \grid_accumulators_reg[0,0]3__25_carry_i_1 
       (.I0(\grid_accumulators_reg[0,0]3_carry__0_n_7 ),
        .I1(r_val[2]),
        .O(\grid_accumulators_reg[0,0]3__25_carry_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \grid_accumulators_reg[0,0]3__25_carry_i_2 
       (.I0(\grid_accumulators_reg[0,0]3_carry_n_4 ),
        .I1(r_val[1]),
        .O(\grid_accumulators_reg[0,0]3__25_carry_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \grid_accumulators_reg[0,0]3__25_carry_i_3 
       (.I0(\grid_accumulators_reg[0,0]3_carry_n_5 ),
        .I1(r_val[0]),
        .O(\grid_accumulators_reg[0,0]3__25_carry_i_3_n_0 ));
  CARRY4 \grid_accumulators_reg[0,0]3__58_carry 
       (.CI(1'b0),
        .CO({\grid_accumulators_reg[0,0]3__58_carry_n_0 ,\grid_accumulators_reg[0,0]3__58_carry_n_1 ,\grid_accumulators_reg[0,0]3__58_carry_n_2 ,\grid_accumulators_reg[0,0]3__58_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({g_val[1:0],1'b0,1'b1}),
        .O({\grid_accumulators_reg[0,0]3__58_carry_n_4 ,\grid_accumulators_reg[0,0]3__58_carry_n_5 ,\grid_accumulators_reg[0,0]3 [2:1]}),
        .S({\grid_accumulators_reg[0,0]3__58_carry_i_1_n_0 ,\grid_accumulators_reg[0,0]3__58_carry_i_2_n_0 ,\grid_accumulators_reg[0,0]3__58_carry_i_3_n_0 ,g_val[0]}));
  CARRY4 \grid_accumulators_reg[0,0]3__58_carry__0 
       (.CI(\grid_accumulators_reg[0,0]3__58_carry_n_0 ),
        .CO({\grid_accumulators_reg[0,0]3__58_carry__0_n_0 ,\grid_accumulators_reg[0,0]3__58_carry__0_n_1 ,\grid_accumulators_reg[0,0]3__58_carry__0_n_2 ,\grid_accumulators_reg[0,0]3__58_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(g_val[5:2]),
        .O({\grid_accumulators_reg[0,0]3__58_carry__0_n_4 ,\grid_accumulators_reg[0,0]3__58_carry__0_n_5 ,\grid_accumulators_reg[0,0]3__58_carry__0_n_6 ,\grid_accumulators_reg[0,0]3__58_carry__0_n_7 }),
        .S({\grid_accumulators_reg[0,0]3__58_carry__0_i_1_n_0 ,\grid_accumulators_reg[0,0]3__58_carry__0_i_2_n_0 ,\grid_accumulators_reg[0,0]3__58_carry__0_i_3_n_0 ,\grid_accumulators_reg[0,0]3__58_carry__0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h9)) 
    \grid_accumulators_reg[0,0]3__58_carry__0_i_1 
       (.I0(g_val[5]),
        .I1(g_val[7]),
        .O(\grid_accumulators_reg[0,0]3__58_carry__0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \grid_accumulators_reg[0,0]3__58_carry__0_i_2 
       (.I0(g_val[4]),
        .I1(g_val[6]),
        .O(\grid_accumulators_reg[0,0]3__58_carry__0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \grid_accumulators_reg[0,0]3__58_carry__0_i_3 
       (.I0(g_val[3]),
        .I1(g_val[5]),
        .O(\grid_accumulators_reg[0,0]3__58_carry__0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \grid_accumulators_reg[0,0]3__58_carry__0_i_4 
       (.I0(g_val[2]),
        .I1(g_val[4]),
        .O(\grid_accumulators_reg[0,0]3__58_carry__0_i_4_n_0 ));
  CARRY4 \grid_accumulators_reg[0,0]3__58_carry__1 
       (.CI(\grid_accumulators_reg[0,0]3__58_carry__0_n_0 ),
        .CO({\NLW_grid_accumulators_reg[0,0]3__58_carry__1_CO_UNCONNECTED [3],\grid_accumulators_reg[0,0]3__58_carry__1_n_1 ,\NLW_grid_accumulators_reg[0,0]3__58_carry__1_CO_UNCONNECTED [1],\grid_accumulators_reg[0,0]3__58_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,g_val[7:6]}),
        .O({\NLW_grid_accumulators_reg[0,0]3__58_carry__1_O_UNCONNECTED [3:2],\grid_accumulators_reg[0,0]3__58_carry__1_n_6 ,\grid_accumulators_reg[0,0]3__58_carry__1_n_7 }),
        .S({1'b0,1'b1,\grid_accumulators_reg[0,0]3__58_carry__1_i_1_n_0 ,\grid_accumulators_reg[0,0]3__58_carry__1_i_2_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \grid_accumulators_reg[0,0]3__58_carry__1_i_1 
       (.I0(g_val[7]),
        .O(\grid_accumulators_reg[0,0]3__58_carry__1_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \grid_accumulators_reg[0,0]3__58_carry__1_i_2 
       (.I0(g_val[6]),
        .O(\grid_accumulators_reg[0,0]3__58_carry__1_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \grid_accumulators_reg[0,0]3__58_carry_i_1 
       (.I0(g_val[1]),
        .I1(g_val[3]),
        .O(\grid_accumulators_reg[0,0]3__58_carry_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \grid_accumulators_reg[0,0]3__58_carry_i_2 
       (.I0(g_val[0]),
        .I1(g_val[2]),
        .O(\grid_accumulators_reg[0,0]3__58_carry_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \grid_accumulators_reg[0,0]3__58_carry_i_3 
       (.I0(g_val[1]),
        .O(\grid_accumulators_reg[0,0]3__58_carry_i_3_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \grid_accumulators_reg[0,0]3__86_carry 
       (.CI(1'b0),
        .CO({\grid_accumulators_reg[0,0]3__86_carry_n_0 ,\grid_accumulators_reg[0,0]3__86_carry_n_1 ,\grid_accumulators_reg[0,0]3__86_carry_n_2 ,\grid_accumulators_reg[0,0]3__86_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({\grid_accumulators_reg[0,0]3__58_carry__0_n_6 ,\grid_accumulators_reg[0,0]3__58_carry__0_n_7 ,\grid_accumulators_reg[0,0]3__58_carry_n_4 ,1'b0}),
        .O(\grid_accumulators_reg[0,0]3 [6:3]),
        .S({\grid_accumulators_reg[0,0]3__86_carry_i_1_n_0 ,\grid_accumulators_reg[0,0]3__86_carry_i_2_n_0 ,\grid_accumulators_reg[0,0]3__86_carry_i_3_n_0 ,\grid_accumulators_reg[0,0]3__58_carry_n_5 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \grid_accumulators_reg[0,0]3__86_carry__0 
       (.CI(\grid_accumulators_reg[0,0]3__86_carry_n_0 ),
        .CO({\grid_accumulators_reg[0,0]3__86_carry__0_n_0 ,\grid_accumulators_reg[0,0]3__86_carry__0_n_1 ,\grid_accumulators_reg[0,0]3__86_carry__0_n_2 ,\grid_accumulators_reg[0,0]3__86_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\grid_accumulators_reg[0,0]3__86_carry__0_i_1_n_0 ,\grid_accumulators_reg[0,0]3__86_carry__0_i_2_n_0 ,\grid_accumulators_reg[0,0]3__86_carry__0_i_3_n_0 ,g_val[0]}),
        .O(\grid_accumulators_reg[0,0]3 [10:7]),
        .S({\grid_accumulators_reg[0,0]3__86_carry__0_i_4_n_0 ,\grid_accumulators_reg[0,0]3__86_carry__0_i_5_n_0 ,\grid_accumulators_reg[0,0]3__86_carry__0_i_6_n_0 ,\grid_accumulators_reg[0,0]3__86_carry__0_i_7_n_0 }));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \grid_accumulators_reg[0,0]3__86_carry__0_i_1 
       (.I0(g_val[5]),
        .I1(\grid_accumulators_reg[0,0]3__58_carry__1_n_7 ),
        .I2(g_val[2]),
        .O(\grid_accumulators_reg[0,0]3__86_carry__0_i_1_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \grid_accumulators_reg[0,0]3__86_carry__0_i_2 
       (.I0(g_val[4]),
        .I1(\grid_accumulators_reg[0,0]3__58_carry__0_n_4 ),
        .I2(g_val[1]),
        .O(\grid_accumulators_reg[0,0]3__86_carry__0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \grid_accumulators_reg[0,0]3__86_carry__0_i_3 
       (.I0(g_val[1]),
        .I1(g_val[4]),
        .I2(\grid_accumulators_reg[0,0]3__58_carry__0_n_4 ),
        .O(\grid_accumulators_reg[0,0]3__86_carry__0_i_3_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \grid_accumulators_reg[0,0]3__86_carry__0_i_4 
       (.I0(g_val[6]),
        .I1(\grid_accumulators_reg[0,0]3__58_carry__1_n_6 ),
        .I2(g_val[3]),
        .I3(\grid_accumulators_reg[0,0]3__86_carry__0_i_1_n_0 ),
        .O(\grid_accumulators_reg[0,0]3__86_carry__0_i_4_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \grid_accumulators_reg[0,0]3__86_carry__0_i_5 
       (.I0(g_val[5]),
        .I1(\grid_accumulators_reg[0,0]3__58_carry__1_n_7 ),
        .I2(g_val[2]),
        .I3(\grid_accumulators_reg[0,0]3__86_carry__0_i_2_n_0 ),
        .O(\grid_accumulators_reg[0,0]3__86_carry__0_i_5_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    \grid_accumulators_reg[0,0]3__86_carry__0_i_6 
       (.I0(g_val[4]),
        .I1(\grid_accumulators_reg[0,0]3__58_carry__0_n_4 ),
        .I2(g_val[1]),
        .I3(\grid_accumulators_reg[0,0]3__58_carry__0_n_5 ),
        .I4(g_val[3]),
        .O(\grid_accumulators_reg[0,0]3__86_carry__0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \grid_accumulators_reg[0,0]3__86_carry__0_i_7 
       (.I0(g_val[3]),
        .I1(\grid_accumulators_reg[0,0]3__58_carry__0_n_5 ),
        .I2(g_val[0]),
        .O(\grid_accumulators_reg[0,0]3__86_carry__0_i_7_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \grid_accumulators_reg[0,0]3__86_carry__1 
       (.CI(\grid_accumulators_reg[0,0]3__86_carry__0_n_0 ),
        .CO({\grid_accumulators_reg[0,0]3__86_carry__1_n_0 ,\grid_accumulators_reg[0,0]3__86_carry__1_n_1 ,\grid_accumulators_reg[0,0]3__86_carry__1_n_2 ,\grid_accumulators_reg[0,0]3__86_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({\grid_accumulators_reg[0,0]3__86_carry__1_i_1_n_0 ,\grid_accumulators_reg[0,0]3__86_carry__1_i_2_n_0 ,\grid_accumulators_reg[0,0]3__86_carry__1_i_3_n_0 ,\grid_accumulators_reg[0,0]3__86_carry__1_i_4_n_0 }),
        .O(\grid_accumulators_reg[0,0]3 [14:11]),
        .S({\grid_accumulators_reg[0,0]3__86_carry__1_i_5_n_0 ,\grid_accumulators_reg[0,0]3__86_carry__1_i_6_n_0 ,\grid_accumulators_reg[0,0]3__86_carry__1_i_7_n_0 ,\grid_accumulators_reg[0,0]3__86_carry__1_i_8_n_0 }));
  LUT2 #(
    .INIT(4'h2)) 
    \grid_accumulators_reg[0,0]3__86_carry__1_i_1 
       (.I0(g_val[6]),
        .I1(\grid_accumulators_reg[0,0]3__58_carry__1_n_1 ),
        .O(\grid_accumulators_reg[0,0]3__86_carry__1_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \grid_accumulators_reg[0,0]3__86_carry__1_i_2 
       (.I0(g_val[5]),
        .I1(\grid_accumulators_reg[0,0]3__58_carry__1_n_1 ),
        .O(\grid_accumulators_reg[0,0]3__86_carry__1_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \grid_accumulators_reg[0,0]3__86_carry__1_i_3 
       (.I0(\grid_accumulators_reg[0,0]3__58_carry__1_n_1 ),
        .I1(g_val[7]),
        .I2(g_val[4]),
        .O(\grid_accumulators_reg[0,0]3__86_carry__1_i_3_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \grid_accumulators_reg[0,0]3__86_carry__1_i_4 
       (.I0(g_val[6]),
        .I1(\grid_accumulators_reg[0,0]3__58_carry__1_n_6 ),
        .I2(g_val[3]),
        .O(\grid_accumulators_reg[0,0]3__86_carry__1_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \grid_accumulators_reg[0,0]3__86_carry__1_i_5 
       (.I0(g_val[6]),
        .I1(\grid_accumulators_reg[0,0]3__58_carry__1_n_1 ),
        .I2(g_val[7]),
        .O(\grid_accumulators_reg[0,0]3__86_carry__1_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \grid_accumulators_reg[0,0]3__86_carry__1_i_6 
       (.I0(g_val[5]),
        .I1(\grid_accumulators_reg[0,0]3__58_carry__1_n_1 ),
        .I2(g_val[6]),
        .O(\grid_accumulators_reg[0,0]3__86_carry__1_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h7E81)) 
    \grid_accumulators_reg[0,0]3__86_carry__1_i_7 
       (.I0(g_val[4]),
        .I1(g_val[7]),
        .I2(\grid_accumulators_reg[0,0]3__58_carry__1_n_1 ),
        .I3(g_val[5]),
        .O(\grid_accumulators_reg[0,0]3__86_carry__1_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \grid_accumulators_reg[0,0]3__86_carry__1_i_8 
       (.I0(\grid_accumulators_reg[0,0]3__86_carry__1_i_4_n_0 ),
        .I1(\grid_accumulators_reg[0,0]3__58_carry__1_n_1 ),
        .I2(g_val[7]),
        .I3(g_val[4]),
        .O(\grid_accumulators_reg[0,0]3__86_carry__1_i_8_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \grid_accumulators_reg[0,0]3__86_carry__2 
       (.CI(\grid_accumulators_reg[0,0]3__86_carry__1_n_0 ),
        .CO(\NLW_grid_accumulators_reg[0,0]3__86_carry__2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_grid_accumulators_reg[0,0]3__86_carry__2_O_UNCONNECTED [3:1],\grid_accumulators_reg[0,0]3 [15]}),
        .S({1'b0,1'b0,1'b0,\grid_accumulators_reg[0,0]3__86_carry__2_i_1_n_0 }));
  LUT2 #(
    .INIT(4'h1)) 
    \grid_accumulators_reg[0,0]3__86_carry__2_i_1 
       (.I0(g_val[7]),
        .I1(\grid_accumulators_reg[0,0]3__58_carry__1_n_1 ),
        .O(\grid_accumulators_reg[0,0]3__86_carry__2_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \grid_accumulators_reg[0,0]3__86_carry_i_1 
       (.I0(\grid_accumulators_reg[0,0]3__58_carry__0_n_6 ),
        .I1(g_val[2]),
        .O(\grid_accumulators_reg[0,0]3__86_carry_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \grid_accumulators_reg[0,0]3__86_carry_i_2 
       (.I0(\grid_accumulators_reg[0,0]3__58_carry__0_n_7 ),
        .I1(g_val[1]),
        .O(\grid_accumulators_reg[0,0]3__86_carry_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \grid_accumulators_reg[0,0]3__86_carry_i_3 
       (.I0(\grid_accumulators_reg[0,0]3__58_carry_n_4 ),
        .I1(g_val[0]),
        .O(\grid_accumulators_reg[0,0]3__86_carry_i_3_n_0 ));
  CARRY4 \grid_accumulators_reg[0,0]3_carry 
       (.CI(1'b0),
        .CO({\grid_accumulators_reg[0,0]3_carry_n_0 ,\grid_accumulators_reg[0,0]3_carry_n_1 ,\grid_accumulators_reg[0,0]3_carry_n_2 ,\grid_accumulators_reg[0,0]3_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({r_val[4:2],1'b0}),
        .O({\grid_accumulators_reg[0,0]3_carry_n_4 ,\grid_accumulators_reg[0,0]3_carry_n_5 ,\grid_accumulators_reg[0,0]3_carry_n_6 ,\grid_accumulators_reg[0,0]3_carry_n_7 }),
        .S({\grid_accumulators_reg[0,0]3_carry_i_1_n_0 ,\grid_accumulators_reg[0,0]3_carry_i_2_n_0 ,\grid_accumulators_reg[0,0]3_carry_i_3_n_0 ,r_val[1]}));
  CARRY4 \grid_accumulators_reg[0,0]3_carry__0 
       (.CI(\grid_accumulators_reg[0,0]3_carry_n_0 ),
        .CO({\grid_accumulators_reg[0,0]3_carry__0_n_0 ,\grid_accumulators_reg[0,0]3_carry__0_n_1 ,\grid_accumulators_reg[0,0]3_carry__0_n_2 ,\grid_accumulators_reg[0,0]3_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,r_val[7:5]}),
        .O({\grid_accumulators_reg[0,0]3_carry__0_n_4 ,\grid_accumulators_reg[0,0]3_carry__0_n_5 ,\grid_accumulators_reg[0,0]3_carry__0_n_6 ,\grid_accumulators_reg[0,0]3_carry__0_n_7 }),
        .S({r_val[6],\grid_accumulators_reg[0,0]3_carry__0_i_1_n_0 ,\grid_accumulators_reg[0,0]3_carry__0_i_2_n_0 ,\grid_accumulators_reg[0,0]3_carry__0_i_3_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \grid_accumulators_reg[0,0]3_carry__0_i_1 
       (.I0(r_val[7]),
        .I1(r_val[5]),
        .O(\grid_accumulators_reg[0,0]3_carry__0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \grid_accumulators_reg[0,0]3_carry__0_i_2 
       (.I0(r_val[6]),
        .I1(r_val[4]),
        .O(\grid_accumulators_reg[0,0]3_carry__0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \grid_accumulators_reg[0,0]3_carry__0_i_3 
       (.I0(r_val[5]),
        .I1(r_val[3]),
        .O(\grid_accumulators_reg[0,0]3_carry__0_i_3_n_0 ));
  CARRY4 \grid_accumulators_reg[0,0]3_carry__1 
       (.CI(\grid_accumulators_reg[0,0]3_carry__0_n_0 ),
        .CO({\NLW_grid_accumulators_reg[0,0]3_carry__1_CO_UNCONNECTED [3:2],\grid_accumulators_reg[0,0]3_carry__1_n_2 ,\NLW_grid_accumulators_reg[0,0]3_carry__1_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_grid_accumulators_reg[0,0]3_carry__1_O_UNCONNECTED [3:1],\grid_accumulators_reg[0,0]3_carry__1_n_7 }),
        .S({1'b0,1'b0,1'b1,r_val[7]}));
  LUT2 #(
    .INIT(4'h6)) 
    \grid_accumulators_reg[0,0]3_carry_i_1 
       (.I0(r_val[4]),
        .I1(r_val[2]),
        .O(\grid_accumulators_reg[0,0]3_carry_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \grid_accumulators_reg[0,0]3_carry_i_2 
       (.I0(r_val[3]),
        .I1(r_val[1]),
        .O(\grid_accumulators_reg[0,0]3_carry_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \grid_accumulators_reg[0,0]3_carry_i_3 
       (.I0(r_val[2]),
        .I1(r_val[0]),
        .O(\grid_accumulators_reg[0,0]3_carry_i_3_n_0 ));
  FDRE \grid_accumulators_reg[0,0][0] 
       (.C(clk),
        .CE(\grid_accumulators[0,0][15]_i_1_n_0 ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[0,_n_0_0][0] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[0,0][10] 
       (.C(clk),
        .CE(\grid_accumulators[0,0][15]_i_1_n_0 ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_5 ),
        .Q(p_3_out[2]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[0,0][11] 
       (.C(clk),
        .CE(\grid_accumulators[0,0][15]_i_1_n_0 ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_4 ),
        .Q(p_3_out[3]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[0,0][12] 
       (.C(clk),
        .CE(\grid_accumulators[0,0][15]_i_1_n_0 ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_7 ),
        .Q(p_3_out[4]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[0,0][13] 
       (.C(clk),
        .CE(\grid_accumulators[0,0][15]_i_1_n_0 ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_6 ),
        .Q(p_3_out[5]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[0,0][14] 
       (.C(clk),
        .CE(\grid_accumulators[0,0][15]_i_1_n_0 ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_5 ),
        .Q(p_3_out[6]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[0,0][15] 
       (.C(clk),
        .CE(\grid_accumulators[0,0][15]_i_1_n_0 ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_4 ),
        .Q(p_3_out[7]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[0,0][1] 
       (.C(clk),
        .CE(\grid_accumulators[0,0][15]_i_1_n_0 ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[0,_n_0_0][1] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[0,0][2] 
       (.C(clk),
        .CE(\grid_accumulators[0,0][15]_i_1_n_0 ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[0,_n_0_0][2] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[0,0][3] 
       (.C(clk),
        .CE(\grid_accumulators[0,0][15]_i_1_n_0 ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[0,_n_0_0][3] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[0,0][4] 
       (.C(clk),
        .CE(\grid_accumulators[0,0][15]_i_1_n_0 ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[0,_n_0_0][4] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[0,0][5] 
       (.C(clk),
        .CE(\grid_accumulators[0,0][15]_i_1_n_0 ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[0,_n_0_0][5] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[0,0][6] 
       (.C(clk),
        .CE(\grid_accumulators[0,0][15]_i_1_n_0 ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[0,_n_0_0][6] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[0,0][7] 
       (.C(clk),
        .CE(\grid_accumulators[0,0][15]_i_1_n_0 ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[0,_n_0_0][7] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[0,0][8] 
       (.C(clk),
        .CE(\grid_accumulators[0,0][15]_i_1_n_0 ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_7 ),
        .Q(p_3_out[0]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[0,0][9] 
       (.C(clk),
        .CE(\grid_accumulators[0,0][15]_i_1_n_0 ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_6 ),
        .Q(p_3_out[1]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[0,1][0] 
       (.C(clk),
        .CE(\grid_accumulators[0,1][15]_i_1_n_0 ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[0,_n_0_1][0] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[0,1][10] 
       (.C(clk),
        .CE(\grid_accumulators[0,1][15]_i_1_n_0 ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_5 ),
        .Q(p_2_out[2]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[0,1][11] 
       (.C(clk),
        .CE(\grid_accumulators[0,1][15]_i_1_n_0 ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_4 ),
        .Q(p_2_out[3]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[0,1][12] 
       (.C(clk),
        .CE(\grid_accumulators[0,1][15]_i_1_n_0 ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_7 ),
        .Q(p_2_out[4]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[0,1][13] 
       (.C(clk),
        .CE(\grid_accumulators[0,1][15]_i_1_n_0 ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_6 ),
        .Q(p_2_out[5]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[0,1][14] 
       (.C(clk),
        .CE(\grid_accumulators[0,1][15]_i_1_n_0 ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_5 ),
        .Q(p_2_out[6]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[0,1][15] 
       (.C(clk),
        .CE(\grid_accumulators[0,1][15]_i_1_n_0 ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_4 ),
        .Q(p_2_out[7]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[0,1][1] 
       (.C(clk),
        .CE(\grid_accumulators[0,1][15]_i_1_n_0 ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[0,_n_0_1][1] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[0,1][2] 
       (.C(clk),
        .CE(\grid_accumulators[0,1][15]_i_1_n_0 ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[0,_n_0_1][2] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[0,1][3] 
       (.C(clk),
        .CE(\grid_accumulators[0,1][15]_i_1_n_0 ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[0,_n_0_1][3] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[0,1][4] 
       (.C(clk),
        .CE(\grid_accumulators[0,1][15]_i_1_n_0 ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[0,_n_0_1][4] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[0,1][5] 
       (.C(clk),
        .CE(\grid_accumulators[0,1][15]_i_1_n_0 ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[0,_n_0_1][5] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[0,1][6] 
       (.C(clk),
        .CE(\grid_accumulators[0,1][15]_i_1_n_0 ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[0,_n_0_1][6] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[0,1][7] 
       (.C(clk),
        .CE(\grid_accumulators[0,1][15]_i_1_n_0 ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[0,_n_0_1][7] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[0,1][8] 
       (.C(clk),
        .CE(\grid_accumulators[0,1][15]_i_1_n_0 ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_7 ),
        .Q(p_2_out[0]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[0,1][9] 
       (.C(clk),
        .CE(\grid_accumulators[0,1][15]_i_1_n_0 ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_6 ),
        .Q(p_2_out[1]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[0,2][0] 
       (.C(clk),
        .CE(\grid_accumulators[0,2][15]_i_1_n_0 ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[0,_n_0_2][0] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[0,2][10] 
       (.C(clk),
        .CE(\grid_accumulators[0,2][15]_i_1_n_0 ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_5 ),
        .Q(p_1_out[2]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[0,2][11] 
       (.C(clk),
        .CE(\grid_accumulators[0,2][15]_i_1_n_0 ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_4 ),
        .Q(p_1_out[3]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[0,2][12] 
       (.C(clk),
        .CE(\grid_accumulators[0,2][15]_i_1_n_0 ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_7 ),
        .Q(p_1_out[4]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[0,2][13] 
       (.C(clk),
        .CE(\grid_accumulators[0,2][15]_i_1_n_0 ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_6 ),
        .Q(p_1_out[5]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[0,2][14] 
       (.C(clk),
        .CE(\grid_accumulators[0,2][15]_i_1_n_0 ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_5 ),
        .Q(p_1_out[6]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[0,2][15] 
       (.C(clk),
        .CE(\grid_accumulators[0,2][15]_i_1_n_0 ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_4 ),
        .Q(p_1_out[7]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[0,2][1] 
       (.C(clk),
        .CE(\grid_accumulators[0,2][15]_i_1_n_0 ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[0,_n_0_2][1] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[0,2][2] 
       (.C(clk),
        .CE(\grid_accumulators[0,2][15]_i_1_n_0 ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[0,_n_0_2][2] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[0,2][3] 
       (.C(clk),
        .CE(\grid_accumulators[0,2][15]_i_1_n_0 ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[0,_n_0_2][3] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[0,2][4] 
       (.C(clk),
        .CE(\grid_accumulators[0,2][15]_i_1_n_0 ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[0,_n_0_2][4] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[0,2][5] 
       (.C(clk),
        .CE(\grid_accumulators[0,2][15]_i_1_n_0 ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[0,_n_0_2][5] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[0,2][6] 
       (.C(clk),
        .CE(\grid_accumulators[0,2][15]_i_1_n_0 ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[0,_n_0_2][6] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[0,2][7] 
       (.C(clk),
        .CE(\grid_accumulators[0,2][15]_i_1_n_0 ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[0,_n_0_2][7] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[0,2][8] 
       (.C(clk),
        .CE(\grid_accumulators[0,2][15]_i_1_n_0 ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_7 ),
        .Q(p_1_out[0]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[0,2][9] 
       (.C(clk),
        .CE(\grid_accumulators[0,2][15]_i_1_n_0 ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_6 ),
        .Q(p_1_out[1]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[0,3][0] 
       (.C(clk),
        .CE(\grid_accumulators[0,3][15]_i_2_n_0 ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[0,_n_0_3][0] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[0,3][10] 
       (.C(clk),
        .CE(\grid_accumulators[0,3][15]_i_2_n_0 ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_5 ),
        .Q(p_0_out[2]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[0,3][11] 
       (.C(clk),
        .CE(\grid_accumulators[0,3][15]_i_2_n_0 ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_4 ),
        .Q(p_0_out[3]),
        .R(\grid_accumulators[7,3] ));
  CARRY4 \grid_accumulators_reg[0,3][11]_i_1 
       (.CI(\grid_accumulators_reg[0,3][7]_i_1_n_0 ),
        .CO({\grid_accumulators_reg[0,3][11]_i_1_n_0 ,\grid_accumulators_reg[0,3][11]_i_1_n_1 ,\grid_accumulators_reg[0,3][11]_i_1_n_2 ,\grid_accumulators_reg[0,3][11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\grid_accumulators_reg[0,3][11]_i_1_n_4 ,\grid_accumulators_reg[0,3][11]_i_1_n_5 ,\grid_accumulators_reg[0,3][11]_i_1_n_6 ,\grid_accumulators_reg[0,3][11]_i_1_n_7 }),
        .S(\grid_accumulators[0,0] [11:8]));
  MUXF7 \grid_accumulators_reg[0,3][11]_i_10 
       (.I0(\grid_accumulators[0,3][11]_i_30_n_0 ),
        .I1(\grid_accumulators[0,3][11]_i_31_n_0 ),
        .O(\grid_accumulators[0,1]__111 [10]),
        .S(curr_row[2]));
  MUXF7 \grid_accumulators_reg[0,3][11]_i_11 
       (.I0(\grid_accumulators[0,3][11]_i_32_n_0 ),
        .I1(\grid_accumulators[0,3][11]_i_33_n_0 ),
        .O(\grid_accumulators[0,0]__226 [10]),
        .S(curr_row[2]));
  MUXF7 \grid_accumulators_reg[0,3][11]_i_12 
       (.I0(\grid_accumulators[0,3][11]_i_34_n_0 ),
        .I1(\grid_accumulators[0,3][11]_i_35_n_0 ),
        .O(\grid_accumulators[0,3]__111 [10]),
        .S(curr_row[2]));
  MUXF7 \grid_accumulators_reg[0,3][11]_i_13 
       (.I0(\grid_accumulators[0,3][11]_i_36_n_0 ),
        .I1(\grid_accumulators[0,3][11]_i_37_n_0 ),
        .O(\grid_accumulators[0,2]__111 [10]),
        .S(curr_row[2]));
  MUXF7 \grid_accumulators_reg[0,3][11]_i_14 
       (.I0(\grid_accumulators[0,3][11]_i_38_n_0 ),
        .I1(\grid_accumulators[0,3][11]_i_39_n_0 ),
        .O(\grid_accumulators[0,1]__111 [9]),
        .S(curr_row[2]));
  MUXF7 \grid_accumulators_reg[0,3][11]_i_15 
       (.I0(\grid_accumulators[0,3][11]_i_40_n_0 ),
        .I1(\grid_accumulators[0,3][11]_i_41_n_0 ),
        .O(\grid_accumulators[0,0]__226 [9]),
        .S(curr_row[2]));
  MUXF7 \grid_accumulators_reg[0,3][11]_i_16 
       (.I0(\grid_accumulators[0,3][11]_i_42_n_0 ),
        .I1(\grid_accumulators[0,3][11]_i_43_n_0 ),
        .O(\grid_accumulators[0,3]__111 [9]),
        .S(curr_row[2]));
  MUXF7 \grid_accumulators_reg[0,3][11]_i_17 
       (.I0(\grid_accumulators[0,3][11]_i_44_n_0 ),
        .I1(\grid_accumulators[0,3][11]_i_45_n_0 ),
        .O(\grid_accumulators[0,2]__111 [9]),
        .S(curr_row[2]));
  MUXF7 \grid_accumulators_reg[0,3][11]_i_18 
       (.I0(\grid_accumulators[0,3][11]_i_46_n_0 ),
        .I1(\grid_accumulators[0,3][11]_i_47_n_0 ),
        .O(\grid_accumulators[0,1]__111 [8]),
        .S(curr_row[2]));
  MUXF7 \grid_accumulators_reg[0,3][11]_i_19 
       (.I0(\grid_accumulators[0,3][11]_i_48_n_0 ),
        .I1(\grid_accumulators[0,3][11]_i_49_n_0 ),
        .O(\grid_accumulators[0,0]__226 [8]),
        .S(curr_row[2]));
  MUXF7 \grid_accumulators_reg[0,3][11]_i_20 
       (.I0(\grid_accumulators[0,3][11]_i_50_n_0 ),
        .I1(\grid_accumulators[0,3][11]_i_51_n_0 ),
        .O(\grid_accumulators[0,3]__111 [8]),
        .S(curr_row[2]));
  MUXF7 \grid_accumulators_reg[0,3][11]_i_21 
       (.I0(\grid_accumulators[0,3][11]_i_52_n_0 ),
        .I1(\grid_accumulators[0,3][11]_i_53_n_0 ),
        .O(\grid_accumulators[0,2]__111 [8]),
        .S(curr_row[2]));
  MUXF7 \grid_accumulators_reg[0,3][11]_i_6 
       (.I0(\grid_accumulators[0,3][11]_i_22_n_0 ),
        .I1(\grid_accumulators[0,3][11]_i_23_n_0 ),
        .O(\grid_accumulators[0,1]__111 [11]),
        .S(curr_row[2]));
  MUXF7 \grid_accumulators_reg[0,3][11]_i_7 
       (.I0(\grid_accumulators[0,3][11]_i_24_n_0 ),
        .I1(\grid_accumulators[0,3][11]_i_25_n_0 ),
        .O(\grid_accumulators[0,0]__226 [11]),
        .S(curr_row[2]));
  MUXF7 \grid_accumulators_reg[0,3][11]_i_8 
       (.I0(\grid_accumulators[0,3][11]_i_26_n_0 ),
        .I1(\grid_accumulators[0,3][11]_i_27_n_0 ),
        .O(\grid_accumulators[0,3]__111 [11]),
        .S(curr_row[2]));
  MUXF7 \grid_accumulators_reg[0,3][11]_i_9 
       (.I0(\grid_accumulators[0,3][11]_i_28_n_0 ),
        .I1(\grid_accumulators[0,3][11]_i_29_n_0 ),
        .O(\grid_accumulators[0,2]__111 [11]),
        .S(curr_row[2]));
  FDRE \grid_accumulators_reg[0,3][12] 
       (.C(clk),
        .CE(\grid_accumulators[0,3][15]_i_2_n_0 ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_7 ),
        .Q(p_0_out[4]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[0,3][13] 
       (.C(clk),
        .CE(\grid_accumulators[0,3][15]_i_2_n_0 ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_6 ),
        .Q(p_0_out[5]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[0,3][14] 
       (.C(clk),
        .CE(\grid_accumulators[0,3][15]_i_2_n_0 ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_5 ),
        .Q(p_0_out[6]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[0,3][15] 
       (.C(clk),
        .CE(\grid_accumulators[0,3][15]_i_2_n_0 ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_4 ),
        .Q(p_0_out[7]),
        .R(\grid_accumulators[7,3] ));
  MUXF7 \grid_accumulators_reg[0,3][15]_i_10 
       (.I0(\grid_accumulators[0,3][15]_i_27_n_0 ),
        .I1(\grid_accumulators[0,3][15]_i_28_n_0 ),
        .O(\grid_accumulators[0,0]__226 [15]),
        .S(curr_row[2]));
  MUXF7 \grid_accumulators_reg[0,3][15]_i_11 
       (.I0(\grid_accumulators[0,3][15]_i_29_n_0 ),
        .I1(\grid_accumulators[0,3][15]_i_30_n_0 ),
        .O(\grid_accumulators[0,3]__111 [15]),
        .S(curr_row[2]));
  MUXF7 \grid_accumulators_reg[0,3][15]_i_12 
       (.I0(\grid_accumulators[0,3][15]_i_31_n_0 ),
        .I1(\grid_accumulators[0,3][15]_i_32_n_0 ),
        .O(\grid_accumulators[0,2]__111 [15]),
        .S(curr_row[2]));
  MUXF7 \grid_accumulators_reg[0,3][15]_i_13 
       (.I0(\grid_accumulators[0,3][15]_i_33_n_0 ),
        .I1(\grid_accumulators[0,3][15]_i_34_n_0 ),
        .O(\grid_accumulators[0,1]__111 [14]),
        .S(curr_row[2]));
  MUXF7 \grid_accumulators_reg[0,3][15]_i_14 
       (.I0(\grid_accumulators[0,3][15]_i_35_n_0 ),
        .I1(\grid_accumulators[0,3][15]_i_36_n_0 ),
        .O(\grid_accumulators[0,0]__226 [14]),
        .S(curr_row[2]));
  MUXF7 \grid_accumulators_reg[0,3][15]_i_15 
       (.I0(\grid_accumulators[0,3][15]_i_37_n_0 ),
        .I1(\grid_accumulators[0,3][15]_i_38_n_0 ),
        .O(\grid_accumulators[0,3]__111 [14]),
        .S(curr_row[2]));
  MUXF7 \grid_accumulators_reg[0,3][15]_i_16 
       (.I0(\grid_accumulators[0,3][15]_i_39_n_0 ),
        .I1(\grid_accumulators[0,3][15]_i_40_n_0 ),
        .O(\grid_accumulators[0,2]__111 [14]),
        .S(curr_row[2]));
  MUXF7 \grid_accumulators_reg[0,3][15]_i_17 
       (.I0(\grid_accumulators[0,3][15]_i_41_n_0 ),
        .I1(\grid_accumulators[0,3][15]_i_42_n_0 ),
        .O(\grid_accumulators[0,1]__111 [13]),
        .S(curr_row[2]));
  MUXF7 \grid_accumulators_reg[0,3][15]_i_18 
       (.I0(\grid_accumulators[0,3][15]_i_43_n_0 ),
        .I1(\grid_accumulators[0,3][15]_i_44_n_0 ),
        .O(\grid_accumulators[0,0]__226 [13]),
        .S(curr_row[2]));
  MUXF7 \grid_accumulators_reg[0,3][15]_i_19 
       (.I0(\grid_accumulators[0,3][15]_i_45_n_0 ),
        .I1(\grid_accumulators[0,3][15]_i_46_n_0 ),
        .O(\grid_accumulators[0,3]__111 [13]),
        .S(curr_row[2]));
  MUXF7 \grid_accumulators_reg[0,3][15]_i_20 
       (.I0(\grid_accumulators[0,3][15]_i_47_n_0 ),
        .I1(\grid_accumulators[0,3][15]_i_48_n_0 ),
        .O(\grid_accumulators[0,2]__111 [13]),
        .S(curr_row[2]));
  MUXF7 \grid_accumulators_reg[0,3][15]_i_21 
       (.I0(\grid_accumulators[0,3][15]_i_49_n_0 ),
        .I1(\grid_accumulators[0,3][15]_i_50_n_0 ),
        .O(\grid_accumulators[0,1]__111 [12]),
        .S(curr_row[2]));
  MUXF7 \grid_accumulators_reg[0,3][15]_i_22 
       (.I0(\grid_accumulators[0,3][15]_i_51_n_0 ),
        .I1(\grid_accumulators[0,3][15]_i_52_n_0 ),
        .O(\grid_accumulators[0,0]__226 [12]),
        .S(curr_row[2]));
  MUXF7 \grid_accumulators_reg[0,3][15]_i_23 
       (.I0(\grid_accumulators[0,3][15]_i_53_n_0 ),
        .I1(\grid_accumulators[0,3][15]_i_54_n_0 ),
        .O(\grid_accumulators[0,3]__111 [12]),
        .S(curr_row[2]));
  MUXF7 \grid_accumulators_reg[0,3][15]_i_24 
       (.I0(\grid_accumulators[0,3][15]_i_55_n_0 ),
        .I1(\grid_accumulators[0,3][15]_i_56_n_0 ),
        .O(\grid_accumulators[0,2]__111 [12]),
        .S(curr_row[2]));
  CARRY4 \grid_accumulators_reg[0,3][15]_i_3 
       (.CI(\grid_accumulators_reg[0,3][11]_i_1_n_0 ),
        .CO({\NLW_grid_accumulators_reg[0,3][15]_i_3_CO_UNCONNECTED [3],\grid_accumulators_reg[0,3][15]_i_3_n_1 ,\grid_accumulators_reg[0,3][15]_i_3_n_2 ,\grid_accumulators_reg[0,3][15]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\grid_accumulators_reg[0,3][15]_i_3_n_4 ,\grid_accumulators_reg[0,3][15]_i_3_n_5 ,\grid_accumulators_reg[0,3][15]_i_3_n_6 ,\grid_accumulators_reg[0,3][15]_i_3_n_7 }),
        .S(\grid_accumulators[0,0] [15:12]));
  MUXF7 \grid_accumulators_reg[0,3][15]_i_9 
       (.I0(\grid_accumulators[0,3][15]_i_25_n_0 ),
        .I1(\grid_accumulators[0,3][15]_i_26_n_0 ),
        .O(\grid_accumulators[0,1]__111 [15]),
        .S(curr_row[2]));
  FDRE \grid_accumulators_reg[0,3][1] 
       (.C(clk),
        .CE(\grid_accumulators[0,3][15]_i_2_n_0 ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[0,_n_0_3][1] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[0,3][2] 
       (.C(clk),
        .CE(\grid_accumulators[0,3][15]_i_2_n_0 ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[0,_n_0_3][2] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[0,3][3] 
       (.C(clk),
        .CE(\grid_accumulators[0,3][15]_i_2_n_0 ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[0,_n_0_3][3] ),
        .R(\grid_accumulators[7,3] ));
  CARRY4 \grid_accumulators_reg[0,3][3]_i_1 
       (.CI(1'b0),
        .CO({\grid_accumulators_reg[0,3][3]_i_1_n_0 ,\grid_accumulators_reg[0,3][3]_i_1_n_1 ,\grid_accumulators_reg[0,3][3]_i_1_n_2 ,\grid_accumulators_reg[0,3][3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(p_0_in__1[3:0]),
        .O({\grid_accumulators_reg[0,3][3]_i_1_n_4 ,\grid_accumulators_reg[0,3][3]_i_1_n_5 ,\grid_accumulators_reg[0,3][3]_i_1_n_6 ,\grid_accumulators_reg[0,3][3]_i_1_n_7 }),
        .S({\grid_accumulators[0,3][3]_i_2_n_0 ,\grid_accumulators[0,3][3]_i_3_n_0 ,\grid_accumulators[0,3][3]_i_4_n_0 ,\grid_accumulators[0,3][3]_i_5_n_0 }));
  MUXF7 \grid_accumulators_reg[0,3][3]_i_11 
       (.I0(\grid_accumulators[0,3][3]_i_32_n_0 ),
        .I1(\grid_accumulators[0,3][3]_i_33_n_0 ),
        .O(\grid_accumulators[0,3]__111 [2]),
        .S(curr_row[2]));
  MUXF7 \grid_accumulators_reg[0,3][3]_i_15 
       (.I0(\grid_accumulators[0,3][3]_i_40_n_0 ),
        .I1(\grid_accumulators[0,3][3]_i_41_n_0 ),
        .O(\grid_accumulators[0,3]__111 [1]),
        .S(curr_row[2]));
  MUXF7 \grid_accumulators_reg[0,3][3]_i_19 
       (.I0(\grid_accumulators[0,3][3]_i_48_n_0 ),
        .I1(\grid_accumulators[0,3][3]_i_49_n_0 ),
        .O(\grid_accumulators[0,3]__111 [0]),
        .S(curr_row[2]));
  MUXF7 \grid_accumulators_reg[0,3][3]_i_7 
       (.I0(\grid_accumulators[0,3][3]_i_24_n_0 ),
        .I1(\grid_accumulators[0,3][3]_i_25_n_0 ),
        .O(\grid_accumulators[0,3]__111 [3]),
        .S(curr_row[2]));
  FDRE \grid_accumulators_reg[0,3][4] 
       (.C(clk),
        .CE(\grid_accumulators[0,3][15]_i_2_n_0 ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[0,_n_0_3][4] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[0,3][5] 
       (.C(clk),
        .CE(\grid_accumulators[0,3][15]_i_2_n_0 ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[0,_n_0_3][5] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[0,3][6] 
       (.C(clk),
        .CE(\grid_accumulators[0,3][15]_i_2_n_0 ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[0,_n_0_3][6] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[0,3][7] 
       (.C(clk),
        .CE(\grid_accumulators[0,3][15]_i_2_n_0 ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[0,_n_0_3][7] ),
        .R(\grid_accumulators[7,3] ));
  CARRY4 \grid_accumulators_reg[0,3][7]_i_1 
       (.CI(\grid_accumulators_reg[0,3][3]_i_1_n_0 ),
        .CO({\grid_accumulators_reg[0,3][7]_i_1_n_0 ,\grid_accumulators_reg[0,3][7]_i_1_n_1 ,\grid_accumulators_reg[0,3][7]_i_1_n_2 ,\grid_accumulators_reg[0,3][7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(p_0_in__1[7:4]),
        .O({\grid_accumulators_reg[0,3][7]_i_1_n_4 ,\grid_accumulators_reg[0,3][7]_i_1_n_5 ,\grid_accumulators_reg[0,3][7]_i_1_n_6 ,\grid_accumulators_reg[0,3][7]_i_1_n_7 }),
        .S({\grid_accumulators[0,3][7]_i_2_n_0 ,\grid_accumulators[0,3][7]_i_3_n_0 ,\grid_accumulators[0,3][7]_i_4_n_0 ,\grid_accumulators[0,3][7]_i_5_n_0 }));
  MUXF7 \grid_accumulators_reg[0,3][7]_i_12 
       (.I0(\grid_accumulators[0,3][7]_i_33_n_0 ),
        .I1(\grid_accumulators[0,3][7]_i_34_n_0 ),
        .O(\grid_accumulators[0,3]__111 [6]),
        .S(curr_row[2]));
  MUXF7 \grid_accumulators_reg[0,3][7]_i_16 
       (.I0(\grid_accumulators[0,3][7]_i_41_n_0 ),
        .I1(\grid_accumulators[0,3][7]_i_42_n_0 ),
        .O(\grid_accumulators[0,3]__111 [5]),
        .S(curr_row[2]));
  MUXF7 \grid_accumulators_reg[0,3][7]_i_20 
       (.I0(\grid_accumulators[0,3][7]_i_49_n_0 ),
        .I1(\grid_accumulators[0,3][7]_i_50_n_0 ),
        .O(\grid_accumulators[0,3]__111 [4]),
        .S(curr_row[2]));
  MUXF7 \grid_accumulators_reg[0,3][7]_i_8 
       (.I0(\grid_accumulators[0,3][7]_i_25_n_0 ),
        .I1(\grid_accumulators[0,3][7]_i_26_n_0 ),
        .O(\grid_accumulators[0,3]__111 [7]),
        .S(curr_row[2]));
  FDRE \grid_accumulators_reg[0,3][8] 
       (.C(clk),
        .CE(\grid_accumulators[0,3][15]_i_2_n_0 ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_7 ),
        .Q(p_0_out[0]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[0,3][9] 
       (.C(clk),
        .CE(\grid_accumulators[0,3][15]_i_2_n_0 ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_6 ),
        .Q(p_0_out[1]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[1,0][0] 
       (.C(clk),
        .CE(\grid_accumulators[1,0] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[1,0] [0]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[1,0][10] 
       (.C(clk),
        .CE(\grid_accumulators[1,0] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[1,0] [10]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[1,0][11] 
       (.C(clk),
        .CE(\grid_accumulators[1,0] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[1,0] [11]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[1,0][12] 
       (.C(clk),
        .CE(\grid_accumulators[1,0] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_7 ),
        .Q(\grid_accumulators_reg[1,0] [12]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[1,0][13] 
       (.C(clk),
        .CE(\grid_accumulators[1,0] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_6 ),
        .Q(\grid_accumulators_reg[1,0] [13]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[1,0][14] 
       (.C(clk),
        .CE(\grid_accumulators[1,0] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_5 ),
        .Q(\grid_accumulators_reg[1,0] [14]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[1,0][15] 
       (.C(clk),
        .CE(\grid_accumulators[1,0] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_4 ),
        .Q(\grid_accumulators_reg[1,0] [15]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[1,0][1] 
       (.C(clk),
        .CE(\grid_accumulators[1,0] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[1,0] [1]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[1,0][2] 
       (.C(clk),
        .CE(\grid_accumulators[1,0] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[1,0] [2]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[1,0][3] 
       (.C(clk),
        .CE(\grid_accumulators[1,0] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[1,0] [3]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[1,0][4] 
       (.C(clk),
        .CE(\grid_accumulators[1,0] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[1,0] [4]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[1,0][5] 
       (.C(clk),
        .CE(\grid_accumulators[1,0] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[1,0] [5]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[1,0][6] 
       (.C(clk),
        .CE(\grid_accumulators[1,0] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[1,0] [6]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[1,0][7] 
       (.C(clk),
        .CE(\grid_accumulators[1,0] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[1,0] [7]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[1,0][8] 
       (.C(clk),
        .CE(\grid_accumulators[1,0] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[1,0] [8]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[1,0][9] 
       (.C(clk),
        .CE(\grid_accumulators[1,0] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[1,0] [9]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[1,1][0] 
       (.C(clk),
        .CE(\grid_accumulators[1,1] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[1,1] [0]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[1,1][10] 
       (.C(clk),
        .CE(\grid_accumulators[1,1] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[1,1] [10]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[1,1][11] 
       (.C(clk),
        .CE(\grid_accumulators[1,1] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[1,1] [11]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[1,1][12] 
       (.C(clk),
        .CE(\grid_accumulators[1,1] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_7 ),
        .Q(\grid_accumulators_reg[1,1] [12]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[1,1][13] 
       (.C(clk),
        .CE(\grid_accumulators[1,1] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_6 ),
        .Q(\grid_accumulators_reg[1,1] [13]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[1,1][14] 
       (.C(clk),
        .CE(\grid_accumulators[1,1] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_5 ),
        .Q(\grid_accumulators_reg[1,1] [14]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[1,1][15] 
       (.C(clk),
        .CE(\grid_accumulators[1,1] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_4 ),
        .Q(\grid_accumulators_reg[1,1] [15]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[1,1][1] 
       (.C(clk),
        .CE(\grid_accumulators[1,1] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[1,1] [1]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[1,1][2] 
       (.C(clk),
        .CE(\grid_accumulators[1,1] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[1,1] [2]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[1,1][3] 
       (.C(clk),
        .CE(\grid_accumulators[1,1] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[1,1] [3]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[1,1][4] 
       (.C(clk),
        .CE(\grid_accumulators[1,1] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[1,1] [4]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[1,1][5] 
       (.C(clk),
        .CE(\grid_accumulators[1,1] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[1,1] [5]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[1,1][6] 
       (.C(clk),
        .CE(\grid_accumulators[1,1] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[1,1] [6]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[1,1][7] 
       (.C(clk),
        .CE(\grid_accumulators[1,1] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[1,1] [7]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[1,1][8] 
       (.C(clk),
        .CE(\grid_accumulators[1,1] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[1,1] [8]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[1,1][9] 
       (.C(clk),
        .CE(\grid_accumulators[1,1] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[1,1] [9]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[1,2][0] 
       (.C(clk),
        .CE(\grid_accumulators[1,2] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[1,2] [0]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[1,2][10] 
       (.C(clk),
        .CE(\grid_accumulators[1,2] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[1,2] [10]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[1,2][11] 
       (.C(clk),
        .CE(\grid_accumulators[1,2] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[1,2] [11]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[1,2][12] 
       (.C(clk),
        .CE(\grid_accumulators[1,2] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_7 ),
        .Q(\grid_accumulators_reg[1,2] [12]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[1,2][13] 
       (.C(clk),
        .CE(\grid_accumulators[1,2] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_6 ),
        .Q(\grid_accumulators_reg[1,2] [13]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[1,2][14] 
       (.C(clk),
        .CE(\grid_accumulators[1,2] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_5 ),
        .Q(\grid_accumulators_reg[1,2] [14]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[1,2][15] 
       (.C(clk),
        .CE(\grid_accumulators[1,2] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_4 ),
        .Q(\grid_accumulators_reg[1,2] [15]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[1,2][1] 
       (.C(clk),
        .CE(\grid_accumulators[1,2] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[1,2] [1]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[1,2][2] 
       (.C(clk),
        .CE(\grid_accumulators[1,2] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[1,2] [2]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[1,2][3] 
       (.C(clk),
        .CE(\grid_accumulators[1,2] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[1,2] [3]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[1,2][4] 
       (.C(clk),
        .CE(\grid_accumulators[1,2] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[1,2] [4]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[1,2][5] 
       (.C(clk),
        .CE(\grid_accumulators[1,2] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[1,2] [5]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[1,2][6] 
       (.C(clk),
        .CE(\grid_accumulators[1,2] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[1,2] [6]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[1,2][7] 
       (.C(clk),
        .CE(\grid_accumulators[1,2] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[1,2] [7]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[1,2][8] 
       (.C(clk),
        .CE(\grid_accumulators[1,2] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[1,2] [8]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[1,2][9] 
       (.C(clk),
        .CE(\grid_accumulators[1,2] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[1,2] [9]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[1,3][0] 
       (.C(clk),
        .CE(\grid_accumulators[1,3] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[1,3] [0]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[1,3][10] 
       (.C(clk),
        .CE(\grid_accumulators[1,3] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[1,3] [10]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[1,3][11] 
       (.C(clk),
        .CE(\grid_accumulators[1,3] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[1,3] [11]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[1,3][12] 
       (.C(clk),
        .CE(\grid_accumulators[1,3] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_7 ),
        .Q(\grid_accumulators_reg[1,3] [12]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[1,3][13] 
       (.C(clk),
        .CE(\grid_accumulators[1,3] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_6 ),
        .Q(\grid_accumulators_reg[1,3] [13]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[1,3][14] 
       (.C(clk),
        .CE(\grid_accumulators[1,3] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_5 ),
        .Q(\grid_accumulators_reg[1,3] [14]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[1,3][15] 
       (.C(clk),
        .CE(\grid_accumulators[1,3] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_4 ),
        .Q(\grid_accumulators_reg[1,3] [15]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[1,3][1] 
       (.C(clk),
        .CE(\grid_accumulators[1,3] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[1,3] [1]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[1,3][2] 
       (.C(clk),
        .CE(\grid_accumulators[1,3] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[1,3] [2]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[1,3][3] 
       (.C(clk),
        .CE(\grid_accumulators[1,3] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[1,3] [3]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[1,3][4] 
       (.C(clk),
        .CE(\grid_accumulators[1,3] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[1,3] [4]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[1,3][5] 
       (.C(clk),
        .CE(\grid_accumulators[1,3] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[1,3] [5]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[1,3][6] 
       (.C(clk),
        .CE(\grid_accumulators[1,3] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[1,3] [6]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[1,3][7] 
       (.C(clk),
        .CE(\grid_accumulators[1,3] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[1,3] [7]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[1,3][8] 
       (.C(clk),
        .CE(\grid_accumulators[1,3] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[1,3] [8]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[1,3][9] 
       (.C(clk),
        .CE(\grid_accumulators[1,3] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[1,3] [9]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[2,0][0] 
       (.C(clk),
        .CE(\grid_accumulators[2,0] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[2,0] [0]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[2,0][10] 
       (.C(clk),
        .CE(\grid_accumulators[2,0] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[2,0] [10]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[2,0][11] 
       (.C(clk),
        .CE(\grid_accumulators[2,0] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[2,0] [11]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[2,0][12] 
       (.C(clk),
        .CE(\grid_accumulators[2,0] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_7 ),
        .Q(\grid_accumulators_reg[2,0] [12]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[2,0][13] 
       (.C(clk),
        .CE(\grid_accumulators[2,0] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_6 ),
        .Q(\grid_accumulators_reg[2,0] [13]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[2,0][14] 
       (.C(clk),
        .CE(\grid_accumulators[2,0] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_5 ),
        .Q(\grid_accumulators_reg[2,0] [14]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[2,0][15] 
       (.C(clk),
        .CE(\grid_accumulators[2,0] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_4 ),
        .Q(\grid_accumulators_reg[2,0] [15]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[2,0][1] 
       (.C(clk),
        .CE(\grid_accumulators[2,0] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[2,0] [1]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[2,0][2] 
       (.C(clk),
        .CE(\grid_accumulators[2,0] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[2,0] [2]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[2,0][3] 
       (.C(clk),
        .CE(\grid_accumulators[2,0] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[2,0] [3]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[2,0][4] 
       (.C(clk),
        .CE(\grid_accumulators[2,0] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[2,0] [4]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[2,0][5] 
       (.C(clk),
        .CE(\grid_accumulators[2,0] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[2,0] [5]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[2,0][6] 
       (.C(clk),
        .CE(\grid_accumulators[2,0] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[2,0] [6]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[2,0][7] 
       (.C(clk),
        .CE(\grid_accumulators[2,0] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[2,0] [7]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[2,0][8] 
       (.C(clk),
        .CE(\grid_accumulators[2,0] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[2,0] [8]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[2,0][9] 
       (.C(clk),
        .CE(\grid_accumulators[2,0] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[2,0] [9]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[2,1][0] 
       (.C(clk),
        .CE(\grid_accumulators[2,1] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[2,1] [0]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[2,1][10] 
       (.C(clk),
        .CE(\grid_accumulators[2,1] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[2,1] [10]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[2,1][11] 
       (.C(clk),
        .CE(\grid_accumulators[2,1] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[2,1] [11]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[2,1][12] 
       (.C(clk),
        .CE(\grid_accumulators[2,1] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_7 ),
        .Q(\grid_accumulators_reg[2,1] [12]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[2,1][13] 
       (.C(clk),
        .CE(\grid_accumulators[2,1] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_6 ),
        .Q(\grid_accumulators_reg[2,1] [13]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[2,1][14] 
       (.C(clk),
        .CE(\grid_accumulators[2,1] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_5 ),
        .Q(\grid_accumulators_reg[2,1] [14]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[2,1][15] 
       (.C(clk),
        .CE(\grid_accumulators[2,1] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_4 ),
        .Q(\grid_accumulators_reg[2,1] [15]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[2,1][1] 
       (.C(clk),
        .CE(\grid_accumulators[2,1] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[2,1] [1]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[2,1][2] 
       (.C(clk),
        .CE(\grid_accumulators[2,1] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[2,1] [2]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[2,1][3] 
       (.C(clk),
        .CE(\grid_accumulators[2,1] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[2,1] [3]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[2,1][4] 
       (.C(clk),
        .CE(\grid_accumulators[2,1] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[2,1] [4]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[2,1][5] 
       (.C(clk),
        .CE(\grid_accumulators[2,1] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[2,1] [5]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[2,1][6] 
       (.C(clk),
        .CE(\grid_accumulators[2,1] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[2,1] [6]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[2,1][7] 
       (.C(clk),
        .CE(\grid_accumulators[2,1] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[2,1] [7]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[2,1][8] 
       (.C(clk),
        .CE(\grid_accumulators[2,1] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[2,1] [8]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[2,1][9] 
       (.C(clk),
        .CE(\grid_accumulators[2,1] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[2,1] [9]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[2,2][0] 
       (.C(clk),
        .CE(\grid_accumulators[2,2] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[2,2] [0]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[2,2][10] 
       (.C(clk),
        .CE(\grid_accumulators[2,2] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[2,2] [10]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[2,2][11] 
       (.C(clk),
        .CE(\grid_accumulators[2,2] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[2,2] [11]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[2,2][12] 
       (.C(clk),
        .CE(\grid_accumulators[2,2] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_7 ),
        .Q(\grid_accumulators_reg[2,2] [12]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[2,2][13] 
       (.C(clk),
        .CE(\grid_accumulators[2,2] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_6 ),
        .Q(\grid_accumulators_reg[2,2] [13]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[2,2][14] 
       (.C(clk),
        .CE(\grid_accumulators[2,2] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_5 ),
        .Q(\grid_accumulators_reg[2,2] [14]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[2,2][15] 
       (.C(clk),
        .CE(\grid_accumulators[2,2] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_4 ),
        .Q(\grid_accumulators_reg[2,2] [15]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[2,2][1] 
       (.C(clk),
        .CE(\grid_accumulators[2,2] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[2,2] [1]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[2,2][2] 
       (.C(clk),
        .CE(\grid_accumulators[2,2] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[2,2] [2]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[2,2][3] 
       (.C(clk),
        .CE(\grid_accumulators[2,2] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[2,2] [3]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[2,2][4] 
       (.C(clk),
        .CE(\grid_accumulators[2,2] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[2,2] [4]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[2,2][5] 
       (.C(clk),
        .CE(\grid_accumulators[2,2] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[2,2] [5]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[2,2][6] 
       (.C(clk),
        .CE(\grid_accumulators[2,2] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[2,2] [6]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[2,2][7] 
       (.C(clk),
        .CE(\grid_accumulators[2,2] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[2,2] [7]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[2,2][8] 
       (.C(clk),
        .CE(\grid_accumulators[2,2] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[2,2] [8]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[2,2][9] 
       (.C(clk),
        .CE(\grid_accumulators[2,2] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[2,2] [9]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[2,3][0] 
       (.C(clk),
        .CE(\grid_accumulators[2,3] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[2,3] [0]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[2,3][10] 
       (.C(clk),
        .CE(\grid_accumulators[2,3] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[2,3] [10]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[2,3][11] 
       (.C(clk),
        .CE(\grid_accumulators[2,3] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[2,3] [11]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[2,3][12] 
       (.C(clk),
        .CE(\grid_accumulators[2,3] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_7 ),
        .Q(\grid_accumulators_reg[2,3] [12]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[2,3][13] 
       (.C(clk),
        .CE(\grid_accumulators[2,3] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_6 ),
        .Q(\grid_accumulators_reg[2,3] [13]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[2,3][14] 
       (.C(clk),
        .CE(\grid_accumulators[2,3] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_5 ),
        .Q(\grid_accumulators_reg[2,3] [14]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[2,3][15] 
       (.C(clk),
        .CE(\grid_accumulators[2,3] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_4 ),
        .Q(\grid_accumulators_reg[2,3] [15]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[2,3][1] 
       (.C(clk),
        .CE(\grid_accumulators[2,3] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[2,3] [1]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[2,3][2] 
       (.C(clk),
        .CE(\grid_accumulators[2,3] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[2,3] [2]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[2,3][3] 
       (.C(clk),
        .CE(\grid_accumulators[2,3] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[2,3] [3]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[2,3][4] 
       (.C(clk),
        .CE(\grid_accumulators[2,3] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[2,3] [4]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[2,3][5] 
       (.C(clk),
        .CE(\grid_accumulators[2,3] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[2,3] [5]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[2,3][6] 
       (.C(clk),
        .CE(\grid_accumulators[2,3] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[2,3] [6]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[2,3][7] 
       (.C(clk),
        .CE(\grid_accumulators[2,3] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[2,3] [7]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[2,3][8] 
       (.C(clk),
        .CE(\grid_accumulators[2,3] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[2,3] [8]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[2,3][9] 
       (.C(clk),
        .CE(\grid_accumulators[2,3] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[2,3] [9]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[3,0][0] 
       (.C(clk),
        .CE(\grid_accumulators[3,0] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[3,0] [0]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[3,0][10] 
       (.C(clk),
        .CE(\grid_accumulators[3,0] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[3,0] [10]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[3,0][11] 
       (.C(clk),
        .CE(\grid_accumulators[3,0] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[3,0] [11]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[3,0][12] 
       (.C(clk),
        .CE(\grid_accumulators[3,0] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_7 ),
        .Q(\grid_accumulators_reg[3,0] [12]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[3,0][13] 
       (.C(clk),
        .CE(\grid_accumulators[3,0] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_6 ),
        .Q(\grid_accumulators_reg[3,0] [13]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[3,0][14] 
       (.C(clk),
        .CE(\grid_accumulators[3,0] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_5 ),
        .Q(\grid_accumulators_reg[3,0] [14]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[3,0][15] 
       (.C(clk),
        .CE(\grid_accumulators[3,0] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_4 ),
        .Q(\grid_accumulators_reg[3,0] [15]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[3,0][1] 
       (.C(clk),
        .CE(\grid_accumulators[3,0] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[3,0] [1]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[3,0][2] 
       (.C(clk),
        .CE(\grid_accumulators[3,0] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[3,0] [2]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[3,0][3] 
       (.C(clk),
        .CE(\grid_accumulators[3,0] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[3,0] [3]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[3,0][4] 
       (.C(clk),
        .CE(\grid_accumulators[3,0] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[3,0] [4]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[3,0][5] 
       (.C(clk),
        .CE(\grid_accumulators[3,0] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[3,0] [5]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[3,0][6] 
       (.C(clk),
        .CE(\grid_accumulators[3,0] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[3,0] [6]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[3,0][7] 
       (.C(clk),
        .CE(\grid_accumulators[3,0] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[3,0] [7]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[3,0][8] 
       (.C(clk),
        .CE(\grid_accumulators[3,0] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[3,0] [8]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[3,0][9] 
       (.C(clk),
        .CE(\grid_accumulators[3,0] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[3,0] [9]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[3,1][0] 
       (.C(clk),
        .CE(\grid_accumulators[3,1] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[3,1] [0]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[3,1][10] 
       (.C(clk),
        .CE(\grid_accumulators[3,1] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[3,1] [10]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[3,1][11] 
       (.C(clk),
        .CE(\grid_accumulators[3,1] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[3,1] [11]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[3,1][12] 
       (.C(clk),
        .CE(\grid_accumulators[3,1] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_7 ),
        .Q(\grid_accumulators_reg[3,1] [12]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[3,1][13] 
       (.C(clk),
        .CE(\grid_accumulators[3,1] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_6 ),
        .Q(\grid_accumulators_reg[3,1] [13]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[3,1][14] 
       (.C(clk),
        .CE(\grid_accumulators[3,1] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_5 ),
        .Q(\grid_accumulators_reg[3,1] [14]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[3,1][15] 
       (.C(clk),
        .CE(\grid_accumulators[3,1] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_4 ),
        .Q(\grid_accumulators_reg[3,1] [15]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[3,1][1] 
       (.C(clk),
        .CE(\grid_accumulators[3,1] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[3,1] [1]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[3,1][2] 
       (.C(clk),
        .CE(\grid_accumulators[3,1] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[3,1] [2]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[3,1][3] 
       (.C(clk),
        .CE(\grid_accumulators[3,1] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[3,1] [3]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[3,1][4] 
       (.C(clk),
        .CE(\grid_accumulators[3,1] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[3,1] [4]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[3,1][5] 
       (.C(clk),
        .CE(\grid_accumulators[3,1] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[3,1] [5]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[3,1][6] 
       (.C(clk),
        .CE(\grid_accumulators[3,1] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[3,1] [6]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[3,1][7] 
       (.C(clk),
        .CE(\grid_accumulators[3,1] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[3,1] [7]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[3,1][8] 
       (.C(clk),
        .CE(\grid_accumulators[3,1] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[3,1] [8]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[3,1][9] 
       (.C(clk),
        .CE(\grid_accumulators[3,1] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[3,1] [9]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[3,2][0] 
       (.C(clk),
        .CE(\grid_accumulators[3,2] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[3,2] [0]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[3,2][10] 
       (.C(clk),
        .CE(\grid_accumulators[3,2] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[3,2] [10]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[3,2][11] 
       (.C(clk),
        .CE(\grid_accumulators[3,2] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[3,2] [11]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[3,2][12] 
       (.C(clk),
        .CE(\grid_accumulators[3,2] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_7 ),
        .Q(\grid_accumulators_reg[3,2] [12]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[3,2][13] 
       (.C(clk),
        .CE(\grid_accumulators[3,2] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_6 ),
        .Q(\grid_accumulators_reg[3,2] [13]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[3,2][14] 
       (.C(clk),
        .CE(\grid_accumulators[3,2] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_5 ),
        .Q(\grid_accumulators_reg[3,2] [14]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[3,2][15] 
       (.C(clk),
        .CE(\grid_accumulators[3,2] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_4 ),
        .Q(\grid_accumulators_reg[3,2] [15]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[3,2][1] 
       (.C(clk),
        .CE(\grid_accumulators[3,2] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[3,2] [1]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[3,2][2] 
       (.C(clk),
        .CE(\grid_accumulators[3,2] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[3,2] [2]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[3,2][3] 
       (.C(clk),
        .CE(\grid_accumulators[3,2] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[3,2] [3]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[3,2][4] 
       (.C(clk),
        .CE(\grid_accumulators[3,2] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[3,2] [4]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[3,2][5] 
       (.C(clk),
        .CE(\grid_accumulators[3,2] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[3,2] [5]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[3,2][6] 
       (.C(clk),
        .CE(\grid_accumulators[3,2] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[3,2] [6]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[3,2][7] 
       (.C(clk),
        .CE(\grid_accumulators[3,2] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[3,2] [7]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[3,2][8] 
       (.C(clk),
        .CE(\grid_accumulators[3,2] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[3,2] [8]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[3,2][9] 
       (.C(clk),
        .CE(\grid_accumulators[3,2] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[3,2] [9]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[3,3][0] 
       (.C(clk),
        .CE(\grid_accumulators[3,3] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[3,3] [0]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[3,3][10] 
       (.C(clk),
        .CE(\grid_accumulators[3,3] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[3,3] [10]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[3,3][11] 
       (.C(clk),
        .CE(\grid_accumulators[3,3] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[3,3] [11]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[3,3][12] 
       (.C(clk),
        .CE(\grid_accumulators[3,3] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_7 ),
        .Q(\grid_accumulators_reg[3,3] [12]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[3,3][13] 
       (.C(clk),
        .CE(\grid_accumulators[3,3] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_6 ),
        .Q(\grid_accumulators_reg[3,3] [13]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[3,3][14] 
       (.C(clk),
        .CE(\grid_accumulators[3,3] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_5 ),
        .Q(\grid_accumulators_reg[3,3] [14]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[3,3][15] 
       (.C(clk),
        .CE(\grid_accumulators[3,3] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_4 ),
        .Q(\grid_accumulators_reg[3,3] [15]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[3,3][1] 
       (.C(clk),
        .CE(\grid_accumulators[3,3] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[3,3] [1]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[3,3][2] 
       (.C(clk),
        .CE(\grid_accumulators[3,3] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[3,3] [2]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[3,3][3] 
       (.C(clk),
        .CE(\grid_accumulators[3,3] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[3,3] [3]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[3,3][4] 
       (.C(clk),
        .CE(\grid_accumulators[3,3] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[3,3] [4]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[3,3][5] 
       (.C(clk),
        .CE(\grid_accumulators[3,3] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[3,3] [5]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[3,3][6] 
       (.C(clk),
        .CE(\grid_accumulators[3,3] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[3,3] [6]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[3,3][7] 
       (.C(clk),
        .CE(\grid_accumulators[3,3] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[3,3] [7]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[3,3][8] 
       (.C(clk),
        .CE(\grid_accumulators[3,3] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[3,3] [8]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[3,3][9] 
       (.C(clk),
        .CE(\grid_accumulators[3,3] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[3,3] [9]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[4,0][0] 
       (.C(clk),
        .CE(\grid_accumulators[4,0] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[4,0] [0]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[4,0][10] 
       (.C(clk),
        .CE(\grid_accumulators[4,0] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[4,0] [10]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[4,0][11] 
       (.C(clk),
        .CE(\grid_accumulators[4,0] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[4,0] [11]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[4,0][12] 
       (.C(clk),
        .CE(\grid_accumulators[4,0] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_7 ),
        .Q(\grid_accumulators_reg[4,0] [12]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[4,0][13] 
       (.C(clk),
        .CE(\grid_accumulators[4,0] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_6 ),
        .Q(\grid_accumulators_reg[4,0] [13]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[4,0][14] 
       (.C(clk),
        .CE(\grid_accumulators[4,0] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_5 ),
        .Q(\grid_accumulators_reg[4,0] [14]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[4,0][15] 
       (.C(clk),
        .CE(\grid_accumulators[4,0] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_4 ),
        .Q(\grid_accumulators_reg[4,0] [15]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[4,0][1] 
       (.C(clk),
        .CE(\grid_accumulators[4,0] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[4,0] [1]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[4,0][2] 
       (.C(clk),
        .CE(\grid_accumulators[4,0] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[4,0] [2]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[4,0][3] 
       (.C(clk),
        .CE(\grid_accumulators[4,0] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[4,0] [3]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[4,0][4] 
       (.C(clk),
        .CE(\grid_accumulators[4,0] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[4,0] [4]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[4,0][5] 
       (.C(clk),
        .CE(\grid_accumulators[4,0] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[4,0] [5]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[4,0][6] 
       (.C(clk),
        .CE(\grid_accumulators[4,0] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[4,0] [6]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[4,0][7] 
       (.C(clk),
        .CE(\grid_accumulators[4,0] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[4,0] [7]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[4,0][8] 
       (.C(clk),
        .CE(\grid_accumulators[4,0] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[4,0] [8]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[4,0][9] 
       (.C(clk),
        .CE(\grid_accumulators[4,0] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[4,0] [9]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[4,1][0] 
       (.C(clk),
        .CE(\grid_accumulators[4,1] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[4,1] [0]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[4,1][10] 
       (.C(clk),
        .CE(\grid_accumulators[4,1] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[4,1] [10]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[4,1][11] 
       (.C(clk),
        .CE(\grid_accumulators[4,1] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[4,1] [11]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[4,1][12] 
       (.C(clk),
        .CE(\grid_accumulators[4,1] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_7 ),
        .Q(\grid_accumulators_reg[4,1] [12]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[4,1][13] 
       (.C(clk),
        .CE(\grid_accumulators[4,1] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_6 ),
        .Q(\grid_accumulators_reg[4,1] [13]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[4,1][14] 
       (.C(clk),
        .CE(\grid_accumulators[4,1] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_5 ),
        .Q(\grid_accumulators_reg[4,1] [14]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[4,1][15] 
       (.C(clk),
        .CE(\grid_accumulators[4,1] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_4 ),
        .Q(\grid_accumulators_reg[4,1] [15]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[4,1][1] 
       (.C(clk),
        .CE(\grid_accumulators[4,1] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[4,1] [1]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[4,1][2] 
       (.C(clk),
        .CE(\grid_accumulators[4,1] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[4,1] [2]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[4,1][3] 
       (.C(clk),
        .CE(\grid_accumulators[4,1] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[4,1] [3]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[4,1][4] 
       (.C(clk),
        .CE(\grid_accumulators[4,1] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[4,1] [4]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[4,1][5] 
       (.C(clk),
        .CE(\grid_accumulators[4,1] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[4,1] [5]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[4,1][6] 
       (.C(clk),
        .CE(\grid_accumulators[4,1] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[4,1] [6]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[4,1][7] 
       (.C(clk),
        .CE(\grid_accumulators[4,1] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[4,1] [7]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[4,1][8] 
       (.C(clk),
        .CE(\grid_accumulators[4,1] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[4,1] [8]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[4,1][9] 
       (.C(clk),
        .CE(\grid_accumulators[4,1] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[4,1] [9]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[4,2][0] 
       (.C(clk),
        .CE(\grid_accumulators[4,2] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[4,2] [0]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[4,2][10] 
       (.C(clk),
        .CE(\grid_accumulators[4,2] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[4,2] [10]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[4,2][11] 
       (.C(clk),
        .CE(\grid_accumulators[4,2] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[4,2] [11]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[4,2][12] 
       (.C(clk),
        .CE(\grid_accumulators[4,2] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_7 ),
        .Q(\grid_accumulators_reg[4,2] [12]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[4,2][13] 
       (.C(clk),
        .CE(\grid_accumulators[4,2] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_6 ),
        .Q(\grid_accumulators_reg[4,2] [13]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[4,2][14] 
       (.C(clk),
        .CE(\grid_accumulators[4,2] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_5 ),
        .Q(\grid_accumulators_reg[4,2] [14]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[4,2][15] 
       (.C(clk),
        .CE(\grid_accumulators[4,2] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_4 ),
        .Q(\grid_accumulators_reg[4,2] [15]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[4,2][1] 
       (.C(clk),
        .CE(\grid_accumulators[4,2] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[4,2] [1]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[4,2][2] 
       (.C(clk),
        .CE(\grid_accumulators[4,2] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[4,2] [2]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[4,2][3] 
       (.C(clk),
        .CE(\grid_accumulators[4,2] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[4,2] [3]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[4,2][4] 
       (.C(clk),
        .CE(\grid_accumulators[4,2] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[4,2] [4]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[4,2][5] 
       (.C(clk),
        .CE(\grid_accumulators[4,2] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[4,2] [5]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[4,2][6] 
       (.C(clk),
        .CE(\grid_accumulators[4,2] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[4,2] [6]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[4,2][7] 
       (.C(clk),
        .CE(\grid_accumulators[4,2] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[4,2] [7]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[4,2][8] 
       (.C(clk),
        .CE(\grid_accumulators[4,2] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[4,2] [8]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[4,2][9] 
       (.C(clk),
        .CE(\grid_accumulators[4,2] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[4,2] [9]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[4,3][0] 
       (.C(clk),
        .CE(\grid_accumulators[4,3] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[4,3] [0]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[4,3][10] 
       (.C(clk),
        .CE(\grid_accumulators[4,3] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[4,3] [10]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[4,3][11] 
       (.C(clk),
        .CE(\grid_accumulators[4,3] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[4,3] [11]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[4,3][12] 
       (.C(clk),
        .CE(\grid_accumulators[4,3] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_7 ),
        .Q(\grid_accumulators_reg[4,3] [12]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[4,3][13] 
       (.C(clk),
        .CE(\grid_accumulators[4,3] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_6 ),
        .Q(\grid_accumulators_reg[4,3] [13]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[4,3][14] 
       (.C(clk),
        .CE(\grid_accumulators[4,3] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_5 ),
        .Q(\grid_accumulators_reg[4,3] [14]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[4,3][15] 
       (.C(clk),
        .CE(\grid_accumulators[4,3] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_4 ),
        .Q(\grid_accumulators_reg[4,3] [15]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[4,3][1] 
       (.C(clk),
        .CE(\grid_accumulators[4,3] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[4,3] [1]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[4,3][2] 
       (.C(clk),
        .CE(\grid_accumulators[4,3] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[4,3] [2]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[4,3][3] 
       (.C(clk),
        .CE(\grid_accumulators[4,3] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[4,3] [3]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[4,3][4] 
       (.C(clk),
        .CE(\grid_accumulators[4,3] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[4,3] [4]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[4,3][5] 
       (.C(clk),
        .CE(\grid_accumulators[4,3] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[4,3] [5]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[4,3][6] 
       (.C(clk),
        .CE(\grid_accumulators[4,3] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[4,3] [6]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[4,3][7] 
       (.C(clk),
        .CE(\grid_accumulators[4,3] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[4,3] [7]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[4,3][8] 
       (.C(clk),
        .CE(\grid_accumulators[4,3] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[4,3] [8]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[4,3][9] 
       (.C(clk),
        .CE(\grid_accumulators[4,3] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[4,3] [9]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[5,0][0] 
       (.C(clk),
        .CE(\grid_accumulators[5,0] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[5,0] [0]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[5,0][10] 
       (.C(clk),
        .CE(\grid_accumulators[5,0] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[5,0] [10]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[5,0][11] 
       (.C(clk),
        .CE(\grid_accumulators[5,0] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[5,0] [11]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[5,0][12] 
       (.C(clk),
        .CE(\grid_accumulators[5,0] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_7 ),
        .Q(\grid_accumulators_reg[5,0] [12]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[5,0][13] 
       (.C(clk),
        .CE(\grid_accumulators[5,0] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_6 ),
        .Q(\grid_accumulators_reg[5,0] [13]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[5,0][14] 
       (.C(clk),
        .CE(\grid_accumulators[5,0] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_5 ),
        .Q(\grid_accumulators_reg[5,0] [14]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[5,0][15] 
       (.C(clk),
        .CE(\grid_accumulators[5,0] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_4 ),
        .Q(\grid_accumulators_reg[5,0] [15]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[5,0][1] 
       (.C(clk),
        .CE(\grid_accumulators[5,0] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[5,0] [1]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[5,0][2] 
       (.C(clk),
        .CE(\grid_accumulators[5,0] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[5,0] [2]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[5,0][3] 
       (.C(clk),
        .CE(\grid_accumulators[5,0] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[5,0] [3]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[5,0][4] 
       (.C(clk),
        .CE(\grid_accumulators[5,0] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[5,0] [4]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[5,0][5] 
       (.C(clk),
        .CE(\grid_accumulators[5,0] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[5,0] [5]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[5,0][6] 
       (.C(clk),
        .CE(\grid_accumulators[5,0] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[5,0] [6]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[5,0][7] 
       (.C(clk),
        .CE(\grid_accumulators[5,0] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[5,0] [7]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[5,0][8] 
       (.C(clk),
        .CE(\grid_accumulators[5,0] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[5,0] [8]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[5,0][9] 
       (.C(clk),
        .CE(\grid_accumulators[5,0] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[5,0] [9]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[5,1][0] 
       (.C(clk),
        .CE(\grid_accumulators[5,1] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[5,1] [0]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[5,1][10] 
       (.C(clk),
        .CE(\grid_accumulators[5,1] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[5,1] [10]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[5,1][11] 
       (.C(clk),
        .CE(\grid_accumulators[5,1] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[5,1] [11]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[5,1][12] 
       (.C(clk),
        .CE(\grid_accumulators[5,1] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_7 ),
        .Q(\grid_accumulators_reg[5,1] [12]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[5,1][13] 
       (.C(clk),
        .CE(\grid_accumulators[5,1] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_6 ),
        .Q(\grid_accumulators_reg[5,1] [13]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[5,1][14] 
       (.C(clk),
        .CE(\grid_accumulators[5,1] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_5 ),
        .Q(\grid_accumulators_reg[5,1] [14]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[5,1][15] 
       (.C(clk),
        .CE(\grid_accumulators[5,1] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_4 ),
        .Q(\grid_accumulators_reg[5,1] [15]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[5,1][1] 
       (.C(clk),
        .CE(\grid_accumulators[5,1] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[5,1] [1]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[5,1][2] 
       (.C(clk),
        .CE(\grid_accumulators[5,1] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[5,1] [2]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[5,1][3] 
       (.C(clk),
        .CE(\grid_accumulators[5,1] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[5,1] [3]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[5,1][4] 
       (.C(clk),
        .CE(\grid_accumulators[5,1] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[5,1] [4]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[5,1][5] 
       (.C(clk),
        .CE(\grid_accumulators[5,1] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[5,1] [5]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[5,1][6] 
       (.C(clk),
        .CE(\grid_accumulators[5,1] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[5,1] [6]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[5,1][7] 
       (.C(clk),
        .CE(\grid_accumulators[5,1] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[5,1] [7]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[5,1][8] 
       (.C(clk),
        .CE(\grid_accumulators[5,1] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[5,1] [8]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[5,1][9] 
       (.C(clk),
        .CE(\grid_accumulators[5,1] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[5,1] [9]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[5,2][0] 
       (.C(clk),
        .CE(\grid_accumulators[5,2] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[5,2] [0]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[5,2][10] 
       (.C(clk),
        .CE(\grid_accumulators[5,2] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[5,2] [10]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[5,2][11] 
       (.C(clk),
        .CE(\grid_accumulators[5,2] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[5,2] [11]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[5,2][12] 
       (.C(clk),
        .CE(\grid_accumulators[5,2] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_7 ),
        .Q(\grid_accumulators_reg[5,2] [12]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[5,2][13] 
       (.C(clk),
        .CE(\grid_accumulators[5,2] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_6 ),
        .Q(\grid_accumulators_reg[5,2] [13]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[5,2][14] 
       (.C(clk),
        .CE(\grid_accumulators[5,2] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_5 ),
        .Q(\grid_accumulators_reg[5,2] [14]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[5,2][15] 
       (.C(clk),
        .CE(\grid_accumulators[5,2] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_4 ),
        .Q(\grid_accumulators_reg[5,2] [15]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[5,2][1] 
       (.C(clk),
        .CE(\grid_accumulators[5,2] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[5,2] [1]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[5,2][2] 
       (.C(clk),
        .CE(\grid_accumulators[5,2] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[5,2] [2]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[5,2][3] 
       (.C(clk),
        .CE(\grid_accumulators[5,2] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[5,2] [3]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[5,2][4] 
       (.C(clk),
        .CE(\grid_accumulators[5,2] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[5,2] [4]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[5,2][5] 
       (.C(clk),
        .CE(\grid_accumulators[5,2] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[5,2] [5]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[5,2][6] 
       (.C(clk),
        .CE(\grid_accumulators[5,2] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[5,2] [6]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[5,2][7] 
       (.C(clk),
        .CE(\grid_accumulators[5,2] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[5,2] [7]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[5,2][8] 
       (.C(clk),
        .CE(\grid_accumulators[5,2] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[5,2] [8]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[5,2][9] 
       (.C(clk),
        .CE(\grid_accumulators[5,2] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[5,2] [9]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[5,3][0] 
       (.C(clk),
        .CE(\grid_accumulators[5,3] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[5,3] [0]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[5,3][10] 
       (.C(clk),
        .CE(\grid_accumulators[5,3] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[5,3] [10]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[5,3][11] 
       (.C(clk),
        .CE(\grid_accumulators[5,3] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[5,3] [11]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[5,3][12] 
       (.C(clk),
        .CE(\grid_accumulators[5,3] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_7 ),
        .Q(\grid_accumulators_reg[5,3] [12]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[5,3][13] 
       (.C(clk),
        .CE(\grid_accumulators[5,3] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_6 ),
        .Q(\grid_accumulators_reg[5,3] [13]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[5,3][14] 
       (.C(clk),
        .CE(\grid_accumulators[5,3] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_5 ),
        .Q(\grid_accumulators_reg[5,3] [14]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[5,3][15] 
       (.C(clk),
        .CE(\grid_accumulators[5,3] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_4 ),
        .Q(\grid_accumulators_reg[5,3] [15]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[5,3][1] 
       (.C(clk),
        .CE(\grid_accumulators[5,3] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[5,3] [1]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[5,3][2] 
       (.C(clk),
        .CE(\grid_accumulators[5,3] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[5,3] [2]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[5,3][3] 
       (.C(clk),
        .CE(\grid_accumulators[5,3] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[5,3] [3]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[5,3][4] 
       (.C(clk),
        .CE(\grid_accumulators[5,3] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[5,3] [4]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[5,3][5] 
       (.C(clk),
        .CE(\grid_accumulators[5,3] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[5,3] [5]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[5,3][6] 
       (.C(clk),
        .CE(\grid_accumulators[5,3] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[5,3] [6]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[5,3][7] 
       (.C(clk),
        .CE(\grid_accumulators[5,3] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[5,3] [7]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[5,3][8] 
       (.C(clk),
        .CE(\grid_accumulators[5,3] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[5,3] [8]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[5,3][9] 
       (.C(clk),
        .CE(\grid_accumulators[5,3] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[5,3] [9]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[6,0][0] 
       (.C(clk),
        .CE(\grid_accumulators[6,0] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[6,0] [0]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[6,0][10] 
       (.C(clk),
        .CE(\grid_accumulators[6,0] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[6,0] [10]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[6,0][11] 
       (.C(clk),
        .CE(\grid_accumulators[6,0] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[6,0] [11]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[6,0][12] 
       (.C(clk),
        .CE(\grid_accumulators[6,0] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_7 ),
        .Q(\grid_accumulators_reg[6,0] [12]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[6,0][13] 
       (.C(clk),
        .CE(\grid_accumulators[6,0] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_6 ),
        .Q(\grid_accumulators_reg[6,0] [13]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[6,0][14] 
       (.C(clk),
        .CE(\grid_accumulators[6,0] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_5 ),
        .Q(\grid_accumulators_reg[6,0] [14]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[6,0][15] 
       (.C(clk),
        .CE(\grid_accumulators[6,0] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_4 ),
        .Q(\grid_accumulators_reg[6,0] [15]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[6,0][1] 
       (.C(clk),
        .CE(\grid_accumulators[6,0] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[6,0] [1]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[6,0][2] 
       (.C(clk),
        .CE(\grid_accumulators[6,0] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[6,0] [2]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[6,0][3] 
       (.C(clk),
        .CE(\grid_accumulators[6,0] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[6,0] [3]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[6,0][4] 
       (.C(clk),
        .CE(\grid_accumulators[6,0] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[6,0] [4]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[6,0][5] 
       (.C(clk),
        .CE(\grid_accumulators[6,0] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[6,0] [5]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[6,0][6] 
       (.C(clk),
        .CE(\grid_accumulators[6,0] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[6,0] [6]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[6,0][7] 
       (.C(clk),
        .CE(\grid_accumulators[6,0] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[6,0] [7]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[6,0][8] 
       (.C(clk),
        .CE(\grid_accumulators[6,0] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[6,0] [8]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[6,0][9] 
       (.C(clk),
        .CE(\grid_accumulators[6,0] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[6,0] [9]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[6,1][0] 
       (.C(clk),
        .CE(\grid_accumulators[6,1] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[6,1] [0]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[6,1][10] 
       (.C(clk),
        .CE(\grid_accumulators[6,1] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[6,1] [10]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[6,1][11] 
       (.C(clk),
        .CE(\grid_accumulators[6,1] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[6,1] [11]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[6,1][12] 
       (.C(clk),
        .CE(\grid_accumulators[6,1] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_7 ),
        .Q(\grid_accumulators_reg[6,1] [12]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[6,1][13] 
       (.C(clk),
        .CE(\grid_accumulators[6,1] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_6 ),
        .Q(\grid_accumulators_reg[6,1] [13]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[6,1][14] 
       (.C(clk),
        .CE(\grid_accumulators[6,1] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_5 ),
        .Q(\grid_accumulators_reg[6,1] [14]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[6,1][15] 
       (.C(clk),
        .CE(\grid_accumulators[6,1] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_4 ),
        .Q(\grid_accumulators_reg[6,1] [15]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[6,1][1] 
       (.C(clk),
        .CE(\grid_accumulators[6,1] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[6,1] [1]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[6,1][2] 
       (.C(clk),
        .CE(\grid_accumulators[6,1] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[6,1] [2]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[6,1][3] 
       (.C(clk),
        .CE(\grid_accumulators[6,1] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[6,1] [3]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[6,1][4] 
       (.C(clk),
        .CE(\grid_accumulators[6,1] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[6,1] [4]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[6,1][5] 
       (.C(clk),
        .CE(\grid_accumulators[6,1] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[6,1] [5]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[6,1][6] 
       (.C(clk),
        .CE(\grid_accumulators[6,1] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[6,1] [6]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[6,1][7] 
       (.C(clk),
        .CE(\grid_accumulators[6,1] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[6,1] [7]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[6,1][8] 
       (.C(clk),
        .CE(\grid_accumulators[6,1] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[6,1] [8]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[6,1][9] 
       (.C(clk),
        .CE(\grid_accumulators[6,1] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[6,1] [9]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[6,2][0] 
       (.C(clk),
        .CE(\grid_accumulators[6,2] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[6,2] [0]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[6,2][10] 
       (.C(clk),
        .CE(\grid_accumulators[6,2] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[6,2] [10]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[6,2][11] 
       (.C(clk),
        .CE(\grid_accumulators[6,2] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[6,2] [11]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[6,2][12] 
       (.C(clk),
        .CE(\grid_accumulators[6,2] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_7 ),
        .Q(\grid_accumulators_reg[6,2] [12]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[6,2][13] 
       (.C(clk),
        .CE(\grid_accumulators[6,2] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_6 ),
        .Q(\grid_accumulators_reg[6,2] [13]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[6,2][14] 
       (.C(clk),
        .CE(\grid_accumulators[6,2] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_5 ),
        .Q(\grid_accumulators_reg[6,2] [14]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[6,2][15] 
       (.C(clk),
        .CE(\grid_accumulators[6,2] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_4 ),
        .Q(\grid_accumulators_reg[6,2] [15]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[6,2][1] 
       (.C(clk),
        .CE(\grid_accumulators[6,2] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[6,2] [1]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[6,2][2] 
       (.C(clk),
        .CE(\grid_accumulators[6,2] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[6,2] [2]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[6,2][3] 
       (.C(clk),
        .CE(\grid_accumulators[6,2] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[6,2] [3]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[6,2][4] 
       (.C(clk),
        .CE(\grid_accumulators[6,2] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[6,2] [4]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[6,2][5] 
       (.C(clk),
        .CE(\grid_accumulators[6,2] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[6,2] [5]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[6,2][6] 
       (.C(clk),
        .CE(\grid_accumulators[6,2] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[6,2] [6]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[6,2][7] 
       (.C(clk),
        .CE(\grid_accumulators[6,2] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[6,2] [7]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[6,2][8] 
       (.C(clk),
        .CE(\grid_accumulators[6,2] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[6,2] [8]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[6,2][9] 
       (.C(clk),
        .CE(\grid_accumulators[6,2] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[6,2] [9]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[6,3][0] 
       (.C(clk),
        .CE(\grid_accumulators[6,3] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[6,3] [0]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[6,3][10] 
       (.C(clk),
        .CE(\grid_accumulators[6,3] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[6,3] [10]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[6,3][11] 
       (.C(clk),
        .CE(\grid_accumulators[6,3] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[6,3] [11]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[6,3][12] 
       (.C(clk),
        .CE(\grid_accumulators[6,3] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_7 ),
        .Q(\grid_accumulators_reg[6,3] [12]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[6,3][13] 
       (.C(clk),
        .CE(\grid_accumulators[6,3] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_6 ),
        .Q(\grid_accumulators_reg[6,3] [13]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[6,3][14] 
       (.C(clk),
        .CE(\grid_accumulators[6,3] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_5 ),
        .Q(\grid_accumulators_reg[6,3] [14]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[6,3][15] 
       (.C(clk),
        .CE(\grid_accumulators[6,3] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_4 ),
        .Q(\grid_accumulators_reg[6,3] [15]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[6,3][1] 
       (.C(clk),
        .CE(\grid_accumulators[6,3] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[6,3] [1]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[6,3][2] 
       (.C(clk),
        .CE(\grid_accumulators[6,3] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[6,3] [2]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[6,3][3] 
       (.C(clk),
        .CE(\grid_accumulators[6,3] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[6,3] [3]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[6,3][4] 
       (.C(clk),
        .CE(\grid_accumulators[6,3] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[6,3] [4]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[6,3][5] 
       (.C(clk),
        .CE(\grid_accumulators[6,3] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[6,3] [5]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[6,3][6] 
       (.C(clk),
        .CE(\grid_accumulators[6,3] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[6,3] [6]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[6,3][7] 
       (.C(clk),
        .CE(\grid_accumulators[6,3] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[6,3] [7]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[6,3][8] 
       (.C(clk),
        .CE(\grid_accumulators[6,3] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[6,3] [8]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[6,3][9] 
       (.C(clk),
        .CE(\grid_accumulators[6,3] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[6,3] [9]),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[7,0][0] 
       (.C(clk),
        .CE(\grid_accumulators[7,0] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[7,_n_0_0][0] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[7,0][10] 
       (.C(clk),
        .CE(\grid_accumulators[7,0] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[7,_n_0_0][10] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[7,0][11] 
       (.C(clk),
        .CE(\grid_accumulators[7,0] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[7,_n_0_0][11] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[7,0][12] 
       (.C(clk),
        .CE(\grid_accumulators[7,0] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_7 ),
        .Q(\grid_accumulators_reg[7,_n_0_0][12] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[7,0][13] 
       (.C(clk),
        .CE(\grid_accumulators[7,0] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_6 ),
        .Q(\grid_accumulators_reg[7,_n_0_0][13] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[7,0][14] 
       (.C(clk),
        .CE(\grid_accumulators[7,0] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_5 ),
        .Q(\grid_accumulators_reg[7,_n_0_0][14] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[7,0][15] 
       (.C(clk),
        .CE(\grid_accumulators[7,0] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_4 ),
        .Q(\grid_accumulators_reg[7,_n_0_0][15] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[7,0][1] 
       (.C(clk),
        .CE(\grid_accumulators[7,0] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[7,_n_0_0][1] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[7,0][2] 
       (.C(clk),
        .CE(\grid_accumulators[7,0] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[7,_n_0_0][2] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[7,0][3] 
       (.C(clk),
        .CE(\grid_accumulators[7,0] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[7,_n_0_0][3] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[7,0][4] 
       (.C(clk),
        .CE(\grid_accumulators[7,0] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[7,_n_0_0][4] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[7,0][5] 
       (.C(clk),
        .CE(\grid_accumulators[7,0] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[7,_n_0_0][5] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[7,0][6] 
       (.C(clk),
        .CE(\grid_accumulators[7,0] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[7,_n_0_0][6] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[7,0][7] 
       (.C(clk),
        .CE(\grid_accumulators[7,0] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[7,_n_0_0][7] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[7,0][8] 
       (.C(clk),
        .CE(\grid_accumulators[7,0] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[7,_n_0_0][8] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[7,0][9] 
       (.C(clk),
        .CE(\grid_accumulators[7,0] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[7,_n_0_0][9] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[7,1][0] 
       (.C(clk),
        .CE(\grid_accumulators[7,1] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[7,_n_0_1][0] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[7,1][10] 
       (.C(clk),
        .CE(\grid_accumulators[7,1] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[7,_n_0_1][10] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[7,1][11] 
       (.C(clk),
        .CE(\grid_accumulators[7,1] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[7,_n_0_1][11] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[7,1][12] 
       (.C(clk),
        .CE(\grid_accumulators[7,1] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_7 ),
        .Q(\grid_accumulators_reg[7,_n_0_1][12] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[7,1][13] 
       (.C(clk),
        .CE(\grid_accumulators[7,1] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_6 ),
        .Q(\grid_accumulators_reg[7,_n_0_1][13] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[7,1][14] 
       (.C(clk),
        .CE(\grid_accumulators[7,1] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_5 ),
        .Q(\grid_accumulators_reg[7,_n_0_1][14] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[7,1][15] 
       (.C(clk),
        .CE(\grid_accumulators[7,1] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_4 ),
        .Q(\grid_accumulators_reg[7,_n_0_1][15] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[7,1][1] 
       (.C(clk),
        .CE(\grid_accumulators[7,1] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[7,_n_0_1][1] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[7,1][2] 
       (.C(clk),
        .CE(\grid_accumulators[7,1] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[7,_n_0_1][2] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[7,1][3] 
       (.C(clk),
        .CE(\grid_accumulators[7,1] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[7,_n_0_1][3] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[7,1][4] 
       (.C(clk),
        .CE(\grid_accumulators[7,1] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[7,_n_0_1][4] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[7,1][5] 
       (.C(clk),
        .CE(\grid_accumulators[7,1] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[7,_n_0_1][5] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[7,1][6] 
       (.C(clk),
        .CE(\grid_accumulators[7,1] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[7,_n_0_1][6] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[7,1][7] 
       (.C(clk),
        .CE(\grid_accumulators[7,1] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[7,_n_0_1][7] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[7,1][8] 
       (.C(clk),
        .CE(\grid_accumulators[7,1] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[7,_n_0_1][8] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[7,1][9] 
       (.C(clk),
        .CE(\grid_accumulators[7,1] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[7,_n_0_1][9] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[7,2][0] 
       (.C(clk),
        .CE(\grid_accumulators[7,2] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[7,_n_0_2][0] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[7,2][10] 
       (.C(clk),
        .CE(\grid_accumulators[7,2] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[7,_n_0_2][10] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[7,2][11] 
       (.C(clk),
        .CE(\grid_accumulators[7,2] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[7,_n_0_2][11] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[7,2][12] 
       (.C(clk),
        .CE(\grid_accumulators[7,2] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_7 ),
        .Q(\grid_accumulators_reg[7,_n_0_2][12] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[7,2][13] 
       (.C(clk),
        .CE(\grid_accumulators[7,2] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_6 ),
        .Q(\grid_accumulators_reg[7,_n_0_2][13] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[7,2][14] 
       (.C(clk),
        .CE(\grid_accumulators[7,2] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_5 ),
        .Q(\grid_accumulators_reg[7,_n_0_2][14] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[7,2][15] 
       (.C(clk),
        .CE(\grid_accumulators[7,2] ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_4 ),
        .Q(\grid_accumulators_reg[7,_n_0_2][15] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[7,2][1] 
       (.C(clk),
        .CE(\grid_accumulators[7,2] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[7,_n_0_2][1] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[7,2][2] 
       (.C(clk),
        .CE(\grid_accumulators[7,2] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[7,_n_0_2][2] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[7,2][3] 
       (.C(clk),
        .CE(\grid_accumulators[7,2] ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[7,_n_0_2][3] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[7,2][4] 
       (.C(clk),
        .CE(\grid_accumulators[7,2] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[7,_n_0_2][4] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[7,2][5] 
       (.C(clk),
        .CE(\grid_accumulators[7,2] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[7,_n_0_2][5] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[7,2][6] 
       (.C(clk),
        .CE(\grid_accumulators[7,2] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[7,_n_0_2][6] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[7,2][7] 
       (.C(clk),
        .CE(\grid_accumulators[7,2] ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[7,_n_0_2][7] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[7,2][8] 
       (.C(clk),
        .CE(\grid_accumulators[7,2] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[7,_n_0_2][8] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[7,2][9] 
       (.C(clk),
        .CE(\grid_accumulators[7,2] ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[7,_n_0_2][9] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[7,3][0] 
       (.C(clk),
        .CE(\grid_accumulators[7,3][15]_i_1_n_0 ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[7,_n_0_3][0] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[7,3][10] 
       (.C(clk),
        .CE(\grid_accumulators[7,3][15]_i_1_n_0 ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[7,_n_0_3][10] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[7,3][11] 
       (.C(clk),
        .CE(\grid_accumulators[7,3][15]_i_1_n_0 ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[7,_n_0_3][11] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[7,3][12] 
       (.C(clk),
        .CE(\grid_accumulators[7,3][15]_i_1_n_0 ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_7 ),
        .Q(\grid_accumulators_reg[7,_n_0_3][12] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[7,3][13] 
       (.C(clk),
        .CE(\grid_accumulators[7,3][15]_i_1_n_0 ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_6 ),
        .Q(\grid_accumulators_reg[7,_n_0_3][13] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[7,3][14] 
       (.C(clk),
        .CE(\grid_accumulators[7,3][15]_i_1_n_0 ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_5 ),
        .Q(\grid_accumulators_reg[7,_n_0_3][14] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[7,3][15] 
       (.C(clk),
        .CE(\grid_accumulators[7,3][15]_i_1_n_0 ),
        .D(\grid_accumulators_reg[0,3][15]_i_3_n_4 ),
        .Q(\grid_accumulators_reg[7,_n_0_3][15] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[7,3][1] 
       (.C(clk),
        .CE(\grid_accumulators[7,3][15]_i_1_n_0 ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[7,_n_0_3][1] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[7,3][2] 
       (.C(clk),
        .CE(\grid_accumulators[7,3][15]_i_1_n_0 ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[7,_n_0_3][2] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[7,3][3] 
       (.C(clk),
        .CE(\grid_accumulators[7,3][15]_i_1_n_0 ),
        .D(\grid_accumulators_reg[0,3][3]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[7,_n_0_3][3] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[7,3][4] 
       (.C(clk),
        .CE(\grid_accumulators[7,3][15]_i_1_n_0 ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[7,_n_0_3][4] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[7,3][5] 
       (.C(clk),
        .CE(\grid_accumulators[7,3][15]_i_1_n_0 ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[7,_n_0_3][5] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[7,3][6] 
       (.C(clk),
        .CE(\grid_accumulators[7,3][15]_i_1_n_0 ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_5 ),
        .Q(\grid_accumulators_reg[7,_n_0_3][6] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[7,3][7] 
       (.C(clk),
        .CE(\grid_accumulators[7,3][15]_i_1_n_0 ),
        .D(\grid_accumulators_reg[0,3][7]_i_1_n_4 ),
        .Q(\grid_accumulators_reg[7,_n_0_3][7] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[7,3][8] 
       (.C(clk),
        .CE(\grid_accumulators[7,3][15]_i_1_n_0 ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_7 ),
        .Q(\grid_accumulators_reg[7,_n_0_3][8] ),
        .R(\grid_accumulators[7,3] ));
  FDRE \grid_accumulators_reg[7,3][9] 
       (.C(clk),
        .CE(\grid_accumulators[7,3][15]_i_1_n_0 ),
        .D(\grid_accumulators_reg[0,3][11]_i_1_n_6 ),
        .Q(\grid_accumulators_reg[7,_n_0_3][9] ),
        .R(\grid_accumulators[7,3] ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \h_count[0]_i_1 
       (.I0(h_count_reg[0]),
        .O(p_0_in[0]));
  LUT3 #(
    .INIT(8'hBA)) 
    \h_count[10]_i_1 
       (.I0(rst),
        .I1(vde_prev),
        .I2(vde_in),
        .O(\h_count[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2A2A2A2A2A2AAA2A)) 
    \h_count[10]_i_2 
       (.I0(vde_in),
        .I1(h_count_reg[9]),
        .I2(h_count_reg[10]),
        .I3(\h_count[10]_i_4_n_0 ),
        .I4(\h_count[10]_i_5_n_0 ),
        .I5(h_count_reg[6]),
        .O(h_count));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \h_count[10]_i_3 
       (.I0(h_count_reg[8]),
        .I1(h_count_reg[6]),
        .I2(\h_count[10]_i_6_n_0 ),
        .I3(h_count_reg[7]),
        .I4(h_count_reg[9]),
        .I5(h_count_reg[10]),
        .O(p_0_in[10]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \h_count[10]_i_4 
       (.I0(h_count_reg[3]),
        .I1(h_count_reg[2]),
        .I2(h_count_reg[5]),
        .I3(h_count_reg[4]),
        .I4(h_count_reg[1]),
        .I5(h_count_reg[0]),
        .O(\h_count[10]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \h_count[10]_i_5 
       (.I0(h_count_reg[7]),
        .I1(h_count_reg[8]),
        .O(\h_count[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \h_count[10]_i_6 
       (.I0(h_count_reg[5]),
        .I1(h_count_reg[3]),
        .I2(h_count_reg[1]),
        .I3(h_count_reg[0]),
        .I4(h_count_reg[2]),
        .I5(h_count_reg[4]),
        .O(\h_count[10]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \h_count[1]_i_1 
       (.I0(h_count_reg[0]),
        .I1(h_count_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \h_count[2]_i_1 
       (.I0(h_count_reg[0]),
        .I1(h_count_reg[1]),
        .I2(h_count_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \h_count[3]_i_1 
       (.I0(h_count_reg[1]),
        .I1(h_count_reg[0]),
        .I2(h_count_reg[2]),
        .I3(h_count_reg[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \h_count[4]_i_1 
       (.I0(h_count_reg[2]),
        .I1(h_count_reg[0]),
        .I2(h_count_reg[1]),
        .I3(h_count_reg[3]),
        .I4(h_count_reg[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \h_count[5]_i_1 
       (.I0(h_count_reg[3]),
        .I1(h_count_reg[1]),
        .I2(h_count_reg[0]),
        .I3(h_count_reg[2]),
        .I4(h_count_reg[4]),
        .I5(h_count_reg[5]),
        .O(p_0_in[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \h_count[6]_i_1 
       (.I0(\h_count[10]_i_6_n_0 ),
        .I1(h_count_reg[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \h_count[7]_i_1 
       (.I0(\h_count[10]_i_6_n_0 ),
        .I1(h_count_reg[6]),
        .I2(h_count_reg[7]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \h_count[8]_i_1 
       (.I0(h_count_reg[6]),
        .I1(\h_count[10]_i_6_n_0 ),
        .I2(h_count_reg[7]),
        .I3(h_count_reg[8]),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \h_count[9]_i_1 
       (.I0(h_count_reg[7]),
        .I1(\h_count[10]_i_6_n_0 ),
        .I2(h_count_reg[6]),
        .I3(h_count_reg[8]),
        .I4(h_count_reg[9]),
        .O(p_0_in[9]));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg[0] 
       (.C(clk),
        .CE(h_count),
        .D(p_0_in[0]),
        .Q(h_count_reg[0]),
        .R(\h_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg[10] 
       (.C(clk),
        .CE(h_count),
        .D(p_0_in[10]),
        .Q(h_count_reg[10]),
        .R(\h_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg[1] 
       (.C(clk),
        .CE(h_count),
        .D(p_0_in[1]),
        .Q(h_count_reg[1]),
        .R(\h_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg[2] 
       (.C(clk),
        .CE(h_count),
        .D(p_0_in[2]),
        .Q(h_count_reg[2]),
        .R(\h_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg[3] 
       (.C(clk),
        .CE(h_count),
        .D(p_0_in[3]),
        .Q(h_count_reg[3]),
        .R(\h_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg[4] 
       (.C(clk),
        .CE(h_count),
        .D(p_0_in[4]),
        .Q(h_count_reg[4]),
        .R(\h_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg[5] 
       (.C(clk),
        .CE(h_count),
        .D(p_0_in[5]),
        .Q(h_count_reg[5]),
        .R(\h_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg[6] 
       (.C(clk),
        .CE(h_count),
        .D(p_0_in[6]),
        .Q(h_count_reg[6]),
        .R(\h_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg[7] 
       (.C(clk),
        .CE(h_count),
        .D(p_0_in[7]),
        .Q(h_count_reg[7]),
        .R(\h_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg[8] 
       (.C(clk),
        .CE(h_count),
        .D(p_0_in[8]),
        .Q(h_count_reg[8]),
        .R(\h_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg[9] 
       (.C(clk),
        .CE(h_count),
        .D(p_0_in[9]),
        .Q(h_count_reg[9]),
        .R(\h_count[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0F0BA00)) 
    inside_grid_h_i_1
       (.I0(\curr_col[1]_i_3_n_0 ),
        .I1(inside_grid_h__30),
        .I2(inside_grid_h_reg_n_0),
        .I3(vde_in),
        .I4(\grid_accumulators[7,3] ),
        .O(inside_grid_h_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    inside_grid_h_i_2
       (.I0(sub_col_cnt[7]),
        .I1(sub_col_cnt[6]),
        .I2(inside_grid_h_i_3_n_0),
        .I3(sub_col_cnt[3]),
        .I4(sub_col_cnt[5]),
        .I5(sub_col_cnt[4]),
        .O(inside_grid_h__30));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    inside_grid_h_i_3
       (.I0(curr_col[0]),
        .I1(curr_col[1]),
        .I2(sub_col_cnt[0]),
        .I3(sub_col_cnt[1]),
        .I4(sub_col_cnt[2]),
        .O(inside_grid_h_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    inside_grid_h_reg
       (.C(clk),
        .CE(1'b1),
        .D(inside_grid_h_i_1_n_0),
        .Q(inside_grid_h_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000011F1F1F1)) 
    inside_grid_v_i_1
       (.I0(\curr_row[2]_i_4_n_0 ),
        .I1(\curr_row[2]_i_5_n_0 ),
        .I2(inside_grid_v_reg_n_0),
        .I3(inside_grid_v__2),
        .I4(inside_grid_v_i_3_n_0),
        .I5(\grid_accumulators[7,3] ),
        .O(inside_grid_v_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    inside_grid_v_i_2
       (.I0(\curr_row[2]_i_6_n_0 ),
        .I1(curr_row[0]),
        .I2(curr_row[1]),
        .I3(curr_row[2]),
        .I4(sub_row_cnt[0]),
        .I5(\curr_row[2]_i_8_n_0 ),
        .O(inside_grid_v__2));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    inside_grid_v_i_3
       (.I0(vde_in),
        .I1(vde_prev),
        .O(inside_grid_v_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    inside_grid_v_reg
       (.C(clk),
        .CE(1'b1),
        .D(inside_grid_v_i_1_n_0),
        .Q(inside_grid_v_reg_n_0),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \internal_matrix[7,3][7]_i_1 
       (.I0(vsync_in),
        .I1(vsync_prev),
        .O(v_started0));
  FDRE \internal_matrix_reg[0,0][0] 
       (.C(clk),
        .CE(v_started0),
        .D(p_3_out[0]),
        .Q(matrix_flat_out[0]),
        .R(rst));
  FDRE \internal_matrix_reg[0,0][1] 
       (.C(clk),
        .CE(v_started0),
        .D(p_3_out[1]),
        .Q(matrix_flat_out[1]),
        .R(rst));
  FDRE \internal_matrix_reg[0,0][2] 
       (.C(clk),
        .CE(v_started0),
        .D(p_3_out[2]),
        .Q(matrix_flat_out[2]),
        .R(rst));
  FDRE \internal_matrix_reg[0,0][3] 
       (.C(clk),
        .CE(v_started0),
        .D(p_3_out[3]),
        .Q(matrix_flat_out[3]),
        .R(rst));
  FDRE \internal_matrix_reg[0,0][4] 
       (.C(clk),
        .CE(v_started0),
        .D(p_3_out[4]),
        .Q(matrix_flat_out[4]),
        .R(rst));
  FDRE \internal_matrix_reg[0,0][5] 
       (.C(clk),
        .CE(v_started0),
        .D(p_3_out[5]),
        .Q(matrix_flat_out[5]),
        .R(rst));
  FDRE \internal_matrix_reg[0,0][6] 
       (.C(clk),
        .CE(v_started0),
        .D(p_3_out[6]),
        .Q(matrix_flat_out[6]),
        .R(rst));
  FDRE \internal_matrix_reg[0,0][7] 
       (.C(clk),
        .CE(v_started0),
        .D(p_3_out[7]),
        .Q(matrix_flat_out[7]),
        .R(rst));
  FDRE \internal_matrix_reg[0,1][0] 
       (.C(clk),
        .CE(v_started0),
        .D(p_2_out[0]),
        .Q(matrix_flat_out[8]),
        .R(rst));
  FDRE \internal_matrix_reg[0,1][1] 
       (.C(clk),
        .CE(v_started0),
        .D(p_2_out[1]),
        .Q(matrix_flat_out[9]),
        .R(rst));
  FDRE \internal_matrix_reg[0,1][2] 
       (.C(clk),
        .CE(v_started0),
        .D(p_2_out[2]),
        .Q(matrix_flat_out[10]),
        .R(rst));
  FDRE \internal_matrix_reg[0,1][3] 
       (.C(clk),
        .CE(v_started0),
        .D(p_2_out[3]),
        .Q(matrix_flat_out[11]),
        .R(rst));
  FDRE \internal_matrix_reg[0,1][4] 
       (.C(clk),
        .CE(v_started0),
        .D(p_2_out[4]),
        .Q(matrix_flat_out[12]),
        .R(rst));
  FDRE \internal_matrix_reg[0,1][5] 
       (.C(clk),
        .CE(v_started0),
        .D(p_2_out[5]),
        .Q(matrix_flat_out[13]),
        .R(rst));
  FDRE \internal_matrix_reg[0,1][6] 
       (.C(clk),
        .CE(v_started0),
        .D(p_2_out[6]),
        .Q(matrix_flat_out[14]),
        .R(rst));
  FDRE \internal_matrix_reg[0,1][7] 
       (.C(clk),
        .CE(v_started0),
        .D(p_2_out[7]),
        .Q(matrix_flat_out[15]),
        .R(rst));
  FDRE \internal_matrix_reg[0,2][0] 
       (.C(clk),
        .CE(v_started0),
        .D(p_1_out[0]),
        .Q(matrix_flat_out[16]),
        .R(rst));
  FDRE \internal_matrix_reg[0,2][1] 
       (.C(clk),
        .CE(v_started0),
        .D(p_1_out[1]),
        .Q(matrix_flat_out[17]),
        .R(rst));
  FDRE \internal_matrix_reg[0,2][2] 
       (.C(clk),
        .CE(v_started0),
        .D(p_1_out[2]),
        .Q(matrix_flat_out[18]),
        .R(rst));
  FDRE \internal_matrix_reg[0,2][3] 
       (.C(clk),
        .CE(v_started0),
        .D(p_1_out[3]),
        .Q(matrix_flat_out[19]),
        .R(rst));
  FDRE \internal_matrix_reg[0,2][4] 
       (.C(clk),
        .CE(v_started0),
        .D(p_1_out[4]),
        .Q(matrix_flat_out[20]),
        .R(rst));
  FDRE \internal_matrix_reg[0,2][5] 
       (.C(clk),
        .CE(v_started0),
        .D(p_1_out[5]),
        .Q(matrix_flat_out[21]),
        .R(rst));
  FDRE \internal_matrix_reg[0,2][6] 
       (.C(clk),
        .CE(v_started0),
        .D(p_1_out[6]),
        .Q(matrix_flat_out[22]),
        .R(rst));
  FDRE \internal_matrix_reg[0,2][7] 
       (.C(clk),
        .CE(v_started0),
        .D(p_1_out[7]),
        .Q(matrix_flat_out[23]),
        .R(rst));
  FDRE \internal_matrix_reg[0,3][0] 
       (.C(clk),
        .CE(v_started0),
        .D(p_0_out[0]),
        .Q(matrix_flat_out[24]),
        .R(rst));
  FDRE \internal_matrix_reg[0,3][1] 
       (.C(clk),
        .CE(v_started0),
        .D(p_0_out[1]),
        .Q(matrix_flat_out[25]),
        .R(rst));
  FDRE \internal_matrix_reg[0,3][2] 
       (.C(clk),
        .CE(v_started0),
        .D(p_0_out[2]),
        .Q(matrix_flat_out[26]),
        .R(rst));
  FDRE \internal_matrix_reg[0,3][3] 
       (.C(clk),
        .CE(v_started0),
        .D(p_0_out[3]),
        .Q(matrix_flat_out[27]),
        .R(rst));
  FDRE \internal_matrix_reg[0,3][4] 
       (.C(clk),
        .CE(v_started0),
        .D(p_0_out[4]),
        .Q(matrix_flat_out[28]),
        .R(rst));
  FDRE \internal_matrix_reg[0,3][5] 
       (.C(clk),
        .CE(v_started0),
        .D(p_0_out[5]),
        .Q(matrix_flat_out[29]),
        .R(rst));
  FDRE \internal_matrix_reg[0,3][6] 
       (.C(clk),
        .CE(v_started0),
        .D(p_0_out[6]),
        .Q(matrix_flat_out[30]),
        .R(rst));
  FDRE \internal_matrix_reg[0,3][7] 
       (.C(clk),
        .CE(v_started0),
        .D(p_0_out[7]),
        .Q(matrix_flat_out[31]),
        .R(rst));
  FDRE \internal_matrix_reg[1,0][0] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[1,0] [8]),
        .Q(matrix_flat_out[32]),
        .R(rst));
  FDRE \internal_matrix_reg[1,0][1] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[1,0] [9]),
        .Q(matrix_flat_out[33]),
        .R(rst));
  FDRE \internal_matrix_reg[1,0][2] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[1,0] [10]),
        .Q(matrix_flat_out[34]),
        .R(rst));
  FDRE \internal_matrix_reg[1,0][3] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[1,0] [11]),
        .Q(matrix_flat_out[35]),
        .R(rst));
  FDRE \internal_matrix_reg[1,0][4] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[1,0] [12]),
        .Q(matrix_flat_out[36]),
        .R(rst));
  FDRE \internal_matrix_reg[1,0][5] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[1,0] [13]),
        .Q(matrix_flat_out[37]),
        .R(rst));
  FDRE \internal_matrix_reg[1,0][6] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[1,0] [14]),
        .Q(matrix_flat_out[38]),
        .R(rst));
  FDRE \internal_matrix_reg[1,0][7] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[1,0] [15]),
        .Q(matrix_flat_out[39]),
        .R(rst));
  FDRE \internal_matrix_reg[1,1][0] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[1,1] [8]),
        .Q(matrix_flat_out[40]),
        .R(rst));
  FDRE \internal_matrix_reg[1,1][1] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[1,1] [9]),
        .Q(matrix_flat_out[41]),
        .R(rst));
  FDRE \internal_matrix_reg[1,1][2] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[1,1] [10]),
        .Q(matrix_flat_out[42]),
        .R(rst));
  FDRE \internal_matrix_reg[1,1][3] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[1,1] [11]),
        .Q(matrix_flat_out[43]),
        .R(rst));
  FDRE \internal_matrix_reg[1,1][4] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[1,1] [12]),
        .Q(matrix_flat_out[44]),
        .R(rst));
  FDRE \internal_matrix_reg[1,1][5] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[1,1] [13]),
        .Q(matrix_flat_out[45]),
        .R(rst));
  FDRE \internal_matrix_reg[1,1][6] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[1,1] [14]),
        .Q(matrix_flat_out[46]),
        .R(rst));
  FDRE \internal_matrix_reg[1,1][7] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[1,1] [15]),
        .Q(matrix_flat_out[47]),
        .R(rst));
  FDRE \internal_matrix_reg[1,2][0] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[1,2] [8]),
        .Q(matrix_flat_out[48]),
        .R(rst));
  FDRE \internal_matrix_reg[1,2][1] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[1,2] [9]),
        .Q(matrix_flat_out[49]),
        .R(rst));
  FDRE \internal_matrix_reg[1,2][2] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[1,2] [10]),
        .Q(matrix_flat_out[50]),
        .R(rst));
  FDRE \internal_matrix_reg[1,2][3] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[1,2] [11]),
        .Q(matrix_flat_out[51]),
        .R(rst));
  FDRE \internal_matrix_reg[1,2][4] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[1,2] [12]),
        .Q(matrix_flat_out[52]),
        .R(rst));
  FDRE \internal_matrix_reg[1,2][5] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[1,2] [13]),
        .Q(matrix_flat_out[53]),
        .R(rst));
  FDRE \internal_matrix_reg[1,2][6] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[1,2] [14]),
        .Q(matrix_flat_out[54]),
        .R(rst));
  FDRE \internal_matrix_reg[1,2][7] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[1,2] [15]),
        .Q(matrix_flat_out[55]),
        .R(rst));
  FDRE \internal_matrix_reg[1,3][0] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[1,3] [8]),
        .Q(matrix_flat_out[56]),
        .R(rst));
  FDRE \internal_matrix_reg[1,3][1] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[1,3] [9]),
        .Q(matrix_flat_out[57]),
        .R(rst));
  FDRE \internal_matrix_reg[1,3][2] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[1,3] [10]),
        .Q(matrix_flat_out[58]),
        .R(rst));
  FDRE \internal_matrix_reg[1,3][3] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[1,3] [11]),
        .Q(matrix_flat_out[59]),
        .R(rst));
  FDRE \internal_matrix_reg[1,3][4] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[1,3] [12]),
        .Q(matrix_flat_out[60]),
        .R(rst));
  FDRE \internal_matrix_reg[1,3][5] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[1,3] [13]),
        .Q(matrix_flat_out[61]),
        .R(rst));
  FDRE \internal_matrix_reg[1,3][6] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[1,3] [14]),
        .Q(matrix_flat_out[62]),
        .R(rst));
  FDRE \internal_matrix_reg[1,3][7] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[1,3] [15]),
        .Q(matrix_flat_out[63]),
        .R(rst));
  FDRE \internal_matrix_reg[2,0][0] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[2,0] [8]),
        .Q(matrix_flat_out[64]),
        .R(rst));
  FDRE \internal_matrix_reg[2,0][1] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[2,0] [9]),
        .Q(matrix_flat_out[65]),
        .R(rst));
  FDRE \internal_matrix_reg[2,0][2] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[2,0] [10]),
        .Q(matrix_flat_out[66]),
        .R(rst));
  FDRE \internal_matrix_reg[2,0][3] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[2,0] [11]),
        .Q(matrix_flat_out[67]),
        .R(rst));
  FDRE \internal_matrix_reg[2,0][4] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[2,0] [12]),
        .Q(matrix_flat_out[68]),
        .R(rst));
  FDRE \internal_matrix_reg[2,0][5] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[2,0] [13]),
        .Q(matrix_flat_out[69]),
        .R(rst));
  FDRE \internal_matrix_reg[2,0][6] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[2,0] [14]),
        .Q(matrix_flat_out[70]),
        .R(rst));
  FDRE \internal_matrix_reg[2,0][7] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[2,0] [15]),
        .Q(matrix_flat_out[71]),
        .R(rst));
  FDRE \internal_matrix_reg[2,1][0] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[2,1] [8]),
        .Q(matrix_flat_out[72]),
        .R(rst));
  FDRE \internal_matrix_reg[2,1][1] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[2,1] [9]),
        .Q(matrix_flat_out[73]),
        .R(rst));
  FDRE \internal_matrix_reg[2,1][2] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[2,1] [10]),
        .Q(matrix_flat_out[74]),
        .R(rst));
  FDRE \internal_matrix_reg[2,1][3] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[2,1] [11]),
        .Q(matrix_flat_out[75]),
        .R(rst));
  FDRE \internal_matrix_reg[2,1][4] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[2,1] [12]),
        .Q(matrix_flat_out[76]),
        .R(rst));
  FDRE \internal_matrix_reg[2,1][5] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[2,1] [13]),
        .Q(matrix_flat_out[77]),
        .R(rst));
  FDRE \internal_matrix_reg[2,1][6] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[2,1] [14]),
        .Q(matrix_flat_out[78]),
        .R(rst));
  FDRE \internal_matrix_reg[2,1][7] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[2,1] [15]),
        .Q(matrix_flat_out[79]),
        .R(rst));
  FDRE \internal_matrix_reg[2,2][0] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[2,2] [8]),
        .Q(matrix_flat_out[80]),
        .R(rst));
  FDRE \internal_matrix_reg[2,2][1] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[2,2] [9]),
        .Q(matrix_flat_out[81]),
        .R(rst));
  FDRE \internal_matrix_reg[2,2][2] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[2,2] [10]),
        .Q(matrix_flat_out[82]),
        .R(rst));
  FDRE \internal_matrix_reg[2,2][3] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[2,2] [11]),
        .Q(matrix_flat_out[83]),
        .R(rst));
  FDRE \internal_matrix_reg[2,2][4] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[2,2] [12]),
        .Q(matrix_flat_out[84]),
        .R(rst));
  FDRE \internal_matrix_reg[2,2][5] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[2,2] [13]),
        .Q(matrix_flat_out[85]),
        .R(rst));
  FDRE \internal_matrix_reg[2,2][6] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[2,2] [14]),
        .Q(matrix_flat_out[86]),
        .R(rst));
  FDRE \internal_matrix_reg[2,2][7] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[2,2] [15]),
        .Q(matrix_flat_out[87]),
        .R(rst));
  FDRE \internal_matrix_reg[2,3][0] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[2,3] [8]),
        .Q(matrix_flat_out[88]),
        .R(rst));
  FDRE \internal_matrix_reg[2,3][1] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[2,3] [9]),
        .Q(matrix_flat_out[89]),
        .R(rst));
  FDRE \internal_matrix_reg[2,3][2] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[2,3] [10]),
        .Q(matrix_flat_out[90]),
        .R(rst));
  FDRE \internal_matrix_reg[2,3][3] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[2,3] [11]),
        .Q(matrix_flat_out[91]),
        .R(rst));
  FDRE \internal_matrix_reg[2,3][4] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[2,3] [12]),
        .Q(matrix_flat_out[92]),
        .R(rst));
  FDRE \internal_matrix_reg[2,3][5] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[2,3] [13]),
        .Q(matrix_flat_out[93]),
        .R(rst));
  FDRE \internal_matrix_reg[2,3][6] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[2,3] [14]),
        .Q(matrix_flat_out[94]),
        .R(rst));
  FDRE \internal_matrix_reg[2,3][7] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[2,3] [15]),
        .Q(matrix_flat_out[95]),
        .R(rst));
  FDRE \internal_matrix_reg[3,0][0] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[3,0] [8]),
        .Q(matrix_flat_out[96]),
        .R(rst));
  FDRE \internal_matrix_reg[3,0][1] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[3,0] [9]),
        .Q(matrix_flat_out[97]),
        .R(rst));
  FDRE \internal_matrix_reg[3,0][2] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[3,0] [10]),
        .Q(matrix_flat_out[98]),
        .R(rst));
  FDRE \internal_matrix_reg[3,0][3] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[3,0] [11]),
        .Q(matrix_flat_out[99]),
        .R(rst));
  FDRE \internal_matrix_reg[3,0][4] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[3,0] [12]),
        .Q(matrix_flat_out[100]),
        .R(rst));
  FDRE \internal_matrix_reg[3,0][5] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[3,0] [13]),
        .Q(matrix_flat_out[101]),
        .R(rst));
  FDRE \internal_matrix_reg[3,0][6] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[3,0] [14]),
        .Q(matrix_flat_out[102]),
        .R(rst));
  FDRE \internal_matrix_reg[3,0][7] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[3,0] [15]),
        .Q(matrix_flat_out[103]),
        .R(rst));
  FDRE \internal_matrix_reg[3,1][0] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[3,1] [8]),
        .Q(matrix_flat_out[104]),
        .R(rst));
  FDRE \internal_matrix_reg[3,1][1] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[3,1] [9]),
        .Q(matrix_flat_out[105]),
        .R(rst));
  FDRE \internal_matrix_reg[3,1][2] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[3,1] [10]),
        .Q(matrix_flat_out[106]),
        .R(rst));
  FDRE \internal_matrix_reg[3,1][3] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[3,1] [11]),
        .Q(matrix_flat_out[107]),
        .R(rst));
  FDRE \internal_matrix_reg[3,1][4] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[3,1] [12]),
        .Q(matrix_flat_out[108]),
        .R(rst));
  FDRE \internal_matrix_reg[3,1][5] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[3,1] [13]),
        .Q(matrix_flat_out[109]),
        .R(rst));
  FDRE \internal_matrix_reg[3,1][6] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[3,1] [14]),
        .Q(matrix_flat_out[110]),
        .R(rst));
  FDRE \internal_matrix_reg[3,1][7] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[3,1] [15]),
        .Q(matrix_flat_out[111]),
        .R(rst));
  FDRE \internal_matrix_reg[3,2][0] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[3,2] [8]),
        .Q(matrix_flat_out[112]),
        .R(rst));
  FDRE \internal_matrix_reg[3,2][1] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[3,2] [9]),
        .Q(matrix_flat_out[113]),
        .R(rst));
  FDRE \internal_matrix_reg[3,2][2] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[3,2] [10]),
        .Q(matrix_flat_out[114]),
        .R(rst));
  FDRE \internal_matrix_reg[3,2][3] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[3,2] [11]),
        .Q(matrix_flat_out[115]),
        .R(rst));
  FDRE \internal_matrix_reg[3,2][4] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[3,2] [12]),
        .Q(matrix_flat_out[116]),
        .R(rst));
  FDRE \internal_matrix_reg[3,2][5] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[3,2] [13]),
        .Q(matrix_flat_out[117]),
        .R(rst));
  FDRE \internal_matrix_reg[3,2][6] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[3,2] [14]),
        .Q(matrix_flat_out[118]),
        .R(rst));
  FDRE \internal_matrix_reg[3,2][7] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[3,2] [15]),
        .Q(matrix_flat_out[119]),
        .R(rst));
  FDRE \internal_matrix_reg[3,3][0] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[3,3] [8]),
        .Q(matrix_flat_out[120]),
        .R(rst));
  FDRE \internal_matrix_reg[3,3][1] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[3,3] [9]),
        .Q(matrix_flat_out[121]),
        .R(rst));
  FDRE \internal_matrix_reg[3,3][2] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[3,3] [10]),
        .Q(matrix_flat_out[122]),
        .R(rst));
  FDRE \internal_matrix_reg[3,3][3] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[3,3] [11]),
        .Q(matrix_flat_out[123]),
        .R(rst));
  FDRE \internal_matrix_reg[3,3][4] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[3,3] [12]),
        .Q(matrix_flat_out[124]),
        .R(rst));
  FDRE \internal_matrix_reg[3,3][5] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[3,3] [13]),
        .Q(matrix_flat_out[125]),
        .R(rst));
  FDRE \internal_matrix_reg[3,3][6] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[3,3] [14]),
        .Q(matrix_flat_out[126]),
        .R(rst));
  FDRE \internal_matrix_reg[3,3][7] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[3,3] [15]),
        .Q(matrix_flat_out[127]),
        .R(rst));
  FDRE \internal_matrix_reg[4,0][0] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[4,0] [8]),
        .Q(matrix_flat_out[128]),
        .R(rst));
  FDRE \internal_matrix_reg[4,0][1] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[4,0] [9]),
        .Q(matrix_flat_out[129]),
        .R(rst));
  FDRE \internal_matrix_reg[4,0][2] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[4,0] [10]),
        .Q(matrix_flat_out[130]),
        .R(rst));
  FDRE \internal_matrix_reg[4,0][3] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[4,0] [11]),
        .Q(matrix_flat_out[131]),
        .R(rst));
  FDRE \internal_matrix_reg[4,0][4] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[4,0] [12]),
        .Q(matrix_flat_out[132]),
        .R(rst));
  FDRE \internal_matrix_reg[4,0][5] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[4,0] [13]),
        .Q(matrix_flat_out[133]),
        .R(rst));
  FDRE \internal_matrix_reg[4,0][6] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[4,0] [14]),
        .Q(matrix_flat_out[134]),
        .R(rst));
  FDRE \internal_matrix_reg[4,0][7] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[4,0] [15]),
        .Q(matrix_flat_out[135]),
        .R(rst));
  FDRE \internal_matrix_reg[4,1][0] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[4,1] [8]),
        .Q(matrix_flat_out[136]),
        .R(rst));
  FDRE \internal_matrix_reg[4,1][1] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[4,1] [9]),
        .Q(matrix_flat_out[137]),
        .R(rst));
  FDRE \internal_matrix_reg[4,1][2] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[4,1] [10]),
        .Q(matrix_flat_out[138]),
        .R(rst));
  FDRE \internal_matrix_reg[4,1][3] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[4,1] [11]),
        .Q(matrix_flat_out[139]),
        .R(rst));
  FDRE \internal_matrix_reg[4,1][4] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[4,1] [12]),
        .Q(matrix_flat_out[140]),
        .R(rst));
  FDRE \internal_matrix_reg[4,1][5] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[4,1] [13]),
        .Q(matrix_flat_out[141]),
        .R(rst));
  FDRE \internal_matrix_reg[4,1][6] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[4,1] [14]),
        .Q(matrix_flat_out[142]),
        .R(rst));
  FDRE \internal_matrix_reg[4,1][7] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[4,1] [15]),
        .Q(matrix_flat_out[143]),
        .R(rst));
  FDRE \internal_matrix_reg[4,2][0] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[4,2] [8]),
        .Q(matrix_flat_out[144]),
        .R(rst));
  FDRE \internal_matrix_reg[4,2][1] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[4,2] [9]),
        .Q(matrix_flat_out[145]),
        .R(rst));
  FDRE \internal_matrix_reg[4,2][2] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[4,2] [10]),
        .Q(matrix_flat_out[146]),
        .R(rst));
  FDRE \internal_matrix_reg[4,2][3] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[4,2] [11]),
        .Q(matrix_flat_out[147]),
        .R(rst));
  FDRE \internal_matrix_reg[4,2][4] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[4,2] [12]),
        .Q(matrix_flat_out[148]),
        .R(rst));
  FDRE \internal_matrix_reg[4,2][5] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[4,2] [13]),
        .Q(matrix_flat_out[149]),
        .R(rst));
  FDRE \internal_matrix_reg[4,2][6] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[4,2] [14]),
        .Q(matrix_flat_out[150]),
        .R(rst));
  FDRE \internal_matrix_reg[4,2][7] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[4,2] [15]),
        .Q(matrix_flat_out[151]),
        .R(rst));
  FDRE \internal_matrix_reg[4,3][0] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[4,3] [8]),
        .Q(matrix_flat_out[152]),
        .R(rst));
  FDRE \internal_matrix_reg[4,3][1] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[4,3] [9]),
        .Q(matrix_flat_out[153]),
        .R(rst));
  FDRE \internal_matrix_reg[4,3][2] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[4,3] [10]),
        .Q(matrix_flat_out[154]),
        .R(rst));
  FDRE \internal_matrix_reg[4,3][3] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[4,3] [11]),
        .Q(matrix_flat_out[155]),
        .R(rst));
  FDRE \internal_matrix_reg[4,3][4] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[4,3] [12]),
        .Q(matrix_flat_out[156]),
        .R(rst));
  FDRE \internal_matrix_reg[4,3][5] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[4,3] [13]),
        .Q(matrix_flat_out[157]),
        .R(rst));
  FDRE \internal_matrix_reg[4,3][6] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[4,3] [14]),
        .Q(matrix_flat_out[158]),
        .R(rst));
  FDRE \internal_matrix_reg[4,3][7] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[4,3] [15]),
        .Q(matrix_flat_out[159]),
        .R(rst));
  FDRE \internal_matrix_reg[5,0][0] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[5,0] [8]),
        .Q(matrix_flat_out[160]),
        .R(rst));
  FDRE \internal_matrix_reg[5,0][1] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[5,0] [9]),
        .Q(matrix_flat_out[161]),
        .R(rst));
  FDRE \internal_matrix_reg[5,0][2] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[5,0] [10]),
        .Q(matrix_flat_out[162]),
        .R(rst));
  FDRE \internal_matrix_reg[5,0][3] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[5,0] [11]),
        .Q(matrix_flat_out[163]),
        .R(rst));
  FDRE \internal_matrix_reg[5,0][4] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[5,0] [12]),
        .Q(matrix_flat_out[164]),
        .R(rst));
  FDRE \internal_matrix_reg[5,0][5] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[5,0] [13]),
        .Q(matrix_flat_out[165]),
        .R(rst));
  FDRE \internal_matrix_reg[5,0][6] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[5,0] [14]),
        .Q(matrix_flat_out[166]),
        .R(rst));
  FDRE \internal_matrix_reg[5,0][7] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[5,0] [15]),
        .Q(matrix_flat_out[167]),
        .R(rst));
  FDRE \internal_matrix_reg[5,1][0] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[5,1] [8]),
        .Q(matrix_flat_out[168]),
        .R(rst));
  FDRE \internal_matrix_reg[5,1][1] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[5,1] [9]),
        .Q(matrix_flat_out[169]),
        .R(rst));
  FDRE \internal_matrix_reg[5,1][2] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[5,1] [10]),
        .Q(matrix_flat_out[170]),
        .R(rst));
  FDRE \internal_matrix_reg[5,1][3] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[5,1] [11]),
        .Q(matrix_flat_out[171]),
        .R(rst));
  FDRE \internal_matrix_reg[5,1][4] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[5,1] [12]),
        .Q(matrix_flat_out[172]),
        .R(rst));
  FDRE \internal_matrix_reg[5,1][5] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[5,1] [13]),
        .Q(matrix_flat_out[173]),
        .R(rst));
  FDRE \internal_matrix_reg[5,1][6] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[5,1] [14]),
        .Q(matrix_flat_out[174]),
        .R(rst));
  FDRE \internal_matrix_reg[5,1][7] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[5,1] [15]),
        .Q(matrix_flat_out[175]),
        .R(rst));
  FDRE \internal_matrix_reg[5,2][0] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[5,2] [8]),
        .Q(matrix_flat_out[176]),
        .R(rst));
  FDRE \internal_matrix_reg[5,2][1] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[5,2] [9]),
        .Q(matrix_flat_out[177]),
        .R(rst));
  FDRE \internal_matrix_reg[5,2][2] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[5,2] [10]),
        .Q(matrix_flat_out[178]),
        .R(rst));
  FDRE \internal_matrix_reg[5,2][3] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[5,2] [11]),
        .Q(matrix_flat_out[179]),
        .R(rst));
  FDRE \internal_matrix_reg[5,2][4] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[5,2] [12]),
        .Q(matrix_flat_out[180]),
        .R(rst));
  FDRE \internal_matrix_reg[5,2][5] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[5,2] [13]),
        .Q(matrix_flat_out[181]),
        .R(rst));
  FDRE \internal_matrix_reg[5,2][6] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[5,2] [14]),
        .Q(matrix_flat_out[182]),
        .R(rst));
  FDRE \internal_matrix_reg[5,2][7] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[5,2] [15]),
        .Q(matrix_flat_out[183]),
        .R(rst));
  FDRE \internal_matrix_reg[5,3][0] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[5,3] [8]),
        .Q(matrix_flat_out[184]),
        .R(rst));
  FDRE \internal_matrix_reg[5,3][1] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[5,3] [9]),
        .Q(matrix_flat_out[185]),
        .R(rst));
  FDRE \internal_matrix_reg[5,3][2] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[5,3] [10]),
        .Q(matrix_flat_out[186]),
        .R(rst));
  FDRE \internal_matrix_reg[5,3][3] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[5,3] [11]),
        .Q(matrix_flat_out[187]),
        .R(rst));
  FDRE \internal_matrix_reg[5,3][4] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[5,3] [12]),
        .Q(matrix_flat_out[188]),
        .R(rst));
  FDRE \internal_matrix_reg[5,3][5] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[5,3] [13]),
        .Q(matrix_flat_out[189]),
        .R(rst));
  FDRE \internal_matrix_reg[5,3][6] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[5,3] [14]),
        .Q(matrix_flat_out[190]),
        .R(rst));
  FDRE \internal_matrix_reg[5,3][7] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[5,3] [15]),
        .Q(matrix_flat_out[191]),
        .R(rst));
  FDRE \internal_matrix_reg[6,0][0] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[6,0] [8]),
        .Q(matrix_flat_out[192]),
        .R(rst));
  FDRE \internal_matrix_reg[6,0][1] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[6,0] [9]),
        .Q(matrix_flat_out[193]),
        .R(rst));
  FDRE \internal_matrix_reg[6,0][2] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[6,0] [10]),
        .Q(matrix_flat_out[194]),
        .R(rst));
  FDRE \internal_matrix_reg[6,0][3] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[6,0] [11]),
        .Q(matrix_flat_out[195]),
        .R(rst));
  FDRE \internal_matrix_reg[6,0][4] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[6,0] [12]),
        .Q(matrix_flat_out[196]),
        .R(rst));
  FDRE \internal_matrix_reg[6,0][5] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[6,0] [13]),
        .Q(matrix_flat_out[197]),
        .R(rst));
  FDRE \internal_matrix_reg[6,0][6] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[6,0] [14]),
        .Q(matrix_flat_out[198]),
        .R(rst));
  FDRE \internal_matrix_reg[6,0][7] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[6,0] [15]),
        .Q(matrix_flat_out[199]),
        .R(rst));
  FDRE \internal_matrix_reg[6,1][0] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[6,1] [8]),
        .Q(matrix_flat_out[200]),
        .R(rst));
  FDRE \internal_matrix_reg[6,1][1] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[6,1] [9]),
        .Q(matrix_flat_out[201]),
        .R(rst));
  FDRE \internal_matrix_reg[6,1][2] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[6,1] [10]),
        .Q(matrix_flat_out[202]),
        .R(rst));
  FDRE \internal_matrix_reg[6,1][3] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[6,1] [11]),
        .Q(matrix_flat_out[203]),
        .R(rst));
  FDRE \internal_matrix_reg[6,1][4] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[6,1] [12]),
        .Q(matrix_flat_out[204]),
        .R(rst));
  FDRE \internal_matrix_reg[6,1][5] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[6,1] [13]),
        .Q(matrix_flat_out[205]),
        .R(rst));
  FDRE \internal_matrix_reg[6,1][6] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[6,1] [14]),
        .Q(matrix_flat_out[206]),
        .R(rst));
  FDRE \internal_matrix_reg[6,1][7] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[6,1] [15]),
        .Q(matrix_flat_out[207]),
        .R(rst));
  FDRE \internal_matrix_reg[6,2][0] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[6,2] [8]),
        .Q(matrix_flat_out[208]),
        .R(rst));
  FDRE \internal_matrix_reg[6,2][1] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[6,2] [9]),
        .Q(matrix_flat_out[209]),
        .R(rst));
  FDRE \internal_matrix_reg[6,2][2] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[6,2] [10]),
        .Q(matrix_flat_out[210]),
        .R(rst));
  FDRE \internal_matrix_reg[6,2][3] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[6,2] [11]),
        .Q(matrix_flat_out[211]),
        .R(rst));
  FDRE \internal_matrix_reg[6,2][4] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[6,2] [12]),
        .Q(matrix_flat_out[212]),
        .R(rst));
  FDRE \internal_matrix_reg[6,2][5] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[6,2] [13]),
        .Q(matrix_flat_out[213]),
        .R(rst));
  FDRE \internal_matrix_reg[6,2][6] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[6,2] [14]),
        .Q(matrix_flat_out[214]),
        .R(rst));
  FDRE \internal_matrix_reg[6,2][7] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[6,2] [15]),
        .Q(matrix_flat_out[215]),
        .R(rst));
  FDRE \internal_matrix_reg[6,3][0] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[6,3] [8]),
        .Q(matrix_flat_out[216]),
        .R(rst));
  FDRE \internal_matrix_reg[6,3][1] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[6,3] [9]),
        .Q(matrix_flat_out[217]),
        .R(rst));
  FDRE \internal_matrix_reg[6,3][2] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[6,3] [10]),
        .Q(matrix_flat_out[218]),
        .R(rst));
  FDRE \internal_matrix_reg[6,3][3] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[6,3] [11]),
        .Q(matrix_flat_out[219]),
        .R(rst));
  FDRE \internal_matrix_reg[6,3][4] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[6,3] [12]),
        .Q(matrix_flat_out[220]),
        .R(rst));
  FDRE \internal_matrix_reg[6,3][5] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[6,3] [13]),
        .Q(matrix_flat_out[221]),
        .R(rst));
  FDRE \internal_matrix_reg[6,3][6] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[6,3] [14]),
        .Q(matrix_flat_out[222]),
        .R(rst));
  FDRE \internal_matrix_reg[6,3][7] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[6,3] [15]),
        .Q(matrix_flat_out[223]),
        .R(rst));
  FDRE \internal_matrix_reg[7,0][0] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[7,_n_0_0][8] ),
        .Q(matrix_flat_out[224]),
        .R(rst));
  FDRE \internal_matrix_reg[7,0][1] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[7,_n_0_0][9] ),
        .Q(matrix_flat_out[225]),
        .R(rst));
  FDRE \internal_matrix_reg[7,0][2] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[7,_n_0_0][10] ),
        .Q(matrix_flat_out[226]),
        .R(rst));
  FDRE \internal_matrix_reg[7,0][3] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[7,_n_0_0][11] ),
        .Q(matrix_flat_out[227]),
        .R(rst));
  FDRE \internal_matrix_reg[7,0][4] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[7,_n_0_0][12] ),
        .Q(matrix_flat_out[228]),
        .R(rst));
  FDRE \internal_matrix_reg[7,0][5] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[7,_n_0_0][13] ),
        .Q(matrix_flat_out[229]),
        .R(rst));
  FDRE \internal_matrix_reg[7,0][6] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[7,_n_0_0][14] ),
        .Q(matrix_flat_out[230]),
        .R(rst));
  FDRE \internal_matrix_reg[7,0][7] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[7,_n_0_0][15] ),
        .Q(matrix_flat_out[231]),
        .R(rst));
  FDRE \internal_matrix_reg[7,1][0] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[7,_n_0_1][8] ),
        .Q(matrix_flat_out[232]),
        .R(rst));
  FDRE \internal_matrix_reg[7,1][1] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[7,_n_0_1][9] ),
        .Q(matrix_flat_out[233]),
        .R(rst));
  FDRE \internal_matrix_reg[7,1][2] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[7,_n_0_1][10] ),
        .Q(matrix_flat_out[234]),
        .R(rst));
  FDRE \internal_matrix_reg[7,1][3] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[7,_n_0_1][11] ),
        .Q(matrix_flat_out[235]),
        .R(rst));
  FDRE \internal_matrix_reg[7,1][4] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[7,_n_0_1][12] ),
        .Q(matrix_flat_out[236]),
        .R(rst));
  FDRE \internal_matrix_reg[7,1][5] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[7,_n_0_1][13] ),
        .Q(matrix_flat_out[237]),
        .R(rst));
  FDRE \internal_matrix_reg[7,1][6] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[7,_n_0_1][14] ),
        .Q(matrix_flat_out[238]),
        .R(rst));
  FDRE \internal_matrix_reg[7,1][7] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[7,_n_0_1][15] ),
        .Q(matrix_flat_out[239]),
        .R(rst));
  FDRE \internal_matrix_reg[7,2][0] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[7,_n_0_2][8] ),
        .Q(matrix_flat_out[240]),
        .R(rst));
  FDRE \internal_matrix_reg[7,2][1] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[7,_n_0_2][9] ),
        .Q(matrix_flat_out[241]),
        .R(rst));
  FDRE \internal_matrix_reg[7,2][2] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[7,_n_0_2][10] ),
        .Q(matrix_flat_out[242]),
        .R(rst));
  FDRE \internal_matrix_reg[7,2][3] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[7,_n_0_2][11] ),
        .Q(matrix_flat_out[243]),
        .R(rst));
  FDRE \internal_matrix_reg[7,2][4] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[7,_n_0_2][12] ),
        .Q(matrix_flat_out[244]),
        .R(rst));
  FDRE \internal_matrix_reg[7,2][5] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[7,_n_0_2][13] ),
        .Q(matrix_flat_out[245]),
        .R(rst));
  FDRE \internal_matrix_reg[7,2][6] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[7,_n_0_2][14] ),
        .Q(matrix_flat_out[246]),
        .R(rst));
  FDRE \internal_matrix_reg[7,2][7] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[7,_n_0_2][15] ),
        .Q(matrix_flat_out[247]),
        .R(rst));
  FDRE \internal_matrix_reg[7,3][0] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[7,_n_0_3][8] ),
        .Q(matrix_flat_out[248]),
        .R(rst));
  FDRE \internal_matrix_reg[7,3][1] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[7,_n_0_3][9] ),
        .Q(matrix_flat_out[249]),
        .R(rst));
  FDRE \internal_matrix_reg[7,3][2] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[7,_n_0_3][10] ),
        .Q(matrix_flat_out[250]),
        .R(rst));
  FDRE \internal_matrix_reg[7,3][3] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[7,_n_0_3][11] ),
        .Q(matrix_flat_out[251]),
        .R(rst));
  FDRE \internal_matrix_reg[7,3][4] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[7,_n_0_3][12] ),
        .Q(matrix_flat_out[252]),
        .R(rst));
  FDRE \internal_matrix_reg[7,3][5] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[7,_n_0_3][13] ),
        .Q(matrix_flat_out[253]),
        .R(rst));
  FDRE \internal_matrix_reg[7,3][6] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[7,_n_0_3][14] ),
        .Q(matrix_flat_out[254]),
        .R(rst));
  FDRE \internal_matrix_reg[7,3][7] 
       (.C(clk),
        .CE(v_started0),
        .D(\grid_accumulators_reg[7,_n_0_3][15] ),
        .Q(matrix_flat_out[255]),
        .R(rst));
  LUT1 #(
    .INIT(2'h1)) 
    \r_val[7]_i_1 
       (.I0(\grid_accumulators[7,3] ),
        .O(r_val_0));
  FDRE \r_val_reg[0] 
       (.C(clk),
        .CE(r_val_0),
        .D(rgb_in[16]),
        .Q(r_val[0]),
        .R(1'b0));
  FDRE \r_val_reg[1] 
       (.C(clk),
        .CE(r_val_0),
        .D(rgb_in[17]),
        .Q(r_val[1]),
        .R(1'b0));
  FDRE \r_val_reg[2] 
       (.C(clk),
        .CE(r_val_0),
        .D(rgb_in[18]),
        .Q(r_val[2]),
        .R(1'b0));
  FDRE \r_val_reg[3] 
       (.C(clk),
        .CE(r_val_0),
        .D(rgb_in[19]),
        .Q(r_val[3]),
        .R(1'b0));
  FDRE \r_val_reg[4] 
       (.C(clk),
        .CE(r_val_0),
        .D(rgb_in[20]),
        .Q(r_val[4]),
        .R(1'b0));
  FDRE \r_val_reg[5] 
       (.C(clk),
        .CE(r_val_0),
        .D(rgb_in[21]),
        .Q(r_val[5]),
        .R(1'b0));
  FDRE \r_val_reg[6] 
       (.C(clk),
        .CE(r_val_0),
        .D(rgb_in[22]),
        .Q(r_val[6]),
        .R(1'b0));
  FDRE \r_val_reg[7] 
       (.C(clk),
        .CE(r_val_0),
        .D(rgb_in[23]),
        .Q(r_val[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sub_col_cnt[0]_i_1 
       (.I0(\sub_col_cnt[7]_i_5_n_0 ),
        .I1(sub_col_cnt[0]),
        .O(\sub_col_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \sub_col_cnt[1]_i_1 
       (.I0(sub_col_cnt[1]),
        .I1(sub_col_cnt[0]),
        .I2(\sub_col_cnt[7]_i_5_n_0 ),
        .O(sub_col_cnt_2[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \sub_col_cnt[2]_i_1 
       (.I0(sub_col_cnt[2]),
        .I1(sub_col_cnt[1]),
        .I2(sub_col_cnt[0]),
        .I3(\sub_col_cnt[7]_i_5_n_0 ),
        .O(sub_col_cnt_2[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \sub_col_cnt[3]_i_1 
       (.I0(sub_col_cnt[3]),
        .I1(sub_col_cnt[2]),
        .I2(sub_col_cnt[0]),
        .I3(sub_col_cnt[1]),
        .I4(\sub_col_cnt[7]_i_5_n_0 ),
        .O(sub_col_cnt_2[3]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \sub_col_cnt[4]_i_1 
       (.I0(sub_col_cnt[4]),
        .I1(sub_col_cnt[3]),
        .I2(sub_col_cnt[1]),
        .I3(sub_col_cnt[0]),
        .I4(sub_col_cnt[2]),
        .I5(\sub_col_cnt[7]_i_5_n_0 ),
        .O(sub_col_cnt_2[4]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \sub_col_cnt[5]_i_1 
       (.I0(sub_col_cnt[5]),
        .I1(\sub_col_cnt[5]_i_2_n_0 ),
        .I2(\sub_col_cnt[7]_i_5_n_0 ),
        .O(sub_col_cnt_2[5]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \sub_col_cnt[5]_i_2 
       (.I0(sub_col_cnt[4]),
        .I1(sub_col_cnt[2]),
        .I2(sub_col_cnt[0]),
        .I3(sub_col_cnt[1]),
        .I4(sub_col_cnt[3]),
        .O(\sub_col_cnt[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \sub_col_cnt[6]_i_1 
       (.I0(sub_col_cnt[6]),
        .I1(\sub_col_cnt[7]_i_4_n_0 ),
        .I2(\sub_col_cnt[7]_i_5_n_0 ),
        .O(sub_col_cnt_2[6]));
  LUT2 #(
    .INIT(4'h2)) 
    \sub_col_cnt[7]_i_1 
       (.I0(\curr_col[1]_i_3_n_0 ),
        .I1(\grid_accumulators[7,3] ),
        .O(\sub_col_cnt[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sub_col_cnt[7]_i_2 
       (.I0(inside_grid_h_reg_n_0),
        .I1(\grid_accumulators[7,3] ),
        .O(\sub_col_cnt[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \sub_col_cnt[7]_i_3 
       (.I0(sub_col_cnt[7]),
        .I1(sub_col_cnt[6]),
        .I2(\sub_col_cnt[7]_i_4_n_0 ),
        .I3(\sub_col_cnt[7]_i_5_n_0 ),
        .O(sub_col_cnt_2[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \sub_col_cnt[7]_i_4 
       (.I0(sub_col_cnt[5]),
        .I1(sub_col_cnt[3]),
        .I2(sub_col_cnt[1]),
        .I3(sub_col_cnt[0]),
        .I4(sub_col_cnt[2]),
        .I5(sub_col_cnt[4]),
        .O(\sub_col_cnt[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF7F)) 
    \sub_col_cnt[7]_i_5 
       (.I0(\sub_col_cnt[7]_i_6_n_0 ),
        .I1(sub_col_cnt[3]),
        .I2(sub_col_cnt[7]),
        .I3(\sub_col_cnt[7]_i_7_n_0 ),
        .I4(sub_col_cnt[6]),
        .I5(sub_col_cnt[2]),
        .O(\sub_col_cnt[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sub_col_cnt[7]_i_6 
       (.I0(sub_col_cnt[0]),
        .I1(sub_col_cnt[1]),
        .O(\sub_col_cnt[7]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \sub_col_cnt[7]_i_7 
       (.I0(sub_col_cnt[4]),
        .I1(sub_col_cnt[5]),
        .O(\sub_col_cnt[7]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sub_col_cnt_reg[0] 
       (.C(clk),
        .CE(\sub_col_cnt[7]_i_2_n_0 ),
        .D(\sub_col_cnt[0]_i_1_n_0 ),
        .Q(sub_col_cnt[0]),
        .R(\sub_col_cnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sub_col_cnt_reg[1] 
       (.C(clk),
        .CE(\sub_col_cnt[7]_i_2_n_0 ),
        .D(sub_col_cnt_2[1]),
        .Q(sub_col_cnt[1]),
        .R(\sub_col_cnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sub_col_cnt_reg[2] 
       (.C(clk),
        .CE(\sub_col_cnt[7]_i_2_n_0 ),
        .D(sub_col_cnt_2[2]),
        .Q(sub_col_cnt[2]),
        .R(\sub_col_cnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sub_col_cnt_reg[3] 
       (.C(clk),
        .CE(\sub_col_cnt[7]_i_2_n_0 ),
        .D(sub_col_cnt_2[3]),
        .Q(sub_col_cnt[3]),
        .R(\sub_col_cnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sub_col_cnt_reg[4] 
       (.C(clk),
        .CE(\sub_col_cnt[7]_i_2_n_0 ),
        .D(sub_col_cnt_2[4]),
        .Q(sub_col_cnt[4]),
        .R(\sub_col_cnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sub_col_cnt_reg[5] 
       (.C(clk),
        .CE(\sub_col_cnt[7]_i_2_n_0 ),
        .D(sub_col_cnt_2[5]),
        .Q(sub_col_cnt[5]),
        .R(\sub_col_cnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sub_col_cnt_reg[6] 
       (.C(clk),
        .CE(\sub_col_cnt[7]_i_2_n_0 ),
        .D(sub_col_cnt_2[6]),
        .Q(sub_col_cnt[6]),
        .R(\sub_col_cnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sub_col_cnt_reg[7] 
       (.C(clk),
        .CE(\sub_col_cnt[7]_i_2_n_0 ),
        .D(sub_col_cnt_2[7]),
        .Q(sub_col_cnt[7]),
        .R(\sub_col_cnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \sub_row_cnt[0]_i_1 
       (.I0(sub_row_cnt[0]),
        .O(sub_row_cnt_1[0]));
  LUT6 #(
    .INIT(64'h0000FFFFEFFF0000)) 
    \sub_row_cnt[1]_i_1 
       (.I0(\sub_row_cnt[6]_i_4_n_0 ),
        .I1(sub_row_cnt[2]),
        .I2(\sub_row_cnt[6]_i_7_n_0 ),
        .I3(sub_row_cnt[6]),
        .I4(sub_row_cnt[0]),
        .I5(sub_row_cnt[1]),
        .O(sub_row_cnt_1[1]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \sub_row_cnt[2]_i_1 
       (.I0(sub_row_cnt[0]),
        .I1(sub_row_cnt[1]),
        .I2(sub_row_cnt[2]),
        .O(sub_row_cnt_1[2]));
  LUT6 #(
    .INIT(64'hEFFFFFFF00000000)) 
    \sub_row_cnt[3]_i_1 
       (.I0(\sub_row_cnt[6]_i_4_n_0 ),
        .I1(\sub_row_cnt[6]_i_5_n_0 ),
        .I2(\sub_row_cnt[6]_i_6_n_0 ),
        .I3(\sub_row_cnt[6]_i_7_n_0 ),
        .I4(sub_row_cnt[6]),
        .I5(\sub_row_cnt[3]_i_2_n_0 ),
        .O(sub_row_cnt_1[3]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \sub_row_cnt[3]_i_2 
       (.I0(sub_row_cnt[1]),
        .I1(sub_row_cnt[0]),
        .I2(sub_row_cnt[2]),
        .I3(sub_row_cnt[3]),
        .O(\sub_row_cnt[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF00000000)) 
    \sub_row_cnt[4]_i_1 
       (.I0(\sub_row_cnt[6]_i_4_n_0 ),
        .I1(\sub_row_cnt[6]_i_5_n_0 ),
        .I2(\sub_row_cnt[6]_i_6_n_0 ),
        .I3(\sub_row_cnt[6]_i_7_n_0 ),
        .I4(sub_row_cnt[6]),
        .I5(\sub_row_cnt[4]_i_2_n_0 ),
        .O(sub_row_cnt_1[4]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \sub_row_cnt[4]_i_2 
       (.I0(sub_row_cnt[2]),
        .I1(sub_row_cnt[0]),
        .I2(sub_row_cnt[1]),
        .I3(sub_row_cnt[3]),
        .I4(sub_row_cnt[4]),
        .O(\sub_row_cnt[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF00000000)) 
    \sub_row_cnt[5]_i_1 
       (.I0(\sub_row_cnt[6]_i_4_n_0 ),
        .I1(\sub_row_cnt[6]_i_5_n_0 ),
        .I2(\sub_row_cnt[6]_i_6_n_0 ),
        .I3(\sub_row_cnt[6]_i_7_n_0 ),
        .I4(sub_row_cnt[6]),
        .I5(\sub_row_cnt[5]_i_2_n_0 ),
        .O(sub_row_cnt_1[5]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \sub_row_cnt[5]_i_2 
       (.I0(sub_row_cnt[3]),
        .I1(sub_row_cnt[1]),
        .I2(sub_row_cnt[0]),
        .I3(sub_row_cnt[2]),
        .I4(sub_row_cnt[4]),
        .I5(sub_row_cnt[5]),
        .O(\sub_row_cnt[5]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hAB)) 
    \sub_row_cnt[6]_i_1 
       (.I0(\grid_accumulators[7,3] ),
        .I1(\curr_row[2]_i_5_n_0 ),
        .I2(\curr_row[2]_i_4_n_0 ),
        .O(\sub_row_cnt[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \sub_row_cnt[6]_i_2 
       (.I0(inside_grid_v_reg_n_0),
        .I1(vde_prev),
        .I2(vde_in),
        .O(\sub_row_cnt[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF00000000)) 
    \sub_row_cnt[6]_i_3 
       (.I0(\sub_row_cnt[6]_i_4_n_0 ),
        .I1(\sub_row_cnt[6]_i_5_n_0 ),
        .I2(\sub_row_cnt[6]_i_6_n_0 ),
        .I3(\sub_row_cnt[6]_i_7_n_0 ),
        .I4(sub_row_cnt[6]),
        .I5(\sub_row_cnt[6]_i_8_n_0 ),
        .O(sub_row_cnt_1[6]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \sub_row_cnt[6]_i_4 
       (.I0(sub_row_cnt[5]),
        .I1(sub_row_cnt[4]),
        .O(\sub_row_cnt[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \sub_row_cnt[6]_i_5 
       (.I0(sub_row_cnt[1]),
        .I1(sub_row_cnt[2]),
        .O(\sub_row_cnt[6]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \sub_row_cnt[6]_i_6 
       (.I0(sub_row_cnt[2]),
        .I1(sub_row_cnt[1]),
        .I2(sub_row_cnt[0]),
        .O(\sub_row_cnt[6]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \sub_row_cnt[6]_i_7 
       (.I0(sub_row_cnt[5]),
        .I1(sub_row_cnt[4]),
        .I2(sub_row_cnt[3]),
        .O(\sub_row_cnt[6]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \sub_row_cnt[6]_i_8 
       (.I0(\sub_row_cnt[6]_i_9_n_0 ),
        .I1(sub_row_cnt[5]),
        .I2(sub_row_cnt[6]),
        .O(\sub_row_cnt[6]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \sub_row_cnt[6]_i_9 
       (.I0(sub_row_cnt[4]),
        .I1(sub_row_cnt[2]),
        .I2(sub_row_cnt[0]),
        .I3(sub_row_cnt[1]),
        .I4(sub_row_cnt[3]),
        .O(\sub_row_cnt[6]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sub_row_cnt_reg[0] 
       (.C(clk),
        .CE(\sub_row_cnt[6]_i_2_n_0 ),
        .D(sub_row_cnt_1[0]),
        .Q(sub_row_cnt[0]),
        .R(\sub_row_cnt[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sub_row_cnt_reg[1] 
       (.C(clk),
        .CE(\sub_row_cnt[6]_i_2_n_0 ),
        .D(sub_row_cnt_1[1]),
        .Q(sub_row_cnt[1]),
        .R(\sub_row_cnt[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sub_row_cnt_reg[2] 
       (.C(clk),
        .CE(\sub_row_cnt[6]_i_2_n_0 ),
        .D(sub_row_cnt_1[2]),
        .Q(sub_row_cnt[2]),
        .R(\sub_row_cnt[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sub_row_cnt_reg[3] 
       (.C(clk),
        .CE(\sub_row_cnt[6]_i_2_n_0 ),
        .D(sub_row_cnt_1[3]),
        .Q(sub_row_cnt[3]),
        .R(\sub_row_cnt[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sub_row_cnt_reg[4] 
       (.C(clk),
        .CE(\sub_row_cnt[6]_i_2_n_0 ),
        .D(sub_row_cnt_1[4]),
        .Q(sub_row_cnt[4]),
        .R(\sub_row_cnt[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sub_row_cnt_reg[5] 
       (.C(clk),
        .CE(\sub_row_cnt[6]_i_2_n_0 ),
        .D(sub_row_cnt_1[5]),
        .Q(sub_row_cnt[5]),
        .R(\sub_row_cnt[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sub_row_cnt_reg[6] 
       (.C(clk),
        .CE(\sub_row_cnt[6]_i_2_n_0 ),
        .D(sub_row_cnt_1[6]),
        .Q(sub_row_cnt[6]),
        .R(\sub_row_cnt[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \v_count[0]_i_1 
       (.I0(v_count_reg[0]),
        .O(\v_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \v_count[1]_i_1 
       (.I0(v_count_reg[0]),
        .I1(v_count_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \v_count[2]_i_1 
       (.I0(v_count_reg[0]),
        .I1(v_count_reg[1]),
        .I2(v_count_reg[2]),
        .O(\v_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \v_count[3]_i_1 
       (.I0(v_count_reg[1]),
        .I1(v_count_reg[0]),
        .I2(v_count_reg[2]),
        .I3(v_count_reg[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \v_count[4]_i_1 
       (.I0(v_count_reg[2]),
        .I1(v_count_reg[0]),
        .I2(v_count_reg[1]),
        .I3(v_count_reg[3]),
        .I4(v_count_reg[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \v_count[5]_i_1 
       (.I0(v_count_reg[3]),
        .I1(v_count_reg[1]),
        .I2(v_count_reg[0]),
        .I3(v_count_reg[2]),
        .I4(v_count_reg[4]),
        .I5(v_count_reg[5]),
        .O(p_0_in__0[5]));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \v_count[6]_i_1 
       (.I0(v_count_reg[4]),
        .I1(v_count_reg[2]),
        .I2(\v_count[6]_i_2_n_0 ),
        .I3(v_count_reg[3]),
        .I4(v_count_reg[5]),
        .I5(v_count_reg[6]),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \v_count[6]_i_2 
       (.I0(v_count_reg[1]),
        .I1(v_count_reg[0]),
        .O(\v_count[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \v_count[7]_i_1 
       (.I0(\v_count[9]_i_5_n_0 ),
        .I1(v_count_reg[6]),
        .I2(v_count_reg[7]),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \v_count[8]_i_1 
       (.I0(v_count_reg[6]),
        .I1(\v_count[9]_i_5_n_0 ),
        .I2(v_count_reg[7]),
        .I3(v_count_reg[8]),
        .O(p_0_in__0[8]));
  LUT4 #(
    .INIT(16'hAABA)) 
    \v_count[9]_i_1 
       (.I0(rst),
        .I1(v_started_reg_n_0),
        .I2(vde_in),
        .I3(vde_prev),
        .O(\v_count[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4444444404444444)) 
    \v_count[9]_i_2 
       (.I0(vde_prev),
        .I1(vde_in),
        .I2(v_count_reg[7]),
        .I3(v_count_reg[9]),
        .I4(v_count_reg[8]),
        .I5(\v_count[9]_i_4_n_0 ),
        .O(\v_count[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \v_count[9]_i_3 
       (.I0(v_count_reg[7]),
        .I1(\v_count[9]_i_5_n_0 ),
        .I2(v_count_reg[6]),
        .I3(v_count_reg[8]),
        .I4(v_count_reg[9]),
        .O(p_0_in__0[9]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \v_count[9]_i_4 
       (.I0(\v_count[6]_i_2_n_0 ),
        .I1(v_count_reg[4]),
        .I2(v_count_reg[3]),
        .I3(v_count_reg[6]),
        .I4(v_count_reg[5]),
        .I5(v_count_reg[2]),
        .O(\v_count[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \v_count[9]_i_5 
       (.I0(v_count_reg[5]),
        .I1(v_count_reg[3]),
        .I2(v_count_reg[1]),
        .I3(v_count_reg[0]),
        .I4(v_count_reg[2]),
        .I5(v_count_reg[4]),
        .O(\v_count[9]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg[0] 
       (.C(clk),
        .CE(\v_count[9]_i_2_n_0 ),
        .D(\v_count[0]_i_1_n_0 ),
        .Q(v_count_reg[0]),
        .R(\v_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg[1] 
       (.C(clk),
        .CE(\v_count[9]_i_2_n_0 ),
        .D(p_0_in__0[1]),
        .Q(v_count_reg[1]),
        .R(\v_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg[2] 
       (.C(clk),
        .CE(\v_count[9]_i_2_n_0 ),
        .D(\v_count[2]_i_1_n_0 ),
        .Q(v_count_reg[2]),
        .R(\v_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg[3] 
       (.C(clk),
        .CE(\v_count[9]_i_2_n_0 ),
        .D(p_0_in__0[3]),
        .Q(v_count_reg[3]),
        .R(\v_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg[4] 
       (.C(clk),
        .CE(\v_count[9]_i_2_n_0 ),
        .D(p_0_in__0[4]),
        .Q(v_count_reg[4]),
        .R(\v_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg[5] 
       (.C(clk),
        .CE(\v_count[9]_i_2_n_0 ),
        .D(p_0_in__0[5]),
        .Q(v_count_reg[5]),
        .R(\v_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg[6] 
       (.C(clk),
        .CE(\v_count[9]_i_2_n_0 ),
        .D(p_0_in__0[6]),
        .Q(v_count_reg[6]),
        .R(\v_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg[7] 
       (.C(clk),
        .CE(\v_count[9]_i_2_n_0 ),
        .D(p_0_in__0[7]),
        .Q(v_count_reg[7]),
        .R(\v_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg[8] 
       (.C(clk),
        .CE(\v_count[9]_i_2_n_0 ),
        .D(p_0_in__0[8]),
        .Q(v_count_reg[8]),
        .R(\v_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg[9] 
       (.C(clk),
        .CE(\v_count[9]_i_2_n_0 ),
        .D(p_0_in__0[9]),
        .Q(v_count_reg[9]),
        .R(\v_count[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hD0D0DFD0)) 
    v_started_i_1
       (.I0(vsync_in),
        .I1(vsync_prev),
        .I2(v_started_reg_n_0),
        .I3(vde_in),
        .I4(vde_prev),
        .O(v_started_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    v_started_reg
       (.C(clk),
        .CE(1'b1),
        .D(v_started_i_1_n_0),
        .Q(v_started_reg_n_0),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    vde_prev_reg
       (.C(clk),
        .CE(1'b1),
        .D(vde_in),
        .Q(vde_prev),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    vsync_prev_reg
       (.C(clk),
        .CE(1'b1),
        .D(vsync_in),
        .Q(vsync_prev),
        .R(rst));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
