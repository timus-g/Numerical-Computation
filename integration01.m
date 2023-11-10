clc;
clear;
close all;
y = -pi:pi/100:pi;
res1 = trapz(sin(y))
res2 = trapz(1+y)
