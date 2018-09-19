
%f.m 
%function output =f(x)
%output=x*x-4*sin(x)


%bisection method
clear;
close all
a=1;
b=3;
tol=10^(-5)
iter=1;

 

while abs(b-a)>tol    % or while abs(f(m)) >tol
        m=a+(b-a)/2;
        if   f(a) * f(m) < 0
             b=m;
        else
             a=m;
        end
        x(iter)=m;
        iter=iter+1;
end
 iter
 m
 f(m)
 plot(x,'-ro');
 grid on;
 xlabel('#iteration ')
 ylabel('Approximate solutions')

