prompt="Enter the value of x:";
x=input(prompt);
n=0;
a=1;
ex_x=0;
while n<100
    a=(x^n)/factorial(n);
    ex_x=ex_x+a;
    n=n+1;
end
disp(ex_x)
disp(exp(x))