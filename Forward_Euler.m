clc
clear
close all
a=0;b=3;
n=3;
h=(b-a)/n
f = @(t,y) y;
y(1)=1;

for i=1:n
    t(i)=a+(i-1)*h;
    y(i+1)=y(i)+h*f(t(i),y(i));
    
end
 t(n+1)=b
x=linspace(0,3,4)
plot(t,y,'-o')
hold on
t_1=0:0.1:3;
plot(t_1,exp(t_1))
xlabel('t')
ylabel('y')
legend('approx','function')
