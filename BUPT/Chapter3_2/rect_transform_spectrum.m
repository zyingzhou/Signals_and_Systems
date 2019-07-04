% 例5，矩形脉冲信号频谱图的绘制
% 北京邮电大学，尹霄丽
% 2018年12月
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