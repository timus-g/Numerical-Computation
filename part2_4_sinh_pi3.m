x=pi/3;
a=1;
n=0;
h=0;
while a>0.0001
    a=x^(2*n+1)/factorial(2*n+1);
    n=n+1;
    h=h+a;
end
disp(h)