module sr_tb;

reg CLK, S, R;
wire Q, Qbar;

sr uut (.S(S), .R(R), .CLK(CLK), .Q(Q), .Qbar(Qbar));

// Clock generation: toggle clock every 50 time units
always #50 CLK = ~CLK;

initial 
begin
    CLK = 0;         // Initialize clock
    S = 0; R = 0;    // Initialize S and R signals

    // Apply test vectors
    #100; S = 0; R = 0;   
    #100; S = 0; R = 1;	
    #100; S = 1; R = 0;  
    #100; S = 0; R = 1;  
    #100; S = 1; R = 0;  
    #100; S = 1; R = 0; 
    
end

endmodule
