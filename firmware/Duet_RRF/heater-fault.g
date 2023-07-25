M291 R"Heater fault" P{"Heater fault detected on heater " ^ param.D} S0 T3
G4 S3
echo "Heater fault"
echo param.S
if state.status="processing"
	M25 ; pause print
M0 ; shut down printer
