source ../scripts/fillercell.tcl
addFiller -cell $FILL
ecoRoute

#verify_drc -limit 9999999
#export design 
saveNetlist output/picosoc_pnr.v -includePhysicalinst -includePowerGround -excludeCellInst { FILL1 FILL2 FILL4 FILL8 FILL16 FILL32}
streamOut -merge "/pnr_training/WORK_BATCH1/REFERENCE/FINAL_PROJECT/ram/sky130_sram_4kbyte/gds/sky130_sram_4kbyte_1rw1r_32x1024_8.gds.gz /pnr_training/WORK_BATCH1/REFERENCE/FINAL_PROJECT/ram/sky130_sram_2kbyte/gds/sky130_sram_2kbyte_1rw1r_32x512_8.gds.gz /pdk/sky130_scl_9T_0.1.2/sky130_scl_9T/gds/sky130_scl_9T.gds /pdk/sky130_scl_9T_0.1.2/sky130_scl_9T_HS/gds/sky130_scl_9T_HS.gds /pdk/sky130_scl_9T_0.1.2/sky130_scl_9T_tech/gds/sky130_scl_9T_phyCells.gds /pdk/sky130_scl_9T_0.1.2/sky130_scl_9T_LP/gds/sky130_scl_9T_LP.gds " -mapFile /pdk/sky130_scl_9T_0.1.2/sky130_scl_9T/gds/sky130_stream.mapFile output/picosoc.gds


defOut -netlist -floorplan output/picosoc.def
write_lef_abstract -stripePin -PGPinLayers { 4 5 } output/picosoc.lef
set_analysis_view -setup func_typical_0_1v8 -hold func_typical_0_1v8
do_extract_model -view func_typical_0_1v8 output/picosoc_typical.lib

saveDesign DESIGN/route_drc.inn

