module BooleanExpression(A,B,C,Y);
input wire A,B,C;
output reg Y;

always @(*)
begin 

Y = (A&(~B)) | (A&(~C));

end
endmodule

