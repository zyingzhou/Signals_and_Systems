clear all;close all;
t0=0;    
 tf=5;      
dt=0.01;
t=[t0:dt:tf];
alpha=-0.5;w=10;
x=exp((alpha+j*w)*t);
subplot(2,2,1);plot(t,real(x),'linewidth',2);
xlim([t(1) t(end)]);
grid on;xlabel('t��);
ylabel('real part');
subplot(2,2,2);plot(t,imag(x),'linewidth',2);
subplot(2,2,3);plot(t,abs(x),'linewidth',2);
subplot(2,2,4);plot(t,angle(x),'linewidth',2);