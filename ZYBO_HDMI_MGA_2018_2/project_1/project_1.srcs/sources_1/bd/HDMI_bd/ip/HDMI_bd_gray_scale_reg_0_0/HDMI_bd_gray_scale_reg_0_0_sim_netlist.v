// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Tue Dec  2 00:18:07 2025
// Host        : pcetu-125 running 64-bit major release  (build 9200)
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
    flaten_gray_in,
    flaten_gray_out,
    out0,
    out1,
    out2,
    out3,
    out4,
    out5,
    out6,
    out7);
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN HDMI_bd_dvi2rgb_0_0_PixelClk, INSERT_VIP 0" *) input clk;
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

  wire \<const0> ;
  wire clk;
  wire [119:0]flaten_gray_in;
  wire out0;
  wire out1;
  wire out2;
  wire out3;
  wire out4;
  wire out5;
  wire out6;
  wire rdy;
  wire rst;

  assign flaten_gray_out[119] = \<const0> ;
  assign flaten_gray_out[118] = \<const0> ;
  assign flaten_gray_out[117] = \<const0> ;
  assign flaten_gray_out[116] = \<const0> ;
  assign flaten_gray_out[115] = \<const0> ;
  assign flaten_gray_out[114] = \<const0> ;
  assign flaten_gray_out[113] = \<const0> ;
  assign flaten_gray_out[112] = \<const0> ;
  assign flaten_gray_out[111] = \<const0> ;
  assign flaten_gray_out[110] = \<const0> ;
  assign flaten_gray_out[109] = \<const0> ;
  assign flaten_gray_out[108] = \<const0> ;
  assign flaten_gray_out[107] = \<const0> ;
  assign flaten_gray_out[106] = \<const0> ;
  assign flaten_gray_out[105] = \<const0> ;
  assign flaten_gray_out[104] = \<const0> ;
  assign flaten_gray_out[103] = \<const0> ;
  assign flaten_gray_out[102] = \<const0> ;
  assign flaten_gray_out[101] = \<const0> ;
  assign flaten_gray_out[100] = \<const0> ;
  assign flaten_gray_out[99] = \<const0> ;
  assign flaten_gray_out[98] = \<const0> ;
  assign flaten_gray_out[97] = \<const0> ;
  assign flaten_gray_out[96] = \<const0> ;
  assign flaten_gray_out[95] = \<const0> ;
  assign flaten_gray_out[94] = \<const0> ;
  assign flaten_gray_out[93] = \<const0> ;
  assign flaten_gray_out[92] = \<const0> ;
  assign flaten_gray_out[91] = \<const0> ;
  assign flaten_gray_out[90] = \<const0> ;
  assign flaten_gray_out[89] = \<const0> ;
  assign flaten_gray_out[88] = \<const0> ;
  assign flaten_gray_out[87] = \<const0> ;
  assign flaten_gray_out[86] = \<const0> ;
  assign flaten_gray_out[85] = \<const0> ;
  assign flaten_gray_out[84] = \<const0> ;
  assign flaten_gray_out[83] = \<const0> ;
  assign flaten_gray_out[82] = \<const0> ;
  assign flaten_gray_out[81] = \<const0> ;
  assign flaten_gray_out[80] = \<const0> ;
  assign flaten_gray_out[79] = \<const0> ;
  assign flaten_gray_out[78] = \<const0> ;
  assign flaten_gray_out[77] = \<const0> ;
  assign flaten_gray_out[76] = \<const0> ;
  assign flaten_gray_out[75] = \<const0> ;
  assign flaten_gray_out[74] = \<const0> ;
  assign flaten_gray_out[73] = \<const0> ;
  assign flaten_gray_out[72] = \<const0> ;
  assign flaten_gray_out[71] = \<const0> ;
  assign flaten_gray_out[70] = \<const0> ;
  assign flaten_gray_out[69] = \<const0> ;
  assign flaten_gray_out[68] = \<const0> ;
  assign flaten_gray_out[67] = \<const0> ;
  assign flaten_gray_out[66] = \<const0> ;
  assign flaten_gray_out[65] = \<const0> ;
  assign flaten_gray_out[64] = \<const0> ;
  assign flaten_gray_out[63] = \<const0> ;
  assign flaten_gray_out[62] = \<const0> ;
  assign flaten_gray_out[61] = \<const0> ;
  assign flaten_gray_out[60] = \<const0> ;
  assign flaten_gray_out[59] = \<const0> ;
  assign flaten_gray_out[58] = \<const0> ;
  assign flaten_gray_out[57] = \<const0> ;
  assign flaten_gray_out[56] = \<const0> ;
  assign flaten_gray_out[55] = \<const0> ;
  assign flaten_gray_out[54] = \<const0> ;
  assign flaten_gray_out[53] = \<const0> ;
  assign flaten_gray_out[52] = \<const0> ;
  assign flaten_gray_out[51] = \<const0> ;
  assign flaten_gray_out[50] = \<const0> ;
  assign flaten_gray_out[49] = \<const0> ;
  assign flaten_gray_out[48] = \<const0> ;
  assign flaten_gray_out[47] = \<const0> ;
  assign flaten_gray_out[46] = \<const0> ;
  assign flaten_gray_out[45] = \<const0> ;
  assign flaten_gray_out[44] = \<const0> ;
  assign flaten_gray_out[43] = \<const0> ;
  assign flaten_gray_out[42] = \<const0> ;
  assign flaten_gray_out[41] = \<const0> ;
  assign flaten_gray_out[40] = \<const0> ;
  assign flaten_gray_out[39] = \<const0> ;
  assign flaten_gray_out[38] = \<const0> ;
  assign flaten_gray_out[37] = \<const0> ;
  assign flaten_gray_out[36] = \<const0> ;
  assign flaten_gray_out[35] = \<const0> ;
  assign flaten_gray_out[34] = \<const0> ;
  assign flaten_gray_out[33] = \<const0> ;
  assign flaten_gray_out[32] = \<const0> ;
  assign flaten_gray_out[31] = \<const0> ;
  assign flaten_gray_out[30] = \<const0> ;
  assign flaten_gray_out[29] = \<const0> ;
  assign flaten_gray_out[28] = \<const0> ;
  assign flaten_gray_out[27] = \<const0> ;
  assign flaten_gray_out[26] = \<const0> ;
  assign flaten_gray_out[25] = \<const0> ;
  assign flaten_gray_out[24] = \<const0> ;
  assign flaten_gray_out[23] = \<const0> ;
  assign flaten_gray_out[22] = \<const0> ;
  assign flaten_gray_out[21] = \<const0> ;
  assign flaten_gray_out[20] = \<const0> ;
  assign flaten_gray_out[19] = \<const0> ;
  assign flaten_gray_out[18] = \<const0> ;
  assign flaten_gray_out[17] = \<const0> ;
  assign flaten_gray_out[16] = \<const0> ;
  assign flaten_gray_out[15] = \<const0> ;
  assign flaten_gray_out[14] = \<const0> ;
  assign flaten_gray_out[13] = \<const0> ;
  assign flaten_gray_out[12] = \<const0> ;
  assign flaten_gray_out[11] = \<const0> ;
  assign flaten_gray_out[10] = \<const0> ;
  assign flaten_gray_out[9] = \<const0> ;
  assign flaten_gray_out[8] = \<const0> ;
  assign flaten_gray_out[7] = \<const0> ;
  assign flaten_gray_out[6] = \<const0> ;
  assign flaten_gray_out[5] = \<const0> ;
  assign flaten_gray_out[4] = \<const0> ;
  assign flaten_gray_out[3] = \<const0> ;
  assign flaten_gray_out[2] = \<const0> ;
  assign flaten_gray_out[1] = \<const0> ;
  assign flaten_gray_out[0] = \<const0> ;
  assign out7 = \<const0> ;
  GND GND
       (.G(\<const0> ));
  HDMI_bd_gray_scale_reg_0_0_gray_scale_reg U0
       (.clk(clk),
        .flaten_gray_in({flaten_gray_in[111:104],flaten_gray_in[95:88],flaten_gray_in[79:72],flaten_gray_in[63:56],flaten_gray_in[47:40],flaten_gray_in[31:24],flaten_gray_in[15:8]}),
        .out0(out0),
        .out1(out1),
        .out2(out2),
        .out3(out3),
        .out4(out4),
        .out5(out5),
        .out6(out6),
        .rdy(rdy),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "gray_scale_reg" *) 
