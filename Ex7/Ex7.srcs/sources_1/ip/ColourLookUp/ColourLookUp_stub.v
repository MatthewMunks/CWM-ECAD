// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2700185 Thu Oct 24 18:45:48 MDT 2019
// Date        : Wed Jun  9 10:26:13 2021
// Host        : ip-172-31-12-209.eu-west-2.compute.internal running 64-bit CentOS Linux release 7.7.1908 (Core)
// Command     : write_verilog -force -mode synth_stub
//               /home/centos/Documents/CWM-ECAD/Ex7/Ex7.srcs/sources_1/ip/ColourLookUp/ColourLookUp_stub.v
// Design      : ColourLookUp
// Purpose     : Stub declaration of top-level module interface
// Device      : xcvu9p-fsgd2104-2L-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2019.2" *)
module ColourLookUp(clka, ena, wea, addra, dina, douta)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,wea[0:0],addra[2:0],dina[23:0],douta[23:0]" */;
  input clka;
  input ena;
  input [0:0]wea;
  input [2:0]addra;
  input [23:0]dina;
  output [23:0]douta;
endmodule
