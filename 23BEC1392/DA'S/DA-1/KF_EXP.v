module KF_EXP(A,B,C,D,Y);
input wire A,B,C,D;
output reg Y;

always @(*)
begin 

Y = ((~A)&(~B)&(C)&(~D)) | ((A)&(B)&(D)) | ((B)&(C)&(D)) | ((A)&(C)&(D));

end
endmodule
