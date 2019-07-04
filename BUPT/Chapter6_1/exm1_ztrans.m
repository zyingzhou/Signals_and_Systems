% exm1_ztrans.m
% 例1：ztrans示例
% 北京邮电大学，尹霄丽
% 2018年12月
syms n k z w
x1=2^n;
X1=ztrans(x1);
x2=sin(k*n);
X2=ztrans(x2);
x3=cos(n*k);
X3=ztrans(x3,k,z);
