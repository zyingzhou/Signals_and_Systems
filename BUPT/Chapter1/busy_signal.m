% fs: ������, Ts: �������
fs=8000;Ts=1/fs;
% �绰�ź�����Ƶ��
f=450;
% æ��ͨ�Ͷϵ�ʱ��
T=0.35;
% ����ʱ��
t=0:Ts:T;
% �绰�ź���
x1=sin(t*2*pi*f);
x2=zeros(size(x1));
x=[x1 x2];x=[x x x x];sound(x,fs);