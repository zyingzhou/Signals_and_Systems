% exm1_7_2_1_1.m
% 例1
% MATLAB表示及求解
% 北京邮电大学，尹霄丽
% 2018年12月
set(0,'defaultAxesFontName','Microsoft YaHei UI')
A=[0 ,1/2,-1/2 ;-1,-1,0 ;1,0,-1];
B=[0 1 0]';
C=[0,0,1];
D=0;
sys = ss(A,B,C,D);    	% 定义系统参数矩阵

x0 = [0;0;0];           	% 状态变量初值
dt=0.1;                      % 仿真时间间隔
t = 0:dt:12;           		% 时间值
N=length(t);
e = ones(1,N);           % 输入
[r,t,x] = lsim(sys,e,t,x0);	% 状态方程求解
h=plot(t,r,'k-',t,x(:,1),'r-.',t,x(:,2),'m:',t,x(:,3),'b:');
set(h,'LineWidth',2);
legend('输出','v_C(t)','i_L_1(t)','i_L_2(t)');
xlabel('时间(s)');