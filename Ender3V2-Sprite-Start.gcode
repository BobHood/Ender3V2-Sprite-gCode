; Ender 3 Custom Start G-Code

M117 Set Heated bet to Material requirements
M140 S{material_bed_temperature_layer_0}    ; Set Heat Bed temperature
M190 S{material_bed_temperature_layer_0}    ; Wait for Heat Bed temperature

M117 Home All Axis
G28                                         ; Home all Axis

;M117 Start Universal Bed Leveling (; = Remmed Out)
;G29 A                                      ; Activate the UBL System.
;G29 L0                                     ; Load UBL at slot 0
;G29 J2                                     ; 4-point level
;G29 F10.0                                  ; Fade to 10mm
;G92 E0                                     ; Reset Extruder
; End UBL

;M117 Start CR-Touch Bed level (; = Remmed Out)
;M420 L0 S1                                 ; Loading the bed mesh
;G29                                        ; Auto bed-level (CR-Touch)
;G92 E0                                     ; Reset Extruder
; End Standard Bed level

M117 Set Extruder position for Priming start

G1 Z2.0 F3000                              ; Move Z Axis up little to prevent scratching of Heat Bed
G1 X0.1 Y20 Z.03 F5000.0                   ; Move to start position
G1 Z0.3 F3000                              ; move z back down a bit
M104 S{material_print_temperature_layer_0} ; Set Extruder temperature
M109 S{material_print_temperature_layer_0} ; Wait for Extruder temperature

M117 Draw Line Priming line
G1 X0.1 Y200.0 Z0.3 F1500.0 E15            ; Draw the first line
G1 X0.4 Y200.0 Z0.3 F5000.0                ; Move to side a little
G1 X0.4 Y20 Z0.3 F1500.0 E30               ; Draw the second line

M117 Priming Complete, Reset Extruder and set for Print start

G92 E0                                     ; Reset Extruder
G1 Z2.0 F3000                              ; Move Z Axis up little to prevent scratching of Heat Bed
G1 X5 Y20 Z0.3 F5000.0                     ; Move over to prevent blob squish

M117 Begin Print
M300 S300 P2000                            ; Play a tone to notify printing started

; End Custom Start GCode



;;;;; Original :;;;;;;
; Ender 3 Custom Start G-code
G92 E0 ; Reset Extruder
G28 ; Home all axes
M104 S{material_standby_temperature} ; Start heating up the nozzle most of the way
M190 S{material_bed_temperature_layer_0} ; Start heating the bed, wait until target temperature reached
M109 S{material_print_temperature_layer_0} ; Finish heating the nozzle
G1 Z2.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed
G1 X0.1 Y20 Z0.3 F5000.0 ; Move to start position
G1 X0.1 Y200.0 Z0.3 F1500.0 E15 ; Draw the first line
G1 X0.4 Y200.0 Z0.3 F5000.0 ; Move to side a little
G1 X0.4 Y20 Z0.3 F1500.0 E30 ; Draw the second line
G92 E0 ; Reset Extruder
G1 Z2.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed
G1 X5 Y20 Z0.3 F5000.0 ; Move over to prevent blob squish
