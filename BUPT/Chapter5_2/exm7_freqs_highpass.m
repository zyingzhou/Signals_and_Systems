% exm7_freqs_highpass.m
% ��7������freqs��ʾϵͳ��Ƶ����Ӧ���ԣ���ͨ�˲���
% �����ʵ��ѧ��������
% 2018��12��
wp2=100;
B=[1 0];
A=[1 wp2];
sys=tf(B,A);
pzplot(sys);
figure;
freqs(B,A);