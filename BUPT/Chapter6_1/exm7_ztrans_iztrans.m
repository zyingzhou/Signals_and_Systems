% exm7_ztrans_iztrans.m
% 例7，ztrans和iztrans示例
% 北京邮电大学，尹霄丽
% 2018年12月
syms n a b z
x=a^n;
X=ztrans(x);
H=1/(1-b*z^(-1));
Y=X*H;
y1=iztrans(Y)
y=simplify(y1)
