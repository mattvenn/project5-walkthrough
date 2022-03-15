# User config
set ::env(DESIGN_NAME) rgb_mixer

# Change if needed
set ::env(VERILOG_FILES) [glob $::env(DESIGN_DIR)/../../verilog/rtl/rgb_mixer/src/*.v]

set ::env(PL_TARGET_DENSITY) 0.4
set ::env(FP_CORE_UTIL) 30

set ::env(DESIGN_IS_CORE) 0
set ::env(RT_MAX_LAYER) {met4}

set ::env(VDD_NETS) [list {vccd1}]
set ::env(GND_NETS) [list {vssd1}]

set ::env(FP_SIZING) absolute
set ::env(DIE_AREA) "0 0 100 250"

# Fill this
set ::env(CLOCK_PERIOD) "10"
set ::env(CLOCK_PORT) "clk"

set filename $::env(DESIGN_DIR)/$::env(PDK)_$::env(STD_CELL_LIBRARY)_config.tcl
if { [file exists $filename] == 1} {
	source $filename
}

