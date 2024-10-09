module counter_tff(CLK,T1,T2,T3,T4,Q1,Q2,Q3,Q4,Q1bar,Q2bar,Q3bar,Q4bar);

input CLK,T1,T2,T3,T4;
output Q1,Q2,Q3,Q4,Q1bar,Q2bar,Q3bar,Q4bar;

t t1 (CLK,T1,Q1,Q1bar);
t t2 (CLK,T2,Q2,Q2bar);
t t3 (CLK,T3,Q3,Q3bar);
t t4 (CLK,T4,Q4,Q4bar);

endmodule

