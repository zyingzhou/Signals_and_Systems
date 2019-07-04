% exm11_zplane_freqz.m
% 例11，离散系统频响特性，FIR系统表示方法3
% 北京邮电大学，尹霄丽
% 2018年12月
N=7;
B=ones(1,N)/N;
A=1;
figure(1);
zplane(B,A);
h=findobj(gcf,'type','line');
set(h,'linewidth',2);
figure(2)'
freqz(B,A);
h=findobj(gcf,'type','line');
set(h,'linewidth',2);

