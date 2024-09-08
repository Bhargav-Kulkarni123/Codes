# Load the design
vsim work.Encoder

# Add waveforms for input and output
add wave -position insertpoint sim:/Encoder/*

# Apply input D[0] = 1 (0000_0001)
force -freeze {sim:/Encoder/D[7]} 0
force -freeze {sim:/Encoder/D[6]} 0
force -freeze {sim:/Encoder/D[5]} 0
force -freeze {sim:/Encoder/D[4]} 0
force -freeze {sim:/Encoder/D[3]} 0
force -freeze {sim:/Encoder/D[2]} 0
force -freeze {sim:/Encoder/D[1]} 0
force -freeze {sim:/Encoder/D[0]} 1
run 10ns

# Apply input D[1] = 1 (0000_0010)
force -freeze {sim:/Encoder/D[0]} 0
force -freeze {sim:/Encoder/D[1]} 1
run 10ns

# Apply input D[2] = 1 (0000_0100)
force -freeze {sim:/Encoder/D[1]} 0
force -freeze {sim:/Encoder/D[2]} 1
run 10ns

# Apply input D[3] = 1 (0000_1000)
force -freeze {sim:/Encoder/D[2]} 0
force -freeze {sim:/Encoder/D[3]} 1
run 10ns

# Apply input D[4] = 1 (0001_0000)
force -freeze {sim:/Encoder/D[3]} 0
force -freeze {sim:/Encoder/D[4]} 1
run 10ns

# Apply input D[5] = 1 (0010_0000)
force -freeze {sim:/Encoder/D[4]} 0
force -freeze {sim:/Encoder/D[5]} 1
run 10ns

# Apply input D[6] = 1 (0100_0000)
force -freeze {sim:/Encoder/D[5]} 0
force -freeze {sim:/Encoder/D[6]} 1
run 10ns

# Apply input D[7] = 1 (1000_0000)
force -freeze {sim:/Encoder/D[6]} 0
force -freeze {sim:/Encoder/D[7]} 1
run 10ns

# Finish simulation
run -all
quit
