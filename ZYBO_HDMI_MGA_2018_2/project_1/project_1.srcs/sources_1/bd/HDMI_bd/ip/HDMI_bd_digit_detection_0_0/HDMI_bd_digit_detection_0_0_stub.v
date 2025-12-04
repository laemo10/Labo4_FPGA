// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Thu Dec  4 10:46:53 2025
// Host        : pcetu-129 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/laemo10/Desktop/Labo4_FPGA/ZYBO_HDMI_MGA_2018_2/project_1/project_1.srcs/sources_1/bd/HDMI_bd/ip/HDMI_bd_digit_detection_0_0/HDMI_bd_digit_detection_0_0_stub.v
// Design      : HDMI_bd_digit_detection_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "digit_detection,Vivado 2023.1" *)
module HDMI_bd_digit_detection_0_0(clk, rst, h_count, v_count, pixel_valid, new_frame, 
  rgb_in, seven_seg_out)
/* synthesis syn_black_box black_box_pad_pin="rst,h_count[31:0],v_count[31:0],pixel_valid,new_frame,rgb_in[23:0],seven_seg_out[7:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input rst;
  input [31:0]h_count;
  input [31:0]v_count;
  input pixel_valid;
  input new_frame;
  input [23:0]rgb_in;
  output [7:0]seven_seg_out;
endmodule
