% exm5_pzplot.m
% ��5������pzplot�����㼫��ͼ
% �����ʵ��ѧ��������
% 2018��12��
n=[1 0.5 25];
d=conv([1 2 10],[1 2]);
sys=tf(n,d)
pzplot(sys);