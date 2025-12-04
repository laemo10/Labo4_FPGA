// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sat Nov 29 15:02:11 2025
// Host        : pcetu-183 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top HDMI_bd_position_counter_0_0 -prefix
//               HDMI_bd_position_counter_0_0_ HDMI_bd_position_counter_0_0_stub.v
// Design      : HDMI_bd_position_counter_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "position_counter,Vivado 2023.1" *)
module HDMI_bd_position_counter_0_0(clk, rst, vde_in, hsync_in, vsync_in, rgb_in, 
  vde_out, hsync_out, vsync_out, h_count, v_count, rgb_out)
/* synthesis syn_black_box black_box_pad_pin="rst,vde_in,hsync_in,vsync_in,rgb_in[23:0],vde_out,hsync_out,vsync_out,h_count[31:0],v_count[31:0],rgb_out[23:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input rst;
  input vde_in;
  input hsync_in;
  input vsync_in;
  input [23:0]rgb_in;
  output vde_out;
  output hsync_out;
  output vsync_out;
  output [31:0]h_count;
  output [31:0]v_count;
  output [23:0]rgb_out;
endmodule
