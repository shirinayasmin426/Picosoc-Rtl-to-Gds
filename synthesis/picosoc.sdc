# ####################################################################

#  Created by Genus(TM) Synthesis Solution 21.18-s082_1 on Mon Aug 03 18:40:31 +06 2026

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design picosoc

create_clock -name "clk" -period 10.2 -waveform {0.0 5.1} [get_ports clk]
set_clock_gating_check -setup 0.0 
