clear 
clc
close all
 
x=[18 6 30 48 6 36 18 18 30 36]';
n=length(x)
b=[25 17 48 58 23 40 30 39 40 60]';
a=[ones(n,1) x];
p=inv(a'*a)*a'*b
x_plot=[0:0.1:50];
plot(x_plot,p(1)+p(2)*x_plot);
hold on 
plot(x,b,'o')
grid on
p(1)+p(2)*60
