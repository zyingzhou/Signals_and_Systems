% lsim_demo_RC.m
% �ڶ�����6
B=[a];
A=[1 a];
f=200;
fs=8000;
Ts=1/fs;
N=200;
t=(0:(N-1))*Ts;
x=cos(2*pi*f*t);
a=f*2*pi;
B=[a];
A=[1 a];
lsim(B,A,x,t);
% ������������
figure;
lsim(B,A,heaviside(x),t);
h=findobj(gcf,'type','line');
set(h,'linewidth',2);
