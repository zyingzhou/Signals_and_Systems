% exm3_expm_demo.m
% ��2��������ָ������ʾ��
% �����ʵ��ѧ��������
% 2018��12��
syms t;
A=[1,-2;1,4];
%e=[heaviside(t);exp(-t)*heaviside(t)];
x0=[3;2];
%������ָ������
F=expm(t*A); 
F=simplify(F)
x=F*x0;
x=simplify(x)
