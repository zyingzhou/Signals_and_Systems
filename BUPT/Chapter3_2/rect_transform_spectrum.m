% ��5�����������ź�Ƶ��ͼ�Ļ���
% �����ʵ��ѧ��������
% 2018��12��
E=1;
tao=1;
w1=2*pi/tao;
w=-5*w1:0.01:5*w1;
% Sa(pi*t)=sinc(t)
F=E*tao*sinc(w*tao/2/pi);
plot(w,F,'linewidth',2);
xlabel('\omega');
ylabel('|F(\omega)|');
xlim([w(1) w(end)]);