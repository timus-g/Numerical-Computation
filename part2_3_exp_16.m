x=1.6;
n=0;
e=0;
a=1;
while a>0.0001
    a=1.6^n/factorial(n);
    n=n+1;
    e=e+a;
end
disp(e)