module HDMI_bd_gray_scale_reg_0_0_gray_scale_reg
   (out0,
    out1,
    out2,
    out3,
    out4,
    out5,
    out6,
    flaten_gray_in,
    clk,
    rdy,
    rst);
  output out0;
  output out1;
  output out2;
  output out3;
  output out4;
  output out5;
  output out6;
  input [55:0]flaten_gray_in;
  input clk;
  input rdy;
  input rst;

  wire clk;
  wire [55:0]flaten_gray_in;
  wire out0;
  wire out00;
  wire out0_i_3_n_0;
  wire out1;
  wire out1_i_1_n_0;
  wire out1_i_2_n_0;
  wire out2;
  wire out2_i_1_n_0;
  wire out2_i_2_n_0;
  wire out3;
  wire out3_i_1_n_0;
  wire out3_i_2_n_0;
  wire out4;
  wire out4_i_1_n_0;
  wire out4_i_2_n_0;
  wire out5;
  wire out5_i_1_n_0;
  wire out5_i_2_n_0;
  wire out6;
  wire out6_i_1_n_0;
  wire out6_i_2_n_0;
  wire p_0_in;
  wire rdy;
  wire rst;

  LUT2 #(
    .INIT(4'h2)) 
    out0_i_1
       (.I0(rdy),
        .I1(rst),
        .O(out00));
  LUT3 #(
    .INIT(8'h80)) 
    out0_i_2
       (.I0(flaten_gray_in[6]),
        .I1(out0_i_3_n_0),
        .I2(flaten_gray_in[7]),
        .O(p_0_in));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    out0_i_3
       (.I0(flaten_gray_in[2]),
        .I1(flaten_gray_in[1]),
        .I2(flaten_gray_in[5]),
        .I3(flaten_gray_in[0]),
        .I4(flaten_gray_in[3]),
        .I5(flaten_gray_in[4]),
        .O(out0_i_3_n_0));
  FDRE out0_reg
       (.C(clk),
        .CE(out00),
        .D(p_0_in),
        .Q(out0),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h80)) 
    out1_i_1
       (.I0(flaten_gray_in[22]),
        .I1(out1_i_2_n_0),
        .I2(flaten_gray_in[23]),
        .O(out1_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    out1_i_2
       (.I0(flaten_gray_in[18]),
        .I1(flaten_gray_in[17]),
        .I2(flaten_gray_in[21]),
        .I3(flaten_gray_in[16]),
        .I4(flaten_gray_in[19]),
        .I5(flaten_gray_in[20]),
        .O(out1_i_2_n_0));
  FDRE out1_reg
       (.C(clk),
        .CE(out00),
        .D(out1_i_1_n_0),
        .Q(out1),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h80)) 
    out2_i_1
       (.I0(flaten_gray_in[46]),
        .I1(out2_i_2_n_0),
        .I2(flaten_gray_in[47]),
        .O(out2_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    out2_i_2
       (.I0(flaten_gray_in[42]),
        .I1(flaten_gray_in[41]),
        .I2(flaten_gray_in[45]),
        .I3(flaten_gray_in[40]),
        .I4(flaten_gray_in[43]),
        .I5(flaten_gray_in[44]),
        .O(out2_i_2_n_0));
  FDRE out2_reg
       (.C(clk),
        .CE(out00),
        .D(out2_i_1_n_0),
        .Q(out2),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h80)) 
    out3_i_1
       (.I0(flaten_gray_in[54]),
        .I1(out3_i_2_n_0),
        .I2(flaten_gray_in[55]),
        .O(out3_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    out3_i_2
       (.I0(flaten_gray_in[50]),
        .I1(flaten_gray_in[49]),
        .I2(flaten_gray_in[53]),
        .I3(flaten_gray_in[48]),
        .I4(flaten_gray_in[51]),
        .I5(flaten_gray_in[52]),
        .O(out3_i_2_n_0));
  FDRE out3_reg
       (.C(clk),
        .CE(out00),
        .D(out3_i_1_n_0),
        .Q(out3),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h80)) 
    out4_i_1
       (.I0(flaten_gray_in[38]),
        .I1(out4_i_2_n_0),
        .I2(flaten_gray_in[39]),
        .O(out4_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    out4_i_2
       (.I0(flaten_gray_in[34]),
        .I1(flaten_gray_in[33]),
        .I2(flaten_gray_in[37]),
        .I3(flaten_gray_in[32]),
        .I4(flaten_gray_in[35]),
        .I5(flaten_gray_in[36]),
        .O(out4_i_2_n_0));
  FDRE out4_reg
       (.C(clk),
        .CE(out00),
        .D(out4_i_1_n_0),
        .Q(out4),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h80)) 
    out5_i_1
       (.I0(flaten_gray_in[14]),
        .I1(out5_i_2_n_0),
        .I2(flaten_gray_in[15]),
        .O(out5_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    out5_i_2
       (.I0(flaten_gray_in[10]),
        .I1(flaten_gray_in[9]),
        .I2(flaten_gray_in[13]),
        .I3(flaten_gray_in[8]),
        .I4(flaten_gray_in[11]),
        .I5(flaten_gray_in[12]),
        .O(out5_i_2_n_0));
  FDRE out5_reg
       (.C(clk),
        .CE(out00),
        .D(out5_i_1_n_0),
        .Q(out5),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h80)) 
    out6_i_1
       (.I0(flaten_gray_in[30]),
        .I1(out6_i_2_n_0),
        .I2(flaten_gray_in[31]),
        .O(out6_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    out6_i_2
       (.I0(flaten_gray_in[26]),
        .I1(flaten_gray_in[25]),
        .I2(flaten_gray_in[29]),
        .I3(flaten_gray_in[24]),
        .I4(flaten_gray_in[27]),
        .I5(flaten_gray_in[28]),
        .O(out6_i_2_n_0));
  FDRE out6_reg
       (.C(clk),
        .CE(out00),
        .D(out6_i_1_n_0),
        .Q(out6),
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
