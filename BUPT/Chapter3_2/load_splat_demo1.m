% 例7，绘制信号的波形图，下例为频谱图
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

Y=fft(y-mean(y));
figure;
f=(0:N-1)/N*Fs;
plot(f,abs(Y));
xlabel('Frequency (Hz)');
ylabel('|Y(f)|');
y2=ifft(Y);
figure();
plot(t,y2);
xlabel('t (s)');     
ylabel('y2(t)');
title('waveform');