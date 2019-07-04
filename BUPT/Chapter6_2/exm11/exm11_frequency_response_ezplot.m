% exm11_frequency_response_ezplot.m
% ��11����ɢϵͳƵ�����ԣ�FIRϵͳ��ʾ����2
% �����ʵ��ѧ��������
% 2018��12��
close all;
syms n z;
N=8;
X=1/N;
for n=1:N
    X=X+power(z,-n)/N;
    XX=subs(X,'z','exp(i*w)');
    h=ezplot(abs(XX));
    set(h,'linewidth',2)
    pause(0.1);
end
