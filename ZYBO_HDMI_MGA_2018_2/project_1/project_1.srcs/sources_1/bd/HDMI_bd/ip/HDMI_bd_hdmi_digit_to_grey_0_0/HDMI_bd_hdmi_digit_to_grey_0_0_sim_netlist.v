// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Tue Dec  2 00:26:37 2025
// Host        : pcetu-125 running 64-bit major release  (build 9200)
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
    h_count,
    v_count,
    vde_in,
    hsync_in,
    vsync_in,
    rgb_in,
    valid_pixel,
    current_row,
    current_column,
    pixel_value,
    end_of_frame);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN HDMI_bd_dvi2rgb_0_0_PixelClk, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input [31:0]h_count;
  input [31:0]v_count;
  input vde_in;
  input hsync_in;
  input vsync_in;
  input [23:0]rgb_in;
  output valid_pixel;
  output [7:0]current_row;
  output [7:0]current_column;
  output [7:0]pixel_value;
  output end_of_frame;

  wire clk;
  wire [7:0]\^current_column ;
  wire [2:0]\^current_row ;
  wire end_of_frame;
  wire [31:0]h_count;
  wire [7:0]pixel_value;
  wire [23:0]rgb_in;
  wire rst;
  wire [31:0]v_count;
  wire valid_pixel;
  wire vde_in;
  wire vsync_in;

  assign current_column[7] = \^current_column [7];
  assign current_column[6] = \^current_column [7];
  assign current_column[5] = \^current_column [7];
  assign current_column[4] = \^current_column [7];
  assign current_column[3] = \^current_column [7];
  assign current_column[2] = \^current_column [7];
  assign current_column[1:0] = \^current_column [1:0];
  assign current_row[7] = \^current_column [7];
  assign current_row[6] = \^current_column [7];
  assign current_row[5] = \^current_column [7];
  assign current_row[4] = \^current_column [7];
  assign current_row[3] = \^current_column [7];
  assign current_row[2:0] = \^current_row [2:0];
  HDMI_bd_hdmi_digit_to_grey_0_0_hdmi_digit_to_grey U0
       (.clk(clk),
        .current_column(\^current_column [1:0]),
        .current_row({\^current_column [7],\^current_row }),
        .end_of_frame(end_of_frame),
        .h_count(h_count),
        .pixel_value(pixel_value),
        .rgb_in(rgb_in),
        .rst(rst),
        .v_count(v_count),
        .valid_pixel(valid_pixel),
        .vde_in(vde_in),
        .vsync_in(vsync_in));
endmodule

