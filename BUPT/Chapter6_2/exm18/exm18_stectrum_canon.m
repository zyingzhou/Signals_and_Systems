% exm18_stectrum_canon.m
% 例18，离散系统滤波特性演示
% 北京邮电大学，尹霄丽
% 2018年12月
% 演奏者：北京邮电大学，自动化学院2011级高旻昊
close all
% 请将文件canon.wav和本程序存放在相同的文件夹下
% fs为采样率
% x为单声道的
[x,fs]=audioread('canon.wav');
% 声音起点，单位s
offset=50;
% 时长，单位s
len=7;
n=fs*offset:fs*(offset+len);
x1=x(n);
% 声音波形
t=n/fs;plot(t,x1);
% 播放原始声音
sound(x1,fs);pause(len);
% 原信号的语谱图
figure;specgram(x1,256,fs);
% 低通
%h=fir1(101,0.3);
% 带通
%h=fir1(101,[0.2 0.5],'bandpass');
% 高通
h=fir1(101,0.3,'high');
% 单位样值响应
figure
stem(0:length(h)-1,h);title('impuse response');
% 利用卷积计算输出
% 频率响应特性
figure;
freqz(h,1);
h1=findobj(gcf,'type','line');
set(h1,'linewidth',2);
y=conv(x1,h);
y=y/max(y);
% 播放滤波后的声音信号
sound(y,fs);
% 绘制滤波后信号的语谱图
figure;specgram(y);
% 绘制输出信号波形
figure;plot(y);
h2=findobj(gcf,'type','line');
set(h2,'linewidth',2);