% exm9_second_order_poles_freqs.m
% 例9：2阶系统零极点分布频响特性之间的关系
% 北京邮电大学，尹霄丽
% 2018年12月
wn=1;
for zeta=0:0.05:1.2
    B=[0 0 wn*wn];
    A=[1 2*wn*zeta wn*wn];
    % 零极点图
    figure(1);
    hold off;
    sys=tf(B,A);
    pzplot(sys);
    h=findobj(gca,'type','line');
    set(gcf,'position',[100,100,400,400]);
    set(h,'linewidth',2);
    axis([-4 0 -1 1]);
    %频率响应特性
    figure(2);
    hold off;
    w=0:0.01:6;
    freqs(N,D,w);
    h=findobj(gcf,'type','line');
    set(h,'linewidth',2);
    set(gcf,'position',[600,100,600,400]);
    axis([0 6 0 100]);
    % 单位冲激响应
%     impulse(N,D);
%     h=findobj(gcf,'type','line');
%     set(h,'linewidth',2);
%     axis([0 20 -1 1]);
    pause(0.1);
    hold on
end