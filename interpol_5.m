x=[1 2 3 4];
y = [1 5 6 9];
n = length(x');
i=n-1:-1:0;
p=x'.^i;
a=LU_solve(p,y');
disp(a)