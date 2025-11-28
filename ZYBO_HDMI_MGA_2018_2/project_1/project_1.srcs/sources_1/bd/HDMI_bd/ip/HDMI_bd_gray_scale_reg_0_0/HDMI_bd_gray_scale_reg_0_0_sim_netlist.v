// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Fri Nov 28 00:51:20 2025
// Host        : pcetu-139 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/laemo10/Desktop/Labo4_FPGA/ZYBO_HDMI_MGA_2018_2/project_1/project_1.srcs/sources_1/bd/HDMI_bd/ip/HDMI_bd_gray_scale_reg_0_0/HDMI_bd_gray_scale_reg_0_0_sim_netlist.v
// Design      : HDMI_bd_gray_scale_reg_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "HDMI_bd_gray_scale_reg_0_0,gray_scale_reg,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "gray_scale_reg,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module HDMI_bd_gray_scale_reg_0_0
   (rst,
    clk,
    rdy,
    grid_in,
    grid_out);
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN HDMI_bd_dvi2rgb_0_0_PixelClk, INSERT_VIP 0" *) input clk;
  input rdy;
  input [255:0]grid_in;
  output [255:0]grid_out;

  wire clk;
  wire [255:0]grid_in;
  wire [255:0]grid_out;
  wire rdy;
  wire rst;

  HDMI_bd_gray_scale_reg_0_0_gray_scale_reg U0
       (.clk(clk),
        .grid_in(grid_in),
        .grid_out(grid_out),
        .rdy(rdy),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "gray_scale_reg" *) 
