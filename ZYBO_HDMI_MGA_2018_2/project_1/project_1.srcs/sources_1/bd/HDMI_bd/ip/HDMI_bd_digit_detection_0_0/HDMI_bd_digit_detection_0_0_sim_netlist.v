// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Thu Dec  4 10:46:53 2025
// Host        : pcetu-129 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/laemo10/Desktop/Labo4_FPGA/ZYBO_HDMI_MGA_2018_2/project_1/project_1.srcs/sources_1/bd/HDMI_bd/ip/HDMI_bd_digit_detection_0_0/HDMI_bd_digit_detection_0_0_sim_netlist.v
// Design      : HDMI_bd_digit_detection_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "HDMI_bd_digit_detection_0_0,digit_detection,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "digit_detection,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module HDMI_bd_digit_detection_0_0
   (clk,
    rst,
    h_count,
    v_count,
    pixel_valid,
    new_frame,
    rgb_in,
    seven_seg_out);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN HDMI_bd_dvi2rgb_0_0_PixelClk, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input [31:0]h_count;
  input [31:0]v_count;
  input pixel_valid;
  input new_frame;
  input [23:0]rgb_in;
  output [7:0]seven_seg_out;

  wire clk;
  wire [31:0]h_count;
  wire new_frame;
  wire pixel_valid;
  wire [23:0]rgb_in;
  wire rst;
  wire [7:0]seven_seg_out;
  wire [31:0]v_count;

  HDMI_bd_digit_detection_0_0_digit_detection U0
       (.clk(clk),
        .h_count(h_count),
        .new_frame(new_frame),
        .pixel_valid(pixel_valid),
        .rgb_in(rgb_in),
        .rst(rst),
        .seven_seg_out(seven_seg_out),
        .v_count(v_count));
endmodule

