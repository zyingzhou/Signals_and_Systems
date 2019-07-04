% 例4，半波整流信号的频谱
% 北京邮电大学，尹霄丽
% 2018年12月
syms T t n;
x=cos(2*pi/T*t);
%被积函数
integrand=x*exp(-i*n*2*pi/T*t)/T;
%积分
Xn=int(integrand,t,'-T/4','T/4');
Xn=simplify(Xn)
Xn_1=int(x*exp(i*2*pi/T*t)/T,t,'-T/4','T/4');
Xn1=int(x*exp(-i*2*pi/T*t)/T,t,'-T/4','T/4');
Xnn=[subs(Xn,'n',-10:-2) Xn_1...
    subs(Xn,'n',0) Xn1...
    subs(Xn,'n',2:10)];
n=-10:10;
stem(n,abs(Xnn),'linewidth',2);
xlabel('n');
ylabel('|Fn|');