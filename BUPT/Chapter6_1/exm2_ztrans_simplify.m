% exm2_ztrans_simplify.m
% ��2��ztransʾ��
% �����ʵ��ѧ��������
% 2018��12��
syms n;
x1=n;
X1=ztrans(x1)
x2=n*(n-1)/2;
X2=ztrans(x2);
X2s=simplify(X2)
