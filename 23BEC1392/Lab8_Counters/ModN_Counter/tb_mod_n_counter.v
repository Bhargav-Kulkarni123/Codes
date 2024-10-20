module tb_mod_n_counter();

    // Declare testbench signals
    reg clk;                   // Clock signal
    reg rst;                   // Reset signal
    wire [15:0] count;         // Output count

    // Parameter for Mod-N value
    parameter N = 10;

    // Instantiate the counter module
    mod_n_counter #(N) uut (
        .clk(clk),
        .rst(rst),
        .count(count)
    );

    // Clock generation
    always #5 clk = ~clk;  // Toggle clock every 5 time units (period = 10 time units)

    // Testbench procedure
    initial begin
        // Initialize signals
        clk = 0;
        rst = 1;

        // Reset the counter for a few cycles
        #10 rst = 0;  // Release reset after 10 time units

        // Let the counter run for a while
        #100;

        // Apply reset again
        rst = 1;
        #10 rst = 0;

        // Continue simulation
        #100;

        // End simulation
        $stop;
    end

    // Monitor the count value
    initial begin
        $monitor("Time = %0t, Count = %0d, Reset = %b", $time, count, rst);
    end

endmodule

