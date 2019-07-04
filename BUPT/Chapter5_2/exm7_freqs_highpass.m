% exm7_freqs_highpass.m
% 例7：利用freqs表示系统的频率响应特性，高通滤波器
% 北京邮电大学，尹霄丽
% 2018年12月
wp2=100;
B=[1 0];
A=[1 wp2];
sys=tf(B,A);
pzplot(sys);
figure;
freqs(B,A);