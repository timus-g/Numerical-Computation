x=[1 2 3 5 7 9 12 15 20];
y=gamma(x);
xn=1:1:20;
%xm=1:0.5:20;
y1=interp1(x,y,xn,'linear');
y2=interp1(x,y,xn,'spline');
y3=gamma(xn);
semilogy(x,y,'ro')
hold on
semilogy(xn,y1,'b-')
semilogy(xn,y2,'k-')
semilogy(xn,y3,'y-')
hold off