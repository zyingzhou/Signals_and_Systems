% exm7_ztrans_iztrans.m
% ��7��ztrans��iztransʾ��
% �����ʵ��ѧ��������
% 2018��12��
syms n a b z
x=a^n;
X=ztrans(x);
H=1/(1-b*z^(-1));
Y=X*H;
y1=iztrans(Y)
y=simplify(y1)
