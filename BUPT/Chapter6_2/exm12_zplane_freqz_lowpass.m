% exm12_zplane_freqz_lowpass.m
% 例12，离散系统频响特性，1阶IIR系统
% 北京邮电大学，尹霄丽
% 2018年12月
a=0.5;
B=[1];
A=[1 -a];
figure(1);
zplane(B,A);
h=findobj(gcf,'type','line');
set(h,'linewidth',2);
figure(2)'
freqz(B,A);
h=findobj(gcf,'type','line');
set(h,'linewidth',2);