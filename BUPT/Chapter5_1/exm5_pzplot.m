% exm5_pzplot.m
% 例5：利用pzplot绘制零极点图
% 北京邮电大学，尹霄丽
% 2018年12月
n=[1 0.5 25];
d=conv([1 2 10],[1 2]);
sys=tf(n,d)
pzplot(sys);