module HalfAdder_GM_tb;
wire Sum, Carry;
reg A,B;

HalfAdder_GM HF(A,B,Carry,Sum);


initial begin
A=0; B=0;
#100; 
A=0; B=1;
#100; 
A=1; B=0;
#100; 
A=1; B=1;
#100;
end
endmodule


