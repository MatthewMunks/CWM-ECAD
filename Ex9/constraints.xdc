##############################################
# Part         - xcvu9p
# Package      - fsgd2104
# Speed grade  - -2L
# Xilinx Reference Board is VCU1525
###############################################################################

# General configuration - Do not modify
set_property CFGBVS GND                                [current_design]
set_property CONFIG_VOLTAGE 1.8                        [current_design]
set_property BITSTREAM.GENERAL.COMPRESS true           [current_design]
set_property BITSTREAM.CONFIG.EXTMASTERCCLK_EN {DIV-1} [current_design]
set_property BITSTREAM.CONFIG.SPI_32BIT_ADDR YES       [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4           [current_design]
set_property BITSTREAM.CONFIG.SPI_FALL_EDGE YES        [current_design]

#############################################################################################################

set_property IOSTANDARD DIFF_SSTL12 [get_ports {clk_n clk_p}] 
set_property IOSTANDARD LVCMOS18 [get_ports {rst_n sysOn sleep atmospheric}]
set_property IOSTANDARD LVCMOS18 [get_ports {temperature_0 temperature_1 temperature_2 temperature_3 temperature_4}]
set_property IOSTANDARD LVCMOS18 [get_ports {heating cooling button lightsSel}]
set_property IOSTANDARD LVCMOS18 [get_ports {lightsOut_R0 lightsOut_R1 lightsOut_R2 lightsOut_R3}]
set_property IOSTANDARD LVCMOS18 [get_ports {lightsOut_R4 lightsOut_R5 lightsOut_R6 lightsOut_R7}]
set_property IOSTANDARD LVCMOS18 [get_ports {lightsOut_G0 lightsOut_G1 lightsOut_G2 lightsOut_G3}]
set_property IOSTANDARD LVCMOS18 [get_ports {lightsOut_G4 lightsOut_G5 lightsOut_G6 lightsOut_G7}]
set_property IOSTANDARD LVCMOS18 [get_ports {lightsOut_B0 lightsOut_B1 lightsOut_B2 lightsOut_B3}]
set_property IOSTANDARD LVCMOS18 [get_ports {lightsOut_B4 lightsOut_B5 lightsOut_B6 lightsOut_B7}]
set_property IOSTANDARD LVCMOS18 [get_ports {threshold_0 threshold_1 threshold_2 threshold_3 threshold_4 threshold_5}]

set_property PACKAGE_PIN AY38 [get_ports clk_n]
set_property PACKAGE_PIN AY37 [get_ports clk_p]

set_property PACKAGE_PIN BD21 [get_ports rst_n] 
set_property PACKAGE_PIN AU22 [get_ports heating]
set_property PACKAGE_PIN AT22 [get_ports cooling]
set_property PACKAGE_PIN BC21 [get_ports temperature_0]
set_property PACKAGE_PIN BB21 [get_ports temperature_1]
set_property PACKAGE_PIN BA20 [get_ports temperature_2]
set_property PACKAGE_PIN AL20 [get_ports temperature_3]
set_property PACKAGE_PIN AT20 [get_ports temperature_4]

set_property PULLUP true [get_ports rst_n]

#create_clock apparently throws a warning that can be ignored : https://forums.xilinx.com/t5/Implementation/2020-1-WARNING-Vivado-12-584-No-ports-matched/td-p/1164737
create_clock -name clk_p -period 10 [get_ports clk_p]
create_clock -name clk_n -period 10 -waveform {5.0 10.0} [get_ports clk_n]

set_clock_groups -asynchronous -group [get_clocks -include_generated_clocks clk_p] -group [get_clocks -include_generated_clocks clk_n]
