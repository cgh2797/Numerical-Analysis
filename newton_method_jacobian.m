%function [out1,out2]=f_1(x)
%out1=x(1)+2*x(2)-2;
%out2=x(1)*x(1)+4*x(2)*x(2)-4
clear
close all
x=[1;1]
tol=10^(-5)
itermax=100;
for i=1: itermax
    J=[1,2;2*x(1),8*x(2)]
    [out_1,out_2]=f_1(x);
    oldx=x;                         % previous solution
    x=x-inv(J)*[out_1;out_2]
    error(i)=norm(oldx-x,1);
    if error(i)  < tol    %converge?
        break;
    end
end
x
semilogy(error);
xlabel('iteration')
ylabel('error')
grid on
