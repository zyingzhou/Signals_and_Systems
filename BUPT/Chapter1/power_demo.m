n=0:10;
x1=power(0.8,n);
stem(n,x1,'linewidth',2);
xlabel('n');
ylabel('a^n');
axis([n(1) n(end) -1.5 1.5]);
text(7,1,2,'a=0.8');