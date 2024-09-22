module Multiplier2x2_tb;

    // Inputs
    reg [1:0] A;
    reg [1:0] B;

    // Outputs
    wire [3:0] P;

    // Instantiate the multiplier
    Multiplier2x2 uut (  // Updated module name to match the actual module name
        .A(A),
        .B(B),
        .P(P)
    );

    initial begin
        // Display header for simulation output
        $display("Time\t A   B   | Product (P)");
        $monitor("%0t\t %b  %b  | %b", $time, A, B, P);

        // Test case 1: A = 2 (2'b10), B = 3 (2'b11)
        A = 2'b10; B = 2'b11; #10;

        // Test case 2: A = 1 (2'b01), B = 1 (2'b01)
        A = 2'b01; B = 2'b01; #10;

        // Test case 3: A = 3 (2'b11), B = 3 (2'b11)
        A = 2'b11; B = 2'b11; #10;

        // Test case 4: A = 0 (2'b00), B = 2 (2'b10)
        A = 2'b00; B = 2'b10; #10;
    end

endmodule

