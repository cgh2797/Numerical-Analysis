clear
close all;
x=[-1.5 -0.75 0 0.75 1.5]
y=[-14.10 -0.9315 0 0.9315 14.10]

plot(x, y, 'o');
hold on;
j=1;
for xx=-1.5:0.1:1.5
    output(j)=lag(x,y,xx);
    j=j+1
end
z=[-1.5:0.1:1.5];
plot(z,output,'-r');
hold on;
grid on;
plot(z,tan(z),'-b')
legend('interpolation','original')
error=abs(tan(0.9)-lag(x,y,0.9))
