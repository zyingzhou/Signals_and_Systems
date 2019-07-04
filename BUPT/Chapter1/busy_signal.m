% fs: 抽样率, Ts: 抽样间隔
fs=8000;Ts=1/fs;
% 电话信号音的频率
f=450;
% 忙音通和断的时长
T=0.35;
% 抽样时刻
t=0:Ts:T;
% 电话信号音
x1=sin(t*2*pi*f);
x2=zeros(size(x1));
x=[x1 x2];x=[x x x x];sound(x,fs);