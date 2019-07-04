% 例1，傅里叶级数合成，符号计算
% 北京邮电大学，尹霄丽
% 2018年12月
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