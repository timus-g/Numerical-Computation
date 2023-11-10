%  Newton Polynomia method
% Taking input the degree of the polynomial
n=input('Enter the degree of the polynomial:');
% Creating the given function...
x=linspace(-1,1,100);
fx=1./(1+x.^2);
% Taking points to interpolate...
x1=linspace(-1,1,n+1);
fx1=1./(1+x1.^2);
x2=linspace(-1,1,100);
px=Newtonpoly(x1,fx1,x2);
plot(x,fx,'k-')
hold on
plot(x2,px,'b--')
title('Pn(x) and f(x) vs x')
xlabel('x')
ylabel('Pn(x) and f(x)')
legend({'f(x)','Pn(x)'},'location','northeast')
xlim([-1 1])
ylim([0.5 1])