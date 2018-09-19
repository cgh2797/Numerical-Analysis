clear
close all
x=3
tol=10^(-5)
iter=2
xx(1)=x
while abs(f1(x))>tol
    x=x-f1(x)/(2*x-4*cos(x));
    xx(iter)=x;
    iter=iter+1;
end
f1(x)
plot(xx,'-ro')
grid on
xlabel('iter')
ylabel('approximate solutions')
