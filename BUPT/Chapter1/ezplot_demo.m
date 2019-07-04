syms t T;
w=2*pi/T;
x=sin(w*t);
x1=subs(x,'T',5);
ezplot(x1,[0 10]);