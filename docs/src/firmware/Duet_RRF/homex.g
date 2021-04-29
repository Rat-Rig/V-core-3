G91               ; relative positioning
;G1 H2 Z5 F6000    ; lift Z relative to current position
G1 H1 X-625 F1800 ; move quickly to X axis endstop and stop there (first pass)
G1 H2 X5 F6000    ; go back a few mm
G1 H1 X-625 F360  ; move slowly to X axis endstop once more (second pass)
;G1 H2 Z-5 F6000   ; lower Z again
G90               ; absolute positioning

G1 X0 F6000
