module sr(S, R, CLK, Q, Qbar);
input S, R, CLK;
output reg Q, Qbar;

initial begin
    Q = 0;         // Initialize Q to a known state
    Qbar = 1;      // Initialize Qbar to the complement of Q
end

always @ (posedge CLK)
begin 
    if (S == 0 & R == 0)
        Q = Q;            // Hold state
    else if (S == 0 & R == 1)
        Q = 0;            // Reset
    else if (S == 1 & R == 0)
        Q = 1;            // Set
    else if (S == 1 & R == 1)
        Q = 1'bz;         // Invalid state (high impedance)
    
    Qbar = ~Q;            // Complementary output
end
endmodule
