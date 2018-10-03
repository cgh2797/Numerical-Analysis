%finite_difference
clear
close all
n=17;
iter=1;
err(1)=0;
for i= 1:n
   i=i-1;
   h=10^(-i);
x=abs(sec(1)^2-(tan(1+i)-tan(1))/i);
err(iter)=x
iter=iter+1;
end
i=sqrt(eps)
epserr=abs(sec(1)^2-(tan(1+i)-tan(1))/i);

%figure(1)
%plot(err,'-ro')
%grid on
figure(2)
semilogy(err,'-ro')
xlabel('iter')
ylabel('절대 오차')
grid on
%q2
[minx,miny]=min(err)

%minx=2.988041983011690
%miny=14
%epserr= 7.934126200481728e-08
q3=abs(minx-epserr)
%q3= 2.988041903670428
