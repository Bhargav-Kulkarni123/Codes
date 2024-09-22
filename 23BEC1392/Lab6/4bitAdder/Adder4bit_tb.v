module Adder4bit_tb;

    reg [3:0] A;
    reg [3:0] B;
    wire [3:0] S;
    wire Cout; // Single-bit carry-out

    Adder4bit ins (S, Cout, B, A);

    initial begin
        A = 4'b0000; B = 4'b0000; #10;
        A = 4'b0001; B = 4'b0001; #10;
        A = 4'b1111; B = 4'b1111; #10;
    end
endmodule
