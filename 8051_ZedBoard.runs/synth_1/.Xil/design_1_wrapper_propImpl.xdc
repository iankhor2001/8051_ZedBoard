set_property SRC_FILE_INFO {cfile:c:/Users/iankh/Documents/NTHU/8051/Project/8051_ZedBoard/8051_ZedBoard.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1/design_1_processing_system7_0_1/design_1_processing_system7_0_1_in_context.xdc rfile:../../../8051_ZedBoard.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1/design_1_processing_system7_0_1/design_1_processing_system7_0_1_in_context.xdc id:1 order:EARLY scoped_inst:design_1_i/processing_system7_0} [current_design]
set_property SRC_FILE_INFO {cfile:C:/Users/iankh/Documents/NTHU/8051/Project/8051_ZedBoard/8051_ZedBoard.srcs/constrs_1/imports/new/oc8051.xdc rfile:../../../8051_ZedBoard.srcs/constrs_1/imports/new/oc8051.xdc id:2} [current_design]
current_instance design_1_i/processing_system7_0
set_property src_info {type:SCOPED_XDC file:1 line:2 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 10.000 [get_ports {}]
current_instance
set_property src_info {type:XDC file:2 line:82 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN Y9 [get_ports {clk_100M}];  # "GCLK"
set_property src_info {type:XDC file:2 line:175 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN T22 [get_ports {internal_addr[7]}];  # "LD0"
set_property src_info {type:XDC file:2 line:176 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN T21 [get_ports {internal_addr[6]}];  # "LD1"
set_property src_info {type:XDC file:2 line:177 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN U22 [get_ports {internal_addr[5]}];  # "LD2"
set_property src_info {type:XDC file:2 line:178 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN U21 [get_ports {internal_addr[4]}];  # "LD3"
set_property src_info {type:XDC file:2 line:179 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN V22 [get_ports {internal_addr[3]}];  # "LD4"
set_property src_info {type:XDC file:2 line:180 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN W22 [get_ports {internal_addr[2]}];  # "LD5"
set_property src_info {type:XDC file:2 line:181 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN U19 [get_ports {internal_addr[1]}];  # "LD6"
set_property src_info {type:XDC file:2 line:182 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN U14 [get_ports {internal_addr[0]}];  # "LD7"
set_property src_info {type:XDC file:2 line:205 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN P16 [get_ports {rst}];  # "BTNC"
set_property src_info {type:XDC file:2 line:362 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 33]];
set_property src_info {type:XDC file:2 line:367 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS18 [get_ports -of_objects [get_iobanks 34]];
set_property src_info {type:XDC file:2 line:372 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS18 [get_ports -of_objects [get_iobanks 35]];
set_property src_info {type:XDC file:2 line:375 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 13]];
