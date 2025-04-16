onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tbdecodificador/input_tb
add wave -noupdate /tbdecodificador/clk_tb
add wave -noupdate /tbdecodificador/rst_tb
add wave -noupdate -divider mod
add wave -noupdate /tbdecodificador/dut/dut_m/digito_m
add wave -noupdate /tbdecodificador/dut/dut_m/posicao_m
add wave -noupdate /tbdecodificador/dut/dut_m/rst_m
add wave -noupdate /tbdecodificador/dut/dut_m/clk_m
add wave -noupdate /tbdecodificador/dut/dut_m/entrada0
add wave -noupdate /tbdecodificador/dut/dut_m/entrada1
add wave -noupdate /tbdecodificador/dut/dut_m/entrada2
add wave -noupdate /tbdecodificador/dut/dut_m/entrada3
add wave -noupdate /tbdecodificador/dut/dut_m/entrada4
add wave -noupdate /tbdecodificador/dut/dut_m/entrada5
add wave -noupdate /tbdecodificador/dut/dut_m/entrada6
add wave -noupdate /tbdecodificador/dut/dut_m/entrada7
add wave -noupdate -divider {display 1}
add wave -noupdate /tbdecodificador/dut/dut_m/dut0/entrada_d
add wave -noupdate /tbdecodificador/dut/dut_m/dut0/saida_d
add wave -noupdate -divider {display 2}
add wave -noupdate /tbdecodificador/dut/dut_m/dut1/entrada_d
add wave -noupdate /tbdecodificador/dut/dut_m/dut1/saida_d
add wave -noupdate -divider {display 3}
add wave -noupdate /tbdecodificador/dut/dut_m/dut2/entrada_d
add wave -noupdate /tbdecodificador/dut/dut_m/dut2/saida_d
add wave -noupdate -divider {display 4}
add wave -noupdate /tbdecodificador/dut/dut_m/dut3/entrada_d
add wave -noupdate /tbdecodificador/dut/dut_m/dut3/saida_d
add wave -noupdate -divider {display 5}
add wave -noupdate /tbdecodificador/dut/dut_m/dut4/entrada_d
add wave -noupdate /tbdecodificador/dut/dut_m/dut4/saida_d
add wave -noupdate -divider {display 6}
add wave -noupdate /tbdecodificador/dut/dut_m/dut5/entrada_d
add wave -noupdate /tbdecodificador/dut/dut_m/dut5/saida_d
add wave -noupdate -divider {display 7}
add wave -noupdate /tbdecodificador/dut/dut_m/dut6/entrada_d
add wave -noupdate /tbdecodificador/dut/dut_m/dut6/saida_d
add wave -noupdate -divider {display 8}
add wave -noupdate /tbdecodificador/dut/dut_m/dut7/entrada_d
add wave -noupdate /tbdecodificador/dut/dut_m/dut7/saida_d
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {99999999193 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
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
WaveRestoreZoom {99999999050 ps} {100000000050 ps}
run 100 ms
