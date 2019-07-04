% 例3，RC电路，正弦信号通过低通滤波器的稳态响应
% 北京邮电大学，尹霄丽
% 2018年12月
syms R C w;
ZR=R;
ZC=1/(i*w*C);
H=ZC/(ZR+ZC)
R=2;    
C=1;
H_w=subs(H);
t=0:0.01:4*pi;
e=sin(t)+sin(30*t);
H_w1=subs(H_w,'w',1);
H_w2=subs(H_w,'w',30);
r=abs(H_w1)*sin(t+angle(H_w1))...
    +abs(H_w2)*sin(30*t+angle(H_w2))
subplot(2,1,1);
hh=plot(t,e);
set(hh,'linewidth',2);
xlim([t(1) t(end)]);
xlabel('t');
ylabel('e(t)');
subplot(2,1,2);
hh=plot(t,r);
set(hh,'linewidth',2);
xlim([t(1) t(end)]);
xlabel('t');
ylabel('r(t)');