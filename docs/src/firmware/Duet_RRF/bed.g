; this script compensates for what the Z offset is
; so if G31 P500 X-30 Y-15 Z1.7 then first probe will be at
; X30 Y20 (when G30 P0 X0 Y5)

M561 ; clear any bed transform

G30 P0 X5 Y5 Z-99999 ; probe near a leadscrew
G30 P1 X150 Y285 Z-99999 ; probe near a leadscrew
G30 P2 X270 Y5 Z-99999 S3 ; probe near a leadscrew and calibrate 3 motors

G29  ; probe the bed and enable compensation
