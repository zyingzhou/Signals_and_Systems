% exm11_fir_frequency_response.m
% ��11����ɢϵͳƵ�����ԣ�FIRϵͳ��ʾ����1
% �����ʵ��ѧ��������
% 2018��12��
close all;
w=-4*pi:0.01:4*pi;
H=(1+exp(-j*w))/2;
subplot(2,1,1);
plot(w,abs(H),'linewidth',2);
xlabel('\omega');
ylabel('|H(e^j^\omega)|')
xlim([w(1) w(end)]);
subplot(2,1,2);
plot(w,angle(H),'linewidth',2);
xlabel('\omega');
ylabel('\phi(\omega)');
xlim([w(1) w(end)]);