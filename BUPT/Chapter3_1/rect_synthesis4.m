% ��2�����ھ����������еĹ�����չʾ
% �����ʵ��ѧ��������
% 2018��12��
close all;
clear all;
set(0,'defaultAxesFontName','Microsoft YaHei UI')
syms t n;
T=2*pi;
%tao=0.5*T;
tao=0.2*T;
w1=2*pi/T;
Fn=int(1*exp(-i*n*w1*t),'t',0,tao)/T;
N=21;
f0=tao/T;
n=[-N:-1];    Fn1=subs(Fn);
Pn1=Fn1.*conj(Fn1);
n=[1:N];       Fn2=subs(Fn);
Pn2=Fn2.*conj(Fn2);
Pn=[Pn1 f0^2 Pn2];
n=-N:N;
stem(n,Pn,'linewidth',2);
xlabel('n');
ylabel('|Fn|^2');
xlim([-N N]);