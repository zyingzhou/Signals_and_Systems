% house_loan.m
% 第二章例7
clear all;close all;
interest=4.9/12/100; 
y(1)=70;
x=0.8;
for ii=2:12*30
    y(ii)=y(ii-1)*(1+interest)-x;
    if y(ii)<=0
        x_last=y(ii-1);
        y(ii)=0;
        break;
    end
end
x_total=x*(ii-1)+x_last
N=length(y);
n=1:N;
stem(n,y);
xlabel('月份');
ylabel('应还贷数 (万元）');