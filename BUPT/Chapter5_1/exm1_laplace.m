% exm1_laplace.m
% 例1，拉普拉斯变换符号表示法
% 北京邮电大学，尹霄丽
% 2018年12月
syms a w1 t w;
x=exp(-a*t)*cos(w1*t)*heaviside(t);
X=laplace(x)
a=1;
w1=10;
X1=subs(X);
H_w=subs(X1,'s','i*w');
ezplot(abs(H_w),[-20,20])