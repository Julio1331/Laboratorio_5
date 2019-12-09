onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tbmsj_y_salida_apart/tbenviar
add wave -noupdate /tbmsj_y_salida_apart/tbselect_msj
add wave -noupdate /tbmsj_y_salida_apart/tbselect_vel
add wave -noupdate /tbmsj_y_salida_apart/tbsalida_serie
add wave -noupdate /tbmsj_y_salida_apart/tbreset
add wave -noupdate /tbmsj_y_salida_apart/tbclk
add wave -noupdate /tbmsj_y_salida_apart/cont
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {484448150000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 258
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
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
WaveRestoreZoom {0 ps} {5381202099 ns}
