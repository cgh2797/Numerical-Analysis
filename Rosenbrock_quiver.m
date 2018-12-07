clear all;
clear
close all

syms x  y   
f=100*(y-x^2)^2+(1-x)^2  
grad_f=gradient(f)   
hessian_f=hessian(f, [x, y]) 
 

[X,Y]=meshgrid(-2:0.1:2, -2:0.1:2);
G1=subs(grad_f(1), [x y], {X,Y});
G2=subs(grad_f(2), [x y], {X,Y});
quiver(X, Y, G1, G2);
xlabel('x1');
ylabel('y1');
