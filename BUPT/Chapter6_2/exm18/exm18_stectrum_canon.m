% exm18_stectrum_canon.m
% ��18����ɢϵͳ�˲�������ʾ
% �����ʵ��ѧ��������
% 2018��12��
% �����ߣ������ʵ��ѧ���Զ���ѧԺ2011���ߕF�
close all
% �뽫�ļ�canon.wav�ͱ�����������ͬ���ļ�����
% fsΪ������
% xΪ��������
[x,fs]=audioread('canon.wav');
% ������㣬��λs
offset=50;
% ʱ������λs
len=7;
n=fs*offset:fs*(offset+len);
x1=x(n);
% ��������
t=n/fs;plot(t,x1);
% ����ԭʼ����
sound(x1,fs);pause(len);
% ԭ�źŵ�����ͼ
figure;specgram(x1,256,fs);
% ��ͨ
%h=fir1(101,0.3);
% ��ͨ
%h=fir1(101,[0.2 0.5],'bandpass');
% ��ͨ
h=fir1(101,0.3,'high');
% ��λ��ֵ��Ӧ
figure
stem(0:length(h)-1,h);title('impuse response');
% ���þ���������
% Ƶ����Ӧ����
figure;
freqz(h,1);
h1=findobj(gcf,'type','line');
set(h1,'linewidth',2);
y=conv(x1,h);
y=y/max(y);
% �����˲���������ź�
sound(y,fs);
% �����˲����źŵ�����ͼ
figure;specgram(y);
% ��������źŲ���
figure;plot(y);
h2=findobj(gcf,'type','line');
set(h2,'linewidth',2);