module HDMI_bd_gray_scale_reg_0_0_gray_scale_reg
   (grid_out,
    rdy,
    grid_in,
    clk,
    rst);
  output [255:0]grid_out;
  input rdy;
  input [255:0]grid_in;
  input clk;
  input rst;

  wire clk;
  wire [255:0]grid_in;
  wire [255:0]grid_out;
  wire rdy;
  wire rst;

  FDCE \grid_out_reg[0] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[0]),
        .Q(grid_out[0]));
  FDCE \grid_out_reg[100] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[100]),
        .Q(grid_out[100]));
  FDCE \grid_out_reg[101] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[101]),
        .Q(grid_out[101]));
  FDCE \grid_out_reg[102] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[102]),
        .Q(grid_out[102]));
  FDCE \grid_out_reg[103] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[103]),
        .Q(grid_out[103]));
  FDCE \grid_out_reg[104] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[104]),
        .Q(grid_out[104]));
  FDCE \grid_out_reg[105] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[105]),
        .Q(grid_out[105]));
  FDCE \grid_out_reg[106] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[106]),
        .Q(grid_out[106]));
  FDCE \grid_out_reg[107] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[107]),
        .Q(grid_out[107]));
  FDCE \grid_out_reg[108] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[108]),
        .Q(grid_out[108]));
  FDCE \grid_out_reg[109] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[109]),
        .Q(grid_out[109]));
  FDCE \grid_out_reg[10] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[10]),
        .Q(grid_out[10]));
  FDCE \grid_out_reg[110] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[110]),
        .Q(grid_out[110]));
  FDCE \grid_out_reg[111] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[111]),
        .Q(grid_out[111]));
  FDCE \grid_out_reg[112] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[112]),
        .Q(grid_out[112]));
  FDCE \grid_out_reg[113] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[113]),
        .Q(grid_out[113]));
  FDCE \grid_out_reg[114] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[114]),
        .Q(grid_out[114]));
  FDCE \grid_out_reg[115] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[115]),
        .Q(grid_out[115]));
  FDCE \grid_out_reg[116] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[116]),
        .Q(grid_out[116]));
  FDCE \grid_out_reg[117] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[117]),
        .Q(grid_out[117]));
  FDCE \grid_out_reg[118] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[118]),
        .Q(grid_out[118]));
  FDCE \grid_out_reg[119] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[119]),
        .Q(grid_out[119]));
  FDCE \grid_out_reg[11] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[11]),
        .Q(grid_out[11]));
  FDCE \grid_out_reg[120] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[120]),
        .Q(grid_out[120]));
  FDCE \grid_out_reg[121] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[121]),
        .Q(grid_out[121]));
  FDCE \grid_out_reg[122] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[122]),
        .Q(grid_out[122]));
  FDCE \grid_out_reg[123] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[123]),
        .Q(grid_out[123]));
  FDCE \grid_out_reg[124] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[124]),
        .Q(grid_out[124]));
  FDCE \grid_out_reg[125] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[125]),
        .Q(grid_out[125]));
  FDCE \grid_out_reg[126] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[126]),
        .Q(grid_out[126]));
  FDCE \grid_out_reg[127] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[127]),
        .Q(grid_out[127]));
  FDCE \grid_out_reg[128] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[128]),
        .Q(grid_out[128]));
  FDCE \grid_out_reg[129] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[129]),
        .Q(grid_out[129]));
  FDCE \grid_out_reg[12] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[12]),
        .Q(grid_out[12]));
  FDCE \grid_out_reg[130] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[130]),
        .Q(grid_out[130]));
  FDCE \grid_out_reg[131] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[131]),
        .Q(grid_out[131]));
  FDCE \grid_out_reg[132] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[132]),
        .Q(grid_out[132]));
  FDCE \grid_out_reg[133] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[133]),
        .Q(grid_out[133]));
  FDCE \grid_out_reg[134] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[134]),
        .Q(grid_out[134]));
  FDCE \grid_out_reg[135] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[135]),
        .Q(grid_out[135]));
  FDCE \grid_out_reg[136] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[136]),
        .Q(grid_out[136]));
  FDCE \grid_out_reg[137] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[137]),
        .Q(grid_out[137]));
  FDCE \grid_out_reg[138] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[138]),
        .Q(grid_out[138]));
  FDCE \grid_out_reg[139] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[139]),
        .Q(grid_out[139]));
  FDCE \grid_out_reg[13] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[13]),
        .Q(grid_out[13]));
  FDCE \grid_out_reg[140] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[140]),
        .Q(grid_out[140]));
  FDCE \grid_out_reg[141] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[141]),
        .Q(grid_out[141]));
  FDCE \grid_out_reg[142] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[142]),
        .Q(grid_out[142]));
  FDCE \grid_out_reg[143] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[143]),
        .Q(grid_out[143]));
  FDCE \grid_out_reg[144] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[144]),
        .Q(grid_out[144]));
  FDCE \grid_out_reg[145] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[145]),
        .Q(grid_out[145]));
  FDCE \grid_out_reg[146] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[146]),
        .Q(grid_out[146]));
  FDCE \grid_out_reg[147] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[147]),
        .Q(grid_out[147]));
  FDCE \grid_out_reg[148] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[148]),
        .Q(grid_out[148]));
  FDCE \grid_out_reg[149] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[149]),
        .Q(grid_out[149]));
  FDCE \grid_out_reg[14] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[14]),
        .Q(grid_out[14]));
  FDCE \grid_out_reg[150] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[150]),
        .Q(grid_out[150]));
  FDCE \grid_out_reg[151] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[151]),
        .Q(grid_out[151]));
  FDCE \grid_out_reg[152] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[152]),
        .Q(grid_out[152]));
  FDCE \grid_out_reg[153] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[153]),
        .Q(grid_out[153]));
  FDCE \grid_out_reg[154] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[154]),
        .Q(grid_out[154]));
  FDCE \grid_out_reg[155] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[155]),
        .Q(grid_out[155]));
  FDCE \grid_out_reg[156] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[156]),
        .Q(grid_out[156]));
  FDCE \grid_out_reg[157] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[157]),
        .Q(grid_out[157]));
  FDCE \grid_out_reg[158] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[158]),
        .Q(grid_out[158]));
  FDCE \grid_out_reg[159] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[159]),
        .Q(grid_out[159]));
  FDCE \grid_out_reg[15] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[15]),
        .Q(grid_out[15]));
  FDCE \grid_out_reg[160] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[160]),
        .Q(grid_out[160]));
  FDCE \grid_out_reg[161] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[161]),
        .Q(grid_out[161]));
  FDCE \grid_out_reg[162] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[162]),
        .Q(grid_out[162]));
  FDCE \grid_out_reg[163] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[163]),
        .Q(grid_out[163]));
  FDCE \grid_out_reg[164] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[164]),
        .Q(grid_out[164]));
  FDCE \grid_out_reg[165] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[165]),
        .Q(grid_out[165]));
  FDCE \grid_out_reg[166] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[166]),
        .Q(grid_out[166]));
  FDCE \grid_out_reg[167] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[167]),
        .Q(grid_out[167]));
  FDCE \grid_out_reg[168] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[168]),
        .Q(grid_out[168]));
  FDCE \grid_out_reg[169] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[169]),
        .Q(grid_out[169]));
  FDCE \grid_out_reg[16] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[16]),
        .Q(grid_out[16]));
  FDCE \grid_out_reg[170] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[170]),
        .Q(grid_out[170]));
  FDCE \grid_out_reg[171] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[171]),
        .Q(grid_out[171]));
  FDCE \grid_out_reg[172] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[172]),
        .Q(grid_out[172]));
  FDCE \grid_out_reg[173] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[173]),
        .Q(grid_out[173]));
  FDCE \grid_out_reg[174] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[174]),
        .Q(grid_out[174]));
  FDCE \grid_out_reg[175] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[175]),
        .Q(grid_out[175]));
  FDCE \grid_out_reg[176] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[176]),
        .Q(grid_out[176]));
  FDCE \grid_out_reg[177] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[177]),
        .Q(grid_out[177]));
  FDCE \grid_out_reg[178] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[178]),
        .Q(grid_out[178]));
  FDCE \grid_out_reg[179] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[179]),
        .Q(grid_out[179]));
  FDCE \grid_out_reg[17] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[17]),
        .Q(grid_out[17]));
  FDCE \grid_out_reg[180] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[180]),
        .Q(grid_out[180]));
  FDCE \grid_out_reg[181] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[181]),
        .Q(grid_out[181]));
  FDCE \grid_out_reg[182] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[182]),
        .Q(grid_out[182]));
  FDCE \grid_out_reg[183] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[183]),
        .Q(grid_out[183]));
  FDCE \grid_out_reg[184] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[184]),
        .Q(grid_out[184]));
  FDCE \grid_out_reg[185] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[185]),
        .Q(grid_out[185]));
  FDCE \grid_out_reg[186] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[186]),
        .Q(grid_out[186]));
  FDCE \grid_out_reg[187] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[187]),
        .Q(grid_out[187]));
  FDCE \grid_out_reg[188] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[188]),
        .Q(grid_out[188]));
  FDCE \grid_out_reg[189] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[189]),
        .Q(grid_out[189]));
  FDCE \grid_out_reg[18] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[18]),
        .Q(grid_out[18]));
  FDCE \grid_out_reg[190] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[190]),
        .Q(grid_out[190]));
  FDCE \grid_out_reg[191] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[191]),
        .Q(grid_out[191]));
  FDCE \grid_out_reg[192] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[192]),
        .Q(grid_out[192]));
  FDCE \grid_out_reg[193] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[193]),
        .Q(grid_out[193]));
  FDCE \grid_out_reg[194] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[194]),
        .Q(grid_out[194]));
  FDCE \grid_out_reg[195] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[195]),
        .Q(grid_out[195]));
  FDCE \grid_out_reg[196] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[196]),
        .Q(grid_out[196]));
  FDCE \grid_out_reg[197] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[197]),
        .Q(grid_out[197]));
  FDCE \grid_out_reg[198] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[198]),
        .Q(grid_out[198]));
  FDCE \grid_out_reg[199] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[199]),
        .Q(grid_out[199]));
  FDCE \grid_out_reg[19] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[19]),
        .Q(grid_out[19]));
  FDCE \grid_out_reg[1] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[1]),
        .Q(grid_out[1]));
  FDCE \grid_out_reg[200] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[200]),
        .Q(grid_out[200]));
  FDCE \grid_out_reg[201] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[201]),
        .Q(grid_out[201]));
  FDCE \grid_out_reg[202] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[202]),
        .Q(grid_out[202]));
  FDCE \grid_out_reg[203] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[203]),
        .Q(grid_out[203]));
  FDCE \grid_out_reg[204] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[204]),
        .Q(grid_out[204]));
  FDCE \grid_out_reg[205] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[205]),
        .Q(grid_out[205]));
  FDCE \grid_out_reg[206] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[206]),
        .Q(grid_out[206]));
  FDCE \grid_out_reg[207] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[207]),
        .Q(grid_out[207]));
  FDCE \grid_out_reg[208] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[208]),
        .Q(grid_out[208]));
  FDCE \grid_out_reg[209] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[209]),
        .Q(grid_out[209]));
  FDCE \grid_out_reg[20] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[20]),
        .Q(grid_out[20]));
  FDCE \grid_out_reg[210] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[210]),
        .Q(grid_out[210]));
  FDCE \grid_out_reg[211] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[211]),
        .Q(grid_out[211]));
  FDCE \grid_out_reg[212] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[212]),
        .Q(grid_out[212]));
  FDCE \grid_out_reg[213] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[213]),
        .Q(grid_out[213]));
  FDCE \grid_out_reg[214] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[214]),
        .Q(grid_out[214]));
  FDCE \grid_out_reg[215] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[215]),
        .Q(grid_out[215]));
  FDCE \grid_out_reg[216] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[216]),
        .Q(grid_out[216]));
  FDCE \grid_out_reg[217] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[217]),
        .Q(grid_out[217]));
  FDCE \grid_out_reg[218] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[218]),
        .Q(grid_out[218]));
  FDCE \grid_out_reg[219] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[219]),
        .Q(grid_out[219]));
  FDCE \grid_out_reg[21] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[21]),
        .Q(grid_out[21]));
  FDCE \grid_out_reg[220] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[220]),
        .Q(grid_out[220]));
  FDCE \grid_out_reg[221] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[221]),
        .Q(grid_out[221]));
  FDCE \grid_out_reg[222] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[222]),
        .Q(grid_out[222]));
  FDCE \grid_out_reg[223] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[223]),
        .Q(grid_out[223]));
  FDCE \grid_out_reg[224] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[224]),
        .Q(grid_out[224]));
  FDCE \grid_out_reg[225] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[225]),
        .Q(grid_out[225]));
  FDCE \grid_out_reg[226] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[226]),
        .Q(grid_out[226]));
  FDCE \grid_out_reg[227] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[227]),
        .Q(grid_out[227]));
  FDCE \grid_out_reg[228] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[228]),
        .Q(grid_out[228]));
  FDCE \grid_out_reg[229] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[229]),
        .Q(grid_out[229]));
  FDCE \grid_out_reg[22] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[22]),
        .Q(grid_out[22]));
  FDCE \grid_out_reg[230] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[230]),
        .Q(grid_out[230]));
  FDCE \grid_out_reg[231] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[231]),
        .Q(grid_out[231]));
  FDCE \grid_out_reg[232] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[232]),
        .Q(grid_out[232]));
  FDCE \grid_out_reg[233] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[233]),
        .Q(grid_out[233]));
  FDCE \grid_out_reg[234] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[234]),
        .Q(grid_out[234]));
  FDCE \grid_out_reg[235] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[235]),
        .Q(grid_out[235]));
  FDCE \grid_out_reg[236] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[236]),
        .Q(grid_out[236]));
  FDCE \grid_out_reg[237] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[237]),
        .Q(grid_out[237]));
  FDCE \grid_out_reg[238] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[238]),
        .Q(grid_out[238]));
  FDCE \grid_out_reg[239] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[239]),
        .Q(grid_out[239]));
  FDCE \grid_out_reg[23] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[23]),
        .Q(grid_out[23]));
  FDCE \grid_out_reg[240] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[240]),
        .Q(grid_out[240]));
  FDCE \grid_out_reg[241] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[241]),
        .Q(grid_out[241]));
  FDCE \grid_out_reg[242] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[242]),
        .Q(grid_out[242]));
  FDCE \grid_out_reg[243] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[243]),
        .Q(grid_out[243]));
  FDCE \grid_out_reg[244] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[244]),
        .Q(grid_out[244]));
  FDCE \grid_out_reg[245] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[245]),
        .Q(grid_out[245]));
  FDCE \grid_out_reg[246] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[246]),
        .Q(grid_out[246]));
  FDCE \grid_out_reg[247] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[247]),
        .Q(grid_out[247]));
  FDCE \grid_out_reg[248] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[248]),
        .Q(grid_out[248]));
  FDCE \grid_out_reg[249] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[249]),
        .Q(grid_out[249]));
  FDCE \grid_out_reg[24] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[24]),
        .Q(grid_out[24]));
  FDCE \grid_out_reg[250] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[250]),
        .Q(grid_out[250]));
  FDCE \grid_out_reg[251] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[251]),
        .Q(grid_out[251]));
  FDCE \grid_out_reg[252] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[252]),
        .Q(grid_out[252]));
  FDCE \grid_out_reg[253] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[253]),
        .Q(grid_out[253]));
  FDCE \grid_out_reg[254] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[254]),
        .Q(grid_out[254]));
  FDCE \grid_out_reg[255] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[255]),
        .Q(grid_out[255]));
  FDCE \grid_out_reg[25] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[25]),
        .Q(grid_out[25]));
  FDCE \grid_out_reg[26] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[26]),
        .Q(grid_out[26]));
  FDCE \grid_out_reg[27] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[27]),
        .Q(grid_out[27]));
  FDCE \grid_out_reg[28] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[28]),
        .Q(grid_out[28]));
  FDCE \grid_out_reg[29] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[29]),
        .Q(grid_out[29]));
  FDCE \grid_out_reg[2] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[2]),
        .Q(grid_out[2]));
  FDCE \grid_out_reg[30] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[30]),
        .Q(grid_out[30]));
  FDCE \grid_out_reg[31] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[31]),
        .Q(grid_out[31]));
  FDCE \grid_out_reg[32] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[32]),
        .Q(grid_out[32]));
  FDCE \grid_out_reg[33] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[33]),
        .Q(grid_out[33]));
  FDCE \grid_out_reg[34] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[34]),
        .Q(grid_out[34]));
  FDCE \grid_out_reg[35] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[35]),
        .Q(grid_out[35]));
  FDCE \grid_out_reg[36] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[36]),
        .Q(grid_out[36]));
  FDCE \grid_out_reg[37] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[37]),
        .Q(grid_out[37]));
  FDCE \grid_out_reg[38] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[38]),
        .Q(grid_out[38]));
  FDCE \grid_out_reg[39] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[39]),
        .Q(grid_out[39]));
  FDCE \grid_out_reg[3] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[3]),
        .Q(grid_out[3]));
  FDCE \grid_out_reg[40] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[40]),
        .Q(grid_out[40]));
  FDCE \grid_out_reg[41] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[41]),
        .Q(grid_out[41]));
  FDCE \grid_out_reg[42] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[42]),
        .Q(grid_out[42]));
  FDCE \grid_out_reg[43] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[43]),
        .Q(grid_out[43]));
  FDCE \grid_out_reg[44] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[44]),
        .Q(grid_out[44]));
  FDCE \grid_out_reg[45] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[45]),
        .Q(grid_out[45]));
  FDCE \grid_out_reg[46] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[46]),
        .Q(grid_out[46]));
  FDCE \grid_out_reg[47] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[47]),
        .Q(grid_out[47]));
  FDCE \grid_out_reg[48] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[48]),
        .Q(grid_out[48]));
  FDCE \grid_out_reg[49] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[49]),
        .Q(grid_out[49]));
  FDCE \grid_out_reg[4] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[4]),
        .Q(grid_out[4]));
  FDCE \grid_out_reg[50] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[50]),
        .Q(grid_out[50]));
  FDCE \grid_out_reg[51] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[51]),
        .Q(grid_out[51]));
  FDCE \grid_out_reg[52] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[52]),
        .Q(grid_out[52]));
  FDCE \grid_out_reg[53] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[53]),
        .Q(grid_out[53]));
  FDCE \grid_out_reg[54] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[54]),
        .Q(grid_out[54]));
  FDCE \grid_out_reg[55] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[55]),
        .Q(grid_out[55]));
  FDCE \grid_out_reg[56] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[56]),
        .Q(grid_out[56]));
  FDCE \grid_out_reg[57] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[57]),
        .Q(grid_out[57]));
  FDCE \grid_out_reg[58] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[58]),
        .Q(grid_out[58]));
  FDCE \grid_out_reg[59] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[59]),
        .Q(grid_out[59]));
  FDCE \grid_out_reg[5] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[5]),
        .Q(grid_out[5]));
  FDCE \grid_out_reg[60] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[60]),
        .Q(grid_out[60]));
  FDCE \grid_out_reg[61] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[61]),
        .Q(grid_out[61]));
  FDCE \grid_out_reg[62] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[62]),
        .Q(grid_out[62]));
  FDCE \grid_out_reg[63] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[63]),
        .Q(grid_out[63]));
  FDCE \grid_out_reg[64] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[64]),
        .Q(grid_out[64]));
  FDCE \grid_out_reg[65] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[65]),
        .Q(grid_out[65]));
  FDCE \grid_out_reg[66] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[66]),
        .Q(grid_out[66]));
  FDCE \grid_out_reg[67] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[67]),
        .Q(grid_out[67]));
  FDCE \grid_out_reg[68] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[68]),
        .Q(grid_out[68]));
  FDCE \grid_out_reg[69] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[69]),
        .Q(grid_out[69]));
  FDCE \grid_out_reg[6] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[6]),
        .Q(grid_out[6]));
  FDCE \grid_out_reg[70] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[70]),
        .Q(grid_out[70]));
  FDCE \grid_out_reg[71] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[71]),
        .Q(grid_out[71]));
  FDCE \grid_out_reg[72] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[72]),
        .Q(grid_out[72]));
  FDCE \grid_out_reg[73] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[73]),
        .Q(grid_out[73]));
  FDCE \grid_out_reg[74] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[74]),
        .Q(grid_out[74]));
  FDCE \grid_out_reg[75] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[75]),
        .Q(grid_out[75]));
  FDCE \grid_out_reg[76] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[76]),
        .Q(grid_out[76]));
  FDCE \grid_out_reg[77] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[77]),
        .Q(grid_out[77]));
  FDCE \grid_out_reg[78] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[78]),
        .Q(grid_out[78]));
  FDCE \grid_out_reg[79] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[79]),
        .Q(grid_out[79]));
  FDCE \grid_out_reg[7] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[7]),
        .Q(grid_out[7]));
  FDCE \grid_out_reg[80] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[80]),
        .Q(grid_out[80]));
  FDCE \grid_out_reg[81] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[81]),
        .Q(grid_out[81]));
  FDCE \grid_out_reg[82] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[82]),
        .Q(grid_out[82]));
  FDCE \grid_out_reg[83] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[83]),
        .Q(grid_out[83]));
  FDCE \grid_out_reg[84] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[84]),
        .Q(grid_out[84]));
  FDCE \grid_out_reg[85] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[85]),
        .Q(grid_out[85]));
  FDCE \grid_out_reg[86] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[86]),
        .Q(grid_out[86]));
  FDCE \grid_out_reg[87] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[87]),
        .Q(grid_out[87]));
  FDCE \grid_out_reg[88] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[88]),
        .Q(grid_out[88]));
  FDCE \grid_out_reg[89] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[89]),
        .Q(grid_out[89]));
  FDCE \grid_out_reg[8] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[8]),
        .Q(grid_out[8]));
  FDCE \grid_out_reg[90] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[90]),
        .Q(grid_out[90]));
  FDCE \grid_out_reg[91] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[91]),
        .Q(grid_out[91]));
  FDCE \grid_out_reg[92] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[92]),
        .Q(grid_out[92]));
  FDCE \grid_out_reg[93] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[93]),
        .Q(grid_out[93]));
  FDCE \grid_out_reg[94] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[94]),
        .Q(grid_out[94]));
  FDCE \grid_out_reg[95] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[95]),
        .Q(grid_out[95]));
  FDCE \grid_out_reg[96] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[96]),
        .Q(grid_out[96]));
  FDCE \grid_out_reg[97] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[97]),
        .Q(grid_out[97]));
  FDCE \grid_out_reg[98] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[98]),
        .Q(grid_out[98]));
  FDCE \grid_out_reg[99] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[99]),
        .Q(grid_out[99]));
  FDCE \grid_out_reg[9] 
       (.C(clk),
        .CE(rdy),
        .CLR(rst),
        .D(grid_in[9]),
        .Q(grid_out[9]));
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
