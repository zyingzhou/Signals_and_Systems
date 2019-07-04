% exm5_ss_stability.m
% 例5，系统稳定性判断
% 北京邮电大学，尹霄丽
% 2018年12月
syms z;
A=[0 1;-6 5];
F=det(z*eye(2)-A)
r=solve(F)