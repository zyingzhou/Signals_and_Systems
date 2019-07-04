% 例5，RC电路，正弦信号抽样，抽样定理
% 北京邮电大学，尹霄丽
% 2018年12月
clc;
close all;
clear all;
set(0,'defaultAxesFontName','Microsoft YaHei UI')
f0=50;
fs=40;            Ts=1/fs;
fs_c=fs*20;    Ts_c=1/fs_c;
t=0:Ts:Ts*8;
t_c=0:Ts_c:Ts*8;
x=sin(2*pi*f0*t);
x_c=sin(2*pi*f0*t_c);
plot(t_c,x_c,'r:','linewidth',2);
hold on;
stem(t,x,'linewidth',3);
xlabel('t (s)');
s=['样值,f=' num2str(f0) ' Hz'];
legend('连续信号',s);
set(gcf,'position',[200,300,600,200]);