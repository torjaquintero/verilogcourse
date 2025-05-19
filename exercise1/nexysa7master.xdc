## This file is a general .xdc for the Nexys A7-100T

## Switch
set_property -dict { PACKAGE_PIN J15   IOSTANDARD LVCMOS33 } [get_ports { in }]; #IO_L24N_T3_RS0_15 Sch=sw[0]

## LED
set_property -dict { PACKAGE_PIN H17   IOSTANDARD LVCMOS33 } [get_ports { out }]; #IO_L18P_T2_A24_15 Sch=led[0]
