set restore_db_file_check 0
restoreDesign DESIGN/init.inn.dat picosoc

defIn scripts/picosoc_fp2.def




source scripts/pin3.tcl


checkPinAssignment
legalizePin
addWellTap -cell FILL2 -cellInterval 20 -checkerBoard
saveDesign DESIGN/fp2.inn
exit

saveDesign DESIGN/fp2.inn

