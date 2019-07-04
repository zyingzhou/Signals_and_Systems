% exm9_second_order_poles_freqs.m
% ��9��2��ϵͳ�㼫��ֲ�Ƶ������֮��Ĺ�ϵ
% �����ʵ��ѧ��������
% 2018��12��
wn=1;
for zeta=0:0.05:1.2
    B=[0 0 wn*wn];
    A=[1 2*wn*zeta wn*wn];
    % �㼫��ͼ
    figure(1);
    hold off;
    sys=tf(B,A);
    pzplot(sys);
    h=findobj(gca,'type','line');
    set(gcf,'position',[100,100,400,400]);
    set(h,'linewidth',2);
    axis([-4 0 -1 1]);
    %Ƶ����Ӧ����
    figure(2);
    hold off;
    w=0:0.01:6;
    freqs(N,D,w);
    h=findobj(gcf,'type','line');
    set(h,'linewidth',2);
    set(gcf,'position',[600,100,600,400]);
    axis([0 6 0 100]);
    % ��λ�弤��Ӧ
%     impulse(N,D);
%     h=findobj(gcf,'type','line');
%     set(h,'linewidth',2);
%     axis([0 20 -1 1]);
    pause(0.1);
    hold on
end