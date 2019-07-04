% echo_demo.m
% 第二章例9
close all;clear;clc;
% 首先调入一个声音信号
% load splat;
[y,Fs]=audioread('bupt.wav');
whos;
% 播放声音
sound(y,Fs);
pause(1.5);
% 画波形
t=(0:length(y)-1)/Fs;
subplot(2,1,1);
plot(t,y);xlabel('time (s)');ylabel('y(t)');
xlim([0 2.8]);
% 用于产生回声信号的系统的单位样值响应，大家思考为什么是这样的？
h=[1 zeros(1,Fs) 0.3];
% y是列向量，将h转置一下
h=h';
% 利用卷积运算产生回声信号
yy=conv(y,h);
% 播放带有回声信号的声音
sound(yy,Fs);
% 画出带有回声信号的波形
subplot(2,1,2);
tt=(0:length(yy)-1)/Fs;
plot(tt,yy,'r');
xlabel('time (s)');ylabel('yy(t)');
xlim([0 2.8]);