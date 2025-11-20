// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Thu Nov 20 11:09:31 2025
// Host        : pcetu-139 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/laemo10/Desktop/Labo4_FPGA/ZYBO_HDMI_MGA_2018_2/project_1/project_1.srcs/sources_1/bd/HDMI_bd/ip/HDMI_bd_White_Detector_0_0/HDMI_bd_White_Detector_0_0_sim_netlist.v
// Design      : HDMI_bd_White_Detector_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "HDMI_bd_White_Detector_0_0,White_Detector,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "White_Detector,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module HDMI_bd_White_Detector_0_0
   (hdmi_in,
    hdmi_out);
  input [23:0]hdmi_in;
  output [23:0]hdmi_out;

  wire [23:0]hdmi_in;
  wire [23:23]\^hdmi_out ;

  assign hdmi_out[23] = \^hdmi_out [23];
  assign hdmi_out[22] = \^hdmi_out [23];
  assign hdmi_out[21] = \^hdmi_out [23];
  assign hdmi_out[20] = \^hdmi_out [23];
  assign hdmi_out[19] = \^hdmi_out [23];
  assign hdmi_out[18] = \^hdmi_out [23];
  assign hdmi_out[17] = \^hdmi_out [23];
  assign hdmi_out[16] = \^hdmi_out [23];
  assign hdmi_out[15] = \^hdmi_out [23];
  assign hdmi_out[14] = \^hdmi_out [23];
  assign hdmi_out[13] = \^hdmi_out [23];
  assign hdmi_out[12] = \^hdmi_out [23];
  assign hdmi_out[11] = \^hdmi_out [23];
  assign hdmi_out[10] = \^hdmi_out [23];
  assign hdmi_out[9] = \^hdmi_out [23];
  assign hdmi_out[8] = \^hdmi_out [23];
  assign hdmi_out[7] = \^hdmi_out [23];
  assign hdmi_out[6] = \^hdmi_out [23];
  assign hdmi_out[5] = \^hdmi_out [23];
  assign hdmi_out[4] = \^hdmi_out [23];
  assign hdmi_out[3] = \^hdmi_out [23];
  assign hdmi_out[2] = \^hdmi_out [23];
  assign hdmi_out[1] = \^hdmi_out [23];
  assign hdmi_out[0] = \^hdmi_out [23];
  HDMI_bd_White_Detector_0_0_White_Detector U0
       (.hdmi_in({hdmi_in[23:17],hdmi_in[15:9],hdmi_in[7:1]}),
        .hdmi_out(\^hdmi_out ));
endmodule

(* ORIG_REF_NAME = "White_Detector" *) 
module HDMI_bd_White_Detector_0_0_White_Detector
   (hdmi_out,
    hdmi_in);
  output [0:0]hdmi_out;
  input [20:0]hdmi_in;

  wire [20:0]hdmi_in;
  wire [0:0]hdmi_out;
  wire \hdmi_out[0]_INST_0_i_1_n_0 ;
  wire \hdmi_out[0]_INST_0_i_2_n_0 ;
  wire \hdmi_out[0]_INST_0_i_3_n_0 ;

  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \hdmi_out[0]_INST_0 
       (.I0(\hdmi_out[0]_INST_0_i_1_n_0 ),
        .I1(hdmi_in[20]),
        .I2(hdmi_in[13]),
        .I3(\hdmi_out[0]_INST_0_i_2_n_0 ),
        .I4(hdmi_in[6]),
        .I5(\hdmi_out[0]_INST_0_i_3_n_0 ),
        .O(hdmi_out));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEAAAAA)) 
    \hdmi_out[0]_INST_0_i_1 
       (.I0(hdmi_in[18]),
        .I1(hdmi_in[16]),
        .I2(hdmi_in[14]),
        .I3(hdmi_in[15]),
        .I4(hdmi_in[17]),
        .I5(hdmi_in[19]),
        .O(\hdmi_out[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEAAAAA)) 
    \hdmi_out[0]_INST_0_i_2 
       (.I0(hdmi_in[11]),
        .I1(hdmi_in[9]),
        .I2(hdmi_in[7]),
        .I3(hdmi_in[8]),
        .I4(hdmi_in[10]),
        .I5(hdmi_in[12]),
        .O(\hdmi_out[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEAAAAA)) 
    \hdmi_out[0]_INST_0_i_3 
       (.I0(hdmi_in[4]),
        .I1(hdmi_in[2]),
        .I2(hdmi_in[0]),
        .I3(hdmi_in[1]),
        .I4(hdmi_in[3]),
        .I5(hdmi_in[5]),
        .O(\hdmi_out[0]_INST_0_i_3_n_0 ));
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
