G91
G0 Z10
G90

; move print bed out from under heater in case of heater fault and to present the print
G0 X{move.axes[0].max}

; disable heaters

M568 P0 A0
M140 S-273.1

; disable part cooling fan

M106 S0
