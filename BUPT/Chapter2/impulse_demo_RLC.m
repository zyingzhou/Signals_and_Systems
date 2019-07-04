% impulse_demo_RLC.m
% µÚ¶şÕÂÀı5
R=0.2;
L=1;
C=1;
w0=1/sqrt(L*C);
f0=w0/2/pi;
t=0:0.01:5/f0;
A=[1 R/L 1/L/C];
B=[1/L/C];
impulse(B,A,t);
