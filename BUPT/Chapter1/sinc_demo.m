t=linspace(-10,10,501);
x=sinc(t/pi);
subplot(2,1,1);
plot(t,x); grid on;
xlabel('t');ylabel('Sa(t)');
y=sinc(t);
subplot(2,1,2);
plot(t,y);grid on;
xlabel('t');
ylabel('sinc(t)');