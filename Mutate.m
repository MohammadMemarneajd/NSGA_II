%
% Copyright (c) 2015, Mostapha Kalami Heris & Yarpiz (www.yarpiz.com)
% All rights reserved. Please read the "LICENSE" file for license terms.
%
% Project Code: YPEA120
% Project Title: Non-dominated Sorting Genetic Algorithm II (NSGA-II)
% Publisher: Yarpiz (www.yarpiz.com)
% 
% Developer: Mostapha Kalami Heris (Member of Yarpiz Team)
% 
% Cite as:
% Mostapha Kalami Heris, NSGA-II in MATLAB (URL: https://yarpiz.com/56/ypea120-nsga2), Yarpiz, 2015.
% 
% Contact Info: sm.kalami@gmail.com, info@yarpiz.com
%

function y = Mutate(x, mu, sigma,range)
    




    nVar = numel(x);
    
    nMu = ceil(mu*nVar);

    j = randsample(nVar, nMu); %j = index of gene that has to change 
    %{
    if numel(sigma)>1
        sigma = sigma(j);
    end
    %}
    y = x;
    
    switch j
        case 1
            min = range.D_sw(1,1);
            max = range.D_sw(1,2);
            y(j) = min + (max-min)*rand;
        case 2
            min = range.L_pz(1,1);
            max = range.L_pz(1,2);
            y(j) = min + (max-min)*rand;

        case 3
            min = range.fi_pz(1,1);
            max = range.fi_pz(1,2);
            y(j) = min + (max-min)*rand;

        case 4
            min = range.TQ(1,1);
            max = range.TQ(1,2);
            y(j) = min + (max-min)*rand;

    end

    
    %y(j) = x(j)+sigma.*randn(size(j));

end