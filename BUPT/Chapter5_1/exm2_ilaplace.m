% exm2_ilaplace.m
% 例题2：拉普拉斯逆变换符号表示法
% 北京邮电大学，尹霄丽
% 2018年12月
syms s
F=exp(-2*s)/(s^2+3*s+2);
f=ilaplace(F); 
