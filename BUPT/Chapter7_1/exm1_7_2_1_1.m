% exm1_7_2_1_1.m
% ��1
% MATLAB��ʾ�����
% �����ʵ��ѧ��������
% 2018��12��
set(0,'defaultAxesFontName','Microsoft YaHei UI')
A=[0 ,1/2,-1/2 ;-1,-1,0 ;1,0,-1];
B=[0 1 0]';
C=[0,0,1];
D=0;
sys = ss(A,B,C,D);    	% ����ϵͳ��������

x0 = [0;0;0];           	% ״̬������ֵ
dt=0.1;                      % ����ʱ����
t = 0:dt:12;           		% ʱ��ֵ
N=length(t);
e = ones(1,N);           % ����
[r,t,x] = lsim(sys,e,t,x0);	% ״̬�������
h=plot(t,r,'k-',t,x(:,1),'r-.',t,x(:,2),'m:',t,x(:,3),'b:');
set(h,'LineWidth',2);
legend('���','v_C(t)','i_L_1(t)','i_L_2(t)');
xlabel('ʱ��(s)');