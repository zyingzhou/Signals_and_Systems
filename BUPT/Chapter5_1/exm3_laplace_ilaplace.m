% exm3_laplace_ilaplace.m
% ��3��������˹�任����任���ű�ʾ��
% �����ʵ��ѧ��������
% 2018��12��
syms t s
x=exp(-3*t)*heaviside(t)
H=(3*s+1)/(s*s+2*s+5)
X=laplace(x)
Y=X*H
y=ilaplace(Y)
ezplot(y,[0 10]);
axis([0 10 -1 1]);