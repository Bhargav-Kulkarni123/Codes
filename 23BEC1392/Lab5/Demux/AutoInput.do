# Load the design
vsim work.Demux

# Add waveforms for input and output
add wave -position insertpoint sim:/Demux/*

# Apply input S = 4'b0000 (Output Y0 is active)
force -freeze {sim:/Demux/S[3]} 0
force -freeze {sim:/Demux/S[2]} 0
force -freeze {sim:/Demux/S[1]} 0
force -freeze {sim:/Demux/S[0]} 0
run 10ns

# Apply input S = 4'b0001 (Output Y1 is active)
force -freeze {sim:/Demux/S[0]} 1
run 10ns

# Apply input S = 4'b0010 (Output Y2 is active)
force -freeze {sim:/Demux/S[0]} 0
force -freeze {sim:/Demux/S[1]} 1
run 10ns

# Apply input S = 4'b0011 (Output Y3 is active)
force -freeze {sim:/Demux/S[0]} 1
run 10ns

# Apply input S = 4'b0100 (Output Y4 is active)
force -freeze {sim:/Demux/S[0]} 0
force -freeze {sim:/Demux/S[1]} 0
force -freeze {sim:/Demux/S[2]} 1
run 10ns

# Apply input S = 4'b0101 (Output Y5 is active)
force -freeze {sim:/Demux/S[0]} 1
run 10ns

# Apply input S = 4'b0110 (Output Y6 is active)
force -freeze {sim:/Demux/S[0]} 0
force -freeze {sim:/Demux/S[1]} 1
run 10ns

# Apply input S = 4'b0111 (Output Y7 is active)
force -freeze {sim:/Demux/S[0]} 1
run 10ns

# Apply input S = 4'b1000 (Output Y8 is active)
force -freeze {sim:/Demux/S[0]} 0
force -freeze {sim:/Demux/S[1]} 0
force -freeze {sim:/Demux/S[2]} 0
force -freeze {sim:/Demux/S[3]} 1
run 10ns

# Apply input S = 4'b1001 (Output Y9 is active)
force -freeze {sim:/Demux/S[0]} 1
run 10ns

# Apply input S = 4'b1010 (Output Y10 is active)
force -freeze {sim:/Demux/S[0]} 0
force -freeze {sim:/Demux/S[1]} 1
run 10ns

# Apply input S = 4'b1011 (Output Y11 is active)
force -freeze {sim:/Demux/S[0]} 1
run 10ns

# Apply input S = 4'b1100 (Output Y12 is active)
force -freeze {sim:/Demux/S[0]} 0
force -freeze {sim:/Demux/S[1]} 0
force -freeze {sim:/Demux/S[2]} 1
run 10ns

# Apply input S = 4'b1101 (Output Y13 is active)
force -freeze {sim:/Demux/S[0]} 1
run 10ns

# Apply input S = 4'b1110 (Output Y14 is active)
force -freeze {sim:/Demux/S[0]} 0
force -freeze {sim:/Demux/S[1]} 1
run 10ns

# Apply input S = 4'b1111 (Output Y15 is active)
force -freeze {sim:/Demux/S[0]} 1
run 10ns

# Finish simulation
run -all
quit
