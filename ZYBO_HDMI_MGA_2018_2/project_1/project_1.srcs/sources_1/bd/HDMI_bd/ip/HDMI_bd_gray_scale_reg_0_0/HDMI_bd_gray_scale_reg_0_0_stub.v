// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Tue Dec  2 00:18:07 2025
// Host        : pcetu-125 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/laemo10/Desktop/Labo4_FPGA/ZYBO_HDMI_MGA_2018_2/project_1/project_1.srcs/sources_1/bd/HDMI_bd/ip/HDMI_bd_gray_scale_reg_0_0/HDMI_bd_gray_scale_reg_0_0_stub.v
// Design      : HDMI_bd_gray_scale_reg_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "gray_scale_reg,Vivado 2023.1" *)
module HDMI_bd_gray_scale_reg_0_0(rst, clk, rdy, flaten_gray_in, flaten_gray_out, 
  out0, out1, out2, out3, out4, out5, out6, out7)
/* synthesis syn_black_box black_box_pad_pin="rst,rdy,flaten_gray_in[119:0],flaten_gray_out[119:0],out0,out1,out2,out3,out4,out5,out6,out7" */
/* synthesis syn_force_seq_prim="clk" */;
  input rst;
  input clk /* synthesis syn_isclock = 1 */;
  input rdy;
  input [119:0]flaten_gray_in;
  output [119:0]flaten_gray_out;
  output out0;
  output out1;
  output out2;
  output out3;
  output out4;
  output out5;
  output out6;
  output out7;
endmodule
