% 例10，连续时间傅里叶变换的符号计算
% 北京邮电大学，尹霄丽
% 2018年12月
clear;
x1=sym('(1/2)*exp(-2*t)*heaviside(t)');
x2=sym('exp(-4*t)*heaviside(t)');
subplot(2,1,1);
ezplot(x1,[0,2]);
legend('x1');
axis([0 2 0 1]);
subplot(2,1,2);
ezplot(x2,[0,2]);
legend('x2');
axis([0 2 0 1]);

X1=fourier(x1);
X2=fourier(x2);
subplot(2,1,1);
ezplot(abs(X1),[-20,20]);legend('|X1|')
axis([-20 20 0 0.3]);
subplot(2,1,2);
ezplot(abs(X2),[-20,20]);legend('|X2|')
axis([-20 20 0 0.3]);
