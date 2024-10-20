module FullAdder_HA(A,B,C,Carry,Sum);
input A,B,C;
output Carry,Sum;

//Declare Variables for carrying intermediate outputs;
wire sum,carry1,carry2;

HalfAdder_GM Ha(A,B,carry1,sum);
HalfAdder_GM Hb(sum,C,carry2,Sum);

or(Carry,carry1,carry2);

endmodule
