% exm14_allpass.m
% 例14，离散系统频响特性，全通系统
% 北京邮电大学，尹霄丽
% 2018年12月
B=[0.25 -sqrt(3)/2 1];
A=[1 -sqrt(3)/2 0.25];
figure(1);
zplane(B,A);
h=findobj(gcf,'type','line');
set(h,'linewidth',2);
figure(2)'
freqz(B,A);
h=findobj(gcf,'type','line');
set(h,'linewidth',2);

