clear; clc; close all;
n=20;
h=2*pi/n;
X = -pi:h:pi;
i = length(X);
Y = cos(X);
Y1 = -sin(X);
X2 = X(1:i-2);
Y2 = (-3*Y(1:i-2)+4*Y(2:i-1)-Y(3:i))/(2*h);
plot(X,Y,'k',X,Y1,'r',X2,Y2,'b')