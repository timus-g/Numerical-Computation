function [x1,y1] = getEllipseXYponits(a,b)
%Creates an ellipse with major axis a, minor axis b
theta=linspace(0,2*pi,100);
 x1=a*cos(theta);
 y1=b*sin(theta);
