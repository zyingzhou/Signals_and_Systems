% exm4_transfer_function.m
% 例4，由状态变量表示法得到输入-输出描述法
% 北京邮电大学，尹霄丽
% 2018年12月
syms z;
A=[1/2 0;1/4 2];
B=[1 1]';
C=[2 0];
D=0;
F=inv(z*eye(2)-A)
H=C*F*B+D
