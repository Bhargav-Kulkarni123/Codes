module t(CLK,T,Q,Qbar);

input CLK,T;
output reg Q, Qbar;

initial begin
  Q = 0;    
end


always @(posedge CLK)
begin

if(T==0)
Q=Q;
else if(T==1)
Q=~Q;

Qbar = ~Q;

end
endmodule

