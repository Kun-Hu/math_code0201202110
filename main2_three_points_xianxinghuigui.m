clear;clc;close all;set(0,'defaulttextinterpreter', 'latex')
% author: Kun Hu, Xiaofeng Pan
% Work unit: Jiangsu Foreign Language School
% last changed: 2021,01,13

x_obs=[1;2;3];
y_obs=[1;4;9];
x_test=linspace(-1,4,2000);
x_mean=mean(x_obs);
y_mean=mean(y_obs);

for i=1:length(x_obs)
    A(i)=(x_obs(i)-x_mean)*(y_obs(i)-y_mean);
    B(i)=(x_obs(i)-x_mean).^2;
end
b=sum(A)/sum(B);
a=y_mean-b*x_mean;

y=@(x) b*x+a;%线性回归结果
y_test=y(x_test);

plot(x_test,y_test,'b-','linewidth',3);hold on;
plot(x_obs,y_obs,'.r','MarkerSize',22)
xlabel('$x$');ylabel('$y$')
set(gca,'FontSize',12);
set(gcf,'Position',[300,500,600,400])%调整图片位置大小
set(gca,'Xtick',-1:4)
set(gca,'Ytick',-8:15)
grid on