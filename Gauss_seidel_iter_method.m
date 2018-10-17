clear
close all
A=[8 2 -4; 5 10 -3; -1 5 20];
b=[6; 12; 24];
x=[0 ;0 ;0];
n=length(b)
D=[diag(diag(A))]
R=A-D
itermax=100
tol=10^(-3)

for i=1 :itermax
    oldx=x;%previous iter solution
    for j=1:n
        x(j)=D(j,j)\(b(j)-R(j,:)*x);
    end
    z(i)=norm(x-oldx,inf);
    if z(i)<tol
        break;
    end
end
semilogy(z);
grid on
