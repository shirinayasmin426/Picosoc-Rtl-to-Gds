set init_gnd_net VSS
set init_pwr_net VDD

set init_lef_file {/pdk/sky130_scl_9T_0.1.2/sky130_scl_9T_tech/lef/sky130_scl_9T.tlef \
/pdk/sky130_scl_9T_0.1.2/sky130_scl_9T_tech/lef/sky130_scl_9T_phyCells.lef \
/pdk/sky130_scl_9T_0.1.2/sky130_scl_9T/lef/sky130_scl_9T.lef \
/pdk/sky130_scl_9T_0.1.2/sky130_scl_9T_LP/lef/sky130_scl_9T_LP.lef \
/pdk/sky130_scl_9T_0.1.2/sky130_scl_9T_HS/lef/sky130_scl_9T_HS.lef \
/pnr_training/WORK_BATCH1/REFERENCE/FINAL_PROJECT/ram/sky130_sram_4kbyte/lef/sky130_sram_4kbyte_1rw1r_32x1024_8.lef \
/pnr_training/WORK_BATCH1/REFERENCE/FINAL_PROJECT/ram/sky130_sram_2kbyte/lef/sky130_sram_2kbyte_1rw1r_32x512_8.lef }

set init_verilog /pnr_training/WORK_BATCH1/shiri_41/final_project/synthesis/test1/output/opt.v
set init_top_cell picosoc
set init_mmmc_file scripts/viewDefinition.tcl
init_design
saveDesign DESIGN/init.inn
#exit
