% exm6_freqs_lowpass.m
% ��6������freqs��ʾϵͳ��Ƶ����Ӧ���ԣ���ͨ�˲���
% �����ʵ��ѧ��������
% 2018��12��
wp1=100;
B=[wp1];
A=[1 wp1];
sys=tf(B,A);
pzplot(sys);
figure;
freqs(B,A);