function z = Eval(Chromosome)
%EVAL Summary of this function goes here
%   Detailed explanation goes here


%f1 = log(log(1/eta));



%% D_sw , L_pz , fi_pz, TQ are Parameters in order
%Scalers :
D_sw =  Chromosome(1);
L_pz =  Chromosome(2);
fi_pz = Chromosome(3);
TQ =    Chromosome(4);

D_ft = 0.280343447036183;% meter

m_dot_f = 0.427;
P3 = 1.93 .* (10^6);
y = 1;
T3 = 814;


P_delP = 0.06;
%-----------------------

D0 = 0.196762526;
D3 = 0.142729929;

R0 = D0/2;
R3 = D3/2;


si = 21.30659621;




%% Calculating f1


L_rz = 2*D_sw;

V_pz = (pi.*(D_ft^2).*((L_pz - L_rz)/4)+(L_rz/12)).*35.31;

V_pz = V_pz / 35.31;

n = 2./fi_pz;


si_T3 = m_dot_f/(V_pz .* (P3.^n));


si_300 = si_T3 .* (10.^(-3.054 .* y.^1.556) .* (T3.^1.227 .* y.^-0.555)).^-1;

D_ri = 0.7 .* (0.736 - 0.0173*(P_delP));

f1 = 0.911.*log10(si_300)+(8./fi_pz)-1.097+D_ri;
%f1 =1/(10^10^f1);

%% Calculating f2
%TQ is Parameter

L_d = (R0 - R3)/tan(si);
L_td = D0;
L_dz = (2.718-(12.64.*TQ)+(28.51 .* (TQ^2))).*D_ft;
L_sz = D_ft / 2;


%L_ch = 
f2 = L_pz + L_sz + L_dz + L_td + L_d;

%f2 = -f2;
%f1 = 1/f1;

z = [f1  f2]';
end

