onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider Input
add wave -noupdate -radix decimal /tb_converter_c2_to_decimal/number
add wave -noupdate -divider {Seven segments}
add wave -noupdate -color Gold /tb_converter_c2_to_decimal/hundreds
add wave -noupdate -color Gold /tb_converter_c2_to_decimal/tens
add wave -noupdate -color Gold /tb_converter_c2_to_decimal/units
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {7 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {19 ps}
