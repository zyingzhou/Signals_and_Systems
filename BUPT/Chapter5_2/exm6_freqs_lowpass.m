% exm6_freqs_lowpass.m
% 例6：利用freqs表示系统的频率响应特性，低通滤波器
% 北京邮电大学，尹霄丽
% 2018年12月
wp1=100;
B=[wp1];
A=[1 wp1];
sys=tf(B,A);
pzplot(sys);
figure;
freqs(B,A);