% exm13_zplane_freqz_second_order.m
% 例13，离散系统频响特性，2阶IIR系统
% 北京邮电大学，尹霄丽
% 2018年12月
r=0.9;
theta=pi/4;
% exm13_zplane_freqz_second_order.m
p1=r*exp(j*theta);
p2=conj(p1);
B=[1];
A=poly([p1 p2]);
figure(1);
zplane(B,A);
h=findobj(gcf,'type','line');
set(h,'linewidth',2);
figure(2)'
freqz(B,A);
h=findobj(gcf,'type','line');
set(h,'linewidth',2);