module sr_tb;

reg CLK, S, R;
wire Q, Qbar;

// Instantiate the SR flip-flop module
sr uut (.S(S), .R(R), .CLK(CLK), .Q(Q), .Qbar(Qbar));

// Clock generation: toggle clock every 50 time units
always #50 CLK = ~CLK;

initial 
begin
    CLK = 0;         // Initialize clock
    S = 0; R = 0;    // Initialize S and R signals

    // Apply test vectors
    #75; S = 0; R = 0;   // Wait slightly less than a clock cycle to avoid coinciding with the clock edge
    #100; S = 0; R = 1;  // Reset: Q should go to 0
    #100; S = 1; R = 0;  // Set: Q should go to 1
    #100; S = 1; R = 1;  // Invalid state: Q should go to high impedance
    #100; S = 0; R = 0;  // No change, Q should hold previous state
    
    // Finish the simulation
    #200; $finish;
end

endmodule
