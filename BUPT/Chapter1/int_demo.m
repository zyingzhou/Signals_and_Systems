clear all
syms t T A;
w=2*pi/T;
x=A*sin(w*t);
% 平均值
M=int(x,0,T)/T
% 平均功率
P=int(x^2,0,T)/T