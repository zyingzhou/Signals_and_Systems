% 例6，chirp信号抽样，欠采样现象，频谱混叠
% 北京邮电大学，尹霄丽
% 2018年12月
fs=8192;
T=1/fs;
n=[0:fs*10];
t=n*T;
f0=100;
bate=5000;
x=sin(2*pi*f0*t+bate*t.*t/2);
specgram(x,[],8192);
sound(x,fs);
audiowrite('sin_chirp.wav',x,fs);