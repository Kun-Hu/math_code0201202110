clear;clc;close all;set(0,'defaulttextinterpreter', 'latex')
rng('default')
% author: Kun Hu, Xiaofeng Pan
% Work unit: Jiangsu Foreign Language School
% last changed: 2021,01,13
% 3��������ֵ���20�����ݵ�

x_obs=linspace(0,2*pi,20)';
y_obs=sin(x_obs)+1*randn(size(x_obs));
x_test=linspace(0,2*pi,200)';
y_real=sin(x_test)+1*randn(size(x_test));

y1=interp1(x_obs,y_obs,x_test,'linear');%������Ͻ��
y2=interp1(x_obs,y_obs,x_test,'spline');%3��������Ͻ��

plot(x_test,y2,'b-','linewidth',2);hold on;
plot(x_obs,y_obs,'r.','MarkerSize',20,'linewidth',2);
xlabel('$x$');ylabel('$y$')
set(gca,'FontSize',12);
set(gcf,'Position',[300,500,600,440])%����ͼƬλ�ô�С
legend('����������ֵ���','20�����ݵ�')