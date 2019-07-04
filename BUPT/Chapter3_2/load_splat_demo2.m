% 例7~9，绘制信号的频谱图，傅里叶变换的性质演示
% 北京邮电大学，尹霄丽
% 2018年12月
clear all;
close all;
load splat
N=length(y);
sound(y,Fs);
Ts=1/Fs;
t=(0:N-1)*Ts;   
plot(t,y);
xlabel('t (s)');     
ylabel('y(t)');
title('waveform');

Y=fft(y);
Y3=conj(Y);
y3=ifft(Y3);
y3=real(y3);
figure;
plot(t,y3);
xlabel('t (s)');     
ylabel('y3(t)');
title('waveform');
sound(y3,Fs);
audiowrite('splat_flipud.wav',y3,Fs);

Y4=abs(Y);
Y5=exp(j*angle(Y));
w=[-pi:(2*pi/N):(pi-pi/N)];
y4=ifft((Y4));
y4=real(y4);
y5=ifft((Y5));
y5=real(y5);
figure;
subplot(2,1,1);
plot(t,y4);
xlabel('t (s)');     ylabel('y4(t)');
subplot(2,1,2);
plot(t,y5);
xlabel('t (s)');     ylabel('y5(t)');
sound(y4);pause(1.2);
sound(y5);
audiowrite('splat_abs.wav',y4,Fs);
audiowrite('splat_phase.wav',y5,Fs);