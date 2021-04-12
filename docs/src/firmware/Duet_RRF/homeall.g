G91                     ; relative positioning
G1 H2 Z5 F6000          ; lift Z relative to current position
G1 H1 X-425 Y305 F3600 ; move quickly to X and U axis endstops and stop there (first pass)
G1 H1 X-425 F1800 ; move quickly to X and U axis endstops and stop there (first pass)
G1 H1 Y305 F1800 ; move quickly to X and U axis endstops and stop there (first pass)
G1 H2 X5 Y5 F6000       ; go back a few mm
G1 H1 X-425 Y305 F360  ; move slowly to X and U axis endstops once more (second pass)
G1 H1 X-425 F360  ; move slowly to X and U axis endstops once more (second pass)
G1 H1 Y305 F360  ; move slowly to X and U axis endstops once more (second pass)

G90                     ; absolute positioning
G1 X150 Y150 F10000 ; go to first probe point
G30                     ; home Z by probing the bed

G91                    ; relative positioning
G1 Z5 F100             ; lift Z relative to current position
G90                    ; absolute positioning
G1 X0 Y0 F10000

