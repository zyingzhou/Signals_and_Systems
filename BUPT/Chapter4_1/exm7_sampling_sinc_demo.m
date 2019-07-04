% ��7���ɳ����ź��ؽ������ź�
% �����ʵ��ѧ��������
% 2018��12��
clear
Ts=1;
Fs=1/Ts;
n = 0:10;  
x = sin(n);
t = 0:0.25:10;
nTs=0:10;
tt=ones(length(n),1)*t-nTs'*ones(1,length(t));
x_sinc=x*sinc(Fs*tt);
hold on; 
plot(t,x_sinc,'b','linewidth',2);
hold on;
stem(n*Ts,x,'r','linewidth',2);
xlabel('t (s)');
legend('x\_sinc','x(n)');