function plot_ellipse(x,y)
plot(x,y)
xlabel('Major axis')
ylabel('Minor axis')
title('Ellipse')
axis([max(x)+1 min(x)-1 max(y)+1 min(y)-1])