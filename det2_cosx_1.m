clear; clc; close all;
n=100;
h=2*pi/n;
X = -pi:h:pi;
i = length(X);
Y = cos(X);
Y1 = -cos(X);
X1 = X(2:i-1);
Y2 = (Y(1:i-2)-2*Y(2:i-1)+Y(3:i))/(h^2);
plot(X,Y,'k',X,Y1,'r',X1,Y2,'bo')
grid on