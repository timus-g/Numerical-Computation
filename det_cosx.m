clear; clc; close all;
n=30;
h=2*pi/n;
X = -pi:h:pi;
Y = cos(X);
X1 = X(2:end);
Y1 = (Y(2:end)-Y(1:end-1))/h;
Y2 = -sin(X);
plot(X,Y,'r',X,Y2,'k',X1,Y1,'b')
grid on
legend('cos(x)','-sin(x)','d/dx(cos(x))')