% conv_demo.m
% µÚ¶þÕÂÀý8
close all;clear all;clc;
N=5;
x=ones(1,N);
h=x;
nx=0:N-1;
nh=nx;
y=conv(x,h);
ny_min=min(nx)+min(nh);
ny_max=max(nx)+max(nh);
ny=ny_min:ny_max;
stem(ny,y,'linewidth',2);
xlabel('n');
ylabel('x(n)*x(n)');
length_test=length(x)+length(h)-length(y)