clear;clc;close all;set(0,'defaulttextinterpreter', 'latex')
% author: Kun Hu, Xiaofeng Pan
% Work unit: Jiangsu Foreign Language School
% last changed: 2021,01,13

x_obs=[1;2];
y_obs=[1;4];
x=linspace(-1,4,2000);
y=3*x-2;

plot(x,y,'b-','linewidth',3);hold on;
plot(x_obs,y_obs,'.r','MarkerSize',30)
xlabel('$x$');ylabel('$y$')
set(gca,'FontSize',15);
set(gcf,'Position',[300,500,600,400])%调整图片位置大小
set(gca,'Xtick',-1:4)
set(gca,'Ytick',-5:10)
grid on