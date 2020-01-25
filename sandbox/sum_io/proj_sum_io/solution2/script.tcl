############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project proj_sum_io
set_top sum_io
add_files sum_io.c
add_files -tb sum_io_test.c
open_solution "solution2"
set_part {xc7a35tcpg236-1}
create_clock -period 4 -name default
config_sdx -optimization_level none -target none
config_export -vivado_optimization_level 2
source "./proj_sum_io/solution2/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
