## ============================================================
## Project  : 2-Input AND Gate
## Board    : Digilent Cmod A7-35T (Artix-7)
## File     : and_gate.xdc
## Author   : Basil
## Date     : Sept 2026
## ============================================================

## ── CLOCK (not needed for pure combinational, but good habit) ──
## 12 MHz onboard oscillator
set_property PACKAGE_PIN L17        [get_ports clk]
set_property IOSTANDARD  LVCMOS33   [get_ports clk]
create_clock -period 83.333 -name sys_clk [get_ports clk]

## ── INPUTS ────────────────────────────────────────────────────
## Using DIP switches or GPIO pins as A and B inputs

## Input A → Pin 47 (GPIO Header Pin 1)
set_property PACKAGE_PIN M3         [get_ports a]
set_property IOSTANDARD  LVCMOS33   [get_ports a]

## Input B → Pin 48 (GPIO Header Pin 2)
set_property PACKAGE_PIN L3         [get_ports b]
set_property IOSTANDARD  LVCMOS33   [get_ports b]

## ── OUTPUT ────────────────────────────────────────────────────
## Output Y → Onboard LED0 (easiest to see result)
set_property PACKAGE_PIN A17        [get_ports y]
set_property IOSTANDARD  LVCMOS33   [get_ports y]