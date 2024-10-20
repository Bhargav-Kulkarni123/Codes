module tb_up_down_counter();

    // Declare testbench signals
    reg clk;                   // Clock signal
    reg rst;                   // Reset signal
    reg up_down;               // Up/Down control signal
    wire [15:0] count;         // Output count

    // Instantiate the counter module
    up_down_counter uut (
        .clk(clk),
        .rst(rst),
        .up_down(up_down),
        .count(count)
    );

    // Clock generation
    always #5 clk = ~clk;  // Toggle clock every 5 time units (period = 10 time units)

    // Testbench procedure
    initial begin
        // Initialize signals
        clk = 0;
        rst = 1;
        up_down = 1;   // Start by counting up

        // Reset the counter for a few cycles
        #10 rst = 0;  // Release reset after 10 time units

        // Let the counter count up for a while
        #50 up_down = 0;  // Switch to counting down after 50 time units

        // Continue simulation
        #50 up_down = 1;  // Switch back to counting up

        // Apply reset again
        rst = 1;
        #10 rst = 0;

        // Continue simulation for a few more cycles
        #50;

        // End simulation
        $stop;
    end

    // Monitor the count value
    initial begin
        $monitor("Time = %0t, Count = %0d, Up_Down = %b, Reset = %b", $time, count, up_down, rst);
    end

endmodule
