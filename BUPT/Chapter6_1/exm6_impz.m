% exm6_impz.m
% 例6，impz示例
% 北京邮电大学，尹霄丽
% 2018年12月
A=[1 -5 6];
B=[1 0 0 -3];
impz(B,A)

figure;
A=[1 -0.8];
B=[1];
impz(B,A,11)

figure;
A=[1];
B=[1 1 1 1];
impz(B,A,6)
