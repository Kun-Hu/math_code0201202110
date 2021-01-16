clear;clc;close all;set(0,'defaulttextinterpreter', 'latex')
rng('default')
% author: Kun Hu, Xiaofeng Pan
% Work unit: Jiangsu Foreign Language School
% last changed: 2021,01,13
% �������20�����ݵ�

%% 20�����ݵ� �������
x_obs=linspace(0,2*pi,20)';
y_obs=sin(x_obs)+1*randn(size(x_obs));
observation=[x_obs,y_obs]

plot(x_obs,y_obs,'b.-','MarkerSize',12,'linewidth',2);hold on
plot(x_obs,y_obs,'r.','MarkerSize',20,'linewidth',2);hold on;
xlabel('$x$');ylabel('$y$')
set(gca,'FontSize',12);
set(gcf,'Position',[300,500,600,440])%����ͼƬλ�ô�С
legend('�������','20�����ݵ�')

%% 200���Ⱦ����ݵ� �������
load 200_pionts_x.mat x_obs
load 200_pionts_y.mat y_obs
observation2=[x_obs,y_obs];
figure
plot(x_obs,y_obs,'b.-','MarkerSize',12,'linewidth',1);hold on
plot(x_obs,y_obs,'r.','MarkerSize',10,'linewidth',1);hold on;
xlabel('$x$');ylabel('$y$')
set(gca,'FontSize',12);
set(gcf,'Position',[300,500,600,440])%����ͼƬλ�ô�С
legend('�������','200�����ݵ�')
