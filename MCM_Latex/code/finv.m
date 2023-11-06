% MATLAB R2021b
%% Power curve inverse
function f = finv(P)
f = ((P-5.628)/31.34)^(-1/0.4967); %MTT
%f = ((P-4.676)/25.99)^(-1/0.4383); %FTT
%f = ((P-5.428)/30.99)^(-1/0.481); %Remco
end