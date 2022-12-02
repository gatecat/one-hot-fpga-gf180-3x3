# SPDX-FileCopyrightText: 2020 Efabless Corporation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# SPDX-License-Identifier: Apache-2.0

set ::env(PDK) "gf180mcuC"
set ::env(STD_CELL_LIBRARY) "gf180mcu_fd_sc_mcu7t5v0"

set ::env(DESIGN_NAME) user_proj_example

set ::env(VERILOG_FILES) "\
	$::env(DESIGN_DIR)/../../verilog/rtl/defines.v \
	$::env(DESIGN_DIR)/../../verilog/rtl/eFPGA_top.v \
	$::env(DESIGN_DIR)/../../verilog/rtl/fabric.v \
	$::env(DESIGN_DIR)/../../verilog/rtl/models_pack.v \
	$::env(DESIGN_DIR)/../../verilog/rtl/wrapper_gf180.v"

set ::env(DESIGN_IS_CORE) 1

## Clock configurations
set ::env(CLOCK_PORT) {io_in[5]}
set ::env(CLOCK_NET) {io_in[5]}
set ::env(CLOCK_PERIOD) 100

set ::env(PL_MAX_DISPLACEMENT_X) 1000
set ::env(PL_MAX_DISPLACEMENT_Y) 1000
set ::env(GLB_RESIZER_TIMING_OPTIMIZATIONS) 0
set ::env(GRT_ALLOW_CONGESTION) 1

set ::env(FP_SIZING) absolute
set ::env(DIE_AREA) "0 0 1700 1700"

set ::env(FP_PIN_ORDER_CFG) $::env(DESIGN_DIR)/pin_order.cfg
set ::env(MACRO_PLACEMENT_CFG) $::env(DESIGN_DIR)/macro.cfg

set ::env(FP_PDN_MACRO_HOOKS) "\
    Inst_eFPGA_top.Inst_eFPGA.Tile_X1Y0_N_term_single vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X2Y0_N_term_single vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X3Y0_N_term_single vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X0Y1_W_IO vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X1Y1_LUT4AB vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X2Y1_LUT4AB vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X3Y1_LUT4AB vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X4Y1_E_IO vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X0Y2_W_IO vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X1Y2_LUT4AB vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X2Y2_LUT4AB vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X3Y2_LUT4AB vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X4Y2_E_IO vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X0Y3_W_IO vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X1Y3_LUT4AB vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X2Y3_LUT4AB vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X3Y3_LUT4AB vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X4Y3_E_IO vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X1Y4_S_term_single vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X2Y4_S_term_single vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X3Y4_S_term_single vdd vss vdd vss"

set ::env(VERILOG_FILES_BLACKBOX) [glob $::env(DESIGN_DIR)/macros/verilog/*.v]

set ::env(EXTRA_LEFS) "[glob $::env(DESIGN_DIR)/macros/lef/*.lef] $::env(DESIGN_DIR)/bitcell/gf180mcu_fpga_bitmux.lef"

set ::env(EXTRA_GDS_FILES) "[glob $::env(DESIGN_DIR)/macros/gds/*.gds] $::env(DESIGN_DIR)/bitcell/gf180mcu_fpga_bitmux.gds"

set ::env(FP_PDN_CHECK_NODES) 0

# set ::env(PL_BASIC_PLACEMENT) 0
set ::env(PL_TARGET_DENSITY) 0.5

set ::env(FP_CORE_UTIL) 40

set ::env(SYNTH_MAX_FANOUT) 4

# Maximum layer used for routing is metal 4.
# This is because this macro will be inserted in a top level (user_project_wrapper) 
# where the PDN is planned on metal 5. So, to avoid having shorts between routes
# in this macro and the top level metal 5 stripes, we have to restrict routes to metal4.  
# 
set ::env(RT_MAX_LAYER) {Metal4}

# You can draw more power domains if you need to 
set ::env(VDD_NETS) [list {vdd}]
set ::env(GND_NETS) [list {vss}]

set ::env(DIODE_INSERTION_STRATEGY) 4 
# If you're going to use multiple power domains, then disable cvc run.
set ::env(RUN_CVC) 1

# FP_PDN_HPITCH_MULT is an integer. Minimum value is 0.
set ::env(FP_PDN_HPITCH_MULT) 1

##
# PDN Vertical Pitch. Can be changed to any value.
set ::env(FP_PDN_VPITCH) 90

##
# PDN vertical Offset. Can be changed to any value.
set ::env(FP_PDN_VOFFSET) 5