N=11;
n=(0:N-1)';
w=window(@rectwin,N);
stem(n,w,'linewidth',2);
xlabel('n');
ylabel('R_N(n)');
ylim([0 1.5]);