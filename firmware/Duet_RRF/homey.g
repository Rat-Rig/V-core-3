M201 X500.00 Y500.00    ; Reduce acceleration for homing moves

G91                     ; Relative positioning
G1 H2 Z5 F6000          ; Lift Z relative to current position

G1 H1 Y605 F1800        ; Move quickly to Y endstop and stop there (first pass)
G1 Y-3 F600             ; Go back a few mm
G1 H1 Y605 F360         ; Move slowly to Y endstop once more (second pass)

M201 X3000 Y3000        ; Return to full acceleration

G1 H2 Z-5 F6000         ; Lower Z relative to current position
G90                     ; Absolute positioning
