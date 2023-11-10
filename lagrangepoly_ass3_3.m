close all;
clear;
clc;
n=input('Enter the degree of the polynomial:');
x=linspace(-1,1,100);
fx=1./(1+x.^2);
x1=(linspace(-1,1,n+1))';
fx1=1./(1+x1.^2);
L = zeros(n+1);
for i = 1:n+1 % for rows
    v=1;
    for j=1:n+1 % for making polynomial
        if i~=j
            v=conv(v,poly(x1(j)))/(x1(i)-x1(j));
        end
    end
    L(i,:)=v*fx1(i);
end
P=sum(L);
x1=linspace(-1,1,100);
y1=polyval(P,x1);
plot(x,fx,'r')
hold on
plot(x1,y1,'b--')
title('Pn(x) and f(x) vs x')
xlabel('x')
ylabel('Pn(x) and f(x)')
legend({'f(x)','Pn(x)'},'location','northeast')
xlim([-1 1])
ylim([0.5 1])

