% exm2_RLC.m
close all;
R=1;   L=1;   C=1;
A=[-R/L -1/L;1/C 0];    
B=[1/L;0];    
C=[0 1];    
D=[0];
sys = ss(A,B,C,D); 
% ״̬���������
dt=0.01;
t=0:dt:20;
% ����
et0=zeros(1,length(t)); 
et1=ones(1,length(t)); 
et2=sin(2*t);
et3=exp(-t);
et=et2;
% vC0: ���ݵ�ѹ����ʼ״̬
% IL0: ���ݵ�������ʼ״̬
vC0=2;iL0=1;
rzit=lsim(sys,et0,t,[vC0;iL0]);        % ��������Ӧ
plot(t,rzit);
rzst=lsim(sys,et,t);                          % ��״̬��Ӧ
figure
plot(t,rzst)
[rt t x]=lsim(sys,et,t,[vC0;iL0]);     % ȫ��Ӧ
% ״̬�켣ͼ
figure;
plot(x(:,1),x(:,2));title('״̬�켣ͼ');