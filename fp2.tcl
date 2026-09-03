set restore_db_file_check 0
restoreDesign DESIGN/init.inn.dat picosoc
floorPlan -site CoreSite -s 530 530 10 10 10 10

setDesignMode -topRoutingLayer 4
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer met5 -stacked_via_bottom_layer met1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {VDD VSS} -type core_rings -follow core -layer {top met5 bottom met5 left met5 right met5} -width {top 2 bottom 2 left 2 right 2} -spacing {top 1.8 bottom 1.8 left 1.8 right 1.8} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None

setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target ring -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer met5 -stacked_via_bottom_layer met1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
addStripe -nets {VDD VSS} -layer met4 -direction vertical -width 2 -spacing 1 -number_of_sets 9 -start_from left -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit met5 -padcore_ring_bottom_layer_limit met1 -block_ring_top_layer_limit met5 -block_ring_bottom_layer_limit met1 -use_wire_group 0 -snap_wire_center_to_grid None

setSrouteMode -viaConnectToShape { noshape }
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { met1(1) met5(5) } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { met1(1) met5(5) } -nets { VDD VSS } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { met1(1) met5(5) }


editPowerVia -skip_via_on_pin Standardcell -bottom_layer met1 -nets {VDD VSS} -add_vias 1 -top_layer met4

editPin -fixOverlap 1 -unit TRACK -spreadDirection clockwise -side Left -layer 1 -spreadType center -spacing 2.0 -pin {CLK RES {XXATAI[0]} {XXATAI[1]} {XXATAI[2]} {XXATAI[3]} {XXATAI[4]} {XXATAI[5]} {XXATAI[6]} {XXATAI[7]} {XXATAI[8]} {XXATAI[9]} {XXATAI[10]} {XXATAI[11]} {XXATAI[12]} {XXATAI[13]} {XXATAI[14]} {XXATAI[15]} {XXATAI[16]} {XXATAI[17]} {XXATAI[18]} {XXATAI[19]} {XXATAI[20]} {XXATAI[21]} {XXATAI[22]} {XXATAI[23]} {XXATAI[24]} {XXATAI[25]} {XXATAI[26]} {XXATAI[27]} {XXATAI[28]} {XXATAI[29]} {XXATAI[30]} {XXATAI[31]} XXDACK {YDATA[0]} {YDATA[1]} {YDATA[2]} {YDATA[3]} {YDATA[4]} {YDATA[5]} {YDATA[6]} {YDATA[7]} {YDATA[8]} {YDATA[9]} {YDATA[10]} {YDATA[11]} {YDATA[12]} {YDATA[13]} {YDATA[14]} {YDATA[15]} {YDATA[16]} {YDATA[17]} {YDATA[18]} {YDATA[19]} {YDATA[20]} {YDATA[21]} {YDATA[22]} {YDATA[23]} {YDATA[24]} {YDATA[25]} {YDATA[26]} {YDATA[27]} {YDATA[28]} {YDATA[29]} {YDATA[30]} {YDATA[31]} YDACK}

editPin -fixOverlap 1 -unit TRACK -spreadDirection clockwise -side Right -layer 1 -spreadType center -spacing 2 -pin {{DEBUG[0]} {DEBUG[1]} {DEBUG[2]} {DEBUG[3]} HLT {XXADDR[0]} {XXADDR[1]} {XXADDR[2]} {XXADDR[3]} {XXADDR[4]} {XXADDR[5]} {XXADDR[6]} {XXADDR[7]} {XXADDR[8]} {XXADDR[9]} {XXADDR[10]} {XXADDR[11]} {XXADDR[12]} {XXADDR[13]} {XXADDR[14]} {XXADDR[15]} {XXADDR[16]} {XXADDR[17]} {XXADDR[18]} {XXADDR[19]} {XXADDR[20]} {XXADDR[21]} {XXADDR[22]} {XXADDR[23]} {XXADDR[24]} {XXADDR[25]} {XXADDR[26]} {XXADDR[27]} {XXADDR[28]} {XXADDR[29]} {XXADDR[30]} {XXADDR[31]} {XXATAO[0]} {XXATAO[1]} {XXATAO[2]} {XXATAO[3]} {XXATAO[4]} {XXATAO[5]} {XXATAO[6]} {XXATAO[7]} {XXATAO[8]} {XXATAO[9]} {XXATAO[10]} {XXATAO[11]} {XXATAO[12]} {XXATAO[13]} {XXATAO[14]} {XXATAO[15]} {XXATAO[16]} {XXATAO[17]} {XXATAO[18]} {XXATAO[19]} {XXATAO[20]} {XXATAO[21]} {XXATAO[22]} {XXATAO[23]} {XXATAO[24]} {XXATAO[25]} {XXATAO[26]} {XXATAO[27]} {XXATAO[28]} {XXATAO[29]} {XXATAO[30]} {XXATAO[31]} {XXBE[0]} {XXBE[1]} {XXBE[2]} {XXBE[3]} XXDREQ XXRD XXWR {YADDR[0]} {YADDR[1]} {YADDR[2]} {YADDR[3]} {YADDR[4]} {YADDR[5]} {YADDR[6]} {YADDR[7]} {YADDR[8]} {YADDR[9]} {YADDR[10]} {YADDR[11]} {YADDR[12]} {YADDR[13]} {YADDR[14]} {YADDR[15]} {YADDR[16]} {YADDR[17]} {YADDR[18]} {YADDR[19]} {YADDR[20]} {YADDR[21]} {YADDR[22]} {YADDR[23]} {YADDR[24]} {YADDR[25]} {YADDR[26]} {YADDR[27]} {YADDR[28]} {YADDR[29]} {YADDR[30]} {YADDR[31]} YDREQ}



checkPinAssignment
legalizePin
addWellTap -cell FILL2 -cellInterval 20 -checkerBoard
saveDesign DESIGN/fp2.inn
exit

saveDesign DESIGN/fp3.inn
saveDesign DESIGN/fp.inn

