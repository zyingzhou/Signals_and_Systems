% exm3_laplace_ilaplace.m
% 例3：拉普拉斯变换与逆变换符号表示法
% 北京邮电大学，尹霄丽
% 2018年12月
syms t s
x=exp(-3*t)*heaviside(t)
H=(3*s+1)/(s*s+2*s+5)
X=laplace(x)
Y=X*H
y=ilaplace(Y)
ezplot(y,[0 10]);
axis([0 10 -1 1]);