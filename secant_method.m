%secant_method
%function y= f1(x);
%y=cos(x)+1/(1+exp(-2*x));

clear
close all
figure(1)
fplot('f1',[-5,5])

grid on
x0=-3;
x1=3;

%We choose x0=-3,x1=3
%since f1(x1)*f1(x0)<0
%by intermediate value theorem solution exists in interval
temp=0;
tol=10^(-5)
iter=2
xx(1)=x1
while abs(f1(x1))>tol
    temp=x1-f1(x1)*(x1-x0)/(f1(x1)-f1(x0));
    x0=x1;
    x1=temp;
    xx(iter)=x1;
    iter=iter+1;
end
f1(x1)
figure(2)
plot(xx,'-ro')
grid on
xlabel('iter')
ylabel('approx')
