function z = Creat_Population(npop,D_ft,range)
%CREAT_POPULATION Summary of this function goes here
%   Detailed explanation goes here


%D_ft = 0.280343447;

%{
D_sw = unifrnd((0.2 .* D_ft) , (0.3 .* D_ft),[1,npop]);
L_pz = unifrnd((2.*D_ft/3) , (3.*D_ft/4),[1,npop]);
fi_pz = unifrnd(0 , 1.4,[1,npop]);
TQ = unifrnd(0.2 , 0.85,[1,npop]);
%}

D_sw    = unifrnd(range.D_sw(1)  , range.D_sw(2) ,[1,npop]);
L_pz    = unifrnd(range.L_pz(1)  , range.L_pz(2) ,[1,npop]);
fi_pz   = unifrnd(range.fi_pz(1) , range.fi_pz(2),[1,npop]);
TQ      = unifrnd(range.TQ(1)    , range.TQ(2)   ,[1,npop]);



z = [transpose(D_sw),transpose(L_pz),transpose(fi_pz),transpose(TQ)];

end

