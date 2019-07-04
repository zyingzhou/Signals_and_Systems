% exm3_iztrans.m
% 例3，iztrans示例
% 北京邮电大学，尹霄丽
% 2018年12月
syms z x k
x1=iztrans(z/(z-2))
X2=iztrans(exp(x/z),z,k)
