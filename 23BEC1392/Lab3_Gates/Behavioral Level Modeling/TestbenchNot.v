module TestbenchNot;
reg A;
wire Y;

NOT_GATE obj(A,Y);
initial begin
A=0;
#100;
A=1;
#100;
end
endmodule
