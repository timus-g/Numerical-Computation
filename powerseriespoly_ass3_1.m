n=input('Enter the degree of the polynomial:');
x=linspace(-1,1,100);
fx=1./(1+x.^2);
x1=linspace(-1,1,n+1);
fx1=1./(1+x1.^2);
co_eff=Coeff(x1,fx1);% Finding the coefficient matrix
x2=linspace(-1,1,100);
y1 = PolyEval(co_eff',x2);% Finding the polynomial value of degreen
px=y1';
hold on
plot(x,fx,'k-')
plot(x2,px,'b--')
title('Pn(x) and f(x) vs x')
xlabel('x')
ylabel('Pn(x) and f(x)')
legend({'f(x)','Pn(x)'},'location','northeast')
xlim([-1 1])
ylim([0.5 1])