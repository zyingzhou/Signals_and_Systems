clear all;
syms t T;
A=cos(2*pi*t/T);
B=sin(2*pi*t/T);
x=A*B;
x1=subs(x,'T' ,4);
ezplot(x1,[0,4]);