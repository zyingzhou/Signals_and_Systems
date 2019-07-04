% 例4，RC电路，理想通滤波器单位冲激响应和频响特性的关系
% 北京邮电大学，尹霄丽
% 2018年12月
clear all;
close all;
syms w;
pause(2);
for wc=1:0.1:5
    H=(heaviside(w+wc)-heaviside(w-wc));
    t=-10:0.01:10;
    h=wc/pi*sinc(wc/pi*t);
    subplot(2,1,1);
    h1=ezplot(abs(H),[-10,10]);
    set(h1,'linewidth',2);
    axis([-10 10 -0.5 1.2]);
    subplot(2,1,2);
    plot(t,h,'linewidth',2);
    axis([-10 10 -0.5 2]);
    xlabel('t');
    ylabel('h(t)');
    pause(0.1);
end