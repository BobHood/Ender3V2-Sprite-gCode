; Professional Firmware Configuration File
;=====================================================
C10                    ; Mark as a configuration file
M117 Applying configuration
;-----------------------------------------------------
M256 B150              ; Set Brightness
M413 S0                ; Disable Powerloss recovery
M603 L200.00 U200.00   ; Configure Filament Change
C851 S800 M0           ; Probe feedrate and disable multiple probing
C29 L25.00 R195.00 F25.00 B195.00 N5 T50 ; Set Mesh insets, size of 5x5 and bed at 50°C
C100 X0 Y0             ; Set XY Min position to 0
C101 X230 Y230 Z240    ; Set XYZ Max position
C102 X220 Y220         ; Set a bed size of 220x220
C412 M0                ; Filament sensor active mode: LOW
M500                   ; Save all settings
;-----------------------------------------------------
G4 S1                  ; Wait a second
M300 P200              ; Beep
M117 Configuration Applied
