% exm15_linear_phase.m
% ��15����ɢϵͳƵ�����ԣ�������λϵͳ
% �����ʵ��ѧ��������
% 2018��12��
B=[2 1 3 4 3 2 6 2 3 4 3 1 2]
A=1;
figure(1);
zplane(B,A);
h=findobj(gcf,'type','line');
set(h,'linewidth',2);
figure(2)'
freqz(B,A);
h=findobj(gcf,'type','line');
set(h,'linewidth',2);

