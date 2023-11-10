x=[1 2 4];
y = [1 3 3];
plot(x,y,'ko')
hold on
plot(x,y,'b-')
xn = 1:0.25:4;
y1 = interp1(x,y,xn,'linear');
y2 = interp1(x,y,xn,'spline');
plot(xn,y1,'k-')
plot(xn,y2,'g-')
hold off