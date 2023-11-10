x=linspace(-pi,pi,1000);
y=sinh(x);
z=tanh(x);
w=cosh(x);
hold on
plot(x,w,'g.')
plot(x,z,'r--')
plot(x,y,'b-')
legend('cosh','tanh','sinh')
grid on
hold off