(* ORIG_REF_NAME = "hdmi_digit_to_grey" *) 
module HDMI_bd_hdmi_digit_to_grey_0_0_hdmi_digit_to_grey
   (valid_pixel,
    current_row,
    current_column,
    pixel_value,
    end_of_frame,
    rgb_in,
    clk,
    rst,
    vde_in,
    v_count,
    h_count,
    vsync_in);
  output valid_pixel;
  output [3:0]current_row;
  output [1:0]current_column;
  output [7:0]pixel_value;
  output end_of_frame;
  input [23:0]rgb_in;
  input clk;
  input rst;
  input vde_in;
  input [31:0]v_count;
  input [31:0]h_count;
  input vsync_in;

  wire [14:1]C;
  wire clk;
  wire [1:0]current_column;
  wire [3:0]current_row;
  wire end_of_frame;
  wire grey_value_reg0__41_carry__0_i_1_n_0;
  wire grey_value_reg0__41_carry__0_i_2_n_0;
  wire grey_value_reg0__41_carry__0_i_3_n_0;
  wire grey_value_reg0__41_carry__0_i_4_n_0;
  wire grey_value_reg0__41_carry__0_n_0;
  wire grey_value_reg0__41_carry__0_n_1;
  wire grey_value_reg0__41_carry__0_n_2;
  wire grey_value_reg0__41_carry__0_n_3;
  wire grey_value_reg0__41_carry__1_i_1_n_0;
  wire grey_value_reg0__41_carry__1_i_2_n_0;
  wire grey_value_reg0__41_carry__1_i_3_n_0;
  wire grey_value_reg0__41_carry__1_i_4_n_0;
  wire grey_value_reg0__41_carry__1_n_0;
  wire grey_value_reg0__41_carry__1_n_1;
  wire grey_value_reg0__41_carry__1_n_2;
  wire grey_value_reg0__41_carry__1_n_3;
  wire grey_value_reg0__41_carry__2_i_1_n_0;
  wire grey_value_reg0__41_carry__2_i_2_n_0;
  wire grey_value_reg0__41_carry__2_i_3_n_0;
  wire grey_value_reg0__41_carry__2_n_2;
  wire grey_value_reg0__41_carry__2_n_3;
  wire grey_value_reg0__41_carry_i_1_n_0;
  wire grey_value_reg0__41_carry_i_2_n_0;
  wire grey_value_reg0__41_carry_i_3_n_0;
  wire grey_value_reg0__41_carry_i_4_n_0;
  wire grey_value_reg0__41_carry_n_0;
  wire grey_value_reg0__41_carry_n_1;
  wire grey_value_reg0__41_carry_n_2;
  wire grey_value_reg0__41_carry_n_3;
  wire grey_value_reg0_carry__0_i_1_n_0;
  wire grey_value_reg0_carry__0_i_2_n_0;
  wire grey_value_reg0_carry__0_i_3_n_0;
  wire grey_value_reg0_carry__0_i_4_n_0;
  wire grey_value_reg0_carry__0_n_0;
  wire grey_value_reg0_carry__0_n_1;
  wire grey_value_reg0_carry__0_n_2;
  wire grey_value_reg0_carry__0_n_3;
  wire grey_value_reg0_carry__1_i_1_n_0;
  wire grey_value_reg0_carry__1_i_2_n_0;
  wire grey_value_reg0_carry__1_i_3_n_0;
  wire grey_value_reg0_carry__1_i_4_n_0;
  wire grey_value_reg0_carry__1_n_0;
  wire grey_value_reg0_carry__1_n_1;
  wire grey_value_reg0_carry__1_n_2;
  wire grey_value_reg0_carry__1_n_3;
  wire grey_value_reg0_carry__2_i_1_n_3;
  wire grey_value_reg0_carry__2_i_2_n_0;
  wire grey_value_reg0_carry__2_n_0;
  wire grey_value_reg0_carry__2_n_2;
  wire grey_value_reg0_carry__2_n_3;
  wire grey_value_reg0_carry_i_1_n_0;
  wire grey_value_reg0_carry_i_2_n_0;
  wire grey_value_reg0_carry_i_3_n_0;
  wire grey_value_reg0_carry_i_4_n_0;
  wire grey_value_reg0_carry_n_0;
  wire grey_value_reg0_carry_n_1;
  wire grey_value_reg0_carry_n_2;
  wire grey_value_reg0_carry_n_3;
  wire [3:0]grid_i;
  wire \grid_i_reg[0]_i_2_n_0 ;
  wire \grid_i_reg[0]_i_3_n_0 ;
  wire \grid_i_reg[0]_i_4_n_0 ;
  wire \grid_i_reg[0]_i_5_n_0 ;
  wire \grid_i_reg[0]_i_6_n_0 ;
  wire \grid_i_reg[0]_i_7_n_0 ;
  wire \grid_i_reg[0]_i_8_n_0 ;
  wire \grid_i_reg[0]_i_9_n_0 ;
  wire \grid_i_reg[1]_i_2_n_0 ;
  wire \grid_i_reg[1]_i_3_n_0 ;
  wire \grid_i_reg[1]_i_4_n_0 ;
  wire \grid_i_reg[2]_i_2_n_0 ;
  wire \grid_i_reg[7]_i_2_n_0 ;
  wire \grid_i_reg[7]_i_3_n_0 ;
  wire \grid_i_reg[7]_i_4_n_0 ;
  wire \grid_i_reg[7]_i_5_n_0 ;
  wire \grid_i_reg[7]_i_6_n_0 ;
  wire \grid_i_reg[7]_i_7_n_0 ;
  wire \grid_i_reg[7]_i_8_n_0 ;
  wire \grid_i_reg[7]_i_9_n_0 ;
  wire [1:0]grid_j;
  wire \grid_j_reg[0]_i_2_n_0 ;
  wire \grid_j_reg[0]_i_3_n_0 ;
  wire \grid_j_reg[0]_i_4_n_0 ;
  wire \grid_j_reg[0]_i_5_n_0 ;
  wire \grid_j_reg[0]_i_6_n_0 ;
  wire \grid_j_reg[0]_i_7_n_0 ;
  wire \grid_j_reg[1]_i_2_n_0 ;
  wire \grid_j_reg[1]_i_3_n_0 ;
  wire \grid_j_reg[1]_i_4_n_0 ;
  wire \grid_j_reg[1]_i_5_n_0 ;
  wire [31:0]h_count;
  wire i___24_carry__0_i_1_n_0;
  wire i___24_carry__0_i_2_n_0;
  wire i___24_carry__0_i_3_n_0;
  wire i___24_carry__0_i_4_n_0;
  wire i___24_carry__0_i_5_n_0;
  wire i___24_carry__0_i_6_n_0;
  wire i___24_carry__0_i_7_n_0;
  wire i___24_carry__0_i_8_n_0;
  wire i___24_carry__1_i_1_n_0;
  wire i___24_carry__1_i_2_n_0;
  wire i___24_carry__1_i_3_n_0;
  wire i___24_carry_i_1_n_0;
  wire i___24_carry_i_2_n_0;
  wire i___24_carry_i_3_n_0;
  wire i___24_carry_i_4_n_0;
  wire i___24_carry_i_5_n_0;
  wire i___24_carry_i_6_n_0;
  wire i___24_carry_i_7_n_0;
  wire i___27_carry__0_i_1_n_0;
  wire i___27_carry__0_i_2_n_0;
  wire i___27_carry__0_i_3_n_0;
  wire i___27_carry__0_i_4_n_0;
  wire i___27_carry__0_i_5_n_0;
  wire i___27_carry__0_i_6_n_0;
  wire i___27_carry__0_i_7_n_0;
  wire i___27_carry__1_i_1_n_0;
  wire i___27_carry__1_i_2_n_0;
  wire i___27_carry__1_i_3_n_0;
  wire i___27_carry__1_i_4_n_0;
  wire i___27_carry__1_i_5_n_0;
  wire i___27_carry__1_i_6_n_0;
  wire i___27_carry__1_i_7_n_0;
  wire i___27_carry__1_i_8_n_0;
  wire i___27_carry__2_i_1_n_0;
  wire i___27_carry_i_1_n_0;
  wire i___27_carry_i_2_n_0;
  wire i___27_carry_i_3_n_0;
  wire i__carry__0_i_1__0_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2__0_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3__0_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3_n_0;
  wire is_valid_pixel0;
  wire is_valid_pixel_i_10_n_0;
  wire is_valid_pixel_i_11_n_0;
  wire is_valid_pixel_i_12_n_0;
  wire is_valid_pixel_i_13_n_0;
  wire is_valid_pixel_i_14_n_0;
  wire is_valid_pixel_i_15_n_0;
  wire is_valid_pixel_i_16_n_0;
  wire is_valid_pixel_i_17_n_0;
  wire is_valid_pixel_i_18_n_0;
  wire is_valid_pixel_i_19_n_0;
  wire is_valid_pixel_i_20_n_0;
  wire is_valid_pixel_i_2_n_0;
  wire is_valid_pixel_i_3_n_0;
  wire is_valid_pixel_i_4_n_0;
  wire is_valid_pixel_i_5_n_0;
  wire is_valid_pixel_i_6_n_0;
  wire is_valid_pixel_i_7_n_0;
  wire is_valid_pixel_i_8_n_0;
  wire is_valid_pixel_i_9_n_0;
  wire [15:1]multOp;
  wire multOp__25_carry__0_i_1_n_0;
  wire multOp__25_carry__0_i_2_n_0;
  wire multOp__25_carry__0_i_3_n_0;
  wire multOp__25_carry__0_i_4_n_0;
  wire multOp__25_carry__0_i_5_n_0;
  wire multOp__25_carry__0_i_6_n_0;
  wire multOp__25_carry__0_i_7_n_0;
  wire multOp__25_carry__0_n_0;
  wire multOp__25_carry__0_n_1;
  wire multOp__25_carry__0_n_2;
  wire multOp__25_carry__0_n_3;
  wire multOp__25_carry__0_n_4;
  wire multOp__25_carry__0_n_5;
  wire multOp__25_carry__0_n_6;
  wire multOp__25_carry__0_n_7;
  wire multOp__25_carry__1_i_1_n_0;
  wire multOp__25_carry__1_i_2_n_0;
  wire multOp__25_carry__1_i_3_n_0;
  wire multOp__25_carry__1_n_0;
  wire multOp__25_carry__1_n_1;
  wire multOp__25_carry__1_n_2;
  wire multOp__25_carry__1_n_3;
  wire multOp__25_carry__1_n_4;
  wire multOp__25_carry__1_n_5;
  wire multOp__25_carry__1_n_6;
  wire multOp__25_carry__1_n_7;
  wire multOp__25_carry_i_1_n_0;
  wire multOp__25_carry_i_2_n_0;
  wire multOp__25_carry_i_3_n_0;
  wire multOp__25_carry_n_0;
  wire multOp__25_carry_n_1;
  wire multOp__25_carry_n_2;
  wire multOp__25_carry_n_3;
  wire multOp__25_carry_n_4;
  wire multOp__25_carry_n_5;
  wire multOp__25_carry_n_6;
  wire multOp__25_carry_n_7;
  wire multOp_carry__0_i_1_n_0;
  wire multOp_carry__0_i_2_n_0;
  wire multOp_carry__0_i_3_n_0;
  wire multOp_carry__0_n_0;
  wire multOp_carry__0_n_1;
  wire multOp_carry__0_n_2;
  wire multOp_carry__0_n_3;
  wire multOp_carry__0_n_4;
  wire multOp_carry__0_n_5;
  wire multOp_carry__0_n_6;
  wire multOp_carry__0_n_7;
  wire multOp_carry__1_n_2;
  wire multOp_carry__1_n_7;
  wire multOp_carry_i_1_n_0;
  wire multOp_carry_i_2_n_0;
  wire multOp_carry_i_3_n_0;
  wire multOp_carry_n_0;
  wire multOp_carry_n_1;
  wire multOp_carry_n_2;
  wire multOp_carry_n_3;
  wire multOp_carry_n_4;
  wire multOp_carry_n_5;
  wire multOp_carry_n_6;
  wire multOp_carry_n_7;
  wire \multOp_inferred__0/i___24_carry__0_n_0 ;
  wire \multOp_inferred__0/i___24_carry__0_n_1 ;
  wire \multOp_inferred__0/i___24_carry__0_n_2 ;
  wire \multOp_inferred__0/i___24_carry__0_n_3 ;
  wire \multOp_inferred__0/i___24_carry__0_n_4 ;
  wire \multOp_inferred__0/i___24_carry__0_n_5 ;
  wire \multOp_inferred__0/i___24_carry__0_n_6 ;
  wire \multOp_inferred__0/i___24_carry__0_n_7 ;
  wire \multOp_inferred__0/i___24_carry__1_n_3 ;
  wire \multOp_inferred__0/i___24_carry__1_n_6 ;
  wire \multOp_inferred__0/i___24_carry__1_n_7 ;
  wire \multOp_inferred__0/i___24_carry_n_0 ;
  wire \multOp_inferred__0/i___24_carry_n_1 ;
  wire \multOp_inferred__0/i___24_carry_n_2 ;
  wire \multOp_inferred__0/i___24_carry_n_3 ;
  wire \multOp_inferred__0/i___24_carry_n_4 ;
  wire \multOp_inferred__0/i___24_carry_n_5 ;
  wire \multOp_inferred__0/i___24_carry_n_6 ;
  wire \multOp_inferred__0/i___24_carry_n_7 ;
  wire \multOp_inferred__0/i__carry__0_n_0 ;
  wire \multOp_inferred__0/i__carry__0_n_1 ;
  wire \multOp_inferred__0/i__carry__0_n_2 ;
  wire \multOp_inferred__0/i__carry__0_n_3 ;
  wire \multOp_inferred__0/i__carry__0_n_4 ;
  wire \multOp_inferred__0/i__carry__0_n_5 ;
  wire \multOp_inferred__0/i__carry__0_n_6 ;
  wire \multOp_inferred__0/i__carry__0_n_7 ;
  wire \multOp_inferred__0/i__carry__1_n_2 ;
  wire \multOp_inferred__0/i__carry__1_n_7 ;
  wire \multOp_inferred__0/i__carry_n_0 ;
  wire \multOp_inferred__0/i__carry_n_1 ;
  wire \multOp_inferred__0/i__carry_n_2 ;
  wire \multOp_inferred__0/i__carry_n_3 ;
  wire \multOp_inferred__0/i__carry_n_4 ;
  wire \multOp_inferred__0/i__carry_n_5 ;
  wire \multOp_inferred__0/i__carry_n_6 ;
  wire \multOp_inferred__0/i__carry_n_7 ;
  wire \multOp_inferred__1/i___27_carry__0_n_0 ;
  wire \multOp_inferred__1/i___27_carry__0_n_1 ;
  wire \multOp_inferred__1/i___27_carry__0_n_2 ;
  wire \multOp_inferred__1/i___27_carry__0_n_3 ;
  wire \multOp_inferred__1/i___27_carry__1_n_0 ;
  wire \multOp_inferred__1/i___27_carry__1_n_1 ;
  wire \multOp_inferred__1/i___27_carry__1_n_2 ;
  wire \multOp_inferred__1/i___27_carry__1_n_3 ;
  wire \multOp_inferred__1/i___27_carry_n_0 ;
  wire \multOp_inferred__1/i___27_carry_n_1 ;
  wire \multOp_inferred__1/i___27_carry_n_2 ;
  wire \multOp_inferred__1/i___27_carry_n_3 ;
  wire \multOp_inferred__1/i__carry__0_n_0 ;
  wire \multOp_inferred__1/i__carry__0_n_1 ;
  wire \multOp_inferred__1/i__carry__0_n_2 ;
  wire \multOp_inferred__1/i__carry__0_n_3 ;
  wire \multOp_inferred__1/i__carry__0_n_4 ;
  wire \multOp_inferred__1/i__carry__0_n_5 ;
  wire \multOp_inferred__1/i__carry__0_n_6 ;
  wire \multOp_inferred__1/i__carry__0_n_7 ;
  wire \multOp_inferred__1/i__carry__1_n_1 ;
  wire \multOp_inferred__1/i__carry__1_n_3 ;
  wire \multOp_inferred__1/i__carry__1_n_6 ;
  wire \multOp_inferred__1/i__carry__1_n_7 ;
  wire \multOp_inferred__1/i__carry_n_0 ;
  wire \multOp_inferred__1/i__carry_n_1 ;
  wire \multOp_inferred__1/i__carry_n_2 ;
  wire \multOp_inferred__1/i__carry_n_3 ;
  wire \multOp_inferred__1/i__carry_n_4 ;
  wire \multOp_inferred__1/i__carry_n_5 ;
  wire [7:0]p_0_in;
  wire [7:0]pixel_value;
  wire [23:0]rgb_in;
  wire rst;
  wire vSync_reg_i_1_n_0;
  wire [31:0]v_count;
  wire valid_pixel;
  wire vde_in;
  wire vsync_in;
  wire [3:0]NLW_grey_value_reg0__41_carry_O_UNCONNECTED;
  wire [2:0]NLW_grey_value_reg0__41_carry__0_O_UNCONNECTED;
  wire [3:2]NLW_grey_value_reg0__41_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_grey_value_reg0__41_carry__2_O_UNCONNECTED;
  wire [0:0]NLW_grey_value_reg0_carry_O_UNCONNECTED;
  wire [2:2]NLW_grey_value_reg0_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_grey_value_reg0_carry__2_O_UNCONNECTED;
  wire [3:1]NLW_grey_value_reg0_carry__2_i_1_CO_UNCONNECTED;
  wire [3:0]NLW_grey_value_reg0_carry__2_i_1_O_UNCONNECTED;
  wire [3:0]NLW_multOp_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_multOp_carry__1_O_UNCONNECTED;
  wire [3:1]\NLW_multOp_inferred__0/i___24_carry__1_CO_UNCONNECTED ;
  wire [3:2]\NLW_multOp_inferred__0/i___24_carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_multOp_inferred__0/i__carry__1_CO_UNCONNECTED ;
  wire [3:1]\NLW_multOp_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_multOp_inferred__1/i___27_carry__2_CO_UNCONNECTED ;
  wire [3:1]\NLW_multOp_inferred__1/i___27_carry__2_O_UNCONNECTED ;
  wire [3:1]\NLW_multOp_inferred__1/i__carry__1_CO_UNCONNECTED ;
  wire [3:2]\NLW_multOp_inferred__1/i__carry__1_O_UNCONNECTED ;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 grey_value_reg0__41_carry
       (.CI(1'b0),
        .CO({grey_value_reg0__41_carry_n_0,grey_value_reg0__41_carry_n_1,grey_value_reg0__41_carry_n_2,grey_value_reg0__41_carry_n_3}),
        .CYINIT(1'b0),
        .DI(multOp[4:1]),
        .O(NLW_grey_value_reg0__41_carry_O_UNCONNECTED[3:0]),
        .S({grey_value_reg0__41_carry_i_1_n_0,grey_value_reg0__41_carry_i_2_n_0,grey_value_reg0__41_carry_i_3_n_0,grey_value_reg0__41_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 grey_value_reg0__41_carry__0
       (.CI(grey_value_reg0__41_carry_n_0),
        .CO({grey_value_reg0__41_carry__0_n_0,grey_value_reg0__41_carry__0_n_1,grey_value_reg0__41_carry__0_n_2,grey_value_reg0__41_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(multOp[8:5]),
        .O({p_0_in[0],NLW_grey_value_reg0__41_carry__0_O_UNCONNECTED[2:0]}),
        .S({grey_value_reg0__41_carry__0_i_1_n_0,grey_value_reg0__41_carry__0_i_2_n_0,grey_value_reg0__41_carry__0_i_3_n_0,grey_value_reg0__41_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    grey_value_reg0__41_carry__0_i_1
       (.I0(multOp[8]),
        .I1(C[8]),
        .O(grey_value_reg0__41_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    grey_value_reg0__41_carry__0_i_2
       (.I0(multOp[7]),
        .I1(C[7]),
        .O(grey_value_reg0__41_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    grey_value_reg0__41_carry__0_i_3
       (.I0(multOp[6]),
        .I1(C[6]),
        .O(grey_value_reg0__41_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    grey_value_reg0__41_carry__0_i_4
       (.I0(multOp[5]),
        .I1(C[5]),
        .O(grey_value_reg0__41_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 grey_value_reg0__41_carry__1
       (.CI(grey_value_reg0__41_carry__0_n_0),
        .CO({grey_value_reg0__41_carry__1_n_0,grey_value_reg0__41_carry__1_n_1,grey_value_reg0__41_carry__1_n_2,grey_value_reg0__41_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(multOp[12:9]),
        .O(p_0_in[4:1]),
        .S({grey_value_reg0__41_carry__1_i_1_n_0,grey_value_reg0__41_carry__1_i_2_n_0,grey_value_reg0__41_carry__1_i_3_n_0,grey_value_reg0__41_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    grey_value_reg0__41_carry__1_i_1
       (.I0(multOp[12]),
        .I1(C[12]),
        .O(grey_value_reg0__41_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    grey_value_reg0__41_carry__1_i_2
       (.I0(multOp[11]),
        .I1(C[11]),
        .O(grey_value_reg0__41_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    grey_value_reg0__41_carry__1_i_3
       (.I0(multOp[10]),
        .I1(C[10]),
        .O(grey_value_reg0__41_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    grey_value_reg0__41_carry__1_i_4
       (.I0(multOp[9]),
        .I1(C[9]),
        .O(grey_value_reg0__41_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 grey_value_reg0__41_carry__2
       (.CI(grey_value_reg0__41_carry__1_n_0),
        .CO({NLW_grey_value_reg0__41_carry__2_CO_UNCONNECTED[3:2],grey_value_reg0__41_carry__2_n_2,grey_value_reg0__41_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,multOp[14:13]}),
        .O({NLW_grey_value_reg0__41_carry__2_O_UNCONNECTED[3],p_0_in[7:5]}),
        .S({1'b0,grey_value_reg0__41_carry__2_i_1_n_0,grey_value_reg0__41_carry__2_i_2_n_0,grey_value_reg0__41_carry__2_i_3_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    grey_value_reg0__41_carry__2_i_1
       (.I0(multOp[15]),
        .I1(grey_value_reg0_carry__2_n_0),
        .O(grey_value_reg0__41_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    grey_value_reg0__41_carry__2_i_2
       (.I0(multOp[14]),
        .I1(C[14]),
        .O(grey_value_reg0__41_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    grey_value_reg0__41_carry__2_i_3
       (.I0(multOp[13]),
        .I1(C[13]),
        .O(grey_value_reg0__41_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    grey_value_reg0__41_carry_i_1
       (.I0(multOp[4]),
        .I1(C[4]),
        .O(grey_value_reg0__41_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    grey_value_reg0__41_carry_i_2
       (.I0(multOp[3]),
        .I1(C[3]),
        .O(grey_value_reg0__41_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    grey_value_reg0__41_carry_i_3
       (.I0(multOp[2]),
        .I1(C[2]),
        .O(grey_value_reg0__41_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    grey_value_reg0__41_carry_i_4
       (.I0(multOp[1]),
        .I1(C[1]),
        .O(grey_value_reg0__41_carry_i_4_n_0));
  CARRY4 grey_value_reg0_carry
       (.CI(1'b0),
        .CO({grey_value_reg0_carry_n_0,grey_value_reg0_carry_n_1,grey_value_reg0_carry_n_2,grey_value_reg0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({\multOp_inferred__0/i___24_carry_n_7 ,\multOp_inferred__0/i__carry_n_6 ,\multOp_inferred__0/i__carry_n_7 ,rgb_in[8]}),
        .O({C[3:1],NLW_grey_value_reg0_carry_O_UNCONNECTED[0]}),
        .S({grey_value_reg0_carry_i_1_n_0,grey_value_reg0_carry_i_2_n_0,grey_value_reg0_carry_i_3_n_0,grey_value_reg0_carry_i_4_n_0}));
  CARRY4 grey_value_reg0_carry__0
       (.CI(grey_value_reg0_carry_n_0),
        .CO({grey_value_reg0_carry__0_n_0,grey_value_reg0_carry__0_n_1,grey_value_reg0_carry__0_n_2,grey_value_reg0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({\multOp_inferred__0/i___24_carry__0_n_7 ,\multOp_inferred__0/i___24_carry_n_4 ,\multOp_inferred__0/i___24_carry_n_5 ,\multOp_inferred__0/i___24_carry_n_6 }),
        .O(C[7:4]),
        .S({grey_value_reg0_carry__0_i_1_n_0,grey_value_reg0_carry__0_i_2_n_0,grey_value_reg0_carry__0_i_3_n_0,grey_value_reg0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    grey_value_reg0_carry__0_i_1
       (.I0(\multOp_inferred__0/i___24_carry__0_n_7 ),
        .I1(multOp__25_carry__0_n_6),
        .O(grey_value_reg0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    grey_value_reg0_carry__0_i_2
       (.I0(\multOp_inferred__0/i___24_carry_n_4 ),
        .I1(multOp__25_carry__0_n_7),
        .O(grey_value_reg0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    grey_value_reg0_carry__0_i_3
       (.I0(\multOp_inferred__0/i___24_carry_n_5 ),
        .I1(multOp__25_carry_n_4),
        .O(grey_value_reg0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    grey_value_reg0_carry__0_i_4
       (.I0(\multOp_inferred__0/i___24_carry_n_6 ),
        .I1(multOp__25_carry_n_5),
        .O(grey_value_reg0_carry__0_i_4_n_0));
  CARRY4 grey_value_reg0_carry__1
       (.CI(grey_value_reg0_carry__0_n_0),
        .CO({grey_value_reg0_carry__1_n_0,grey_value_reg0_carry__1_n_1,grey_value_reg0_carry__1_n_2,grey_value_reg0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({\multOp_inferred__0/i___24_carry__1_n_7 ,\multOp_inferred__0/i___24_carry__0_n_4 ,\multOp_inferred__0/i___24_carry__0_n_5 ,\multOp_inferred__0/i___24_carry__0_n_6 }),
        .O(C[11:8]),
        .S({grey_value_reg0_carry__1_i_1_n_0,grey_value_reg0_carry__1_i_2_n_0,grey_value_reg0_carry__1_i_3_n_0,grey_value_reg0_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    grey_value_reg0_carry__1_i_1
       (.I0(\multOp_inferred__0/i___24_carry__1_n_7 ),
        .I1(multOp__25_carry__1_n_6),
        .O(grey_value_reg0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    grey_value_reg0_carry__1_i_2
       (.I0(\multOp_inferred__0/i___24_carry__0_n_4 ),
        .I1(multOp__25_carry__1_n_7),
        .O(grey_value_reg0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    grey_value_reg0_carry__1_i_3
       (.I0(\multOp_inferred__0/i___24_carry__0_n_5 ),
        .I1(multOp__25_carry__0_n_4),
        .O(grey_value_reg0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    grey_value_reg0_carry__1_i_4
       (.I0(\multOp_inferred__0/i___24_carry__0_n_6 ),
        .I1(multOp__25_carry__0_n_5),
        .O(grey_value_reg0_carry__1_i_4_n_0));
  CARRY4 grey_value_reg0_carry__2
       (.CI(grey_value_reg0_carry__1_n_0),
        .CO({grey_value_reg0_carry__2_n_0,NLW_grey_value_reg0_carry__2_CO_UNCONNECTED[2],grey_value_reg0_carry__2_n_2,grey_value_reg0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\multOp_inferred__0/i___24_carry__1_n_6 }),
        .O({NLW_grey_value_reg0_carry__2_O_UNCONNECTED[3],C[14:12]}),
        .S({1'b1,grey_value_reg0_carry__2_i_1_n_3,multOp__25_carry__1_n_4,grey_value_reg0_carry__2_i_2_n_0}));
  CARRY4 grey_value_reg0_carry__2_i_1
       (.CI(multOp__25_carry__1_n_0),
        .CO({NLW_grey_value_reg0_carry__2_i_1_CO_UNCONNECTED[3:1],grey_value_reg0_carry__2_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_grey_value_reg0_carry__2_i_1_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT2 #(
    .INIT(4'h6)) 
    grey_value_reg0_carry__2_i_2
       (.I0(\multOp_inferred__0/i___24_carry__1_n_6 ),
        .I1(multOp__25_carry__1_n_5),
        .O(grey_value_reg0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    grey_value_reg0_carry_i_1
       (.I0(\multOp_inferred__0/i___24_carry_n_7 ),
        .I1(multOp__25_carry_n_6),
        .O(grey_value_reg0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    grey_value_reg0_carry_i_2
       (.I0(\multOp_inferred__0/i__carry_n_6 ),
        .I1(multOp__25_carry_n_7),
        .O(grey_value_reg0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    grey_value_reg0_carry_i_3
       (.I0(\multOp_inferred__0/i__carry_n_7 ),
        .I1(multOp_carry_n_7),
        .O(grey_value_reg0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    grey_value_reg0_carry_i_4
       (.I0(rgb_in[8]),
        .I1(rgb_in[16]),
        .O(grey_value_reg0_carry_i_4_n_0));
  FDCE #(
    .INIT(1'b0)) 
    \grey_value_reg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(p_0_in[0]),
        .Q(pixel_value[0]));
  FDCE #(
    .INIT(1'b0)) 
    \grey_value_reg_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(p_0_in[1]),
        .Q(pixel_value[1]));
  FDCE #(
    .INIT(1'b0)) 
    \grey_value_reg_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(p_0_in[2]),
        .Q(pixel_value[2]));
  FDCE #(
    .INIT(1'b0)) 
    \grey_value_reg_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(p_0_in[3]),
        .Q(pixel_value[3]));
  FDCE #(
    .INIT(1'b0)) 
    \grey_value_reg_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(p_0_in[4]),
        .Q(pixel_value[4]));
  FDCE #(
    .INIT(1'b0)) 
    \grey_value_reg_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(p_0_in[5]),
        .Q(pixel_value[5]));
  FDCE #(
    .INIT(1'b0)) 
    \grey_value_reg_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(p_0_in[6]),
        .Q(pixel_value[6]));
  FDCE #(
    .INIT(1'b0)) 
    \grey_value_reg_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(p_0_in[7]),
        .Q(pixel_value[7]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \grid_i_reg[0]_i_1 
       (.I0(\grid_i_reg[0]_i_2_n_0 ),
        .I1(\grid_i_reg[0]_i_3_n_0 ),
        .I2(\grid_i_reg[0]_i_4_n_0 ),
        .I3(\grid_i_reg[0]_i_5_n_0 ),
        .I4(\grid_i_reg[0]_i_6_n_0 ),
        .O(grid_i[0]));
  LUT6 #(
    .INIT(64'hAEAEAABAAAAAAABA)) 
    \grid_i_reg[0]_i_2 
       (.I0(\grid_i_reg[0]_i_7_n_0 ),
        .I1(v_count[4]),
        .I2(v_count[8]),
        .I3(v_count[5]),
        .I4(is_valid_pixel_i_8_n_0),
        .I5(v_count[7]),
        .O(\grid_i_reg[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0808080808080800)) 
    \grid_i_reg[0]_i_3 
       (.I0(\grid_i_reg[0]_i_8_n_0 ),
        .I1(v_count[3]),
        .I2(v_count[6]),
        .I3(v_count[2]),
        .I4(v_count[0]),
        .I5(v_count[1]),
        .O(\grid_i_reg[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0808080808080888)) 
    \grid_i_reg[0]_i_4 
       (.I0(v_count[8]),
        .I1(v_count[6]),
        .I2(v_count[4]),
        .I3(v_count[1]),
        .I4(v_count[0]),
        .I5(v_count[3]),
        .O(\grid_i_reg[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \grid_i_reg[0]_i_5 
       (.I0(\grid_i_reg[7]_i_5_n_0 ),
        .I1(is_valid_pixel_i_14_n_0),
        .I2(is_valid_pixel_i_15_n_0),
        .I3(\grid_j_reg[0]_i_2_n_0 ),
        .I4(\grid_i_reg[7]_i_4_n_0 ),
        .O(\grid_i_reg[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFEFEFFFEFEFE)) 
    \grid_i_reg[0]_i_6 
       (.I0(\grid_i_reg[0]_i_9_n_0 ),
        .I1(h_count[28]),
        .I2(h_count[29]),
        .I3(v_count[7]),
        .I4(v_count[5]),
        .I5(v_count[8]),
        .O(\grid_i_reg[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h1101FFFFC0F00000)) 
    \grid_i_reg[0]_i_7 
       (.I0(v_count[2]),
        .I1(v_count[3]),
        .I2(v_count[4]),
        .I3(v_count[8]),
        .I4(v_count[5]),
        .I5(v_count[6]),
        .O(\grid_i_reg[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \grid_i_reg[0]_i_8 
       (.I0(v_count[5]),
        .I1(v_count[8]),
        .O(\grid_i_reg[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFF02)) 
    \grid_i_reg[0]_i_9 
       (.I0(\grid_j_reg[1]_i_5_n_0 ),
        .I1(h_count[5]),
        .I2(h_count[7]),
        .I3(h_count[30]),
        .O(\grid_i_reg[0]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \grid_i_reg[1]_i_1 
       (.I0(\grid_i_reg[7]_i_2_n_0 ),
        .I1(\grid_i_reg[1]_i_2_n_0 ),
        .I2(h_count[28]),
        .I3(\grid_i_reg[1]_i_3_n_0 ),
        .O(grid_i[1]));
  LUT6 #(
    .INIT(64'h800050508000FFFF)) 
    \grid_i_reg[1]_i_2 
       (.I0(v_count[8]),
        .I1(v_count[4]),
        .I2(v_count[6]),
        .I3(\grid_i_reg[1]_i_4_n_0 ),
        .I4(v_count[5]),
        .I5(v_count[7]),
        .O(\grid_i_reg[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000FF880000F088)) 
    \grid_i_reg[1]_i_3 
       (.I0(v_count[4]),
        .I1(is_valid_pixel_i_8_n_0),
        .I2(v_count[7]),
        .I3(v_count[5]),
        .I4(v_count[8]),
        .I5(\grid_i_reg[2]_i_2_n_0 ),
        .O(\grid_i_reg[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFFE0)) 
    \grid_i_reg[1]_i_4 
       (.I0(v_count[0]),
        .I1(v_count[1]),
        .I2(v_count[2]),
        .I3(v_count[3]),
        .O(\grid_i_reg[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAFFAAFFFFFFAE)) 
    \grid_i_reg[2]_i_1 
       (.I0(\grid_i_reg[7]_i_2_n_0 ),
        .I1(v_count[5]),
        .I2(\grid_i_reg[2]_i_2_n_0 ),
        .I3(h_count[28]),
        .I4(v_count[7]),
        .I5(v_count[8]),
        .O(grid_i[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h01FF)) 
    \grid_i_reg[2]_i_2 
       (.I0(v_count[4]),
        .I1(v_count[2]),
        .I2(v_count[3]),
        .I3(v_count[6]),
        .O(\grid_i_reg[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \grid_i_reg[7]_i_1 
       (.I0(\grid_i_reg[7]_i_2_n_0 ),
        .I1(\grid_i_reg[7]_i_3_n_0 ),
        .O(grid_i[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \grid_i_reg[7]_i_2 
       (.I0(\grid_j_reg[0]_i_4_n_0 ),
        .I1(\grid_i_reg[7]_i_4_n_0 ),
        .I2(\grid_j_reg[0]_i_2_n_0 ),
        .I3(is_valid_pixel_i_15_n_0),
        .I4(is_valid_pixel_i_14_n_0),
        .I5(\grid_i_reg[7]_i_5_n_0 ),
        .O(\grid_i_reg[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000F800)) 
    \grid_i_reg[7]_i_3 
       (.I0(v_count[4]),
        .I1(is_valid_pixel_i_8_n_0),
        .I2(\grid_i_reg[7]_i_6_n_0 ),
        .I3(v_count[7]),
        .I4(v_count[8]),
        .I5(h_count[28]),
        .O(\grid_i_reg[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h444F)) 
    \grid_i_reg[7]_i_4 
       (.I0(v_count[7]),
        .I1(v_count[8]),
        .I2(h_count[7]),
        .I3(h_count[6]),
        .O(\grid_i_reg[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \grid_i_reg[7]_i_5 
       (.I0(\grid_i_reg[7]_i_7_n_0 ),
        .I1(is_valid_pixel_i_18_n_0),
        .I2(\grid_i_reg[7]_i_8_n_0 ),
        .I3(is_valid_pixel_i_17_n_0),
        .I4(\grid_i_reg[7]_i_9_n_0 ),
        .I5(is_valid_pixel_i_16_n_0),
        .O(\grid_i_reg[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \grid_i_reg[7]_i_6 
       (.I0(v_count[5]),
        .I1(v_count[6]),
        .O(\grid_i_reg[7]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \grid_i_reg[7]_i_7 
       (.I0(h_count[17]),
        .I1(h_count[16]),
        .I2(h_count[19]),
        .I3(h_count[18]),
        .O(\grid_i_reg[7]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \grid_i_reg[7]_i_8 
       (.I0(h_count[9]),
        .I1(h_count[8]),
        .I2(h_count[11]),
        .I3(h_count[10]),
        .O(\grid_i_reg[7]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \grid_i_reg[7]_i_9 
       (.I0(v_count[13]),
        .I1(v_count[12]),
        .I2(v_count[15]),
        .I3(v_count[14]),
        .O(\grid_i_reg[7]_i_9_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \grid_i_reg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(grid_i[0]),
        .Q(current_row[0]));
  FDCE #(
    .INIT(1'b0)) 
    \grid_i_reg_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(grid_i[1]),
        .Q(current_row[1]));
  FDCE #(
    .INIT(1'b0)) 
    \grid_i_reg_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(grid_i[2]),
        .Q(current_row[2]));
  FDCE #(
    .INIT(1'b0)) 
    \grid_i_reg_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(grid_i[3]),
        .Q(current_row[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \grid_j_reg[0]_i_1 
       (.I0(\grid_j_reg[0]_i_2_n_0 ),
        .I1(is_valid_pixel_i_6_n_0),
        .I2(\grid_j_reg[0]_i_3_n_0 ),
        .I3(\grid_j_reg[0]_i_4_n_0 ),
        .I4(\grid_i_reg[7]_i_3_n_0 ),
        .I5(\grid_j_reg[0]_i_5_n_0 ),
        .O(grid_j[0]));
  LUT6 #(
    .INIT(64'hFFFFAAABAAABFFFF)) 
    \grid_j_reg[0]_i_2 
       (.I0(h_count[31]),
        .I1(h_count[7]),
        .I2(h_count[5]),
        .I3(h_count[4]),
        .I4(v_count[9]),
        .I5(v_count[8]),
        .O(\grid_j_reg[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h555555556AEA6AAA)) 
    \grid_j_reg[0]_i_3 
       (.I0(h_count[6]),
        .I1(h_count[2]),
        .I2(h_count[3]),
        .I3(h_count[1]),
        .I4(h_count[0]),
        .I5(\grid_j_reg[0]_i_6_n_0 ),
        .O(\grid_j_reg[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFAE)) 
    \grid_j_reg[0]_i_4 
       (.I0(h_count[29]),
        .I1(v_count[8]),
        .I2(is_valid_pixel_i_10_n_0),
        .I3(h_count[30]),
        .I4(\grid_j_reg[0]_i_7_n_0 ),
        .O(\grid_j_reg[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \grid_j_reg[0]_i_5 
       (.I0(v_count[8]),
        .I1(v_count[7]),
        .O(\grid_j_reg[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \grid_j_reg[0]_i_6 
       (.I0(h_count[4]),
        .I1(h_count[5]),
        .O(\grid_j_reg[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0101011101110111)) 
    \grid_j_reg[0]_i_7 
       (.I0(h_count[7]),
        .I1(h_count[5]),
        .I2(h_count[3]),
        .I3(h_count[2]),
        .I4(h_count[0]),
        .I5(h_count[1]),
        .O(\grid_j_reg[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \grid_j_reg[1]_i_1 
       (.I0(\grid_i_reg[0]_i_5_n_0 ),
        .I1(\grid_j_reg[1]_i_2_n_0 ),
        .I2(\grid_i_reg[7]_i_3_n_0 ),
        .I3(h_count[30]),
        .I4(\grid_j_reg[1]_i_3_n_0 ),
        .I5(\grid_j_reg[1]_i_4_n_0 ),
        .O(grid_j[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hAEA00000)) 
    \grid_j_reg[1]_i_2 
       (.I0(h_count[7]),
        .I1(\grid_j_reg[1]_i_5_n_0 ),
        .I2(h_count[5]),
        .I3(h_count[4]),
        .I4(h_count[6]),
        .O(\grid_j_reg[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \grid_j_reg[1]_i_3 
       (.I0(h_count[4]),
        .I1(h_count[5]),
        .I2(h_count[6]),
        .I3(h_count[1]),
        .I4(h_count[2]),
        .I5(h_count[3]),
        .O(\grid_j_reg[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00010000)) 
    \grid_j_reg[1]_i_4 
       (.I0(v_count[4]),
        .I1(v_count[5]),
        .I2(v_count[6]),
        .I3(is_valid_pixel_i_8_n_0),
        .I4(v_count[8]),
        .I5(h_count[29]),
        .O(\grid_j_reg[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h07FF)) 
    \grid_j_reg[1]_i_5 
       (.I0(h_count[1]),
        .I1(h_count[0]),
        .I2(h_count[2]),
        .I3(h_count[3]),
        .O(\grid_j_reg[1]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \grid_j_reg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(grid_j[0]),
        .Q(current_column[0]));
  FDCE #(
    .INIT(1'b0)) 
    \grid_j_reg_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(grid_j[1]),
        .Q(current_column[1]));
  LUT3 #(
    .INIT(8'hD4)) 
    i___24_carry__0_i_1
       (.I0(rgb_in[14]),
        .I1(\multOp_inferred__0/i__carry__1_n_7 ),
        .I2(rgb_in[12]),
        .O(i___24_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    i___24_carry__0_i_2
       (.I0(rgb_in[13]),
        .I1(\multOp_inferred__0/i__carry__0_n_4 ),
        .I2(rgb_in[11]),
        .O(i___24_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    i___24_carry__0_i_3
       (.I0(rgb_in[12]),
        .I1(\multOp_inferred__0/i__carry__0_n_5 ),
        .I2(rgb_in[10]),
        .O(i___24_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    i___24_carry__0_i_4
       (.I0(rgb_in[11]),
        .I1(\multOp_inferred__0/i__carry__0_n_6 ),
        .I2(rgb_in[9]),
        .O(i___24_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    i___24_carry__0_i_5
       (.I0(rgb_in[12]),
        .I1(\multOp_inferred__0/i__carry__1_n_7 ),
        .I2(rgb_in[14]),
        .I3(rgb_in[15]),
        .I4(\multOp_inferred__0/i__carry__1_n_2 ),
        .I5(rgb_in[13]),
        .O(i___24_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    i___24_carry__0_i_6
       (.I0(rgb_in[11]),
        .I1(\multOp_inferred__0/i__carry__0_n_4 ),
        .I2(rgb_in[13]),
        .I3(rgb_in[14]),
        .I4(\multOp_inferred__0/i__carry__1_n_7 ),
        .I5(rgb_in[12]),
        .O(i___24_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    i___24_carry__0_i_7
       (.I0(rgb_in[10]),
        .I1(\multOp_inferred__0/i__carry__0_n_5 ),
        .I2(rgb_in[12]),
        .I3(rgb_in[13]),
        .I4(\multOp_inferred__0/i__carry__0_n_4 ),
        .I5(rgb_in[11]),
        .O(i___24_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    i___24_carry__0_i_8
       (.I0(rgb_in[9]),
        .I1(\multOp_inferred__0/i__carry__0_n_6 ),
        .I2(rgb_in[11]),
        .I3(rgb_in[12]),
        .I4(\multOp_inferred__0/i__carry__0_n_5 ),
        .I5(rgb_in[10]),
        .O(i___24_carry__0_i_8_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    i___24_carry__1_i_1
       (.I0(rgb_in[15]),
        .I1(\multOp_inferred__0/i__carry__1_n_2 ),
        .I2(rgb_in[13]),
        .O(i___24_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___24_carry__1_i_2
       (.I0(rgb_in[14]),
        .I1(rgb_in[15]),
        .O(i___24_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h8E71)) 
    i___24_carry__1_i_3
       (.I0(rgb_in[13]),
        .I1(\multOp_inferred__0/i__carry__1_n_2 ),
        .I2(rgb_in[15]),
        .I3(rgb_in[14]),
        .O(i___24_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    i___24_carry_i_1
       (.I0(rgb_in[10]),
        .I1(\multOp_inferred__0/i__carry__0_n_7 ),
        .I2(rgb_in[8]),
        .O(i___24_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    i___24_carry_i_2
       (.I0(rgb_in[10]),
        .I1(\multOp_inferred__0/i__carry__0_n_7 ),
        .I2(rgb_in[8]),
        .O(i___24_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    i___24_carry_i_3
       (.I0(\multOp_inferred__0/i__carry_n_5 ),
        .I1(rgb_in[8]),
        .O(i___24_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    i___24_carry_i_4
       (.I0(rgb_in[8]),
        .I1(\multOp_inferred__0/i__carry__0_n_7 ),
        .I2(rgb_in[10]),
        .I3(rgb_in[11]),
        .I4(\multOp_inferred__0/i__carry__0_n_6 ),
        .I5(rgb_in[9]),
        .O(i___24_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h69966969)) 
    i___24_carry_i_5
       (.I0(rgb_in[10]),
        .I1(\multOp_inferred__0/i__carry__0_n_7 ),
        .I2(rgb_in[8]),
        .I3(rgb_in[9]),
        .I4(\multOp_inferred__0/i__carry_n_4 ),
        .O(i___24_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    i___24_carry_i_6
       (.I0(rgb_in[8]),
        .I1(\multOp_inferred__0/i__carry_n_5 ),
        .I2(\multOp_inferred__0/i__carry_n_4 ),
        .I3(rgb_in[9]),
        .O(i___24_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i___24_carry_i_7
       (.I0(rgb_in[8]),
        .I1(\multOp_inferred__0/i__carry_n_5 ),
        .O(i___24_carry_i_7_n_0));
  (* HLUTNM = "lutpair4" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    i___27_carry__0_i_1
       (.I0(rgb_in[5]),
        .I1(\multOp_inferred__1/i__carry__1_n_7 ),
        .I2(rgb_in[2]),
        .O(i___27_carry__0_i_1_n_0));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    i___27_carry__0_i_2
       (.I0(rgb_in[4]),
        .I1(\multOp_inferred__1/i__carry__0_n_4 ),
        .I2(rgb_in[1]),
        .O(i___27_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___27_carry__0_i_3
       (.I0(rgb_in[1]),
        .I1(rgb_in[4]),
        .I2(\multOp_inferred__1/i__carry__0_n_4 ),
        .O(i___27_carry__0_i_3_n_0));
  (* HLUTNM = "lutpair5" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    i___27_carry__0_i_4
       (.I0(rgb_in[6]),
        .I1(\multOp_inferred__1/i__carry__1_n_6 ),
        .I2(rgb_in[3]),
        .I3(i___27_carry__0_i_1_n_0),
        .O(i___27_carry__0_i_4_n_0));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    i___27_carry__0_i_5
       (.I0(rgb_in[5]),
        .I1(\multOp_inferred__1/i__carry__1_n_7 ),
        .I2(rgb_in[2]),
        .I3(i___27_carry__0_i_2_n_0),
        .O(i___27_carry__0_i_5_n_0));
  (* HLUTNM = "lutpair3" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    i___27_carry__0_i_6
       (.I0(rgb_in[4]),
        .I1(\multOp_inferred__1/i__carry__0_n_4 ),
        .I2(rgb_in[1]),
        .I3(\multOp_inferred__1/i__carry__0_n_5 ),
        .I4(rgb_in[3]),
        .O(i___27_carry__0_i_6_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___27_carry__0_i_7
       (.I0(rgb_in[3]),
        .I1(\multOp_inferred__1/i__carry__0_n_5 ),
        .I2(rgb_in[0]),
        .O(i___27_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i___27_carry__1_i_1
       (.I0(rgb_in[6]),
        .I1(\multOp_inferred__1/i__carry__1_n_1 ),
        .O(i___27_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i___27_carry__1_i_2
       (.I0(rgb_in[5]),
        .I1(\multOp_inferred__1/i__carry__1_n_1 ),
        .O(i___27_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    i___27_carry__1_i_3
       (.I0(\multOp_inferred__1/i__carry__1_n_1 ),
        .I1(rgb_in[7]),
        .I2(rgb_in[4]),
        .O(i___27_carry__1_i_3_n_0));
  (* HLUTNM = "lutpair5" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    i___27_carry__1_i_4
       (.I0(rgb_in[6]),
        .I1(\multOp_inferred__1/i__carry__1_n_6 ),
        .I2(rgb_in[3]),
        .O(i___27_carry__1_i_4_n_0));
  LUT3 #(
    .INIT(8'hE1)) 
    i___27_carry__1_i_5
       (.I0(rgb_in[6]),
        .I1(\multOp_inferred__1/i__carry__1_n_1 ),
        .I2(rgb_in[7]),
        .O(i___27_carry__1_i_5_n_0));
  LUT3 #(
    .INIT(8'hE1)) 
    i___27_carry__1_i_6
       (.I0(rgb_in[5]),
        .I1(\multOp_inferred__1/i__carry__1_n_1 ),
        .I2(rgb_in[6]),
        .O(i___27_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h7E81)) 
    i___27_carry__1_i_7
       (.I0(rgb_in[4]),
        .I1(rgb_in[7]),
        .I2(\multOp_inferred__1/i__carry__1_n_1 ),
        .I3(rgb_in[5]),
        .O(i___27_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9669)) 
    i___27_carry__1_i_8
       (.I0(i___27_carry__1_i_4_n_0),
        .I1(\multOp_inferred__1/i__carry__1_n_1 ),
        .I2(rgb_in[7]),
        .I3(rgb_in[4]),
        .O(i___27_carry__1_i_8_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i___27_carry__2_i_1
       (.I0(rgb_in[7]),
        .I1(\multOp_inferred__1/i__carry__1_n_1 ),
        .O(i___27_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i___27_carry_i_1
       (.I0(\multOp_inferred__1/i__carry__0_n_6 ),
        .I1(rgb_in[2]),
        .O(i___27_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i___27_carry_i_2
       (.I0(\multOp_inferred__1/i__carry__0_n_7 ),
        .I1(rgb_in[1]),
        .O(i___27_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i___27_carry_i_3
       (.I0(\multOp_inferred__1/i__carry_n_4 ),
        .I1(rgb_in[0]),
        .O(i___27_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_1
       (.I0(rgb_in[15]),
        .I1(rgb_in[13]),
        .O(i__carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1__0
       (.I0(rgb_in[5]),
        .I1(rgb_in[7]),
        .O(i__carry__0_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_2
       (.I0(rgb_in[14]),
        .I1(rgb_in[12]),
        .O(i__carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_2__0
       (.I0(rgb_in[4]),
        .I1(rgb_in[6]),
        .O(i__carry__0_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_3
       (.I0(rgb_in[13]),
        .I1(rgb_in[11]),
        .O(i__carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_3__0
       (.I0(rgb_in[3]),
        .I1(rgb_in[5]),
        .O(i__carry__0_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_4
       (.I0(rgb_in[2]),
        .I1(rgb_in[4]),
        .O(i__carry__0_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_1
       (.I0(rgb_in[7]),
        .O(i__carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_2
       (.I0(rgb_in[6]),
        .O(i__carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_1
       (.I0(rgb_in[12]),
        .I1(rgb_in[10]),
        .O(i__carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_1__0
       (.I0(rgb_in[1]),
        .I1(rgb_in[3]),
        .O(i__carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_2
       (.I0(rgb_in[11]),
        .I1(rgb_in[9]),
        .O(i__carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_2__0
       (.I0(rgb_in[0]),
        .I1(rgb_in[2]),
        .O(i__carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_3
       (.I0(rgb_in[10]),
        .I1(rgb_in[8]),
        .O(i__carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_3__0
       (.I0(rgb_in[1]),
        .O(i__carry_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h000000000000C888)) 
    is_valid_pixel_i_1
       (.I0(is_valid_pixel_i_2_n_0),
        .I1(is_valid_pixel_i_3_n_0),
        .I2(is_valid_pixel_i_4_n_0),
        .I3(vde_in),
        .I4(is_valid_pixel_i_5_n_0),
        .I5(is_valid_pixel_i_6_n_0),
        .O(is_valid_pixel0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFEFE)) 
    is_valid_pixel_i_10
       (.I0(v_count[4]),
        .I1(v_count[5]),
        .I2(v_count[6]),
        .I3(v_count[1]),
        .I4(v_count[2]),
        .I5(v_count[3]),
        .O(is_valid_pixel_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    is_valid_pixel_i_11
       (.I0(is_valid_pixel_i_16_n_0),
        .I1(v_count[14]),
        .I2(v_count[15]),
        .I3(v_count[12]),
        .I4(v_count[13]),
        .O(is_valid_pixel_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    is_valid_pixel_i_12
       (.I0(h_count[10]),
        .I1(h_count[11]),
        .I2(h_count[8]),
        .I3(h_count[9]),
        .I4(is_valid_pixel_i_17_n_0),
        .O(is_valid_pixel_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    is_valid_pixel_i_13
       (.I0(h_count[18]),
        .I1(h_count[19]),
        .I2(h_count[16]),
        .I3(h_count[17]),
        .I4(is_valid_pixel_i_18_n_0),
        .O(is_valid_pixel_i_13_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    is_valid_pixel_i_14
       (.I0(v_count[26]),
        .I1(v_count[27]),
        .I2(v_count[24]),
        .I3(v_count[25]),
        .I4(is_valid_pixel_i_19_n_0),
        .O(is_valid_pixel_i_14_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    is_valid_pixel_i_15
       (.I0(v_count[18]),
        .I1(v_count[19]),
        .I2(v_count[16]),
        .I3(v_count[17]),
        .I4(is_valid_pixel_i_20_n_0),
        .O(is_valid_pixel_i_15_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    is_valid_pixel_i_16
       (.I0(h_count[26]),
        .I1(h_count[27]),
        .I2(h_count[24]),
        .I3(h_count[25]),
        .I4(v_count[11]),
        .I5(v_count[10]),
        .O(is_valid_pixel_i_16_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    is_valid_pixel_i_17
       (.I0(h_count[13]),
        .I1(h_count[12]),
        .I2(h_count[15]),
        .I3(h_count[14]),
        .O(is_valid_pixel_i_17_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    is_valid_pixel_i_18
       (.I0(h_count[21]),
        .I1(h_count[20]),
        .I2(h_count[23]),
        .I3(h_count[22]),
        .O(is_valid_pixel_i_18_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    is_valid_pixel_i_19
       (.I0(v_count[29]),
        .I1(v_count[28]),
        .I2(v_count[31]),
        .I3(v_count[30]),
        .O(is_valid_pixel_i_19_n_0));
  LUT6 #(
    .INIT(64'h0002AAAA000AAAAA)) 
    is_valid_pixel_i_2
       (.I0(is_valid_pixel_i_7_n_0),
        .I1(v_count[4]),
        .I2(v_count[5]),
        .I3(v_count[6]),
        .I4(v_count[7]),
        .I5(is_valid_pixel_i_8_n_0),
        .O(is_valid_pixel_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    is_valid_pixel_i_20
       (.I0(v_count[21]),
        .I1(v_count[20]),
        .I2(v_count[23]),
        .I3(v_count[22]),
        .O(is_valid_pixel_i_20_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAA8000)) 
    is_valid_pixel_i_3
       (.I0(h_count[6]),
        .I1(is_valid_pixel_i_9_n_0),
        .I2(h_count[3]),
        .I3(h_count[4]),
        .I4(h_count[5]),
        .I5(h_count[7]),
        .O(is_valid_pixel_i_3_n_0));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    is_valid_pixel_i_4
       (.I0(h_count[30]),
        .I1(h_count[31]),
        .I2(v_count[9]),
        .I3(v_count[8]),
        .I4(v_count[7]),
        .I5(is_valid_pixel_i_10_n_0),
        .O(is_valid_pixel_i_4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    is_valid_pixel_i_5
       (.I0(h_count[28]),
        .I1(h_count[29]),
        .O(is_valid_pixel_i_5_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    is_valid_pixel_i_6
       (.I0(is_valid_pixel_i_11_n_0),
        .I1(is_valid_pixel_i_12_n_0),
        .I2(is_valid_pixel_i_13_n_0),
        .I3(is_valid_pixel_i_14_n_0),
        .I4(is_valid_pixel_i_15_n_0),
        .O(is_valid_pixel_i_6_n_0));
  LUT5 #(
    .INIT(32'h00000008)) 
    is_valid_pixel_i_7
       (.I0(vde_in),
        .I1(v_count[9]),
        .I2(v_count[8]),
        .I3(h_count[31]),
        .I4(h_count[30]),
        .O(is_valid_pixel_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    is_valid_pixel_i_8
       (.I0(v_count[3]),
        .I1(v_count[2]),
        .I2(v_count[1]),
        .O(is_valid_pixel_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    is_valid_pixel_i_9
       (.I0(h_count[1]),
        .I1(h_count[0]),
        .I2(h_count[2]),
        .O(is_valid_pixel_i_9_n_0));
  FDCE #(
    .INIT(1'b0)) 
    is_valid_pixel_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(is_valid_pixel0),
        .Q(valid_pixel));
  CARRY4 multOp__25_carry
       (.CI(1'b0),
        .CO({multOp__25_carry_n_0,multOp__25_carry_n_1,multOp__25_carry_n_2,multOp__25_carry_n_3}),
        .CYINIT(1'b0),
        .DI({multOp_carry__0_n_7,multOp_carry_n_4,multOp_carry_n_5,1'b0}),
        .O({multOp__25_carry_n_4,multOp__25_carry_n_5,multOp__25_carry_n_6,multOp__25_carry_n_7}),
        .S({multOp__25_carry_i_1_n_0,multOp__25_carry_i_2_n_0,multOp__25_carry_i_3_n_0,multOp_carry_n_6}));
  CARRY4 multOp__25_carry__0
       (.CI(multOp__25_carry_n_0),
        .CO({multOp__25_carry__0_n_0,multOp__25_carry__0_n_1,multOp__25_carry__0_n_2,multOp__25_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({multOp__25_carry__0_i_1_n_0,multOp__25_carry__0_i_2_n_0,multOp__25_carry__0_i_3_n_0,rgb_in[16]}),
        .O({multOp__25_carry__0_n_4,multOp__25_carry__0_n_5,multOp__25_carry__0_n_6,multOp__25_carry__0_n_7}),
        .S({multOp__25_carry__0_i_4_n_0,multOp__25_carry__0_i_5_n_0,multOp__25_carry__0_i_6_n_0,multOp__25_carry__0_i_7_n_0}));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    multOp__25_carry__0_i_1
       (.I0(rgb_in[21]),
        .I1(multOp_carry__0_n_4),
        .I2(rgb_in[18]),
        .O(multOp__25_carry__0_i_1_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    multOp__25_carry__0_i_2
       (.I0(rgb_in[20]),
        .I1(multOp_carry__0_n_5),
        .I2(rgb_in[17]),
        .O(multOp__25_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    multOp__25_carry__0_i_3
       (.I0(rgb_in[17]),
        .I1(rgb_in[20]),
        .I2(multOp_carry__0_n_5),
        .O(multOp__25_carry__0_i_3_n_0));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    multOp__25_carry__0_i_4
       (.I0(rgb_in[22]),
        .I1(multOp_carry__1_n_7),
        .I2(rgb_in[19]),
        .I3(multOp__25_carry__0_i_1_n_0),
        .O(multOp__25_carry__0_i_4_n_0));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    multOp__25_carry__0_i_5
       (.I0(rgb_in[21]),
        .I1(multOp_carry__0_n_4),
        .I2(rgb_in[18]),
        .I3(multOp__25_carry__0_i_2_n_0),
        .O(multOp__25_carry__0_i_5_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    multOp__25_carry__0_i_6
       (.I0(rgb_in[20]),
        .I1(multOp_carry__0_n_5),
        .I2(rgb_in[17]),
        .I3(multOp_carry__0_n_6),
        .I4(rgb_in[19]),
        .O(multOp__25_carry__0_i_6_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    multOp__25_carry__0_i_7
       (.I0(rgb_in[19]),
        .I1(multOp_carry__0_n_6),
        .I2(rgb_in[16]),
        .O(multOp__25_carry__0_i_7_n_0));
  CARRY4 multOp__25_carry__1
       (.CI(multOp__25_carry__0_n_0),
        .CO({multOp__25_carry__1_n_0,multOp__25_carry__1_n_1,multOp__25_carry__1_n_2,multOp__25_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,rgb_in[21],multOp__25_carry__1_i_1_n_0}),
        .O({multOp__25_carry__1_n_4,multOp__25_carry__1_n_5,multOp__25_carry__1_n_6,multOp__25_carry__1_n_7}),
        .S({rgb_in[23:22],multOp__25_carry__1_i_2_n_0,multOp__25_carry__1_i_3_n_0}));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    multOp__25_carry__1_i_1
       (.I0(rgb_in[22]),
        .I1(multOp_carry__1_n_7),
        .I2(rgb_in[19]),
        .O(multOp__25_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h17E8)) 
    multOp__25_carry__1_i_2
       (.I0(rgb_in[20]),
        .I1(multOp_carry__1_n_2),
        .I2(rgb_in[23]),
        .I3(rgb_in[21]),
        .O(multOp__25_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    multOp__25_carry__1_i_3
       (.I0(multOp__25_carry__1_i_1_n_0),
        .I1(multOp_carry__1_n_2),
        .I2(rgb_in[23]),
        .I3(rgb_in[20]),
        .O(multOp__25_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    multOp__25_carry_i_1
       (.I0(multOp_carry__0_n_7),
        .I1(rgb_in[18]),
        .O(multOp__25_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    multOp__25_carry_i_2
       (.I0(multOp_carry_n_4),
        .I1(rgb_in[17]),
        .O(multOp__25_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    multOp__25_carry_i_3
       (.I0(multOp_carry_n_5),
        .I1(rgb_in[16]),
        .O(multOp__25_carry_i_3_n_0));
  CARRY4 multOp_carry
       (.CI(1'b0),
        .CO({multOp_carry_n_0,multOp_carry_n_1,multOp_carry_n_2,multOp_carry_n_3}),
        .CYINIT(1'b0),
        .DI({rgb_in[20:18],1'b0}),
        .O({multOp_carry_n_4,multOp_carry_n_5,multOp_carry_n_6,multOp_carry_n_7}),
        .S({multOp_carry_i_1_n_0,multOp_carry_i_2_n_0,multOp_carry_i_3_n_0,rgb_in[17]}));
  CARRY4 multOp_carry__0
       (.CI(multOp_carry_n_0),
        .CO({multOp_carry__0_n_0,multOp_carry__0_n_1,multOp_carry__0_n_2,multOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,rgb_in[23:21]}),
        .O({multOp_carry__0_n_4,multOp_carry__0_n_5,multOp_carry__0_n_6,multOp_carry__0_n_7}),
        .S({rgb_in[22],multOp_carry__0_i_1_n_0,multOp_carry__0_i_2_n_0,multOp_carry__0_i_3_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    multOp_carry__0_i_1
       (.I0(rgb_in[23]),
        .I1(rgb_in[21]),
        .O(multOp_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    multOp_carry__0_i_2
       (.I0(rgb_in[22]),
        .I1(rgb_in[20]),
        .O(multOp_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    multOp_carry__0_i_3
       (.I0(rgb_in[21]),
        .I1(rgb_in[19]),
        .O(multOp_carry__0_i_3_n_0));
  CARRY4 multOp_carry__1
       (.CI(multOp_carry__0_n_0),
        .CO({NLW_multOp_carry__1_CO_UNCONNECTED[3:2],multOp_carry__1_n_2,NLW_multOp_carry__1_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_multOp_carry__1_O_UNCONNECTED[3:1],multOp_carry__1_n_7}),
        .S({1'b0,1'b0,1'b1,rgb_in[23]}));
  LUT2 #(
    .INIT(4'h6)) 
    multOp_carry_i_1
       (.I0(rgb_in[20]),
        .I1(rgb_in[18]),
        .O(multOp_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    multOp_carry_i_2
       (.I0(rgb_in[19]),
        .I1(rgb_in[17]),
        .O(multOp_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    multOp_carry_i_3
       (.I0(rgb_in[18]),
        .I1(rgb_in[16]),
        .O(multOp_carry_i_3_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \multOp_inferred__0/i___24_carry 
       (.CI(1'b0),
        .CO({\multOp_inferred__0/i___24_carry_n_0 ,\multOp_inferred__0/i___24_carry_n_1 ,\multOp_inferred__0/i___24_carry_n_2 ,\multOp_inferred__0/i___24_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i___24_carry_i_1_n_0,i___24_carry_i_2_n_0,i___24_carry_i_3_n_0,1'b0}),
        .O({\multOp_inferred__0/i___24_carry_n_4 ,\multOp_inferred__0/i___24_carry_n_5 ,\multOp_inferred__0/i___24_carry_n_6 ,\multOp_inferred__0/i___24_carry_n_7 }),
        .S({i___24_carry_i_4_n_0,i___24_carry_i_5_n_0,i___24_carry_i_6_n_0,i___24_carry_i_7_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \multOp_inferred__0/i___24_carry__0 
       (.CI(\multOp_inferred__0/i___24_carry_n_0 ),
        .CO({\multOp_inferred__0/i___24_carry__0_n_0 ,\multOp_inferred__0/i___24_carry__0_n_1 ,\multOp_inferred__0/i___24_carry__0_n_2 ,\multOp_inferred__0/i___24_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i___24_carry__0_i_1_n_0,i___24_carry__0_i_2_n_0,i___24_carry__0_i_3_n_0,i___24_carry__0_i_4_n_0}),
        .O({\multOp_inferred__0/i___24_carry__0_n_4 ,\multOp_inferred__0/i___24_carry__0_n_5 ,\multOp_inferred__0/i___24_carry__0_n_6 ,\multOp_inferred__0/i___24_carry__0_n_7 }),
        .S({i___24_carry__0_i_5_n_0,i___24_carry__0_i_6_n_0,i___24_carry__0_i_7_n_0,i___24_carry__0_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \multOp_inferred__0/i___24_carry__1 
       (.CI(\multOp_inferred__0/i___24_carry__0_n_0 ),
        .CO({\NLW_multOp_inferred__0/i___24_carry__1_CO_UNCONNECTED [3:1],\multOp_inferred__0/i___24_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,i___24_carry__1_i_1_n_0}),
        .O({\NLW_multOp_inferred__0/i___24_carry__1_O_UNCONNECTED [3:2],\multOp_inferred__0/i___24_carry__1_n_6 ,\multOp_inferred__0/i___24_carry__1_n_7 }),
        .S({1'b0,1'b0,i___24_carry__1_i_2_n_0,i___24_carry__1_i_3_n_0}));
  CARRY4 \multOp_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\multOp_inferred__0/i__carry_n_0 ,\multOp_inferred__0/i__carry_n_1 ,\multOp_inferred__0/i__carry_n_2 ,\multOp_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({rgb_in[12:10],1'b0}),
        .O({\multOp_inferred__0/i__carry_n_4 ,\multOp_inferred__0/i__carry_n_5 ,\multOp_inferred__0/i__carry_n_6 ,\multOp_inferred__0/i__carry_n_7 }),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,rgb_in[9]}));
  CARRY4 \multOp_inferred__0/i__carry__0 
       (.CI(\multOp_inferred__0/i__carry_n_0 ),
        .CO({\multOp_inferred__0/i__carry__0_n_0 ,\multOp_inferred__0/i__carry__0_n_1 ,\multOp_inferred__0/i__carry__0_n_2 ,\multOp_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,rgb_in[15:13]}),
        .O({\multOp_inferred__0/i__carry__0_n_4 ,\multOp_inferred__0/i__carry__0_n_5 ,\multOp_inferred__0/i__carry__0_n_6 ,\multOp_inferred__0/i__carry__0_n_7 }),
        .S({rgb_in[14],i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0}));
  CARRY4 \multOp_inferred__0/i__carry__1 
       (.CI(\multOp_inferred__0/i__carry__0_n_0 ),
        .CO({\NLW_multOp_inferred__0/i__carry__1_CO_UNCONNECTED [3:2],\multOp_inferred__0/i__carry__1_n_2 ,\NLW_multOp_inferred__0/i__carry__1_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_multOp_inferred__0/i__carry__1_O_UNCONNECTED [3:1],\multOp_inferred__0/i__carry__1_n_7 }),
        .S({1'b0,1'b0,1'b1,rgb_in[15]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \multOp_inferred__1/i___27_carry 
       (.CI(1'b0),
        .CO({\multOp_inferred__1/i___27_carry_n_0 ,\multOp_inferred__1/i___27_carry_n_1 ,\multOp_inferred__1/i___27_carry_n_2 ,\multOp_inferred__1/i___27_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({\multOp_inferred__1/i__carry__0_n_6 ,\multOp_inferred__1/i__carry__0_n_7 ,\multOp_inferred__1/i__carry_n_4 ,1'b0}),
        .O(multOp[6:3]),
        .S({i___27_carry_i_1_n_0,i___27_carry_i_2_n_0,i___27_carry_i_3_n_0,\multOp_inferred__1/i__carry_n_5 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \multOp_inferred__1/i___27_carry__0 
       (.CI(\multOp_inferred__1/i___27_carry_n_0 ),
        .CO({\multOp_inferred__1/i___27_carry__0_n_0 ,\multOp_inferred__1/i___27_carry__0_n_1 ,\multOp_inferred__1/i___27_carry__0_n_2 ,\multOp_inferred__1/i___27_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i___27_carry__0_i_1_n_0,i___27_carry__0_i_2_n_0,i___27_carry__0_i_3_n_0,rgb_in[0]}),
        .O(multOp[10:7]),
        .S({i___27_carry__0_i_4_n_0,i___27_carry__0_i_5_n_0,i___27_carry__0_i_6_n_0,i___27_carry__0_i_7_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \multOp_inferred__1/i___27_carry__1 
       (.CI(\multOp_inferred__1/i___27_carry__0_n_0 ),
        .CO({\multOp_inferred__1/i___27_carry__1_n_0 ,\multOp_inferred__1/i___27_carry__1_n_1 ,\multOp_inferred__1/i___27_carry__1_n_2 ,\multOp_inferred__1/i___27_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({i___27_carry__1_i_1_n_0,i___27_carry__1_i_2_n_0,i___27_carry__1_i_3_n_0,i___27_carry__1_i_4_n_0}),
        .O(multOp[14:11]),
        .S({i___27_carry__1_i_5_n_0,i___27_carry__1_i_6_n_0,i___27_carry__1_i_7_n_0,i___27_carry__1_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \multOp_inferred__1/i___27_carry__2 
       (.CI(\multOp_inferred__1/i___27_carry__1_n_0 ),
        .CO(\NLW_multOp_inferred__1/i___27_carry__2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_multOp_inferred__1/i___27_carry__2_O_UNCONNECTED [3:1],multOp[15]}),
        .S({1'b0,1'b0,1'b0,i___27_carry__2_i_1_n_0}));
  CARRY4 \multOp_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\multOp_inferred__1/i__carry_n_0 ,\multOp_inferred__1/i__carry_n_1 ,\multOp_inferred__1/i__carry_n_2 ,\multOp_inferred__1/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({rgb_in[1:0],1'b0,1'b1}),
        .O({\multOp_inferred__1/i__carry_n_4 ,\multOp_inferred__1/i__carry_n_5 ,multOp[2:1]}),
        .S({i__carry_i_1__0_n_0,i__carry_i_2__0_n_0,i__carry_i_3__0_n_0,rgb_in[0]}));
  CARRY4 \multOp_inferred__1/i__carry__0 
       (.CI(\multOp_inferred__1/i__carry_n_0 ),
        .CO({\multOp_inferred__1/i__carry__0_n_0 ,\multOp_inferred__1/i__carry__0_n_1 ,\multOp_inferred__1/i__carry__0_n_2 ,\multOp_inferred__1/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(rgb_in[5:2]),
        .O({\multOp_inferred__1/i__carry__0_n_4 ,\multOp_inferred__1/i__carry__0_n_5 ,\multOp_inferred__1/i__carry__0_n_6 ,\multOp_inferred__1/i__carry__0_n_7 }),
        .S({i__carry__0_i_1__0_n_0,i__carry__0_i_2__0_n_0,i__carry__0_i_3__0_n_0,i__carry__0_i_4_n_0}));
  CARRY4 \multOp_inferred__1/i__carry__1 
       (.CI(\multOp_inferred__1/i__carry__0_n_0 ),
        .CO({\NLW_multOp_inferred__1/i__carry__1_CO_UNCONNECTED [3],\multOp_inferred__1/i__carry__1_n_1 ,\NLW_multOp_inferred__1/i__carry__1_CO_UNCONNECTED [1],\multOp_inferred__1/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,rgb_in[7:6]}),
        .O({\NLW_multOp_inferred__1/i__carry__1_O_UNCONNECTED [3:2],\multOp_inferred__1/i__carry__1_n_6 ,\multOp_inferred__1/i__carry__1_n_7 }),
        .S({1'b0,1'b1,i__carry__1_i_1_n_0,i__carry__1_i_2_n_0}));
  LUT3 #(
    .INIT(8'hB8)) 
    vSync_reg_i_1
       (.I0(end_of_frame),
        .I1(rst),
        .I2(vsync_in),
        .O(vSync_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    vSync_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(vSync_reg_i_1_n_0),
        .Q(end_of_frame),
        .R(1'b0));
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
