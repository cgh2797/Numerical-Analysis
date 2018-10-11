a=[-1 2 1;2 1 0; 4 2 2 ];
b=[4; 3 ; 8];

%gauss elimination
x=[0 ; 0; 0];
% upper triangular matrix
% n: sizeof(b), i,j 
n=size(a,1);

for j=1 : n-1   % from 1 
       for  i=j+1: n   % to the end 
              b(i) = b(i)-b(j)*(a( i , j) / a(j, j) );
              a(i,:)=a(i,:)-a(j,:)* (a( i , j) / a(j, j) );
       end
end
a
b
 

x(n)=b(n)/a(n,n);
for i=n-1:-1:1
    temp=0;
    for k=i+1 :n
        temp=temp+a(i,k)*x(k);
    end
    x(i)=(b(i)-temp)/a(i,i);
end
x
