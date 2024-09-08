module NOT_GATE(A,Y);
input A;
output reg Y;
always @(*)
begin
Y= ~(A);
end
endmodule