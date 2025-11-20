-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Thu Nov 20 11:09:31 2025
-- Host        : pcetu-139 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/laemo10/Desktop/Labo4_FPGA/ZYBO_HDMI_MGA_2018_2/project_1/project_1.srcs/sources_1/bd/HDMI_bd/ip/HDMI_bd_White_Detector_0_0/HDMI_bd_White_Detector_0_0_sim_netlist.vhdl
-- Design      : HDMI_bd_White_Detector_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity HDMI_bd_White_Detector_0_0_White_Detector is
  port (
    hdmi_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    hdmi_in : in STD_LOGIC_VECTOR ( 20 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of HDMI_bd_White_Detector_0_0_White_Detector : entity is "White_Detector";
end HDMI_bd_White_Detector_0_0_White_Detector;

architecture STRUCTURE of HDMI_bd_White_Detector_0_0_White_Detector is
  signal \hdmi_out[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \hdmi_out[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \hdmi_out[0]_INST_0_i_3_n_0\ : STD_LOGIC;
begin
\hdmi_out[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \hdmi_out[0]_INST_0_i_1_n_0\,
      I1 => hdmi_in(20),
      I2 => hdmi_in(13),
      I3 => \hdmi_out[0]_INST_0_i_2_n_0\,
      I4 => hdmi_in(6),
      I5 => \hdmi_out[0]_INST_0_i_3_n_0\,
      O => hdmi_out(0)
    );
\hdmi_out[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEEEAAAAA"
    )
        port map (
      I0 => hdmi_in(18),
      I1 => hdmi_in(16),
      I2 => hdmi_in(14),
      I3 => hdmi_in(15),
      I4 => hdmi_in(17),
      I5 => hdmi_in(19),
      O => \hdmi_out[0]_INST_0_i_1_n_0\
    );
\hdmi_out[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEEEAAAAA"
    )
        port map (
      I0 => hdmi_in(11),
      I1 => hdmi_in(9),
      I2 => hdmi_in(7),
      I3 => hdmi_in(8),
      I4 => hdmi_in(10),
      I5 => hdmi_in(12),
      O => \hdmi_out[0]_INST_0_i_2_n_0\
    );
\hdmi_out[0]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEEEAAAAA"
    )
        port map (
      I0 => hdmi_in(4),
      I1 => hdmi_in(2),
      I2 => hdmi_in(0),
      I3 => hdmi_in(1),
      I4 => hdmi_in(3),
      I5 => hdmi_in(5),
      O => \hdmi_out[0]_INST_0_i_3_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity HDMI_bd_White_Detector_0_0 is
  port (
    hdmi_in : in STD_LOGIC_VECTOR ( 23 downto 0 );
    hdmi_out : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of HDMI_bd_White_Detector_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of HDMI_bd_White_Detector_0_0 : entity is "HDMI_bd_White_Detector_0_0,White_Detector,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of HDMI_bd_White_Detector_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of HDMI_bd_White_Detector_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of HDMI_bd_White_Detector_0_0 : entity is "White_Detector,Vivado 2023.1";
end HDMI_bd_White_Detector_0_0;

architecture STRUCTURE of HDMI_bd_White_Detector_0_0 is
  signal \^hdmi_out\ : STD_LOGIC_VECTOR ( 23 to 23 );
begin
  hdmi_out(23) <= \^hdmi_out\(23);
  hdmi_out(22) <= \^hdmi_out\(23);
  hdmi_out(21) <= \^hdmi_out\(23);
  hdmi_out(20) <= \^hdmi_out\(23);
  hdmi_out(19) <= \^hdmi_out\(23);
  hdmi_out(18) <= \^hdmi_out\(23);
  hdmi_out(17) <= \^hdmi_out\(23);
  hdmi_out(16) <= \^hdmi_out\(23);
  hdmi_out(15) <= \^hdmi_out\(23);
  hdmi_out(14) <= \^hdmi_out\(23);
  hdmi_out(13) <= \^hdmi_out\(23);
  hdmi_out(12) <= \^hdmi_out\(23);
  hdmi_out(11) <= \^hdmi_out\(23);
  hdmi_out(10) <= \^hdmi_out\(23);
  hdmi_out(9) <= \^hdmi_out\(23);
  hdmi_out(8) <= \^hdmi_out\(23);
  hdmi_out(7) <= \^hdmi_out\(23);
  hdmi_out(6) <= \^hdmi_out\(23);
  hdmi_out(5) <= \^hdmi_out\(23);
  hdmi_out(4) <= \^hdmi_out\(23);
  hdmi_out(3) <= \^hdmi_out\(23);
  hdmi_out(2) <= \^hdmi_out\(23);
  hdmi_out(1) <= \^hdmi_out\(23);
  hdmi_out(0) <= \^hdmi_out\(23);
U0: entity work.HDMI_bd_White_Detector_0_0_White_Detector
     port map (
      hdmi_in(20 downto 14) => hdmi_in(23 downto 17),
      hdmi_in(13 downto 7) => hdmi_in(15 downto 9),
      hdmi_in(6 downto 0) => hdmi_in(7 downto 1),
      hdmi_out(0) => \^hdmi_out\(23)
    );
end STRUCTURE;
