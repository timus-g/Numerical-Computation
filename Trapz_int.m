function res = Trapz_int(x,fx)
h = (x(end)-x(1))/length(x);
res = 0;
for i = 1 : length(x)-1
    res = res+h*(fx(i)+fx(1+i))/2;
end