% ��1������Ҷ�����ϳɣ����ż���
% �����ʵ��ѧ��������
% 2018��12��
close all;
clear all;
set(0,'defaultAxesFontName','Microsoft YaHei UI')
syms t n;
T=2*pi;
tao=pi;
w1=2*pi/T;
Fn=int(1*exp(-i*n*w1*t),'t',0,tao)/T
N=21;
f=tao/T;
nn=[-N:-1 1:N];
for k=1:length(nn)
    n=nn(k);
    f=f+subs(Fn)*exp(i*n*w1*t);
end
ezplot(f);