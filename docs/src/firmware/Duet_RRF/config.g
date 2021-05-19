; General preferences
G90                                     ; send absolute coordinates...
M83                                     ; ...but relative extruder moves
M550 P"V-Core 3"                        ; set printer name
M669 K1                                 ; CoreXY
G29 S1                                  ; Set Units to Millimeters

; Network
M552 P0.0.0.0 S1                        ; enable network and acquire dynamic address via DHCP
M586 P0 S1                              ; enable HTTP
M586 P1 S0                              ; disable FTP
M586 P2 S0                              ; disable Telnet

; Drives
M569 P0.0 S1 D3                         ; physical drive 0.0 goes forwards
M569 P0.1 S1 D3                         ; physical drive 0.1 goes forwards
M569 P0.2 S1 D3                         ; physical drive 0.2 goes forwards
M569 P0.3 S1 D3                         ; physical drive 0.3 goes forwards
M569 P0.4 S1 D3                         ; physical drive 0.4 goes forwards
M569 P0.5 S1 D3                         ; physical drive 0.5 goes forwards
M584 X0.4 Y0.3 Z0.0:0.1:0.2 E0.5        ; set drive mapping
M350 X16 Y16 Z16 E16 I1                 ; configure microstepping with interpolation

M92 X80.00 Y80.00 Z800.00               ; set steps per mm
M906 X1000 Y1000 Z800 I30               ; set motor currents (mA) and motor idle factor in per cent
M84 S30                                 ; Set idle timeout

M566 X400.00 Y400.00 Z6.00 E120.00 P1          ; set maximum instantaneous speed changes (mm/min)
M203 X10800.00 Y10800.00 Z1000.00 E3600.00     ; set maximum speeds (mm/min)
M201 X3000.00 Y3000.00 Z100.00 E3600.00        ; set accelerations (mm/s^2)

; Axis Limits
M208 X0 Y0 Z0 S1                               ; set axis minima
M208 X310 Y300 Z300 S0                         ; set axis maxima

; Endstops
M574 X1 S1 P"io1.in"                           ; configure active high endstops
M574 Y2 S1 P"io0.in"                           ; configure active high endstops
M574 Z1 S2                                     ; configure Z-probe endstop for low end on Z

M671 X-4.5:150:304.5 Y-4.52:305:-4.52 S5       ; define positions of Z leadscrews or bed levelling screws
M557 X30:300 Y15:300 P5                        ; define 5x5 mesh grid

; Heaters
M308 S0 P"temp0" Y"thermistor" T100000 B3950 A"Bed"    ; configure sensor 0 as thermistor on pin temp0
M950 H0 C"out0" T0                                     ; create bed heater output on out5 and map it to sensor 0
M307 H0 B0 S1.00                                       ; disable bang-bang mode for the bed heater and set PWM limit
M140 H0                                                ; map heated bed to heater 0
M143 H0 S110                                           ; set temperature limit for heater 0 to 110C

;; Run Bed PID Tune!! Bellow is an example for a 300x300 bed
;; M307 H0 A303.1 C356.7 D1.4 S1.00 V24.0 B0

; Fans
M950 F0 C"out3" Q500                   ; create fan 0 on pin out3 and set its frequency
M106 P0 C"Hotend Fan" S0 H1 T45 L255   ; set fan 0 name and value. Thermostatic control turned on for Hotend
M950 F1 C"out4" Q500                   ; create fan 1 on pin out4 and set its frequency
M106 P1 C"Layer Fan" S0 H-1 L255       ; set fan 1 name and value. Thermostatic control is turned off

; Tools
M563 P0 D0 H1 F1           ; define tool 0
G10 P0 X0 Y0 Z0            ; set tool 0 axis offsets
G10 P0 R0 S0               ; set initial tool 0 active and standby temperatures to 0C

M950 H1 C"out1" T1         ; create nozzle heater output on out2 and map it to sensor 1
M307 H1 B0 S1.00           ; disable bang-bang mode for heater and set PWM limit
M143 H1 S250               ; set the maximum temperature in C for heater

; EVA 2 / BMG / E3D V6

M92 E830          ; set extruder steps per mm, 0.9 angle/step (LDO Pancake)
M906 E800         ; set extruder motor current (mA) and idle factor in per cent

M308 S1 P"temp1" Y"thermistor" T100000 B4725 C7.060000e-8 A"Hotend"  
;; Run Heater PID Tune!! 
;; M307 H1 A751.5 C196.6 D4.7 S1.00 V23.9 B0

; Z-Probe
;; Inductive Probe
; M558 P5 C"!io3.in" H5 F400 T5000       ; set Z probe type to unmodulated and the dive height + speeds
; G31 P500 X-30 Y-15 Z0.20               ; set Z probe trigger value, offset and trigger height, more Z means closer to the bed
;; BLTouch
; M950 S0 C"io2.out"                     ; Create a servo pin on io2
; M558 P9 C"io2.in" H5 F500 T10800 A5    ; set Z probe type to unmodulated and the dive height + speeds
; G31 P25 X-28.00 Y-13.00 Z0.90          ; set Z probe trigger value, offset and trigger height, more Z means closer to the bed

M404 N1.75 D0.4                                 ; Filament width and nozzle diameter
T0

; Pressure Advance
; M572 D0 S0.10
