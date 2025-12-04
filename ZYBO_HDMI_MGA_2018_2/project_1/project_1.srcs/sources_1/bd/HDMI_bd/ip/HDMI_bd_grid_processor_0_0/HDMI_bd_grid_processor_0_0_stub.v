// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Tue Dec  2 00:37:37 2025
// Host        : pcetu-125 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/laemo10/Desktop/Labo4_FPGA/ZYBO_HDMI_MGA_2018_2/project_1/project_1.srcs/sources_1/bd/HDMI_bd/ip/HDMI_bd_grid_processor_0_0/HDMI_bd_grid_processor_0_0_stub.v
// Design      : HDMI_bd_grid_processor_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "grid_processor,Vivado 2023.1" *)
module HDMI_bd_grid_processor_0_0(clk, reset, valid_pixel, pixel_row, pixel_col, 
  pixel_val, frame_done, flattened_out, data_ready)
/* synthesis syn_black_box black_box_pad_pin="reset,valid_pixel,pixel_row[7:0],pixel_col[7:0],pixel_val[7:0],frame_done,flattened_out[119:0],data_ready" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input reset;
  input valid_pixel;
  input [7:0]pixel_row;
  input [7:0]pixel_col;
  input [7:0]pixel_val;
  input frame_done;
  output [119:0]flattened_out;
  output data_ready;
endmodule
