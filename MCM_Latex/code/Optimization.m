% MATLAB R2021b
%T= [T1,T2,T3,P2,P3];
%FTP = 5.61;%FTT
FTP = 6.4;%MTT
%FTP = 6.24;%Remco
x0 = [2000,1800,800,0.9*FTP,1.001*FTP];
lb = [0.1*finv(FTP),0,0,5.7,FTP+0.0001];%lower bound
ub= [finv(FTP),3600,3600,FTP-0.1,10];%upper bound
[Tfinal,fval] = fmincon(@fun,x0,[],[],[],[],lb,ub,@nonlfun);
