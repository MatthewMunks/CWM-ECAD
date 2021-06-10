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
set_property IOSTANDARD LVCMOS18 [get_ports heating]
set_property IOSTANDARD LVCMOS18 [get_ports cooling]
set_property IOSTANDARD LVCMOS18 [get_ports temperature_0]
set_property IOSTANDARD LVCMOS18 [get_ports temperature_1]
set_property IOSTANDARD LVCMOS18 [get_ports temperature_2]
set_property IOSTANDARD LVCMOS18 [get_ports temperature_3]
set_property IOSTANDARD LVCMOS18 [get_ports temperature_4]


create_clock -name sys_clk -period 10 [get_ports ckl_p]
set_clock_groups -asynchronous -group [get_clocks sys_clk -include_generated_clocks]
#run report_clocks and study the report generated to check it's correct!
report_clocks

