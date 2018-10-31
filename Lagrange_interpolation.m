%x=[1 2 3];
%y=[1 4 9];
%xx=2.5;
%lag(x, y, xx)

function output=lag (x, y, xx)
s=0 
n=length(x)
for i=1:n
        product = y(i)   
        for j=1:n
             if i~=j 
                 product=product*(xx-x(j))/(x(i)-x(j));
             end
        end
       s=s+product;
 end
output=s
