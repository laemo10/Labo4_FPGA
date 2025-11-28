// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Fri Nov 28 00:48:30 2025
// Host        : pcetu-139 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/laemo10/Desktop/Labo4_FPGA/ZYBO_HDMI_MGA_2018_2/project_1/project_1.srcs/sources_1/bd/HDMI_bd/ip/HDMI_bd_debug_led_parser_0_0/HDMI_bd_debug_led_parser_0_0_stub.v
// Design      : HDMI_bd_debug_led_parser_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "debug_led_parser,Vivado 2023.1" *)
module HDMI_bd_debug_led_parser_0_0(grid_in, out0, out1, out2, out3, out4, out5, out6)
/* synthesis syn_black_box black_box_pad_pin="grid_in[255:0],out0,out1,out2,out3,out4,out5,out6" */;
  input [255:0]grid_in;
  output out0;
  output out1;
  output out2;
  output out3;
  output out4;
  output out5;
  output out6;
endmodule
