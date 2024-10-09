module counter_tff_tb();
reg CLK,T1,T2,T3,T4;
wire Q1,Q2,Q3,Q4,Q1bar,Q2bar,Q3bar,Q4bar;

counter_tff uut (CLK,T1,T2,T3,T4,Q1,Q2,Q3,Q4,Q1bar,Q2bar,Q3bar,Q4bar);

always
#50 CLK = ~CLK;

initial 
begin

CLK = 0;
T1 = 0; T2 = 0; T3 = 1; T4 = 0;
#50; T1 = 0; T2 = 0; T3 = 0; T4 = 1;
#50; T1 = 0; T2 = 1; T3 = 1; T4 = 1;
#50; T1 = 0; T2 = 0; T3 = 1; T4 = 1;
#50; T1 = 1; T2 = 1; T3 = 1; T4 = 1;
#50; T1 = 0; T2 = 0; T3 = 1; T4 = 0;
#50; T1 = 0; T2 = 1; T3 = 1; T4 = 0;
#50; T1 = 1; T2 = 1; T3 = 0; T4 = 0;

end
endmodule