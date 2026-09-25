# -------------------------------------------------------------------------
# 1. I/O Voltage Standards (Resolves DRC NSTD-1)
# -------------------------------------------------------------------------
# Set all ports to 3.3V Low-Voltage CMOS (adjust if your board uses 1.8V or 2.5V)
set_property IOSTANDARD LVCMOS33 [get_ports {a[*] b[*] sel[*] result[*] zero}]

# -------------------------------------------------------------------------
# 2. Pin Location Constraints (Resolves DRC UCIO-1)
# -------------------------------------------------------------------------
# Operand A (Map to 4 Slide Switches)
set_property PACKAGE_PIN PIN_NAME [get_ports {a[0]}]
set_property PACKAGE_PIN PIN_NAME [get_ports {a[1]}]
set_property PACKAGE_PIN PIN_NAME [get_ports {a[2]}]
set_property PACKAGE_PIN PIN_NAME [get_ports {a[3]}]

# Operand B (Map to 4 Slide Switches)
set_property PACKAGE_PIN PIN_NAME [get_ports {b[0]}]
# ... continue for b[1], b[2], b[3]

# Select Lines (Map to 3 Slide Switches or Push Buttons)
set_property PACKAGE_PIN PIN_NAME [get_ports {sel[0]}]
# ... continue for sel[1], sel[2]

# Result (Map to 4 LEDs)
set_property PACKAGE_PIN PIN_NAME [get_ports {result[0]}]
# ... continue for result[1], result[2], result[3]

# Zero Flag (Map to 1 LED)
set_property PACKAGE_PIN PIN_NAME [get_ports zero]