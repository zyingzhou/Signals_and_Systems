% exm11_zplane_freqz.m
% ��11����ɢϵͳƵ�����ԣ�FIRϵͳ��ʾ����3
% �����ʵ��ѧ��������
% 2018��12��
N=7;
B=ones(1,N)/N;
A=1;
figure(1);
zplane(B,A);
h=findobj(gcf,'type','line');
set(h,'linewidth',2);
figure(2)'
freqz(B,A);
h=findobj(gcf,'type','line');
set(h,'linewidth',2);

