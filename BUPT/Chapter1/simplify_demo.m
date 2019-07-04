clear all;
syms t;
y1=exp(-2*t)*cos(3*t)*heaviside(t);
y2=diff(y1)
y3=simplify(y2)