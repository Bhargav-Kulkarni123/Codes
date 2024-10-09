module d(CLK,D,Q,Qbar);

input CLK,D;
output reg Q,Qbar;

initial 
begin

Q = 0;
Qbar = 1;
end

always @(posedge CLK)
begin

if(D==0)
Q=0;
else if(D==1)
Q=1;
else if(D==1'bz)
Q=Q;
Qbar = ~Q;
end
endmodule

