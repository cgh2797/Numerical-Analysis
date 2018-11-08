%function approx=linearsp(x,y,x_q)
%i=max(find(x<=x_q));
%if i==length(x)
%    approx=y(i);
%else
%    approx=(y(i+1)-y(i))*(x_q-x(i))/(x(i+1)-x(i))+y(i);
%end

close all
clear;
x=[0 1 2 3];
y=[0 1 -1 1];
plot(x,y,'o')
t=[0:0.1:3];
for i=1:length(t)
    t_o(i)=linearsp(x,y,t(i));
end
hold on;
plot(t,t_o);
