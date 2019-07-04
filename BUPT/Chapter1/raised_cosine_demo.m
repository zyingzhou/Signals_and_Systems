clear all;
syms t w;
x=(1+cos(w*t))/2;
E=int(x^2,t,-pi/w,pi/w)
x1=subs(x,'w',pi);
ezplot(x1,[-1 1]);