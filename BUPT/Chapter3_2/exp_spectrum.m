% ��6������ָ���źŵ�Ƶ��
% �����ʵ��ѧ��������
% 2018��12��
a=2;w_half=a;
w=-5*w_half:0.01:5*w_half;
F=1./(a+j*w);
subplot(2,2,1);plot(w,abs(F));
xlabel('\omega');ylabel('|F(\omega)|');
subplot(2,2,2);plot(w,angle(F));
xlabel('\omega');ylabel('\phi(\omega)');
subplot(2,2,3);plot(w,real(F));
xlabel('\omega');ylabel('R(\omega)');
subplot(2,2,4);plot(w,imag(F));
xlabel('\omega');ylabel('I(\omega)');