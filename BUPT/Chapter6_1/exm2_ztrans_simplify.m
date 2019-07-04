% exm2_ztrans_simplify.m
% 例2，ztrans示例
% 北京邮电大学，尹霄丽
% 2018年12月
syms n;
x1=n;
X1=ztrans(x1)
x2=n*(n-1)/2;
X2=ztrans(x2);
X2s=simplify(X2)
