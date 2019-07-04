% exm8_poly_bandpass.m
% 例8：利用freqs表示系统的频率响应特性，带通滤波器
% 北京邮电大学，尹霄丽
% 2018年12月
N=[1 0];
p=[-1 -2];
D=poly(p);
freqs(N,D)