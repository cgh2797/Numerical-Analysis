function y=mac(x,n)
y=0;

for i=1:n
    i=i-1;
   y=y+(x^i)/factorial(i);
 end
