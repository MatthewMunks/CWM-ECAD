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

set_property IOSTANDARD DIFF_SSTL12 [get_ports clk_n]
set_property IOSTANDARD DIFF_SSTL12 [get_ports clk_p] 

set_property IOSTANDARD LVCMOS18 [get_ports rst_n]
set_property IOSTANDARD LVCMOS18 [get_ports sysOn]
set_property IOSTANDARD LVCMOS18 [get_ports sleep]
set_property IOSTANDARD LVCMOS18 [get_ports atmospheric]

set_property PACKAGE_PIN BC21 [get_ports temperature_0]
set_property PACKAGE_PIN BB21 [get_ports temperature_1]
set_property PACKAGE_PIN BA20 [get_ports temperature_2]
set_property PACKAGE_PIN AL20 [get_ports temperature_3]
set_property PACKAGE_PIN AT20 [get_ports temperature_4]

set_property IOSTANDARD LVCMOS18 [get_ports heating]
set_property IOSTANDARD LVCMOS18 [get_ports cooling]
set_property IOSTANDARD LVCMOS18 [get_ports button]
set_property IOSTANDARD LVCMOS18 [get_ports lightsSel]

set_property IOSTANDARD LVCMOS18 [get_ports lightsOut_R0]
set_property IOSTANDARD LVCMOS18 [get_ports lightsOut_R1]
set_property IOSTANDARD LVCMOS18 [get_ports lightsOut_R2]
set_property IOSTANDARD LVCMOS18 [get_ports lightsOut_R3]
set_property IOSTANDARD LVCMOS18 [get_ports lightsOut_R4]
set_property IOSTANDARD LVCMOS18 [get_ports lightsOut_R5]
set_property IOSTANDARD LVCMOS18 [get_ports lightsOut_R6]
set_property IOSTANDARD LVCMOS18 [get_ports lightsOut_R7]
set_property IOSTANDARD LVCMOS18 [get_ports lightsOut_G0]
set_property IOSTANDARD LVCMOS18 [get_ports lightsOut_G1]
set_property IOSTANDARD LVCMOS18 [get_ports lightsOut_G2]
set_property IOSTANDARD LVCMOS18 [get_ports lightsOut_G3]
set_property IOSTANDARD LVCMOS18 [get_ports lightsOut_G4]
set_property IOSTANDARD LVCMOS18 [get_ports lightsOut_G5]
set_property IOSTANDARD LVCMOS18 [get_ports lightsOut_G6]
set_property IOSTANDARD LVCMOS18 [get_ports lightsOut_G7]
set_property IOSTANDARD LVCMOS18 [get_ports lightsOut_B0]
set_property IOSTANDARD LVCMOS18 [get_ports lightsOut_B1]
set_property IOSTANDARD LVCMOS18 [get_ports lightsOut_B2]
set_property IOSTANDARD LVCMOS18 [get_ports lightsOut_B3]
set_property IOSTANDARD LVCMOS18 [get_ports lightsOut_B4]
set_property IOSTANDARD LVCMOS18 [get_ports lightsOut_B5]
set_property IOSTANDARD LVCMOS18 [get_ports lightsOut_B6]
set_property IOSTANDARD LVCMOS18 [get_ports lightsOut_B7]

set_property IOSTANDARD LVCMOS18 [get_ports threshold_0]
set_property IOSTANDARD LVCMOS18 [get_ports threshold_1]
set_property IOSTANDARD LVCMOS18 [get_ports threshold_2]
set_property IOSTANDARD LVCMOS18 [get_ports threshold_3]
set_property IOSTANDARD LVCMOS18 [get_ports threshold_4]
set_property IOSTANDARD LVCMOS18 [get_ports threshold_5]

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
