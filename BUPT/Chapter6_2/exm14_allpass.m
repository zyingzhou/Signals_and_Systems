% exm14_allpass.m
% ��14����ɢϵͳƵ�����ԣ�ȫͨϵͳ
% �����ʵ��ѧ��������
% 2018��12��
B=[0.25 -sqrt(3)/2 1];
A=[1 -sqrt(3)/2 0.25];
figure(1);
zplane(B,A);
h=findobj(gcf,'type','line');
set(h,'linewidth',2);
figure(2)'
freqz(B,A);
h=findobj(gcf,'type','line');
set(h,'linewidth',2);

