# Picosoc-Rtl-to-Gds

Complete RTL-to-GDS physical design flow for the PicoSoC core on SkyWater Sky130 (90nm). Covers synthesis, floorplanning, placement, CTS, routing, power integrity, formal equivalence checking, and STA signoff using Cadence Genus, Innovus, Pegasus, Voltus, Conformal LEC & Tempus.

## Overview

This project documents an independent, end-to-end ASIC physical design implementation of the PicoSoC core, carried out as part of hands-on training at Ulkasemi VLSI Training Institute. The goal was to gain practical experience with the complete Place & Route (PNR) flow — from RTL synthesis through GDS signoff — using industry-standard Cadence EDA tools on the open-source SkyWater Sky130 process.

## Design Details

- **Core:** PicoSoC
- **Process:** SkyWater Sky130 (90nm functional mode)
- **Memory macros integrated:** 2× sram_2kbyte, 2× sram_4kbyte

## Flow & Tools

| Stage | Tool | Description |
|---|---|---|
| Logic Synthesis | Cadence Genus | RTL to gate-level netlist, optimized for area/timing/power |
| Floorplanning & Placement | Cadence Innovus | Die/core layout, power planning, standard-cell & macro placement |
| Clock Tree Synthesis (CTS) | Cadence Innovus | Clock distribution and skew optimization |
| Routing | Cadence Innovus | Signal and power routing |
| Physical Verification | Cadence Pegasus | DRC (design rule checking) and LVS (layout vs. schematic) |
| Power Integrity | Cadence Voltus | IR drop and power distribution network analysis |
| Formal Equivalence Checking | Cadence Conformal LEC | Verifies logical correctness preserved across flow stages |
| Static Timing Analysis & Signoff | Cadence Tempus | Timing closure across corners |

## Repository Structure

picosoc-rtl-to-gds/
├── synthesis/ # Genus scripts, constraints, synthesis reports
├── floorplan/ # Floorplan and power planning files
├── placement/ # Placement scripts and reports
├── cts/ # Clock tree synthesis scripts and reports
├── routing/ # Routing scripts and reports
├── verification/ # DRC/LVS reports (Pegasus)
├── power/ # Power integrity reports (Voltus)
├── lec/ # Formal equivalence checking logs (Conformal LEC)
├── sta/ # Timing reports and signoff (Tempus)
├── docs/ # Layout screenshots, summary notes
└── README.md

## Key Highlights

- Executed a complete RTL-to-GDS flow from synthesis through signoff
- Achieved timing-driven placement and routing to meet setup/hold constraints
- Integrated multiple SRAM macros, gaining hands-on experience in memory-aware floorplanning
- Verified layout manufacturability through DRC/LVS clean checks
- Confirmed logical equivalence and timing closure through formal and static analysis

## 📊 Project Presentation

View the full presentation covering methodology, flow, and results:
[last_presentation.pptx](docs/last_presentation.pptx)
  
## About Me

Physical Design graduate trainee with hands-on experience in the ASIC RTL-to-GDS flow using Cadence EDA tools. Open to entry-level PNR / Physical Design Engineer roles.

📧 shirinayasmin426@gmail.com
