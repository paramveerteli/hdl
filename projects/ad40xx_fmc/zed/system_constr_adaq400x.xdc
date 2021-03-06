
# adaq400x PMOD SPI interface - the PMOD JA1 is used

set_property -dict {PACKAGE_PIN AA11 IOSTANDARD LVCMOS33} [get_ports adaq400x_spi_sdo]       ; ## JA2
set_property -dict {PACKAGE_PIN Y10  IOSTANDARD LVCMOS33} [get_ports adaq400x_spi_sdi]       ; ## JA3
set_property -dict {PACKAGE_PIN AA9  IOSTANDARD LVCMOS33} [get_ports adaq400x_spi_sclk]      ; ## JA4
set_property -dict {PACKAGE_PIN Y11  IOSTANDARD LVCMOS33} [get_ports adaq400x_spi_cs]        ; ## JA1

set_multicycle_path 2 -setup -from [get_pins -hierarchical -filter {NAME=~*/i_sdo_fifo/i_mem/m_ram_reg/CLKARDCLK}] -to [get_pins -hierarchical -filter {NAME=~*/data_sdo_shift_reg[*]/D}]
set_multicycle_path 1 -hold -from [get_pins -hierarchical -filter {NAME=~*/i_sdo_fifo/i_mem/m_ram_reg/CLKARDCLK}] -to [get_pins -hierarchical -filter {NAME=~*/data_sdo_shift_reg[*]/D}] 
