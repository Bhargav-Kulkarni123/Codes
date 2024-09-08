# Handle errors gracefully
onerror {resume}

# Compile the Verilog design files and the testbench
vlog Testbench.v

# Simulate the testbench
vsim work.Testbench

# Add signals to the waveform window, grouped as needed
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group A TestbenchA
add wave -noupdate -expand -group B TestbenchB
add wave -noupdate -expand -group Output -radix binary TestbenchY
TreeUpdate [SetDefaultTree]

# Set up cursor and waveform display options
WaveRestoreCursors {{Cursor 1} {331 ps} 0}
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

# Update the waveform window
update
WaveRestoreZoom {0 ps} {420 ps}

# Run the simulation
run -all

