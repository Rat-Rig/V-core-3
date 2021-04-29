; BLTouch
;M280 P0 S160           ; Precautionary alarm release
;M280 P0 S90            ; Ensure the pin is raised

G91               ; relative positioning
G1 H2 Z5 F6000    ; lift Z relative to current position
G90               ; absolute positioning
G1 X150 Y150 F10000 ; go to first probe point
G30               ; home Z by probing the bed

; Uncomment the following lines to lift Z after probing
;G91              ; relative positioning
;G1 Z5 F100       ; lift Z relative to current position
;G90              ; absolute positioning

