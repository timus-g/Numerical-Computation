x=1:100;
z=10+0.5*x;
y=(10+0.5*x)+rand(1,length(x))*std(z);
plot(x,y,'ro')
p=polyfit(x,y,1);
yp=polyval(p,x);
hold on
plot(x,yp,'b--')
xlable('x')
ylable('y')
legend('Obs.','Line fit')