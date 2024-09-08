module AND_GATE(A,B,Y);
input  A,B;
output reg Y;
always @(*)
begin
Y = A&B;
end 
endmodule