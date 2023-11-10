function[a,b,c]=linefit_quad(x,y)
%fit a line of form y = ax + c
n=length(x);
sumx4=sum(x.^4);
sumx3=sum(x.^3);
sumx2=sum(x.^2);
sumx=sum(x);
sum
sumxy=sum(x.*y);
sumy=sum(y);
B=[sumx2 sumx;sumx n];
C=[sumxy;sumy];
A=B\C;
a=A(1);
b=A(2);
c=A(3);