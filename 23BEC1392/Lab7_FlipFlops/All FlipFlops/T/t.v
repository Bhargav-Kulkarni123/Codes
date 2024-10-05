module t(CLK,T,Q,Qbar);

input CLK,T;

output reg Q, Qbar;

initial
begin 
Q = 0;
Qbar = 1;
end

always @(posedge CLK)
begin

if(T==0)
Q=0;
else if(T==1)
Q=0;
else if(T==0)
Q=1;
else if(T==1)
Q=1;

Qbar = ~Q;

end
endmodule

