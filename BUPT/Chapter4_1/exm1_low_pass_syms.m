% ��1��RC��·����ͨ�˲�����Ƶ����Ӧ����
% �����ʵ��ѧ��������
% 2018��12��
syms R C w;
ZR=R;
ZC=1/(i*w*C);
H=ZC/(ZR+ZC)
R=1e3;    
C=1e-6;
H_w=subs(H);
a=1/R/C;
wl=-5*a;wh=5*a;
subplot(2,1,1);
hh=ezplot(abs(H_w),[wl wh]);
set(hh,'linewidth',2);
axis([wl wh 0 1.1]);
subplot(2,1,2);
hh=ezplot(angle(H_w),[wl wh]);
set(hh,'linewidth',2);
axis([wl wh -1.1*pi/2 1.1*pi/2]);