clear; clc; close all;
n=10;
h=2*pi/n;
X = -pi:h:pi;
i = length(X);
Y = cos(X);
Y1 = -sin(X);
Y2 = zeros(i,1);
Y2(1) = 0;
Y2(length(X))= 0; 
Y2(2:i-1) = (Y(3:i)-Y(1:i-2))/(2*h);
plot(X,Y,'k',X,Y1,'r',X,Y2,'b')