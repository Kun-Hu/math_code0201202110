clear;clc;close all;set(0,'defaulttextinterpreter', 'latex')
% author: Kun Hu, Xiaofeng Pan
% Work unit: Jiangsu Foreign Language School
% last changed: 2021,01,13

x_obs=[1;2;3];
y_obs=[1;4;9];

x_test1=linspace(-1,2,2000);
x_test2=linspace(2,4,2000);
y_test1=3*x_test1-2;
y_test2=5*x_test2-6;

plot(x_test1,y_test1,'b-','linewidth',3);hold on;
plot(x_test2,y_test2,'b-','linewidth',3);hold on;
plot(x_obs,y_obs,'r.','MarkerSize',30,'linewidth',3)
xlabel('$x$');ylabel('$y$')
set(gca,'FontSize',12);
set(gcf,'Position',[300,500,600,400])%调整图片位置大小
set(gca,'Xtick',-1:4)
set(gca,'Ytick',-8:15)
xlim([-1;4])
ylim([-3;12])
grid on