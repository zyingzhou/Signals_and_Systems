% echo_demo.m
% �ڶ�����9
close all;clear;clc;
% ���ȵ���һ�������ź�
% load splat;
[y,Fs]=audioread('bupt.wav');
whos;
% ��������
sound(y,Fs);
pause(1.5);
% ������
t=(0:length(y)-1)/Fs;
subplot(2,1,1);
plot(t,y);xlabel('time (s)');ylabel('y(t)');
xlim([0 2.8]);
% ���ڲ��������źŵ�ϵͳ�ĵ�λ��ֵ��Ӧ�����˼��Ϊʲô�������ģ�
h=[1 zeros(1,Fs) 0.3];
% y������������hת��һ��
h=h';
% ���þ��������������ź�
yy=conv(y,h);
% ���Ŵ��л����źŵ�����
sound(yy,Fs);
% �������л����źŵĲ���
subplot(2,1,2);
tt=(0:length(yy)-1)/Fs;
plot(tt,yy,'r');
xlabel('time (s)');ylabel('yy(t)');
xlim([0 2.8]);