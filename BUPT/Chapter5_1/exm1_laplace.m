% exm1_laplace.m
% ��1��������˹�任���ű�ʾ��
% �����ʵ��ѧ��������
% 2018��12��
syms a w1 t w;
x=exp(-a*t)*cos(w1*t)*heaviside(t);
X=laplace(x)
a=1;
w1=10;
X1=subs(X);
H_w=subs(X1,'s','i*w');
ezplot(abs(H_w),[-20,20])