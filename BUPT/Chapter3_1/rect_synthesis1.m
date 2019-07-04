% 例1，傅里叶级数合成，数值计算
% 北京邮电大学，尹霄丽
% 2018年12月
tao=0.2;
T1=1;
w1=2*pi/T1;
t=linspace(-T1,T1,501);
x=tao/T1*ones(size(t));
N=79;
for n=1:N
    an=2*tao/T1*sinc(n*w1/T1);
    x=x+an*cos(n*w1*t);
end
plot(t,x,'linewidth',1);
xlabel('t (s)');
ylabel(['f_N(t), N = ' num2str(N)]);