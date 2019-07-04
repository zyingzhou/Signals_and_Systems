% exm15_linear_phase.m
% 例15，离散系统频响特性，线性相位系统
% 北京邮电大学，尹霄丽
% 2018年12月
B=[2 1 3 4 3 2 6 2 3 4 3 1 2]
A=1;
figure(1);
zplane(B,A);
h=findobj(gcf,'type','line');
set(h,'linewidth',2);
figure(2)'
freqz(B,A);
h=findobj(gcf,'type','line');
set(h,'linewidth',2);

