% ��1, ����Ҷ����������г������չʾ
% �����ʵ��ѧ��������
% 2018��12��
set(0,'defaultAxesFontName','Microsoft YaHei UI')
tao=0.2;
T1=1;
w1=2*pi/T1;
t=linspace(-T1/2,T1/2,501);
x=tao/T1*ones(size(t));
N=6;
for n=1:N
    an=2*tao/T1*sinc(n*w1/T1);
    xn=an*cos(n*w1*t);
    subplot(2,3,n);
    plot(t,xn,'linewidth',2);
    xlabel('t (s)');
    ylabel(['��' num2str(n) '��г��']);
    ylim([-0.02 0.02]);
end