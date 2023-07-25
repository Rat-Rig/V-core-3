; BLTouch
;M280 P0 S160           ; Precautionary alarm release
;M280 P0 S90            ; Ensure the pin is raised

G91                     ; Relative positioning
G1 H2 Z5 F6000          ; Lift Z relative to current position

G90                     ; Absolute positioning
G1 X150 Y150 F10000     ; Go to the center of the bed (300x300)
;G1 X200 Y200 F10000    ; Go to the center of the bed (400x400)
;G1 X250 Y250 F10000    ; Go to the center of the bed (500x500)
G30                     ; Home Z by probing the bed

; Uncomment the following lines to lift Z after probing
;G91                     ; Relative positioning
;G1 Z5 F100              ; Lift Z relative to current position
;G90                     ; Absolute positioning
