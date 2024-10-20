module downcounter_tb;

    reg clk;
    reg reset;
    wire [3:0] q;

    // Instantiate the downcounter module
    downcounter uut (
        .clk(clk),
        .reset(reset),
        .q(q)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;  // Generate a clock with a period of 10 time units
    end

    // Testbench procedure
    initial begin
        // Initialize reset
        reset = 1;
        #10 reset = 0;  // Release reset after 10 time units

        // Allow the counter to run for a while
        #100 $finish;  // End the simulation after 100 time units
    end

    // Monitor signals for debugging
    initial begin
        $monitor("Time = %0t | q = %0d | reset = %b", $time, q, reset);
    end

endmodule

