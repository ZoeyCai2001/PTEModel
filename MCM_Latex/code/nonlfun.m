% MATLAB R2021b
function [c,ceq] = nonlfun(T)
ceq = [];
c = zeros(6,1);
%FTP = 5.61;%FTT
%FTP = 6.4;%MTT
FTP = 6.24;%Remco
%Different Track with different energy
c(1) = 18000 - T(1)*FTP - T(2)*T(4) - T(3)*T(5);
c(2) = T(2) - finv(T(4));
c(3) = T(3) - finv(T(5));
c(4) = 0.1*finv(T(4)) - T(2);
c(5) = 0.1*finv(T(5)) - T(3);
c(6) = T(3)-log(T(2))*700/((T(4)+0.33)*(T(5)-FTP));
end