(* ORIG_REF_NAME = "digit_detection" *) 
module HDMI_bd_digit_detection_0_0_digit_detection
   (seven_seg_out,
    rgb_in,
    clk,
    rst,
    new_frame,
    pixel_valid,
    v_count,
    h_count);
  output [7:0]seven_seg_out;
  input [23:0]rgb_in;
  input clk;
  input rst;
  input new_frame;
  input pixel_valid;
  input [31:0]v_count;
  input [31:0]h_count;

  wire [14:1]C;
  wire clk;
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
  wire new_frame;
  wire new_frame_prev;
  wire new_frame_prev_i_1_n_0;
  wire [7:0]p_0_out;
  wire pixel_valid;
  wire \probe_matrix[0][0]_i_1_n_0 ;
  wire \probe_matrix[0][0]_i_2_n_0 ;
  wire \probe_matrix[0][0]_i_3_n_0 ;
  wire \probe_matrix[0][0]_i_4_n_0 ;
  wire \probe_matrix[0][1]_i_1_n_0 ;
  wire \probe_matrix[0][1]_i_2_n_0 ;
  wire \probe_matrix[0][1]_i_3_n_0 ;
  wire \probe_matrix[0][1]_i_4_n_0 ;
  wire \probe_matrix[0][1]_i_5_n_0 ;
  wire \probe_matrix[0][2]_i_10_n_0 ;
  wire \probe_matrix[0][2]_i_11_n_0 ;
  wire \probe_matrix[0][2]_i_12_n_0 ;
  wire \probe_matrix[0][2]_i_13_n_0 ;
  wire \probe_matrix[0][2]_i_14_n_0 ;
  wire \probe_matrix[0][2]_i_15_n_0 ;
  wire \probe_matrix[0][2]_i_16_n_0 ;
  wire \probe_matrix[0][2]_i_17_n_0 ;
  wire \probe_matrix[0][2]_i_18_n_0 ;
  wire \probe_matrix[0][2]_i_19_n_0 ;
  wire \probe_matrix[0][2]_i_1_n_0 ;
  wire \probe_matrix[0][2]_i_20_n_0 ;
  wire \probe_matrix[0][2]_i_21_n_0 ;
  wire \probe_matrix[0][2]_i_22_n_0 ;
  wire \probe_matrix[0][2]_i_23_n_0 ;
  wire \probe_matrix[0][2]_i_24_n_0 ;
  wire \probe_matrix[0][2]_i_2_n_0 ;
  wire \probe_matrix[0][2]_i_3_n_0 ;
  wire \probe_matrix[0][2]_i_4_n_0 ;
  wire \probe_matrix[0][2]_i_5_n_0 ;
  wire \probe_matrix[0][2]_i_6_n_0 ;
  wire \probe_matrix[0][2]_i_7_n_0 ;
  wire \probe_matrix[0][2]_i_8_n_0 ;
  wire \probe_matrix[0][2]_i_9_n_0 ;
  wire \probe_matrix[1][0]_i_1_n_0 ;
  wire \probe_matrix[1][0]_i_2_n_0 ;
  wire \probe_matrix[1][0]_i_3_n_0 ;
  wire \probe_matrix[1][0]_i_4_n_0 ;
  wire \probe_matrix[1][1]_i_1_n_0 ;
  wire \probe_matrix[1][1]_i_2_n_0 ;
  wire \probe_matrix[1][1]_i_3_n_0 ;
  wire \probe_matrix[1][1]_i_4_n_0 ;
  wire \probe_matrix[1][1]_i_5_n_0 ;
  wire \probe_matrix[1][1]_i_6_n_0 ;
  wire \probe_matrix[1][1]_i_7_n_0 ;
  wire \probe_matrix[1][1]_i_8_n_0 ;
  wire \probe_matrix[1][2]_i_1_n_0 ;
  wire \probe_matrix[1][2]_i_2_n_0 ;
  wire \probe_matrix[1][2]_i_3_n_0 ;
  wire \probe_matrix[1][2]_i_4_n_0 ;
  wire \probe_matrix[1][2]_i_5_n_0 ;
  wire \probe_matrix[1][2]_i_6_n_0 ;
  wire \probe_matrix[2][0]_i_1_n_0 ;
  wire \probe_matrix[2][0]_i_2_n_0 ;
  wire \probe_matrix[2][0]_i_3_n_0 ;
  wire \probe_matrix[2][0]_i_4_n_0 ;
  wire \probe_matrix[2][0]_i_5_n_0 ;
  wire \probe_matrix[2][1]_i_1_n_0 ;
  wire \probe_matrix[2][1]_i_2_n_0 ;
  wire \probe_matrix[2][1]_i_3_n_0 ;
  wire \probe_matrix[2][1]_i_4_n_0 ;
  wire \probe_matrix[2][1]_i_5_n_0 ;
  wire \probe_matrix[2][2]_i_1_n_0 ;
  wire \probe_matrix[2][2]_i_2_n_0 ;
  wire \probe_matrix[2][2]_i_3_n_0 ;
  wire \probe_matrix[2][2]_i_4_n_0 ;
  wire \probe_matrix[2][2]_i_5_n_0 ;
  wire \probe_matrix[3][0]_i_1_n_0 ;
  wire \probe_matrix[3][0]_i_2_n_0 ;
  wire \probe_matrix[3][0]_i_3_n_0 ;
  wire \probe_matrix[3][0]_i_4_n_0 ;
  wire \probe_matrix[3][0]_i_5_n_0 ;
  wire \probe_matrix[3][1]_i_1_n_0 ;
  wire \probe_matrix[3][1]_i_2_n_0 ;
  wire \probe_matrix[3][1]_i_3_n_0 ;
  wire \probe_matrix[3][1]_i_4_n_0 ;
  wire \probe_matrix[3][1]_i_5_n_0 ;
  wire \probe_matrix[3][2]_i_1_n_0 ;
  wire \probe_matrix[3][2]_i_2_n_0 ;
  wire \probe_matrix[3][2]_i_3_n_0 ;
  wire \probe_matrix[3][2]_i_4_n_0 ;
  wire \probe_matrix[3][2]_i_5_n_0 ;
  wire \probe_matrix[4][0]_i_1_n_0 ;
  wire \probe_matrix[4][0]_i_2_n_0 ;
  wire \probe_matrix[4][0]_i_3_n_0 ;
  wire \probe_matrix[4][1]_i_1_n_0 ;
  wire \probe_matrix[4][1]_i_2_n_0 ;
  wire \probe_matrix[4][1]_i_3_n_0 ;
  wire \probe_matrix[4][1]_i_4_n_0 ;
  wire \probe_matrix[4][2]_i_1_n_0 ;
  wire \probe_matrix[4][2]_i_2_n_0 ;
  wire \probe_matrix[4][2]_i_3_n_0 ;
  wire \probe_matrix[4][2]_i_4_n_0 ;
  wire \probe_matrix[4][2]_i_5_n_0 ;
  wire \probe_matrix[5][0]_i_1_n_0 ;
  wire \probe_matrix[5][0]_i_2_n_0 ;
  wire \probe_matrix[5][0]_i_3_n_0 ;
  wire \probe_matrix[5][0]_i_4_n_0 ;
  wire \probe_matrix[5][0]_i_5_n_0 ;
  wire \probe_matrix[5][1]_i_1_n_0 ;
  wire \probe_matrix[5][1]_i_2_n_0 ;
  wire \probe_matrix[5][1]_i_3_n_0 ;
  wire \probe_matrix[5][1]_i_4_n_0 ;
  wire \probe_matrix[5][2]_i_1_n_0 ;
  wire \probe_matrix[5][2]_i_2_n_0 ;
  wire \probe_matrix[5][2]_i_3_n_0 ;
  wire \probe_matrix[5][2]_i_4_n_0 ;
  wire \probe_matrix[5][2]_i_5_n_0 ;
  wire \probe_matrix[5][2]_i_6_n_0 ;
  wire \probe_matrix[6][0]_i_1_n_0 ;
  wire \probe_matrix[6][0]_i_2_n_0 ;
  wire \probe_matrix[6][0]_i_3_n_0 ;
  wire \probe_matrix[6][0]_i_4_n_0 ;
  wire \probe_matrix[6][0]_i_5_n_0 ;
  wire \probe_matrix[6][1]_i_1_n_0 ;
  wire \probe_matrix[6][1]_i_2_n_0 ;
  wire \probe_matrix[6][1]_i_3_n_0 ;
  wire \probe_matrix[6][1]_i_4_n_0 ;
  wire \probe_matrix[6][2]_i_1_n_0 ;
  wire \probe_matrix[6][2]_i_2_n_0 ;
  wire \probe_matrix[6][2]_i_3_n_0 ;
  wire \probe_matrix[6][2]_i_4_n_0 ;
  wire \probe_matrix[6][2]_i_5_n_0 ;
  wire \probe_matrix[6][2]_i_6_n_0 ;
  wire \probe_matrix[6][2]_i_7_n_0 ;
  wire \probe_matrix[6][2]_i_8_n_0 ;
  wire \probe_matrix[6][2]_i_9_n_0 ;
  wire \probe_matrix[7][0]_i_1_n_0 ;
  wire \probe_matrix[7][0]_i_2_n_0 ;
  wire \probe_matrix[7][1]_i_1_n_0 ;
  wire \probe_matrix[7][1]_i_2_n_0 ;
  wire [2:0]\probe_matrix_reg[0] ;
  wire [2:0]\probe_matrix_reg[1] ;
  wire [2:0]\probe_matrix_reg[2] ;
  wire [2:0]\probe_matrix_reg[3] ;
  wire [2:0]\probe_matrix_reg[4] ;
  wire [2:0]\probe_matrix_reg[5] ;
  wire [2:0]\probe_matrix_reg[6] ;
  wire [1:0]\probe_matrix_reg[7] ;
  wire [23:0]rgb_in;
  wire rst;
  wire [7:0]seven_seg_out;
  wire seven_seg_out0;
  wire [31:0]v_count;
  wire [15:8]v_is_black2;
  wire v_is_black2__41_carry__0_i_1_n_0;
  wire v_is_black2__41_carry__0_i_2_n_0;
  wire v_is_black2__41_carry__0_i_3_n_0;
  wire v_is_black2__41_carry__0_i_4_n_0;
  wire v_is_black2__41_carry__0_n_0;
  wire v_is_black2__41_carry__0_n_1;
  wire v_is_black2__41_carry__0_n_2;
  wire v_is_black2__41_carry__0_n_3;
  wire v_is_black2__41_carry__1_i_1_n_0;
  wire v_is_black2__41_carry__1_i_2_n_0;
  wire v_is_black2__41_carry__1_i_3_n_0;
  wire v_is_black2__41_carry__1_i_4_n_0;
  wire v_is_black2__41_carry__1_n_0;
  wire v_is_black2__41_carry__1_n_1;
  wire v_is_black2__41_carry__1_n_2;
  wire v_is_black2__41_carry__1_n_3;
  wire v_is_black2__41_carry__2_i_1_n_0;
  wire v_is_black2__41_carry__2_i_2_n_0;
  wire v_is_black2__41_carry__2_i_3_n_0;
  wire v_is_black2__41_carry__2_n_2;
  wire v_is_black2__41_carry__2_n_3;
  wire v_is_black2__41_carry_i_1_n_0;
  wire v_is_black2__41_carry_i_2_n_0;
  wire v_is_black2__41_carry_i_3_n_0;
  wire v_is_black2__41_carry_i_4_n_0;
  wire v_is_black2__41_carry_n_0;
  wire v_is_black2__41_carry_n_1;
  wire v_is_black2__41_carry_n_2;
  wire v_is_black2__41_carry_n_3;
  wire v_is_black2_carry__0_i_1_n_0;
  wire v_is_black2_carry__0_i_2_n_0;
  wire v_is_black2_carry__0_i_3_n_0;
  wire v_is_black2_carry__0_i_4_n_0;
  wire v_is_black2_carry__0_n_0;
  wire v_is_black2_carry__0_n_1;
  wire v_is_black2_carry__0_n_2;
  wire v_is_black2_carry__0_n_3;
  wire v_is_black2_carry__1_i_1_n_0;
  wire v_is_black2_carry__1_i_2_n_0;
  wire v_is_black2_carry__1_i_3_n_0;
  wire v_is_black2_carry__1_i_4_n_0;
  wire v_is_black2_carry__1_n_0;
  wire v_is_black2_carry__1_n_1;
  wire v_is_black2_carry__1_n_2;
  wire v_is_black2_carry__1_n_3;
  wire v_is_black2_carry__2_i_1_n_3;
  wire v_is_black2_carry__2_i_2_n_0;
  wire v_is_black2_carry__2_n_0;
  wire v_is_black2_carry__2_n_2;
  wire v_is_black2_carry__2_n_3;
  wire v_is_black2_carry_i_1_n_0;
  wire v_is_black2_carry_i_2_n_0;
  wire v_is_black2_carry_i_3_n_0;
  wire v_is_black2_carry_i_4_n_0;
  wire v_is_black2_carry_n_0;
  wire v_is_black2_carry_n_1;
  wire v_is_black2_carry_n_2;
  wire v_is_black2_carry_n_3;
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
  wire [3:0]NLW_v_is_black2__41_carry_O_UNCONNECTED;
  wire [2:0]NLW_v_is_black2__41_carry__0_O_UNCONNECTED;
  wire [3:2]NLW_v_is_black2__41_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_v_is_black2__41_carry__2_O_UNCONNECTED;
  wire [0:0]NLW_v_is_black2_carry_O_UNCONNECTED;
  wire [2:2]NLW_v_is_black2_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_v_is_black2_carry__2_O_UNCONNECTED;
  wire [3:1]NLW_v_is_black2_carry__2_i_1_CO_UNCONNECTED;
  wire [3:0]NLW_v_is_black2_carry__2_i_1_O_UNCONNECTED;

  (* HLUTNM = "lutpair7" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    i___24_carry__0_i_1
       (.I0(rgb_in[6]),
        .I1(\multOp_inferred__0/i__carry__1_n_7 ),
        .I2(rgb_in[4]),
        .O(i___24_carry__0_i_1_n_0));
  (* HLUTNM = "lutpair6" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    i___24_carry__0_i_2
       (.I0(rgb_in[5]),
        .I1(\multOp_inferred__0/i__carry__0_n_4 ),
        .I2(rgb_in[3]),
        .O(i___24_carry__0_i_2_n_0));
  (* HLUTNM = "lutpair5" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    i___24_carry__0_i_3
       (.I0(rgb_in[4]),
        .I1(\multOp_inferred__0/i__carry__0_n_5 ),
        .I2(rgb_in[2]),
        .O(i___24_carry__0_i_3_n_0));
  (* HLUTNM = "lutpair4" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    i___24_carry__0_i_4
       (.I0(rgb_in[3]),
        .I1(\multOp_inferred__0/i__carry__0_n_6 ),
        .I2(rgb_in[1]),
        .O(i___24_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9669)) 
    i___24_carry__0_i_5
       (.I0(i___24_carry__0_i_1_n_0),
        .I1(\multOp_inferred__0/i__carry__1_n_2 ),
        .I2(rgb_in[7]),
        .I3(rgb_in[5]),
        .O(i___24_carry__0_i_5_n_0));
  (* HLUTNM = "lutpair7" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    i___24_carry__0_i_6
       (.I0(rgb_in[6]),
        .I1(\multOp_inferred__0/i__carry__1_n_7 ),
        .I2(rgb_in[4]),
        .I3(i___24_carry__0_i_2_n_0),
        .O(i___24_carry__0_i_6_n_0));
  (* HLUTNM = "lutpair6" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    i___24_carry__0_i_7
       (.I0(rgb_in[5]),
        .I1(\multOp_inferred__0/i__carry__0_n_4 ),
        .I2(rgb_in[3]),
        .I3(i___24_carry__0_i_3_n_0),
        .O(i___24_carry__0_i_7_n_0));
  (* HLUTNM = "lutpair5" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    i___24_carry__0_i_8
       (.I0(rgb_in[4]),
        .I1(\multOp_inferred__0/i__carry__0_n_5 ),
        .I2(rgb_in[2]),
        .I3(i___24_carry__0_i_4_n_0),
        .O(i___24_carry__0_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i___24_carry__1_i_1
       (.I0(rgb_in[6]),
        .O(i___24_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___24_carry__1_i_2
       (.I0(rgb_in[6]),
        .I1(rgb_in[7]),
        .O(i___24_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h8E71)) 
    i___24_carry__1_i_3
       (.I0(rgb_in[5]),
        .I1(\multOp_inferred__0/i__carry__1_n_2 ),
        .I2(rgb_in[7]),
        .I3(rgb_in[6]),
        .O(i___24_carry__1_i_3_n_0));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    i___24_carry_i_1
       (.I0(rgb_in[2]),
        .I1(\multOp_inferred__0/i__carry__0_n_7 ),
        .I2(rgb_in[0]),
        .O(i___24_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    i___24_carry_i_2
       (.I0(rgb_in[0]),
        .I1(rgb_in[2]),
        .I2(\multOp_inferred__0/i__carry__0_n_7 ),
        .O(i___24_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    i___24_carry_i_3
       (.I0(\multOp_inferred__0/i__carry_n_5 ),
        .I1(rgb_in[0]),
        .O(i___24_carry_i_3_n_0));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    i___24_carry_i_4
       (.I0(rgb_in[3]),
        .I1(\multOp_inferred__0/i__carry__0_n_6 ),
        .I2(rgb_in[1]),
        .I3(i___24_carry_i_1_n_0),
        .O(i___24_carry_i_4_n_0));
  (* HLUTNM = "lutpair3" *) 
  LUT5 #(
    .INIT(32'h69966969)) 
    i___24_carry_i_5
       (.I0(rgb_in[2]),
        .I1(\multOp_inferred__0/i__carry__0_n_7 ),
        .I2(rgb_in[0]),
        .I3(rgb_in[1]),
        .I4(\multOp_inferred__0/i__carry_n_4 ),
        .O(i___24_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    i___24_carry_i_6
       (.I0(rgb_in[0]),
        .I1(\multOp_inferred__0/i__carry_n_5 ),
        .I2(rgb_in[1]),
        .I3(\multOp_inferred__0/i__carry_n_4 ),
        .O(i___24_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i___24_carry_i_7
       (.I0(rgb_in[0]),
        .I1(\multOp_inferred__0/i__carry_n_5 ),
        .O(i___24_carry_i_7_n_0));
  (* HLUTNM = "lutpair9" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    i___27_carry__0_i_1
       (.I0(rgb_in[10]),
        .I1(\multOp_inferred__1/i__carry__1_n_7 ),
        .I2(rgb_in[13]),
        .O(i___27_carry__0_i_1_n_0));
  (* HLUTNM = "lutpair8" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    i___27_carry__0_i_2
       (.I0(rgb_in[12]),
        .I1(\multOp_inferred__1/i__carry__0_n_4 ),
        .I2(rgb_in[9]),
        .O(i___27_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___27_carry__0_i_3
       (.I0(rgb_in[9]),
        .I1(\multOp_inferred__1/i__carry__0_n_4 ),
        .I2(rgb_in[12]),
        .O(i___27_carry__0_i_3_n_0));
  (* HLUTNM = "lutpair10" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    i___27_carry__0_i_4
       (.I0(rgb_in[11]),
        .I1(\multOp_inferred__1/i__carry__1_n_6 ),
        .I2(rgb_in[14]),
        .I3(i___27_carry__0_i_1_n_0),
        .O(i___27_carry__0_i_4_n_0));
  (* HLUTNM = "lutpair9" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    i___27_carry__0_i_5
       (.I0(rgb_in[10]),
        .I1(\multOp_inferred__1/i__carry__1_n_7 ),
        .I2(rgb_in[13]),
        .I3(i___27_carry__0_i_2_n_0),
        .O(i___27_carry__0_i_5_n_0));
  (* HLUTNM = "lutpair8" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    i___27_carry__0_i_6
       (.I0(rgb_in[12]),
        .I1(\multOp_inferred__1/i__carry__0_n_4 ),
        .I2(rgb_in[9]),
        .I3(\multOp_inferred__1/i__carry__0_n_5 ),
        .I4(rgb_in[11]),
        .O(i___27_carry__0_i_6_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___27_carry__0_i_7
       (.I0(rgb_in[11]),
        .I1(\multOp_inferred__1/i__carry__0_n_5 ),
        .I2(rgb_in[8]),
        .O(i___27_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___27_carry__1_i_1
       (.I0(rgb_in[15]),
        .I1(\multOp_inferred__1/i__carry__1_n_1 ),
        .O(i___27_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i___27_carry__1_i_2
       (.I0(rgb_in[13]),
        .I1(\multOp_inferred__1/i__carry__1_n_1 ),
        .O(i___27_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    i___27_carry__1_i_3
       (.I0(\multOp_inferred__1/i__carry__1_n_1 ),
        .I1(rgb_in[15]),
        .I2(rgb_in[12]),
        .O(i___27_carry__1_i_3_n_0));
  (* HLUTNM = "lutpair10" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    i___27_carry__1_i_4
       (.I0(rgb_in[11]),
        .I1(\multOp_inferred__1/i__carry__1_n_6 ),
        .I2(rgb_in[14]),
        .O(i___27_carry__1_i_4_n_0));
  LUT3 #(
    .INIT(8'hE1)) 
    i___27_carry__1_i_5
       (.I0(rgb_in[14]),
        .I1(\multOp_inferred__1/i__carry__1_n_1 ),
        .I2(rgb_in[15]),
        .O(i___27_carry__1_i_5_n_0));
  LUT3 #(
    .INIT(8'hE1)) 
    i___27_carry__1_i_6
       (.I0(rgb_in[13]),
        .I1(\multOp_inferred__1/i__carry__1_n_1 ),
        .I2(rgb_in[14]),
        .O(i___27_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h7E81)) 
    i___27_carry__1_i_7
       (.I0(rgb_in[12]),
        .I1(rgb_in[15]),
        .I2(\multOp_inferred__1/i__carry__1_n_1 ),
        .I3(rgb_in[13]),
        .O(i___27_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9669)) 
    i___27_carry__1_i_8
       (.I0(i___27_carry__1_i_4_n_0),
        .I1(rgb_in[15]),
        .I2(\multOp_inferred__1/i__carry__1_n_1 ),
        .I3(rgb_in[12]),
        .O(i___27_carry__1_i_8_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i___27_carry__2_i_1
       (.I0(rgb_in[15]),
        .I1(\multOp_inferred__1/i__carry__1_n_1 ),
        .O(i___27_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i___27_carry_i_1
       (.I0(\multOp_inferred__1/i__carry__0_n_6 ),
        .I1(rgb_in[10]),
        .O(i___27_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i___27_carry_i_2
       (.I0(\multOp_inferred__1/i__carry__0_n_7 ),
        .I1(rgb_in[9]),
        .O(i___27_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i___27_carry_i_3
       (.I0(\multOp_inferred__1/i__carry_n_4 ),
        .I1(rgb_in[8]),
        .O(i___27_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_1
       (.I0(rgb_in[7]),
        .I1(rgb_in[5]),
        .O(i__carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1__0
       (.I0(rgb_in[13]),
        .I1(rgb_in[15]),
        .O(i__carry__0_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_2
       (.I0(rgb_in[6]),
        .I1(rgb_in[4]),
        .O(i__carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_2__0
       (.I0(rgb_in[12]),
        .I1(rgb_in[14]),
        .O(i__carry__0_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_3
       (.I0(rgb_in[5]),
        .I1(rgb_in[3]),
        .O(i__carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_3__0
       (.I0(rgb_in[11]),
        .I1(rgb_in[13]),
        .O(i__carry__0_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_4
       (.I0(rgb_in[10]),
        .I1(rgb_in[12]),
        .O(i__carry__0_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_1
       (.I0(rgb_in[15]),
        .O(i__carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_2
       (.I0(rgb_in[14]),
        .O(i__carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_1
       (.I0(rgb_in[4]),
        .I1(rgb_in[2]),
        .O(i__carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_1__0
       (.I0(rgb_in[9]),
        .I1(rgb_in[11]),
        .O(i__carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_2
       (.I0(rgb_in[3]),
        .I1(rgb_in[1]),
        .O(i__carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_2__0
       (.I0(rgb_in[8]),
        .I1(rgb_in[10]),
        .O(i__carry_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_3
       (.I0(rgb_in[9]),
        .O(i__carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_3__0
       (.I0(rgb_in[2]),
        .I1(rgb_in[0]),
        .O(i__carry_i_3__0_n_0));
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
        .I1(rgb_in[18]),
        .I2(multOp_carry__0_n_4),
        .O(multOp__25_carry__0_i_1_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    multOp__25_carry__0_i_2
       (.I0(rgb_in[17]),
        .I1(rgb_in[20]),
        .I2(multOp_carry__0_n_5),
        .O(multOp__25_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    multOp__25_carry__0_i_3
       (.I0(rgb_in[17]),
        .I1(multOp_carry__0_n_5),
        .I2(rgb_in[20]),
        .O(multOp__25_carry__0_i_3_n_0));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    multOp__25_carry__0_i_4
       (.I0(rgb_in[22]),
        .I1(rgb_in[19]),
        .I2(multOp_carry__1_n_7),
        .I3(multOp__25_carry__0_i_1_n_0),
        .O(multOp__25_carry__0_i_4_n_0));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    multOp__25_carry__0_i_5
       (.I0(rgb_in[21]),
        .I1(rgb_in[18]),
        .I2(multOp_carry__0_n_4),
        .I3(multOp__25_carry__0_i_2_n_0),
        .O(multOp__25_carry__0_i_5_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    multOp__25_carry__0_i_6
       (.I0(rgb_in[17]),
        .I1(rgb_in[20]),
        .I2(multOp_carry__0_n_5),
        .I3(rgb_in[19]),
        .I4(multOp_carry__0_n_6),
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
        .I1(rgb_in[19]),
        .I2(multOp_carry__1_n_7),
        .O(multOp__25_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h17E8)) 
    multOp__25_carry__1_i_2
       (.I0(multOp_carry__1_n_2),
        .I1(rgb_in[20]),
        .I2(rgb_in[23]),
        .I3(rgb_in[21]),
        .O(multOp__25_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    multOp__25_carry__1_i_3
       (.I0(multOp__25_carry__1_i_1_n_0),
        .I1(rgb_in[23]),
        .I2(multOp_carry__1_n_2),
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
        .DI({rgb_in[4:2],1'b0}),
        .O({\multOp_inferred__0/i__carry_n_4 ,\multOp_inferred__0/i__carry_n_5 ,\multOp_inferred__0/i__carry_n_6 ,\multOp_inferred__0/i__carry_n_7 }),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3__0_n_0,rgb_in[1]}));
  CARRY4 \multOp_inferred__0/i__carry__0 
       (.CI(\multOp_inferred__0/i__carry_n_0 ),
        .CO({\multOp_inferred__0/i__carry__0_n_0 ,\multOp_inferred__0/i__carry__0_n_1 ,\multOp_inferred__0/i__carry__0_n_2 ,\multOp_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,rgb_in[7:5]}),
        .O({\multOp_inferred__0/i__carry__0_n_4 ,\multOp_inferred__0/i__carry__0_n_5 ,\multOp_inferred__0/i__carry__0_n_6 ,\multOp_inferred__0/i__carry__0_n_7 }),
        .S({rgb_in[6],i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0}));
  CARRY4 \multOp_inferred__0/i__carry__1 
       (.CI(\multOp_inferred__0/i__carry__0_n_0 ),
        .CO({\NLW_multOp_inferred__0/i__carry__1_CO_UNCONNECTED [3:2],\multOp_inferred__0/i__carry__1_n_2 ,\NLW_multOp_inferred__0/i__carry__1_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_multOp_inferred__0/i__carry__1_O_UNCONNECTED [3:1],\multOp_inferred__0/i__carry__1_n_7 }),
        .S({1'b0,1'b0,1'b1,rgb_in[7]}));
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
        .DI({i___27_carry__0_i_1_n_0,i___27_carry__0_i_2_n_0,i___27_carry__0_i_3_n_0,rgb_in[8]}),
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
        .DI({rgb_in[9:8],1'b0,1'b1}),
        .O({\multOp_inferred__1/i__carry_n_4 ,\multOp_inferred__1/i__carry_n_5 ,multOp[2:1]}),
        .S({i__carry_i_1__0_n_0,i__carry_i_2__0_n_0,i__carry_i_3_n_0,rgb_in[8]}));
  CARRY4 \multOp_inferred__1/i__carry__0 
       (.CI(\multOp_inferred__1/i__carry_n_0 ),
        .CO({\multOp_inferred__1/i__carry__0_n_0 ,\multOp_inferred__1/i__carry__0_n_1 ,\multOp_inferred__1/i__carry__0_n_2 ,\multOp_inferred__1/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(rgb_in[13:10]),
        .O({\multOp_inferred__1/i__carry__0_n_4 ,\multOp_inferred__1/i__carry__0_n_5 ,\multOp_inferred__1/i__carry__0_n_6 ,\multOp_inferred__1/i__carry__0_n_7 }),
        .S({i__carry__0_i_1__0_n_0,i__carry__0_i_2__0_n_0,i__carry__0_i_3__0_n_0,i__carry__0_i_4_n_0}));
  CARRY4 \multOp_inferred__1/i__carry__1 
       (.CI(\multOp_inferred__1/i__carry__0_n_0 ),
        .CO({\NLW_multOp_inferred__1/i__carry__1_CO_UNCONNECTED [3],\multOp_inferred__1/i__carry__1_n_1 ,\NLW_multOp_inferred__1/i__carry__1_CO_UNCONNECTED [1],\multOp_inferred__1/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,rgb_in[15:14]}),
        .O({\NLW_multOp_inferred__1/i__carry__1_O_UNCONNECTED [3:2],\multOp_inferred__1/i__carry__1_n_6 ,\multOp_inferred__1/i__carry__1_n_7 }),
        .S({1'b0,1'b1,i__carry__1_i_1_n_0,i__carry__1_i_2_n_0}));
  LUT3 #(
    .INIT(8'hB8)) 
    new_frame_prev_i_1
       (.I0(new_frame_prev),
        .I1(rst),
        .I2(new_frame),
        .O(new_frame_prev_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    new_frame_prev_reg
       (.C(clk),
        .CE(1'b1),
        .D(new_frame_prev_i_1_n_0),
        .Q(new_frame_prev),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h000E00FF000E0000)) 
    \probe_matrix[0][0]_i_1 
       (.I0(\probe_matrix[0][2]_i_2_n_0 ),
        .I1(\probe_matrix[0][2]_i_3_n_0 ),
        .I2(v_is_black2[15]),
        .I3(seven_seg_out0),
        .I4(\probe_matrix[0][0]_i_2_n_0 ),
        .I5(\probe_matrix_reg[0] [0]),
        .O(\probe_matrix[0][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \probe_matrix[0][0]_i_2 
       (.I0(pixel_valid),
        .I1(\probe_matrix[0][2]_i_5_n_0 ),
        .I2(\probe_matrix[0][0]_i_3_n_0 ),
        .I3(\probe_matrix[0][2]_i_7_n_0 ),
        .I4(\probe_matrix[0][2]_i_8_n_0 ),
        .I5(\probe_matrix[0][2]_i_9_n_0 ),
        .O(\probe_matrix[0][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \probe_matrix[0][0]_i_3 
       (.I0(\probe_matrix[0][2]_i_16_n_0 ),
        .I1(v_count[9]),
        .I2(v_count[5]),
        .I3(\probe_matrix[0][2]_i_17_n_0 ),
        .I4(\probe_matrix[0][0]_i_4_n_0 ),
        .I5(\probe_matrix[0][1]_i_5_n_0 ),
        .O(\probe_matrix[0][0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \probe_matrix[0][0]_i_4 
       (.I0(v_count[0]),
        .I1(v_count[6]),
        .I2(v_count[3]),
        .I3(v_count[2]),
        .O(\probe_matrix[0][0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000E00FF000E0000)) 
    \probe_matrix[0][1]_i_1 
       (.I0(\probe_matrix[0][2]_i_2_n_0 ),
        .I1(\probe_matrix[0][2]_i_3_n_0 ),
        .I2(v_is_black2[15]),
        .I3(seven_seg_out0),
        .I4(\probe_matrix[0][1]_i_2_n_0 ),
        .I5(\probe_matrix_reg[0] [1]),
        .O(\probe_matrix[0][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \probe_matrix[0][1]_i_2 
       (.I0(\probe_matrix[0][2]_i_7_n_0 ),
        .I1(\probe_matrix[0][2]_i_8_n_0 ),
        .I2(\probe_matrix[0][2]_i_9_n_0 ),
        .I3(pixel_valid),
        .I4(\probe_matrix[0][1]_i_3_n_0 ),
        .I5(\probe_matrix[0][2]_i_5_n_0 ),
        .O(\probe_matrix[0][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \probe_matrix[0][1]_i_3 
       (.I0(\probe_matrix[0][2]_i_16_n_0 ),
        .I1(v_count[9]),
        .I2(v_count[5]),
        .I3(\probe_matrix[0][2]_i_17_n_0 ),
        .I4(\probe_matrix[0][1]_i_4_n_0 ),
        .I5(\probe_matrix[0][1]_i_5_n_0 ),
        .O(\probe_matrix[0][1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \probe_matrix[0][1]_i_4 
       (.I0(v_count[0]),
        .I1(v_count[6]),
        .I2(v_count[3]),
        .I3(v_count[2]),
        .O(\probe_matrix[0][1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \probe_matrix[0][1]_i_5 
       (.I0(v_count[1]),
        .I1(v_count[7]),
        .I2(v_count[8]),
        .I3(v_count[4]),
        .O(\probe_matrix[0][1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000E00FF000E0000)) 
    \probe_matrix[0][2]_i_1 
       (.I0(\probe_matrix[0][2]_i_2_n_0 ),
        .I1(\probe_matrix[0][2]_i_3_n_0 ),
        .I2(v_is_black2[15]),
        .I3(seven_seg_out0),
        .I4(\probe_matrix[0][2]_i_4_n_0 ),
        .I5(\probe_matrix_reg[0] [2]),
        .O(\probe_matrix[0][2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \probe_matrix[0][2]_i_10 
       (.I0(v_count[31]),
        .I1(v_count[23]),
        .I2(v_count[24]),
        .I3(v_count[19]),
        .O(\probe_matrix[0][2]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \probe_matrix[0][2]_i_11 
       (.I0(v_count[25]),
        .I1(v_count[18]),
        .I2(v_count[30]),
        .I3(v_count[22]),
        .O(\probe_matrix[0][2]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \probe_matrix[0][2]_i_12 
       (.I0(v_count[26]),
        .I1(v_count[17]),
        .I2(v_count[28]),
        .I3(v_count[21]),
        .O(\probe_matrix[0][2]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \probe_matrix[0][2]_i_13 
       (.I0(v_count[29]),
        .I1(v_count[20]),
        .I2(v_count[27]),
        .I3(v_count[16]),
        .O(\probe_matrix[0][2]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \probe_matrix[0][2]_i_14 
       (.I0(v_count[0]),
        .I1(v_count[6]),
        .I2(v_count[8]),
        .I3(v_count[2]),
        .O(\probe_matrix[0][2]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \probe_matrix[0][2]_i_15 
       (.I0(v_count[1]),
        .I1(v_count[7]),
        .I2(v_count[3]),
        .I3(v_count[5]),
        .O(\probe_matrix[0][2]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \probe_matrix[0][2]_i_16 
       (.I0(v_count[11]),
        .I1(v_count[10]),
        .O(\probe_matrix[0][2]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \probe_matrix[0][2]_i_17 
       (.I0(v_count[14]),
        .I1(v_count[13]),
        .I2(v_count[15]),
        .I3(v_count[12]),
        .O(\probe_matrix[0][2]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \probe_matrix[0][2]_i_18 
       (.I0(h_count[31]),
        .I1(h_count[22]),
        .I2(h_count[24]),
        .I3(h_count[18]),
        .O(\probe_matrix[0][2]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \probe_matrix[0][2]_i_19 
       (.I0(h_count[25]),
        .I1(h_count[19]),
        .I2(h_count[30]),
        .I3(h_count[23]),
        .O(\probe_matrix[0][2]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \probe_matrix[0][2]_i_2 
       (.I0(v_is_black2[14]),
        .I1(v_is_black2[13]),
        .O(\probe_matrix[0][2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \probe_matrix[0][2]_i_20 
       (.I0(h_count[26]),
        .I1(h_count[16]),
        .I2(h_count[28]),
        .I3(h_count[20]),
        .O(\probe_matrix[0][2]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \probe_matrix[0][2]_i_21 
       (.I0(h_count[29]),
        .I1(h_count[21]),
        .I2(h_count[27]),
        .I3(h_count[17]),
        .O(\probe_matrix[0][2]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \probe_matrix[0][2]_i_22 
       (.I0(h_count[9]),
        .I1(h_count[7]),
        .O(\probe_matrix[0][2]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \probe_matrix[0][2]_i_23 
       (.I0(h_count[5]),
        .I1(h_count[2]),
        .O(\probe_matrix[0][2]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \probe_matrix[0][2]_i_24 
       (.I0(h_count[14]),
        .I1(h_count[13]),
        .I2(h_count[15]),
        .I3(h_count[12]),
        .O(\probe_matrix[0][2]_i_24_n_0 ));
  LUT5 #(
    .INIT(32'h0000007F)) 
    \probe_matrix[0][2]_i_3 
       (.I0(v_is_black2[10]),
        .I1(v_is_black2[9]),
        .I2(v_is_black2[8]),
        .I3(v_is_black2[11]),
        .I4(v_is_black2[12]),
        .O(\probe_matrix[0][2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \probe_matrix[0][2]_i_4 
       (.I0(pixel_valid),
        .I1(\probe_matrix[0][2]_i_5_n_0 ),
        .I2(\probe_matrix[0][2]_i_6_n_0 ),
        .I3(\probe_matrix[0][2]_i_7_n_0 ),
        .I4(\probe_matrix[0][2]_i_8_n_0 ),
        .I5(\probe_matrix[0][2]_i_9_n_0 ),
        .O(\probe_matrix[0][2]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \probe_matrix[0][2]_i_5 
       (.I0(\probe_matrix[0][2]_i_10_n_0 ),
        .I1(\probe_matrix[0][2]_i_11_n_0 ),
        .I2(\probe_matrix[0][2]_i_12_n_0 ),
        .I3(\probe_matrix[0][2]_i_13_n_0 ),
        .O(\probe_matrix[0][2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \probe_matrix[0][2]_i_6 
       (.I0(\probe_matrix[0][2]_i_14_n_0 ),
        .I1(\probe_matrix[0][2]_i_15_n_0 ),
        .I2(\probe_matrix[0][2]_i_16_n_0 ),
        .I3(v_count[9]),
        .I4(v_count[4]),
        .I5(\probe_matrix[0][2]_i_17_n_0 ),
        .O(\probe_matrix[0][2]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \probe_matrix[0][2]_i_7 
       (.I0(\probe_matrix[0][2]_i_18_n_0 ),
        .I1(\probe_matrix[0][2]_i_19_n_0 ),
        .I2(\probe_matrix[0][2]_i_20_n_0 ),
        .I3(\probe_matrix[0][2]_i_21_n_0 ),
        .O(\probe_matrix[0][2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    \probe_matrix[0][2]_i_8 
       (.I0(h_count[1]),
        .I1(h_count[3]),
        .I2(\probe_matrix[0][2]_i_22_n_0 ),
        .I3(\probe_matrix[0][2]_i_23_n_0 ),
        .I4(h_count[0]),
        .I5(h_count[4]),
        .O(\probe_matrix[0][2]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \probe_matrix[0][2]_i_9 
       (.I0(\probe_matrix[0][2]_i_24_n_0 ),
        .I1(h_count[8]),
        .I2(h_count[6]),
        .I3(h_count[11]),
        .I4(h_count[10]),
        .O(\probe_matrix[0][2]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h000E00FF000E0000)) 
    \probe_matrix[1][0]_i_1 
       (.I0(\probe_matrix[0][2]_i_2_n_0 ),
        .I1(\probe_matrix[0][2]_i_3_n_0 ),
        .I2(v_is_black2[15]),
        .I3(seven_seg_out0),
        .I4(\probe_matrix[1][0]_i_2_n_0 ),
        .I5(\probe_matrix_reg[1] [0]),
        .O(\probe_matrix[1][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \probe_matrix[1][0]_i_2 
       (.I0(pixel_valid),
        .I1(\probe_matrix[0][2]_i_7_n_0 ),
        .I2(\probe_matrix[1][0]_i_3_n_0 ),
        .I3(\probe_matrix[0][2]_i_5_n_0 ),
        .I4(\probe_matrix[1][1]_i_4_n_0 ),
        .I5(\probe_matrix[1][1]_i_5_n_0 ),
        .O(\probe_matrix[1][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \probe_matrix[1][0]_i_3 
       (.I0(\probe_matrix[1][1]_i_6_n_0 ),
        .I1(h_count[7]),
        .I2(h_count[8]),
        .I3(\probe_matrix[0][2]_i_24_n_0 ),
        .I4(\probe_matrix[1][0]_i_4_n_0 ),
        .I5(\probe_matrix[1][1]_i_8_n_0 ),
        .O(\probe_matrix[1][0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \probe_matrix[1][0]_i_4 
       (.I0(h_count[4]),
        .I1(h_count[3]),
        .I2(h_count[0]),
        .I3(h_count[1]),
        .O(\probe_matrix[1][0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000E00FF000E0000)) 
    \probe_matrix[1][1]_i_1 
       (.I0(\probe_matrix[0][2]_i_2_n_0 ),
        .I1(\probe_matrix[0][2]_i_3_n_0 ),
        .I2(v_is_black2[15]),
        .I3(seven_seg_out0),
        .I4(\probe_matrix[1][1]_i_2_n_0 ),
        .I5(\probe_matrix_reg[1] [1]),
        .O(\probe_matrix[1][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \probe_matrix[1][1]_i_2 
       (.I0(pixel_valid),
        .I1(\probe_matrix[0][2]_i_7_n_0 ),
        .I2(\probe_matrix[1][1]_i_3_n_0 ),
        .I3(\probe_matrix[0][2]_i_5_n_0 ),
        .I4(\probe_matrix[1][1]_i_4_n_0 ),
        .I5(\probe_matrix[1][1]_i_5_n_0 ),
        .O(\probe_matrix[1][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \probe_matrix[1][1]_i_3 
       (.I0(\probe_matrix[1][1]_i_6_n_0 ),
        .I1(h_count[7]),
        .I2(h_count[8]),
        .I3(\probe_matrix[0][2]_i_24_n_0 ),
        .I4(\probe_matrix[1][1]_i_7_n_0 ),
        .I5(\probe_matrix[1][1]_i_8_n_0 ),
        .O(\probe_matrix[1][1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFFFBF)) 
    \probe_matrix[1][1]_i_4 
       (.I0(\probe_matrix[0][1]_i_5_n_0 ),
        .I1(v_count[6]),
        .I2(v_count[2]),
        .I3(v_count[0]),
        .I4(v_count[3]),
        .O(\probe_matrix[1][1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \probe_matrix[1][1]_i_5 
       (.I0(\probe_matrix[0][2]_i_17_n_0 ),
        .I1(v_count[5]),
        .I2(v_count[9]),
        .I3(v_count[11]),
        .I4(v_count[10]),
        .O(\probe_matrix[1][1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \probe_matrix[1][1]_i_6 
       (.I0(h_count[11]),
        .I1(h_count[10]),
        .O(\probe_matrix[1][1]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \probe_matrix[1][1]_i_7 
       (.I0(h_count[0]),
        .I1(h_count[1]),
        .I2(h_count[4]),
        .I3(h_count[3]),
        .O(\probe_matrix[1][1]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \probe_matrix[1][1]_i_8 
       (.I0(h_count[2]),
        .I1(h_count[5]),
        .I2(h_count[9]),
        .I3(h_count[6]),
        .O(\probe_matrix[1][1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h000E00FF000E0000)) 
    \probe_matrix[1][2]_i_1 
       (.I0(\probe_matrix[0][2]_i_2_n_0 ),
        .I1(\probe_matrix[0][2]_i_3_n_0 ),
        .I2(v_is_black2[15]),
        .I3(seven_seg_out0),
        .I4(\probe_matrix[1][2]_i_2_n_0 ),
        .I5(\probe_matrix_reg[1] [2]),
        .O(\probe_matrix[1][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \probe_matrix[1][2]_i_2 
       (.I0(pixel_valid),
        .I1(\probe_matrix[0][2]_i_7_n_0 ),
        .I2(\probe_matrix[1][2]_i_3_n_0 ),
        .I3(\probe_matrix[0][2]_i_9_n_0 ),
        .I4(\probe_matrix[0][2]_i_5_n_0 ),
        .I5(\probe_matrix[1][2]_i_4_n_0 ),
        .O(\probe_matrix[1][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \probe_matrix[1][2]_i_3 
       (.I0(h_count[3]),
        .I1(h_count[4]),
        .I2(\probe_matrix[0][2]_i_22_n_0 ),
        .I3(h_count[5]),
        .I4(h_count[2]),
        .I5(\probe_matrix[1][2]_i_5_n_0 ),
        .O(\probe_matrix[1][2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \probe_matrix[1][2]_i_4 
       (.I0(\probe_matrix[0][2]_i_16_n_0 ),
        .I1(v_count[9]),
        .I2(v_count[5]),
        .I3(\probe_matrix[0][2]_i_17_n_0 ),
        .I4(\probe_matrix[1][2]_i_6_n_0 ),
        .I5(\probe_matrix[0][1]_i_5_n_0 ),
        .O(\probe_matrix[1][2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \probe_matrix[1][2]_i_5 
       (.I0(h_count[1]),
        .I1(h_count[0]),
        .O(\probe_matrix[1][2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \probe_matrix[1][2]_i_6 
       (.I0(v_count[3]),
        .I1(v_count[0]),
        .I2(v_count[2]),
        .I3(v_count[6]),
        .O(\probe_matrix[1][2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h000E00FF000E0000)) 
    \probe_matrix[2][0]_i_1 
       (.I0(\probe_matrix[0][2]_i_2_n_0 ),
        .I1(\probe_matrix[0][2]_i_3_n_0 ),
        .I2(v_is_black2[15]),
        .I3(seven_seg_out0),
        .I4(\probe_matrix[2][0]_i_2_n_0 ),
        .I5(\probe_matrix_reg[2] [0]),
        .O(\probe_matrix[2][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \probe_matrix[2][0]_i_2 
       (.I0(pixel_valid),
        .I1(\probe_matrix[0][2]_i_7_n_0 ),
        .I2(\probe_matrix[2][0]_i_3_n_0 ),
        .I3(\probe_matrix[0][2]_i_5_n_0 ),
        .I4(\probe_matrix[1][1]_i_4_n_0 ),
        .I5(\probe_matrix[1][1]_i_5_n_0 ),
        .O(\probe_matrix[2][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \probe_matrix[2][0]_i_3 
       (.I0(\probe_matrix[1][1]_i_6_n_0 ),
        .I1(h_count[5]),
        .I2(h_count[8]),
        .I3(\probe_matrix[0][2]_i_24_n_0 ),
        .I4(\probe_matrix[2][0]_i_4_n_0 ),
        .I5(\probe_matrix[2][0]_i_5_n_0 ),
        .O(\probe_matrix[2][0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    \probe_matrix[2][0]_i_4 
       (.I0(h_count[7]),
        .I1(h_count[9]),
        .I2(h_count[2]),
        .I3(h_count[0]),
        .O(\probe_matrix[2][0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \probe_matrix[2][0]_i_5 
       (.I0(h_count[3]),
        .I1(h_count[1]),
        .I2(h_count[4]),
        .I3(h_count[6]),
        .O(\probe_matrix[2][0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000E00FF000E0000)) 
    \probe_matrix[2][1]_i_1 
       (.I0(\probe_matrix[0][2]_i_2_n_0 ),
        .I1(\probe_matrix[0][2]_i_3_n_0 ),
        .I2(v_is_black2[15]),
        .I3(seven_seg_out0),
        .I4(\probe_matrix[2][1]_i_2_n_0 ),
        .I5(\probe_matrix_reg[2] [1]),
        .O(\probe_matrix[2][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \probe_matrix[2][1]_i_2 
       (.I0(pixel_valid),
        .I1(\probe_matrix[0][2]_i_7_n_0 ),
        .I2(\probe_matrix[2][1]_i_3_n_0 ),
        .I3(\probe_matrix[0][2]_i_5_n_0 ),
        .I4(\probe_matrix[1][1]_i_4_n_0 ),
        .I5(\probe_matrix[1][1]_i_5_n_0 ),
        .O(\probe_matrix[2][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \probe_matrix[2][1]_i_3 
       (.I0(\probe_matrix[1][1]_i_6_n_0 ),
        .I1(h_count[4]),
        .I2(h_count[8]),
        .I3(\probe_matrix[0][2]_i_24_n_0 ),
        .I4(\probe_matrix[2][1]_i_4_n_0 ),
        .I5(\probe_matrix[2][1]_i_5_n_0 ),
        .O(\probe_matrix[2][1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \probe_matrix[2][1]_i_4 
       (.I0(h_count[9]),
        .I1(h_count[3]),
        .I2(h_count[7]),
        .I3(h_count[6]),
        .O(\probe_matrix[2][1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \probe_matrix[2][1]_i_5 
       (.I0(h_count[2]),
        .I1(h_count[5]),
        .I2(h_count[0]),
        .I3(h_count[1]),
        .O(\probe_matrix[2][1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000E00FF000E0000)) 
    \probe_matrix[2][2]_i_1 
       (.I0(\probe_matrix[0][2]_i_2_n_0 ),
        .I1(\probe_matrix[0][2]_i_3_n_0 ),
        .I2(v_is_black2[15]),
        .I3(seven_seg_out0),
        .I4(\probe_matrix[2][2]_i_2_n_0 ),
        .I5(\probe_matrix_reg[2] [2]),
        .O(\probe_matrix[2][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \probe_matrix[2][2]_i_2 
       (.I0(pixel_valid),
        .I1(\probe_matrix[0][2]_i_7_n_0 ),
        .I2(\probe_matrix[2][2]_i_3_n_0 ),
        .I3(\probe_matrix[0][2]_i_5_n_0 ),
        .I4(\probe_matrix[1][1]_i_4_n_0 ),
        .I5(\probe_matrix[1][1]_i_5_n_0 ),
        .O(\probe_matrix[2][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \probe_matrix[2][2]_i_3 
       (.I0(\probe_matrix[1][1]_i_6_n_0 ),
        .I1(h_count[3]),
        .I2(h_count[8]),
        .I3(\probe_matrix[0][2]_i_24_n_0 ),
        .I4(\probe_matrix[2][2]_i_4_n_0 ),
        .I5(\probe_matrix[2][2]_i_5_n_0 ),
        .O(\probe_matrix[2][2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFF7F)) 
    \probe_matrix[2][2]_i_4 
       (.I0(h_count[7]),
        .I1(h_count[6]),
        .I2(h_count[9]),
        .I3(h_count[2]),
        .O(\probe_matrix[2][2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \probe_matrix[2][2]_i_5 
       (.I0(h_count[0]),
        .I1(h_count[1]),
        .I2(h_count[4]),
        .I3(h_count[5]),
        .O(\probe_matrix[2][2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000E00FF000E0000)) 
    \probe_matrix[3][0]_i_1 
       (.I0(\probe_matrix[0][2]_i_2_n_0 ),
        .I1(\probe_matrix[0][2]_i_3_n_0 ),
        .I2(v_is_black2[15]),
        .I3(seven_seg_out0),
        .I4(\probe_matrix[3][0]_i_2_n_0 ),
        .I5(\probe_matrix_reg[3] [0]),
        .O(\probe_matrix[3][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \probe_matrix[3][0]_i_2 
       (.I0(pixel_valid),
        .I1(\probe_matrix[0][2]_i_5_n_0 ),
        .I2(\probe_matrix[3][0]_i_3_n_0 ),
        .I3(\probe_matrix[0][2]_i_7_n_0 ),
        .I4(\probe_matrix[0][2]_i_8_n_0 ),
        .I5(\probe_matrix[0][2]_i_9_n_0 ),
        .O(\probe_matrix[3][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \probe_matrix[3][0]_i_3 
       (.I0(\probe_matrix[3][0]_i_4_n_0 ),
        .I1(\probe_matrix[3][0]_i_5_n_0 ),
        .I2(\probe_matrix[0][2]_i_16_n_0 ),
        .I3(v_count[8]),
        .I4(v_count[0]),
        .I5(\probe_matrix[0][2]_i_17_n_0 ),
        .O(\probe_matrix[3][0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \probe_matrix[3][0]_i_4 
       (.I0(v_count[3]),
        .I1(v_count[2]),
        .I2(v_count[1]),
        .I3(v_count[9]),
        .O(\probe_matrix[3][0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \probe_matrix[3][0]_i_5 
       (.I0(v_count[7]),
        .I1(v_count[6]),
        .I2(v_count[5]),
        .I3(v_count[4]),
        .O(\probe_matrix[3][0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000E00FF000E0000)) 
    \probe_matrix[3][1]_i_1 
       (.I0(\probe_matrix[0][2]_i_2_n_0 ),
        .I1(\probe_matrix[0][2]_i_3_n_0 ),
        .I2(v_is_black2[15]),
        .I3(seven_seg_out0),
        .I4(\probe_matrix[3][1]_i_2_n_0 ),
        .I5(\probe_matrix_reg[3] [1]),
        .O(\probe_matrix[3][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \probe_matrix[3][1]_i_2 
       (.I0(pixel_valid),
        .I1(\probe_matrix[0][2]_i_5_n_0 ),
        .I2(\probe_matrix[3][1]_i_3_n_0 ),
        .I3(\probe_matrix[0][2]_i_7_n_0 ),
        .I4(\probe_matrix[0][2]_i_8_n_0 ),
        .I5(\probe_matrix[0][2]_i_9_n_0 ),
        .O(\probe_matrix[3][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \probe_matrix[3][1]_i_3 
       (.I0(\probe_matrix[3][1]_i_4_n_0 ),
        .I1(\probe_matrix[3][1]_i_5_n_0 ),
        .I2(\probe_matrix[0][2]_i_16_n_0 ),
        .I3(v_count[8]),
        .I4(v_count[4]),
        .I5(\probe_matrix[0][2]_i_17_n_0 ),
        .O(\probe_matrix[3][1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \probe_matrix[3][1]_i_4 
       (.I0(v_count[7]),
        .I1(v_count[6]),
        .I2(v_count[9]),
        .I3(v_count[5]),
        .O(\probe_matrix[3][1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \probe_matrix[3][1]_i_5 
       (.I0(v_count[3]),
        .I1(v_count[2]),
        .I2(v_count[1]),
        .I3(v_count[0]),
        .O(\probe_matrix[3][1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000E00FF000E0000)) 
    \probe_matrix[3][2]_i_1 
       (.I0(\probe_matrix[0][2]_i_2_n_0 ),
        .I1(\probe_matrix[0][2]_i_3_n_0 ),
        .I2(v_is_black2[15]),
        .I3(seven_seg_out0),
        .I4(\probe_matrix[3][2]_i_2_n_0 ),
        .I5(\probe_matrix_reg[3] [2]),
        .O(\probe_matrix[3][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \probe_matrix[3][2]_i_2 
       (.I0(pixel_valid),
        .I1(\probe_matrix[0][2]_i_5_n_0 ),
        .I2(\probe_matrix[3][2]_i_3_n_0 ),
        .I3(\probe_matrix[0][2]_i_7_n_0 ),
        .I4(\probe_matrix[0][2]_i_8_n_0 ),
        .I5(\probe_matrix[0][2]_i_9_n_0 ),
        .O(\probe_matrix[3][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \probe_matrix[3][2]_i_3 
       (.I0(\probe_matrix[0][2]_i_16_n_0 ),
        .I1(v_count[1]),
        .I2(v_count[8]),
        .I3(\probe_matrix[0][2]_i_17_n_0 ),
        .I4(\probe_matrix[3][2]_i_4_n_0 ),
        .I5(\probe_matrix[3][2]_i_5_n_0 ),
        .O(\probe_matrix[3][2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    \probe_matrix[3][2]_i_4 
       (.I0(v_count[3]),
        .I1(v_count[2]),
        .I2(v_count[6]),
        .I3(v_count[5]),
        .O(\probe_matrix[3][2]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \probe_matrix[3][2]_i_5 
       (.I0(v_count[9]),
        .I1(v_count[4]),
        .I2(v_count[7]),
        .I3(v_count[0]),
        .O(\probe_matrix[3][2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000E00FF000E0000)) 
    \probe_matrix[4][0]_i_1 
       (.I0(\probe_matrix[0][2]_i_2_n_0 ),
        .I1(\probe_matrix[0][2]_i_3_n_0 ),
        .I2(v_is_black2[15]),
        .I3(seven_seg_out0),
        .I4(\probe_matrix[4][0]_i_2_n_0 ),
        .I5(\probe_matrix_reg[4] [0]),
        .O(\probe_matrix[4][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \probe_matrix[4][0]_i_2 
       (.I0(pixel_valid),
        .I1(\probe_matrix[0][2]_i_5_n_0 ),
        .I2(\probe_matrix[4][2]_i_3_n_0 ),
        .I3(\probe_matrix[0][2]_i_7_n_0 ),
        .I4(\probe_matrix[4][0]_i_3_n_0 ),
        .I5(\probe_matrix[4][1]_i_4_n_0 ),
        .O(\probe_matrix[4][0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFFFFBF)) 
    \probe_matrix[4][0]_i_3 
       (.I0(\probe_matrix[1][1]_i_8_n_0 ),
        .I1(h_count[1]),
        .I2(h_count[0]),
        .I3(h_count[3]),
        .I4(h_count[4]),
        .O(\probe_matrix[4][0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000E00FF000E0000)) 
    \probe_matrix[4][1]_i_1 
       (.I0(\probe_matrix[0][2]_i_2_n_0 ),
        .I1(\probe_matrix[0][2]_i_3_n_0 ),
        .I2(v_is_black2[15]),
        .I3(seven_seg_out0),
        .I4(\probe_matrix[4][1]_i_2_n_0 ),
        .I5(\probe_matrix_reg[4] [1]),
        .O(\probe_matrix[4][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \probe_matrix[4][1]_i_2 
       (.I0(pixel_valid),
        .I1(\probe_matrix[0][2]_i_5_n_0 ),
        .I2(\probe_matrix[4][2]_i_3_n_0 ),
        .I3(\probe_matrix[0][2]_i_7_n_0 ),
        .I4(\probe_matrix[4][1]_i_3_n_0 ),
        .I5(\probe_matrix[4][1]_i_4_n_0 ),
        .O(\probe_matrix[4][1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \probe_matrix[4][1]_i_3 
       (.I0(\probe_matrix[1][1]_i_8_n_0 ),
        .I1(h_count[3]),
        .I2(h_count[4]),
        .I3(h_count[1]),
        .I4(h_count[0]),
        .O(\probe_matrix[4][1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \probe_matrix[4][1]_i_4 
       (.I0(\probe_matrix[0][2]_i_24_n_0 ),
        .I1(h_count[8]),
        .I2(h_count[7]),
        .I3(h_count[11]),
        .I4(h_count[10]),
        .O(\probe_matrix[4][1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000E00FF000E0000)) 
    \probe_matrix[4][2]_i_1 
       (.I0(\probe_matrix[0][2]_i_2_n_0 ),
        .I1(\probe_matrix[0][2]_i_3_n_0 ),
        .I2(v_is_black2[15]),
        .I3(seven_seg_out0),
        .I4(\probe_matrix[4][2]_i_2_n_0 ),
        .I5(\probe_matrix_reg[4] [2]),
        .O(\probe_matrix[4][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \probe_matrix[4][2]_i_2 
       (.I0(pixel_valid),
        .I1(\probe_matrix[0][2]_i_5_n_0 ),
        .I2(\probe_matrix[4][2]_i_3_n_0 ),
        .I3(\probe_matrix[0][2]_i_7_n_0 ),
        .I4(\probe_matrix[1][2]_i_3_n_0 ),
        .I5(\probe_matrix[0][2]_i_9_n_0 ),
        .O(\probe_matrix[4][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \probe_matrix[4][2]_i_3 
       (.I0(\probe_matrix[0][2]_i_16_n_0 ),
        .I1(v_count[8]),
        .I2(v_count[7]),
        .I3(\probe_matrix[0][2]_i_17_n_0 ),
        .I4(\probe_matrix[4][2]_i_4_n_0 ),
        .I5(\probe_matrix[4][2]_i_5_n_0 ),
        .O(\probe_matrix[4][2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \probe_matrix[4][2]_i_4 
       (.I0(v_count[2]),
        .I1(v_count[6]),
        .I2(v_count[1]),
        .I3(v_count[0]),
        .O(\probe_matrix[4][2]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \probe_matrix[4][2]_i_5 
       (.I0(v_count[5]),
        .I1(v_count[4]),
        .I2(v_count[9]),
        .I3(v_count[3]),
        .O(\probe_matrix[4][2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000E00FF000E0000)) 
    \probe_matrix[5][0]_i_1 
       (.I0(\probe_matrix[0][2]_i_2_n_0 ),
        .I1(\probe_matrix[0][2]_i_3_n_0 ),
        .I2(v_is_black2[15]),
        .I3(seven_seg_out0),
        .I4(\probe_matrix[5][0]_i_2_n_0 ),
        .I5(\probe_matrix_reg[5] [0]),
        .O(\probe_matrix[5][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \probe_matrix[5][0]_i_2 
       (.I0(pixel_valid),
        .I1(\probe_matrix[0][2]_i_5_n_0 ),
        .I2(\probe_matrix[4][2]_i_3_n_0 ),
        .I3(\probe_matrix[0][2]_i_7_n_0 ),
        .I4(\probe_matrix[5][0]_i_3_n_0 ),
        .I5(\probe_matrix[5][0]_i_4_n_0 ),
        .O(\probe_matrix[5][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    \probe_matrix[5][0]_i_3 
       (.I0(h_count[6]),
        .I1(h_count[4]),
        .I2(\probe_matrix[5][0]_i_5_n_0 ),
        .I3(h_count[0]),
        .I4(h_count[2]),
        .I5(\probe_matrix[0][2]_i_22_n_0 ),
        .O(\probe_matrix[5][0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \probe_matrix[5][0]_i_4 
       (.I0(\probe_matrix[0][2]_i_24_n_0 ),
        .I1(h_count[8]),
        .I2(h_count[5]),
        .I3(h_count[11]),
        .I4(h_count[10]),
        .O(\probe_matrix[5][0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \probe_matrix[5][0]_i_5 
       (.I0(h_count[1]),
        .I1(h_count[3]),
        .O(\probe_matrix[5][0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000E00FF000E0000)) 
    \probe_matrix[5][1]_i_1 
       (.I0(\probe_matrix[0][2]_i_2_n_0 ),
        .I1(\probe_matrix[0][2]_i_3_n_0 ),
        .I2(v_is_black2[15]),
        .I3(seven_seg_out0),
        .I4(\probe_matrix[5][1]_i_2_n_0 ),
        .I5(\probe_matrix_reg[5] [1]),
        .O(\probe_matrix[5][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \probe_matrix[5][1]_i_2 
       (.I0(pixel_valid),
        .I1(\probe_matrix[0][2]_i_5_n_0 ),
        .I2(\probe_matrix[4][2]_i_3_n_0 ),
        .I3(\probe_matrix[0][2]_i_7_n_0 ),
        .I4(\probe_matrix[5][1]_i_3_n_0 ),
        .I5(\probe_matrix[5][1]_i_4_n_0 ),
        .O(\probe_matrix[5][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    \probe_matrix[5][1]_i_3 
       (.I0(\probe_matrix[5][2]_i_5_n_0 ),
        .I1(\probe_matrix[0][2]_i_23_n_0 ),
        .I2(h_count[6]),
        .I3(h_count[7]),
        .I4(h_count[3]),
        .I5(h_count[9]),
        .O(\probe_matrix[5][1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \probe_matrix[5][1]_i_4 
       (.I0(\probe_matrix[0][2]_i_24_n_0 ),
        .I1(h_count[8]),
        .I2(h_count[4]),
        .I3(h_count[11]),
        .I4(h_count[10]),
        .O(\probe_matrix[5][1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000E00FF000E0000)) 
    \probe_matrix[5][2]_i_1 
       (.I0(\probe_matrix[0][2]_i_2_n_0 ),
        .I1(\probe_matrix[0][2]_i_3_n_0 ),
        .I2(v_is_black2[15]),
        .I3(seven_seg_out0),
        .I4(\probe_matrix[5][2]_i_2_n_0 ),
        .I5(\probe_matrix_reg[5] [2]),
        .O(\probe_matrix[5][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \probe_matrix[5][2]_i_2 
       (.I0(pixel_valid),
        .I1(\probe_matrix[0][2]_i_5_n_0 ),
        .I2(\probe_matrix[4][2]_i_3_n_0 ),
        .I3(\probe_matrix[0][2]_i_7_n_0 ),
        .I4(\probe_matrix[5][2]_i_3_n_0 ),
        .I5(\probe_matrix[5][2]_i_4_n_0 ),
        .O(\probe_matrix[5][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF7FFFF)) 
    \probe_matrix[5][2]_i_3 
       (.I0(h_count[5]),
        .I1(h_count[4]),
        .I2(\probe_matrix[5][2]_i_5_n_0 ),
        .I3(h_count[2]),
        .I4(h_count[9]),
        .I5(\probe_matrix[5][2]_i_6_n_0 ),
        .O(\probe_matrix[5][2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \probe_matrix[5][2]_i_4 
       (.I0(\probe_matrix[0][2]_i_24_n_0 ),
        .I1(h_count[8]),
        .I2(h_count[3]),
        .I3(h_count[11]),
        .I4(h_count[10]),
        .O(\probe_matrix[5][2]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \probe_matrix[5][2]_i_5 
       (.I0(h_count[1]),
        .I1(h_count[0]),
        .O(\probe_matrix[5][2]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \probe_matrix[5][2]_i_6 
       (.I0(h_count[6]),
        .I1(h_count[7]),
        .O(\probe_matrix[5][2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h000E00FF000E0000)) 
    \probe_matrix[6][0]_i_1 
       (.I0(\probe_matrix[0][2]_i_2_n_0 ),
        .I1(\probe_matrix[0][2]_i_3_n_0 ),
        .I2(v_is_black2[15]),
        .I3(seven_seg_out0),
        .I4(\probe_matrix[6][0]_i_2_n_0 ),
        .I5(\probe_matrix_reg[6] [0]),
        .O(\probe_matrix[6][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \probe_matrix[6][0]_i_2 
       (.I0(pixel_valid),
        .I1(\probe_matrix[0][2]_i_5_n_0 ),
        .I2(\probe_matrix[6][0]_i_3_n_0 ),
        .I3(\probe_matrix[0][2]_i_7_n_0 ),
        .I4(\probe_matrix[0][2]_i_8_n_0 ),
        .I5(\probe_matrix[0][2]_i_9_n_0 ),
        .O(\probe_matrix[6][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \probe_matrix[6][0]_i_3 
       (.I0(\probe_matrix[6][0]_i_4_n_0 ),
        .I1(\probe_matrix[6][0]_i_5_n_0 ),
        .I2(\probe_matrix[0][2]_i_16_n_0 ),
        .I3(v_count[8]),
        .I4(v_count[3]),
        .I5(\probe_matrix[0][2]_i_17_n_0 ),
        .O(\probe_matrix[6][0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \probe_matrix[6][0]_i_4 
       (.I0(v_count[7]),
        .I1(v_count[0]),
        .I2(v_count[1]),
        .I3(v_count[2]),
        .O(\probe_matrix[6][0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \probe_matrix[6][0]_i_5 
       (.I0(v_count[9]),
        .I1(v_count[4]),
        .I2(v_count[6]),
        .I3(v_count[5]),
        .O(\probe_matrix[6][0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000E00FF000E0000)) 
    \probe_matrix[6][1]_i_1 
       (.I0(\probe_matrix[0][2]_i_2_n_0 ),
        .I1(\probe_matrix[0][2]_i_3_n_0 ),
        .I2(v_is_black2[15]),
        .I3(seven_seg_out0),
        .I4(\probe_matrix[6][1]_i_2_n_0 ),
        .I5(\probe_matrix_reg[6] [1]),
        .O(\probe_matrix[6][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \probe_matrix[6][1]_i_2 
       (.I0(\probe_matrix[0][2]_i_7_n_0 ),
        .I1(\probe_matrix[0][2]_i_8_n_0 ),
        .I2(\probe_matrix[0][2]_i_9_n_0 ),
        .I3(pixel_valid),
        .I4(\probe_matrix[6][1]_i_3_n_0 ),
        .I5(\probe_matrix[0][2]_i_5_n_0 ),
        .O(\probe_matrix[6][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \probe_matrix[6][1]_i_3 
       (.I0(\probe_matrix[0][2]_i_16_n_0 ),
        .I1(v_count[1]),
        .I2(v_count[8]),
        .I3(\probe_matrix[0][2]_i_17_n_0 ),
        .I4(\probe_matrix[6][1]_i_4_n_0 ),
        .I5(\probe_matrix[3][2]_i_5_n_0 ),
        .O(\probe_matrix[6][1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \probe_matrix[6][1]_i_4 
       (.I0(v_count[3]),
        .I1(v_count[2]),
        .I2(v_count[6]),
        .I3(v_count[5]),
        .O(\probe_matrix[6][1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000E00FF000E0000)) 
    \probe_matrix[6][2]_i_1 
       (.I0(\probe_matrix[0][2]_i_2_n_0 ),
        .I1(\probe_matrix[0][2]_i_3_n_0 ),
        .I2(v_is_black2[15]),
        .I3(seven_seg_out0),
        .I4(\probe_matrix[6][2]_i_2_n_0 ),
        .I5(\probe_matrix_reg[6] [2]),
        .O(\probe_matrix[6][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \probe_matrix[6][2]_i_2 
       (.I0(\probe_matrix[0][2]_i_7_n_0 ),
        .I1(\probe_matrix[6][2]_i_3_n_0 ),
        .I2(pixel_valid),
        .I3(\probe_matrix[6][2]_i_4_n_0 ),
        .I4(\probe_matrix[6][2]_i_5_n_0 ),
        .I5(\probe_matrix[0][2]_i_5_n_0 ),
        .O(\probe_matrix[6][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \probe_matrix[6][2]_i_3 
       (.I0(\probe_matrix[1][1]_i_6_n_0 ),
        .I1(h_count[6]),
        .I2(h_count[8]),
        .I3(\probe_matrix[0][2]_i_24_n_0 ),
        .I4(\probe_matrix[6][2]_i_6_n_0 ),
        .I5(\probe_matrix[6][2]_i_7_n_0 ),
        .O(\probe_matrix[6][2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \probe_matrix[6][2]_i_4 
       (.I0(\probe_matrix[0][2]_i_17_n_0 ),
        .I1(v_count[8]),
        .I2(v_count[1]),
        .I3(v_count[11]),
        .I4(v_count[10]),
        .O(\probe_matrix[6][2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFFFFFFF)) 
    \probe_matrix[6][2]_i_5 
       (.I0(\probe_matrix[6][2]_i_8_n_0 ),
        .I1(v_count[2]),
        .I2(v_count[3]),
        .I3(v_count[9]),
        .I4(v_count[7]),
        .I5(\probe_matrix[6][2]_i_9_n_0 ),
        .O(\probe_matrix[6][2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \probe_matrix[6][2]_i_6 
       (.I0(h_count[4]),
        .I1(h_count[0]),
        .I2(h_count[2]),
        .I3(h_count[5]),
        .O(\probe_matrix[6][2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \probe_matrix[6][2]_i_7 
       (.I0(h_count[7]),
        .I1(h_count[9]),
        .I2(h_count[3]),
        .I3(h_count[1]),
        .O(\probe_matrix[6][2]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \probe_matrix[6][2]_i_8 
       (.I0(v_count[6]),
        .I1(v_count[0]),
        .O(\probe_matrix[6][2]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \probe_matrix[6][2]_i_9 
       (.I0(v_count[4]),
        .I1(v_count[5]),
        .O(\probe_matrix[6][2]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h000E00FF000E0000)) 
    \probe_matrix[7][0]_i_1 
       (.I0(\probe_matrix[0][2]_i_2_n_0 ),
        .I1(\probe_matrix[0][2]_i_3_n_0 ),
        .I2(v_is_black2[15]),
        .I3(seven_seg_out0),
        .I4(\probe_matrix[7][0]_i_2_n_0 ),
        .I5(\probe_matrix_reg[7] [0]),
        .O(\probe_matrix[7][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \probe_matrix[7][0]_i_2 
       (.I0(pixel_valid),
        .I1(\probe_matrix[0][2]_i_5_n_0 ),
        .I2(\probe_matrix[1][2]_i_4_n_0 ),
        .I3(\probe_matrix[0][2]_i_7_n_0 ),
        .I4(\probe_matrix[0][2]_i_8_n_0 ),
        .I5(\probe_matrix[0][2]_i_9_n_0 ),
        .O(\probe_matrix[7][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000E00FF000E0000)) 
    \probe_matrix[7][1]_i_1 
       (.I0(\probe_matrix[0][2]_i_2_n_0 ),
        .I1(\probe_matrix[0][2]_i_3_n_0 ),
        .I2(v_is_black2[15]),
        .I3(seven_seg_out0),
        .I4(\probe_matrix[7][1]_i_2_n_0 ),
        .I5(\probe_matrix_reg[7] [1]),
        .O(\probe_matrix[7][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \probe_matrix[7][1]_i_2 
       (.I0(pixel_valid),
        .I1(\probe_matrix[0][2]_i_5_n_0 ),
        .I2(\probe_matrix[4][2]_i_3_n_0 ),
        .I3(\probe_matrix[0][2]_i_7_n_0 ),
        .I4(\probe_matrix[0][2]_i_8_n_0 ),
        .I5(\probe_matrix[0][2]_i_9_n_0 ),
        .O(\probe_matrix[7][1]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \probe_matrix_reg[0][0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\probe_matrix[0][0]_i_1_n_0 ),
        .Q(\probe_matrix_reg[0] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \probe_matrix_reg[0][1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\probe_matrix[0][1]_i_1_n_0 ),
        .Q(\probe_matrix_reg[0] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \probe_matrix_reg[0][2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\probe_matrix[0][2]_i_1_n_0 ),
        .Q(\probe_matrix_reg[0] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \probe_matrix_reg[1][0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\probe_matrix[1][0]_i_1_n_0 ),
        .Q(\probe_matrix_reg[1] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \probe_matrix_reg[1][1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\probe_matrix[1][1]_i_1_n_0 ),
        .Q(\probe_matrix_reg[1] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \probe_matrix_reg[1][2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\probe_matrix[1][2]_i_1_n_0 ),
        .Q(\probe_matrix_reg[1] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \probe_matrix_reg[2][0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\probe_matrix[2][0]_i_1_n_0 ),
        .Q(\probe_matrix_reg[2] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \probe_matrix_reg[2][1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\probe_matrix[2][1]_i_1_n_0 ),
        .Q(\probe_matrix_reg[2] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \probe_matrix_reg[2][2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\probe_matrix[2][2]_i_1_n_0 ),
        .Q(\probe_matrix_reg[2] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \probe_matrix_reg[3][0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\probe_matrix[3][0]_i_1_n_0 ),
        .Q(\probe_matrix_reg[3] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \probe_matrix_reg[3][1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\probe_matrix[3][1]_i_1_n_0 ),
        .Q(\probe_matrix_reg[3] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \probe_matrix_reg[3][2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\probe_matrix[3][2]_i_1_n_0 ),
        .Q(\probe_matrix_reg[3] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \probe_matrix_reg[4][0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\probe_matrix[4][0]_i_1_n_0 ),
        .Q(\probe_matrix_reg[4] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \probe_matrix_reg[4][1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\probe_matrix[4][1]_i_1_n_0 ),
        .Q(\probe_matrix_reg[4] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \probe_matrix_reg[4][2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\probe_matrix[4][2]_i_1_n_0 ),
        .Q(\probe_matrix_reg[4] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \probe_matrix_reg[5][0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\probe_matrix[5][0]_i_1_n_0 ),
        .Q(\probe_matrix_reg[5] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \probe_matrix_reg[5][1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\probe_matrix[5][1]_i_1_n_0 ),
        .Q(\probe_matrix_reg[5] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \probe_matrix_reg[5][2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\probe_matrix[5][2]_i_1_n_0 ),
        .Q(\probe_matrix_reg[5] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \probe_matrix_reg[6][0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\probe_matrix[6][0]_i_1_n_0 ),
        .Q(\probe_matrix_reg[6] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \probe_matrix_reg[6][1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\probe_matrix[6][1]_i_1_n_0 ),
        .Q(\probe_matrix_reg[6] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \probe_matrix_reg[6][2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\probe_matrix[6][2]_i_1_n_0 ),
        .Q(\probe_matrix_reg[6] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \probe_matrix_reg[7][0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\probe_matrix[7][0]_i_1_n_0 ),
        .Q(\probe_matrix_reg[7] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \probe_matrix_reg[7][1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\probe_matrix[7][1]_i_1_n_0 ),
        .Q(\probe_matrix_reg[7] [1]));
  LUT3 #(
    .INIT(8'hFE)) 
    \seven_seg_out[0]_i_1 
       (.I0(\probe_matrix_reg[0] [1]),
        .I1(\probe_matrix_reg[0] [0]),
        .I2(\probe_matrix_reg[0] [2]),
        .O(p_0_out[0]));
  LUT3 #(
    .INIT(8'hFE)) 
    \seven_seg_out[1]_i_1 
       (.I0(\probe_matrix_reg[1] [1]),
        .I1(\probe_matrix_reg[1] [0]),
        .I2(\probe_matrix_reg[1] [2]),
        .O(p_0_out[1]));
  LUT3 #(
    .INIT(8'hFE)) 
    \seven_seg_out[2]_i_1 
       (.I0(\probe_matrix_reg[2] [1]),
        .I1(\probe_matrix_reg[2] [0]),
        .I2(\probe_matrix_reg[2] [2]),
        .O(p_0_out[2]));
  LUT3 #(
    .INIT(8'hFE)) 
    \seven_seg_out[3]_i_1 
       (.I0(\probe_matrix_reg[3] [1]),
        .I1(\probe_matrix_reg[3] [0]),
        .I2(\probe_matrix_reg[3] [2]),
        .O(p_0_out[3]));
  LUT3 #(
    .INIT(8'hFE)) 
    \seven_seg_out[4]_i_1 
       (.I0(\probe_matrix_reg[4] [1]),
        .I1(\probe_matrix_reg[4] [0]),
        .I2(\probe_matrix_reg[4] [2]),
        .O(p_0_out[4]));
  LUT3 #(
    .INIT(8'hFE)) 
    \seven_seg_out[5]_i_1 
       (.I0(\probe_matrix_reg[5] [1]),
        .I1(\probe_matrix_reg[5] [0]),
        .I2(\probe_matrix_reg[5] [2]),
        .O(p_0_out[5]));
  LUT3 #(
    .INIT(8'hFE)) 
    \seven_seg_out[6]_i_1 
       (.I0(\probe_matrix_reg[6] [1]),
        .I1(\probe_matrix_reg[6] [0]),
        .I2(\probe_matrix_reg[6] [2]),
        .O(p_0_out[6]));
  LUT2 #(
    .INIT(4'h2)) 
    \seven_seg_out[7]_i_1 
       (.I0(new_frame),
        .I1(new_frame_prev),
        .O(seven_seg_out0));
  LUT2 #(
    .INIT(4'hE)) 
    \seven_seg_out[7]_i_2 
       (.I0(\probe_matrix_reg[7] [1]),
        .I1(\probe_matrix_reg[7] [0]),
        .O(p_0_out[7]));
  FDCE \seven_seg_out_reg[0] 
       (.C(clk),
        .CE(seven_seg_out0),
        .CLR(rst),
        .D(p_0_out[0]),
        .Q(seven_seg_out[0]));
  FDCE \seven_seg_out_reg[1] 
       (.C(clk),
        .CE(seven_seg_out0),
        .CLR(rst),
        .D(p_0_out[1]),
        .Q(seven_seg_out[1]));
  FDCE \seven_seg_out_reg[2] 
       (.C(clk),
        .CE(seven_seg_out0),
        .CLR(rst),
        .D(p_0_out[2]),
        .Q(seven_seg_out[2]));
  FDCE \seven_seg_out_reg[3] 
       (.C(clk),
        .CE(seven_seg_out0),
        .CLR(rst),
        .D(p_0_out[3]),
        .Q(seven_seg_out[3]));
  FDCE \seven_seg_out_reg[4] 
       (.C(clk),
        .CE(seven_seg_out0),
        .CLR(rst),
        .D(p_0_out[4]),
        .Q(seven_seg_out[4]));
  FDCE \seven_seg_out_reg[5] 
       (.C(clk),
        .CE(seven_seg_out0),
        .CLR(rst),
        .D(p_0_out[5]),
        .Q(seven_seg_out[5]));
  FDCE \seven_seg_out_reg[6] 
       (.C(clk),
        .CE(seven_seg_out0),
        .CLR(rst),
        .D(p_0_out[6]),
        .Q(seven_seg_out[6]));
  FDCE \seven_seg_out_reg[7] 
       (.C(clk),
        .CE(seven_seg_out0),
        .CLR(rst),
        .D(p_0_out[7]),
        .Q(seven_seg_out[7]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 v_is_black2__41_carry
       (.CI(1'b0),
        .CO({v_is_black2__41_carry_n_0,v_is_black2__41_carry_n_1,v_is_black2__41_carry_n_2,v_is_black2__41_carry_n_3}),
        .CYINIT(1'b0),
        .DI(multOp[4:1]),
        .O(NLW_v_is_black2__41_carry_O_UNCONNECTED[3:0]),
        .S({v_is_black2__41_carry_i_1_n_0,v_is_black2__41_carry_i_2_n_0,v_is_black2__41_carry_i_3_n_0,v_is_black2__41_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 v_is_black2__41_carry__0
       (.CI(v_is_black2__41_carry_n_0),
        .CO({v_is_black2__41_carry__0_n_0,v_is_black2__41_carry__0_n_1,v_is_black2__41_carry__0_n_2,v_is_black2__41_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(multOp[8:5]),
        .O({v_is_black2[8],NLW_v_is_black2__41_carry__0_O_UNCONNECTED[2:0]}),
        .S({v_is_black2__41_carry__0_i_1_n_0,v_is_black2__41_carry__0_i_2_n_0,v_is_black2__41_carry__0_i_3_n_0,v_is_black2__41_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    v_is_black2__41_carry__0_i_1
       (.I0(multOp[8]),
        .I1(C[8]),
        .O(v_is_black2__41_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v_is_black2__41_carry__0_i_2
       (.I0(multOp[7]),
        .I1(C[7]),
        .O(v_is_black2__41_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v_is_black2__41_carry__0_i_3
       (.I0(multOp[6]),
        .I1(C[6]),
        .O(v_is_black2__41_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v_is_black2__41_carry__0_i_4
       (.I0(multOp[5]),
        .I1(C[5]),
        .O(v_is_black2__41_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 v_is_black2__41_carry__1
       (.CI(v_is_black2__41_carry__0_n_0),
        .CO({v_is_black2__41_carry__1_n_0,v_is_black2__41_carry__1_n_1,v_is_black2__41_carry__1_n_2,v_is_black2__41_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(multOp[12:9]),
        .O(v_is_black2[12:9]),
        .S({v_is_black2__41_carry__1_i_1_n_0,v_is_black2__41_carry__1_i_2_n_0,v_is_black2__41_carry__1_i_3_n_0,v_is_black2__41_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    v_is_black2__41_carry__1_i_1
       (.I0(multOp[12]),
        .I1(C[12]),
        .O(v_is_black2__41_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v_is_black2__41_carry__1_i_2
       (.I0(multOp[11]),
        .I1(C[11]),
        .O(v_is_black2__41_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v_is_black2__41_carry__1_i_3
       (.I0(multOp[10]),
        .I1(C[10]),
        .O(v_is_black2__41_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v_is_black2__41_carry__1_i_4
       (.I0(multOp[9]),
        .I1(C[9]),
        .O(v_is_black2__41_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 v_is_black2__41_carry__2
       (.CI(v_is_black2__41_carry__1_n_0),
        .CO({NLW_v_is_black2__41_carry__2_CO_UNCONNECTED[3:2],v_is_black2__41_carry__2_n_2,v_is_black2__41_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,multOp[14:13]}),
        .O({NLW_v_is_black2__41_carry__2_O_UNCONNECTED[3],v_is_black2[15:13]}),
        .S({1'b0,v_is_black2__41_carry__2_i_1_n_0,v_is_black2__41_carry__2_i_2_n_0,v_is_black2__41_carry__2_i_3_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    v_is_black2__41_carry__2_i_1
       (.I0(v_is_black2_carry__2_n_0),
        .I1(multOp[15]),
        .O(v_is_black2__41_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v_is_black2__41_carry__2_i_2
       (.I0(multOp[14]),
        .I1(C[14]),
        .O(v_is_black2__41_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v_is_black2__41_carry__2_i_3
       (.I0(multOp[13]),
        .I1(C[13]),
        .O(v_is_black2__41_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v_is_black2__41_carry_i_1
       (.I0(multOp[4]),
        .I1(C[4]),
        .O(v_is_black2__41_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v_is_black2__41_carry_i_2
       (.I0(multOp[3]),
        .I1(C[3]),
        .O(v_is_black2__41_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v_is_black2__41_carry_i_3
       (.I0(multOp[2]),
        .I1(C[2]),
        .O(v_is_black2__41_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v_is_black2__41_carry_i_4
       (.I0(multOp[1]),
        .I1(C[1]),
        .O(v_is_black2__41_carry_i_4_n_0));
  CARRY4 v_is_black2_carry
       (.CI(1'b0),
        .CO({v_is_black2_carry_n_0,v_is_black2_carry_n_1,v_is_black2_carry_n_2,v_is_black2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({\multOp_inferred__0/i___24_carry_n_7 ,\multOp_inferred__0/i__carry_n_6 ,\multOp_inferred__0/i__carry_n_7 ,rgb_in[0]}),
        .O({C[3:1],NLW_v_is_black2_carry_O_UNCONNECTED[0]}),
        .S({v_is_black2_carry_i_1_n_0,v_is_black2_carry_i_2_n_0,v_is_black2_carry_i_3_n_0,v_is_black2_carry_i_4_n_0}));
  CARRY4 v_is_black2_carry__0
       (.CI(v_is_black2_carry_n_0),
        .CO({v_is_black2_carry__0_n_0,v_is_black2_carry__0_n_1,v_is_black2_carry__0_n_2,v_is_black2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({\multOp_inferred__0/i___24_carry__0_n_7 ,\multOp_inferred__0/i___24_carry_n_4 ,\multOp_inferred__0/i___24_carry_n_5 ,\multOp_inferred__0/i___24_carry_n_6 }),
        .O(C[7:4]),
        .S({v_is_black2_carry__0_i_1_n_0,v_is_black2_carry__0_i_2_n_0,v_is_black2_carry__0_i_3_n_0,v_is_black2_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    v_is_black2_carry__0_i_1
       (.I0(\multOp_inferred__0/i___24_carry__0_n_7 ),
        .I1(multOp__25_carry__0_n_6),
        .O(v_is_black2_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v_is_black2_carry__0_i_2
       (.I0(\multOp_inferred__0/i___24_carry_n_4 ),
        .I1(multOp__25_carry__0_n_7),
        .O(v_is_black2_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v_is_black2_carry__0_i_3
       (.I0(\multOp_inferred__0/i___24_carry_n_5 ),
        .I1(multOp__25_carry_n_4),
        .O(v_is_black2_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v_is_black2_carry__0_i_4
       (.I0(\multOp_inferred__0/i___24_carry_n_6 ),
        .I1(multOp__25_carry_n_5),
        .O(v_is_black2_carry__0_i_4_n_0));
  CARRY4 v_is_black2_carry__1
       (.CI(v_is_black2_carry__0_n_0),
        .CO({v_is_black2_carry__1_n_0,v_is_black2_carry__1_n_1,v_is_black2_carry__1_n_2,v_is_black2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({\multOp_inferred__0/i___24_carry__1_n_7 ,\multOp_inferred__0/i___24_carry__0_n_4 ,\multOp_inferred__0/i___24_carry__0_n_5 ,\multOp_inferred__0/i___24_carry__0_n_6 }),
        .O(C[11:8]),
        .S({v_is_black2_carry__1_i_1_n_0,v_is_black2_carry__1_i_2_n_0,v_is_black2_carry__1_i_3_n_0,v_is_black2_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    v_is_black2_carry__1_i_1
       (.I0(\multOp_inferred__0/i___24_carry__1_n_7 ),
        .I1(multOp__25_carry__1_n_6),
        .O(v_is_black2_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v_is_black2_carry__1_i_2
       (.I0(\multOp_inferred__0/i___24_carry__0_n_4 ),
        .I1(multOp__25_carry__1_n_7),
        .O(v_is_black2_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v_is_black2_carry__1_i_3
       (.I0(\multOp_inferred__0/i___24_carry__0_n_5 ),
        .I1(multOp__25_carry__0_n_4),
        .O(v_is_black2_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v_is_black2_carry__1_i_4
       (.I0(\multOp_inferred__0/i___24_carry__0_n_6 ),
        .I1(multOp__25_carry__0_n_5),
        .O(v_is_black2_carry__1_i_4_n_0));
  CARRY4 v_is_black2_carry__2
       (.CI(v_is_black2_carry__1_n_0),
        .CO({v_is_black2_carry__2_n_0,NLW_v_is_black2_carry__2_CO_UNCONNECTED[2],v_is_black2_carry__2_n_2,v_is_black2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\multOp_inferred__0/i___24_carry__1_n_6 }),
        .O({NLW_v_is_black2_carry__2_O_UNCONNECTED[3],C[14:12]}),
        .S({1'b1,v_is_black2_carry__2_i_1_n_3,multOp__25_carry__1_n_4,v_is_black2_carry__2_i_2_n_0}));
  CARRY4 v_is_black2_carry__2_i_1
       (.CI(multOp__25_carry__1_n_0),
        .CO({NLW_v_is_black2_carry__2_i_1_CO_UNCONNECTED[3:1],v_is_black2_carry__2_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_v_is_black2_carry__2_i_1_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT2 #(
    .INIT(4'h6)) 
    v_is_black2_carry__2_i_2
       (.I0(\multOp_inferred__0/i___24_carry__1_n_6 ),
        .I1(multOp__25_carry__1_n_5),
        .O(v_is_black2_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v_is_black2_carry_i_1
       (.I0(\multOp_inferred__0/i___24_carry_n_7 ),
        .I1(multOp__25_carry_n_6),
        .O(v_is_black2_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v_is_black2_carry_i_2
       (.I0(\multOp_inferred__0/i__carry_n_6 ),
        .I1(multOp__25_carry_n_7),
        .O(v_is_black2_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v_is_black2_carry_i_3
       (.I0(\multOp_inferred__0/i__carry_n_7 ),
        .I1(multOp_carry_n_7),
        .O(v_is_black2_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v_is_black2_carry_i_4
       (.I0(rgb_in[0]),
        .I1(rgb_in[16]),
        .O(v_is_black2_carry_i_4_n_0));
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
