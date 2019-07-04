% ��3���弤���и���Ҷ�����ϳ�
% �����ʵ��ѧ��������
% 2018��12��
T=1;         w1=2*pi/T;
t=-1.2*T:0.002:1.2*T;
f=ones(1,length(t))/T;       
clf;        plot(t,f,'r');        hold on
color=['r','g','b','m','y'];
for n=1:3
    fn=cos(n*w1*t)/T*2;
    f=f+fn;
    plot(t,fn,color(mod(n,5)+1),'linewidth',1);
end
h=plot(t,f,'k');      set(h,'linewidth',2);
xlim([t(1) t(end)]);