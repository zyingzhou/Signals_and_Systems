% exm11_frequency_response_ezplot.m
% 例11，离散系统频响特性，FIR系统表示方法2
% 北京邮电大学，尹霄丽
% 2018年12月
close all;
syms n z;
N=8;
X=1/N;
for n=1:N
    X=X+power(z,-n)/N;
    XX=subs(X,'z','exp(i*w)');
    h=ezplot(abs(XX));
    set(h,'linewidth',2)
    pause(0.1);
end
