M201 X500.00 Y500.00    ; Reduce acceleration for homing moves

; BLTouch
;M280 P0 S160           ; Precautionary alarm release
;M280 P0 S90            ; Ensure the pin is raised

G91                     ; Relative positioning
G1 H2 Z5 F6000          ; Lift Z relative to current position
G1 H1 X-625 Y605 F1800  ; Move quickly to X and Y axis endstops and stop there (first pass)



G1 X3 Y-3 F600          ; Go back a few mm

G1 H1 X-625 Y605 F360   ; Move slowly to X and Y axis endstops once more (second pass)
G1 H1 X-625 F360        ; Move slowly to X and Y axis endstops once more (second pass)
G1 H1 Y605 F360         ; Move slowly to X and Y axis endstops once more (second pass)

M201 X3000 Y3000        ; Return to full acceleration

G90                     ; Absolute positioning
G1 X150 Y150 F10000     ; Go to the center of the bed (300x300)
;G1 X200 Y200 F10000    ; Go to the center of the bed (400x400)
;G1 X250 Y250 F10000    ; Go to the center of the bed (500x500)
G30                     ; Home Z by probing the bed

G91                     ; Relative positioning
G1 Z5 F100              ; Lift Z relative to current position
G90                     ; Absolute positioning
