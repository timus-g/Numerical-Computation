function [a,b] = linefit_des(x,y)
n=length(x);
X =[x,ones(n,1)];
res=(X'*X)\(X'*y);
a=res(1);
b=res(2);