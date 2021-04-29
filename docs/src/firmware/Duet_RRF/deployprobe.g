; deployprobe.g
; Called to deploy a physical Z probe
;
M280 P0 S10															; Deploy the BLTouch pin
G4 P200																; Pause for 200ms
M280 P0 S60															; Enable touch switch mode
