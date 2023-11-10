function [x1,y1]=RotateEllipse(x,y,t)
%angle with x-axis, t(in degrees)
t=t*pi/180;
x1=x.*cos(t)+y.*sin(t);
y1=-x.*sin(t)+y.*cos(t);
