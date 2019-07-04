% exm11_minimum_phase.m
% 例11：最小相位系统演示
% 北京邮电大学，尹霄丽
% 2018年12月
B1=[1 1];
B2=[1 -1];
A=[1 2 5];
freqs(B1,A);
figure
freqs(B2,A);