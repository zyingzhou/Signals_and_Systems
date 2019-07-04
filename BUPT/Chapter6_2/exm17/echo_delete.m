% echo_delete.m
% 例17，回声消除系统
% 北京邮电大学，尹霄丽
% 2018年12月
% 首先调入一个声音信号
close all
load splat;
sound(y,Fs);
t=(0:length(y)-1)/Fs;
plot(t,y);
xlabel('time (s)');
ylabel('y(t)');

h=[1 zeros(1,Fs) 0.3]';
zeros_padding=zeros(1,length(h)-1);
yy=filter(h,1,[y' zeros_padding]');
sound(yy,Fs);
figure;
tt=(0:length(yy)-1)/Fs;
plot(tt,yy,'r');
xlabel('time (s)');
ylabel('yy(t)');

yr=filter(1,h,yy);
sound(yr,Fs);
figure;
tt=(0:length(yr)-1)/Fs;
plot(tt,yr,'k');
xlabel('time (s)');
ylabel('yr(t)');