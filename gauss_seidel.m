odefun = @(x, y) [y(2); 5*y(2) - 10*y(1) + 10*x];

bcfun = @(ya, yb) [ya(1); yb(1) - 2];

solinit = bvpinit(linspace(0, 1, 10), [0 0]);
sol = bvp4c(odefun, bcfun, solinit);

x = linspace(0, 1, 100);
y = deval(sol, x);
plot(x, y(1, :))
xlabel('x')
ylabel('y')
title('Solution of y'''' - 5y'' + 10y = 10x')

% Add vertical line and horizontal line at x=0.8 and y=y(0.8)
x0 = 0.8;
y0 = deval(sol, x0);
hold on
line([x0 x0], [-0.5 y0(1)], 'Color', 'red', 'LineStyle', '--')
line([0 x0], [y0(1) y0(1)], 'Color', 'red', 'LineStyle', '--')
text(x0+0.02, y0(1)+0.02, ['y(0.8) = ' num2str(y0(1))])
hold off

