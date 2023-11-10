x=-pi:pi/100:pi;
y=sin(x);
xn=x(1:25:end);
yn=y(1:25:end);
x1=x(1:5:end);
y2=interp1(xn,yn,x1,'linear');
y3=interp1(xn,yn,x1,'spline');
plot(x1,sin(x1),'r',x1,y2,'b-',x1,y3,'k-')