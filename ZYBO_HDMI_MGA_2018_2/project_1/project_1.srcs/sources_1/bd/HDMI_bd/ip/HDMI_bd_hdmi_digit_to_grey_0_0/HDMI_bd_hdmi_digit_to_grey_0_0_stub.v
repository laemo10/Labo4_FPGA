// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Tue Dec  2 00:26:37 2025
// Host        : pcetu-125 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/laemo10/Desktop/Labo4_FPGA/ZYBO_HDMI_MGA_2018_2/project_1/project_1.srcs/sources_1/bd/HDMI_bd/ip/HDMI_bd_hdmi_digit_to_grey_0_0/HDMI_bd_hdmi_digit_to_grey_0_0_stub.v
// Design      : HDMI_bd_hdmi_digit_to_grey_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "hdmi_digit_to_grey,Vivado 2023.1" *)
module HDMI_bd_hdmi_digit_to_grey_0_0(clk, rst, h_count, v_count, vde_in, hsync_in, 
  vsync_in, rgb_in, valid_pixel, current_row, current_column, pixel_value, end_of_frame)
/* synthesis syn_black_box black_box_pad_pin="rst,h_count[31:0],v_count[31:0],vde_in,hsync_in,vsync_in,rgb_in[23:0],valid_pixel,current_row[7:0],current_column[7:0],pixel_value[7:0],end_of_frame" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input rst;
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
endmodule
