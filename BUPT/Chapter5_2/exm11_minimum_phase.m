% exm11_minimum_phase.m
% ��11����С��λϵͳ��ʾ
% �����ʵ��ѧ��������
% 2018��12��
B1=[1 1];
B2=[1 -1];
A=[1 2 5];
freqs(B1,A);
figure
freqs(B2,A);