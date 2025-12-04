// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Thu Dec  4 16:45:03 2025
// Host        : pcetu-129 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/laemo10/Desktop/Labo4_FPGA/ZYBO_HDMI_MGA_2018_2/project_1/project_1.srcs/sources_1/bd/HDMI_bd/ip/HDMI_bd_systeme_regulation_v_0_0/HDMI_bd_systeme_regulation_v_0_0_sim_netlist.v
// Design      : HDMI_bd_systeme_regulation_v_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "HDMI_bd_systeme_regulation_v_0_0,systeme_regulation_vitesse,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "systeme_regulation_vitesse,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module HDMI_bd_systeme_regulation_v_0_0
   (clk,
    reset,
    vitesse_panneau_camera,
    vitesse_panneau_valid,
    vitesse_vehicule);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN HDMI_bd_dvi2rgb_0_0_PixelClk, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  input [7:0]vitesse_panneau_camera;
  input vitesse_panneau_valid;
  output [7:0]vitesse_vehicule;

  wire clk;
  wire reset;
  wire [7:0]vitesse_panneau_camera;
  wire vitesse_panneau_valid;
  wire [7:0]vitesse_vehicule;

  HDMI_bd_systeme_regulation_v_0_0_systeme_regulation_vitesse U0
       (.clk(clk),
        .reset(reset),
        .vitesse_panneau_camera(vitesse_panneau_camera),
        .vitesse_panneau_valid(vitesse_panneau_valid),
        .vitesse_vehicule(vitesse_vehicule));
endmodule

(* ORIG_REF_NAME = "gen_vitesse" *) 
module HDMI_bd_systeme_regulation_v_0_0_gen_vitesse
   (vitesse_vehicule,
    vitesse_panneau_valid,
    vitesse_panneau_camera,
    clk,
    reset);
  output [7:0]vitesse_vehicule;
  input vitesse_panneau_valid;
  input [7:0]vitesse_panneau_camera;
  input clk;
  input reset;

  wire clk;
  wire reset;
  wire [7:0]vitesse_panneau_camera;
  wire vitesse_panneau_valid;
  wire [7:0]vitesse_vehicule;

  FDCE \vitess_futur_reg[0] 
       (.C(clk),
        .CE(vitesse_panneau_valid),
        .CLR(reset),
        .D(vitesse_panneau_camera[0]),
        .Q(vitesse_vehicule[0]));
  FDPE \vitess_futur_reg[1] 
       (.C(clk),
        .CE(vitesse_panneau_valid),
        .D(vitesse_panneau_camera[1]),
        .PRE(reset),
        .Q(vitesse_vehicule[1]));
  FDCE \vitess_futur_reg[2] 
       (.C(clk),
        .CE(vitesse_panneau_valid),
        .CLR(reset),
        .D(vitesse_panneau_camera[2]),
        .Q(vitesse_vehicule[2]));
  FDCE \vitess_futur_reg[3] 
       (.C(clk),
        .CE(vitesse_panneau_valid),
        .CLR(reset),
        .D(vitesse_panneau_camera[3]),
        .Q(vitesse_vehicule[3]));
  FDPE \vitess_futur_reg[4] 
       (.C(clk),
        .CE(vitesse_panneau_valid),
        .D(vitesse_panneau_camera[4]),
        .PRE(reset),
        .Q(vitesse_vehicule[4]));
  FDPE \vitess_futur_reg[5] 
       (.C(clk),
        .CE(vitesse_panneau_valid),
        .D(vitesse_panneau_camera[5]),
        .PRE(reset),
        .Q(vitesse_vehicule[5]));
  FDCE \vitess_futur_reg[6] 
       (.C(clk),
        .CE(vitesse_panneau_valid),
        .CLR(reset),
        .D(vitesse_panneau_camera[6]),
        .Q(vitesse_vehicule[6]));
  FDCE \vitess_futur_reg[7] 
       (.C(clk),
        .CE(vitesse_panneau_valid),
        .CLR(reset),
        .D(vitesse_panneau_camera[7]),
        .Q(vitesse_vehicule[7]));
endmodule

(* ORIG_REF_NAME = "systeme_regulation_vitesse" *) 
module HDMI_bd_systeme_regulation_v_0_0_systeme_regulation_vitesse
   (vitesse_vehicule,
    vitesse_panneau_valid,
    vitesse_panneau_camera,
    clk,
    reset);
  output [7:0]vitesse_vehicule;
  input vitesse_panneau_valid;
  input [7:0]vitesse_panneau_camera;
  input clk;
  input reset;

  wire clk;
  wire reset;
  wire [7:0]vitesse_panneau_camera;
  wire vitesse_panneau_valid;
  wire [7:0]vitesse_vehicule;

  HDMI_bd_systeme_regulation_v_0_0_gen_vitesse U_GENERATEUR
       (.clk(clk),
        .reset(reset),
        .vitesse_panneau_camera(vitesse_panneau_camera),
        .vitesse_panneau_valid(vitesse_panneau_valid),
        .vitesse_vehicule(vitesse_vehicule));
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
