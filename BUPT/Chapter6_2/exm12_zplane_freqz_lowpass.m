% exm12_zplane_freqz_lowpass.m
% ��12����ɢϵͳƵ�����ԣ�1��IIRϵͳ
% �����ʵ��ѧ��������
% 2018��12��
a=0.5;
B=[1];
A=[1 -a];
figure(1);
zplane(B,A);
h=findobj(gcf,'type','line');
set(h,'linewidth',2);
figure(2)'
freqz(B,A);
h=findobj(gcf,'type','line');
set(h,'linewidth',2);