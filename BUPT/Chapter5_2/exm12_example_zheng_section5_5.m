% exm12_example_zheng_section5_5.m
% 例12：一个综合应用实例
% 北京邮电大学，尹霄丽
% 2018年12月
clc;close all;clear all;
syms L C R s;
Z1=1/(1/R+s*C);Z2=s*L;H=Z1/(Z1+Z2)
L=2;C=0.1;R=10;
H1=subs(H),H1=simplify(H1)
L=2;C=0.1;R=sqrt(L/C);
wc=1/sqrt(L*C)
H2=subs(H)
Hw=subs(H2,'s','i*w')
figure;subplot(2,1,1);
ezplot(abs(Hw),[-3*wc,3*wc]);
xlabel('\omega(rad/s)');
ylabel('amplitude response');
subplot(2,1,2);
ezplot(angle(Hw),[-3*wc,3*wc]);
xlabel('\omega(rad/s)');ylabel('phase response');