############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project proj_stable_content
set_top example
add_files example.cpp
add_files -tb example_test.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xcvu9p-flga2104-2-i}
create_clock -period 75MHz -name default
#source "./proj_stable_content/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
