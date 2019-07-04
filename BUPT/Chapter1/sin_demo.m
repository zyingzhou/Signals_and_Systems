n=0:31;
% Êý×Ö½ÇÆµÂÊ
w0=pi/8;
x=sin(w0*n);
stem(n,x,'linewidth',2);
xlabel('n');
ylabel('x(n)');
axis([0 max(n) -1.1 1.1]);