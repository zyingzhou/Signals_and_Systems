clear all
syms t T A;
w=2*pi/T;
x=A*sin(w*t);
% ƽ��ֵ
M=int(x,0,T)/T
% ƽ������
P=int(x^2,0,T)/T