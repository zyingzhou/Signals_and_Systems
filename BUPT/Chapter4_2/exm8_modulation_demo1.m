% 例8，莫尔斯码调制解调实例
% 北京邮电大学，尹霄丽
% 2018年12月
clear all;
close all;
%load ctftmod.mat
load secret.mat
% A
B=[dash dot dot dot];
plot(t,B,'r','linewidth',2);
% bf, af
figure
freqs(bf,af);
figure;
subplot(2,1,1);
lsim(bf,af,B,t);
carrier=cos(2*pi*f1*t);
subplot(2,1,2);
lsim(bf,af,B.*carrier,t);
figure;
y1=x.*cos(2*pi*f1*t); 
y2=x.*sin(2*pi*f1*t);
y3=x.*cos(2*pi*f2*t); 
y4=x.*sin(2*pi*f2*t);
subplot(2,2,1);lsim(bf,af,y1,t);
subplot(2,2,2);lsim(bf,af,y2,t);
subplot(2,2,3);lsim(bf,af,y3,t);
subplot(2,2,4);lsim(bf,af,y4,t);