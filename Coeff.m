function a =Coeff(x,y)
n = length(x');
i=n-1:-1:0;
p=x'.^i;
a=LU_solve(p,y');