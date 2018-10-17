clear
close all
A=[8 2 -4; 5 10 -3; -1 5 20];
b=[6; 12; 24];
x=[0 ;0 ;0];
D=[diag(diag(A))]
R=A-D
itermax=100
tol=10^(-3)

for i=1 :itermax
   x(:,i+1)=D\(b-R*x(:,i));
   err=x(:,i+1)-x(:,i);
   z(i)=norm(err,inf);
    if err<tol
        break;
    end
end
x
semilogy(z);
grid on
