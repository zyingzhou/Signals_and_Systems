fs=8192;n=0:fs/2-1;
f1=262; 
f2=f1*power(2,2/12);
f3=f1*power(2,4/12);
f4=f1*power(2,5/12);
f5=f1*power(2,7/12);
f6=f1*power(2,9/12);
f7=f1*power(2,11/12);
fh1= f1*power(2,12/12);
x1=sin(n*2*pi*f1/fs);
x2=sin(n*2*pi*f2/fs);
x3=sin(n*2*pi*f3/fs);
x4=sin(n*2*pi*f4/fs);
x5=sin(n*2*pi*f5/fs);
x6=sin(n*2*pi*f6/fs);
x7=sin(n*2*pi*f7/fs);
xh1= sin(n*2*pi*fh1/fs);
% x=[x1 x2 x3 x4 x5 x6 x7 xh1];
% sound(x,fs);
y=[x3 x3 x4 x5 x5 x4 x3];
sound(y,fs);