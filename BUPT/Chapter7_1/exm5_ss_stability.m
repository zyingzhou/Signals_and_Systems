% exm5_ss_stability.m
% ��5��ϵͳ�ȶ����ж�
% �����ʵ��ѧ��������
% 2018��12��
syms z;
A=[0 1;-6 5];
F=det(z*eye(2)-A)
r=solve(F)