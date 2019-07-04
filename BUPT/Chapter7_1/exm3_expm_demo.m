% exm3_expm_demo.m
% 例2，求解矩阵指数函数示例
% 北京邮电大学，尹霄丽
% 2018年12月
syms t;
A=[1,-2;1,4];
%e=[heaviside(t);exp(-t)*heaviside(t)];
x0=[3;2];
%求解矩阵指数函数
F=expm(t*A); 
F=simplify(F)
x=F*x0;
x=simplify(x)
