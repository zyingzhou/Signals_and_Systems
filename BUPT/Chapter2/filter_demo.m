% filter_demo.m
% �ڶ�����10
a=[1 -0.8];
b=[0 2];
N=30;
x=ones(1,N);
y=filter(b,a,x);
stem(0:N-1,y,'linewidth',2);
xlabel('n');
ylabel('step response');