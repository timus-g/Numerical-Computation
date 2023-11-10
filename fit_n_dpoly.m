%function fit_n_dpoly(n)
clear
clc
format short
x = [1 2 3 4 5];
y = [2 5 3 8 7];
n = input("Enter the degree of polynomial (n) : ");
A = zeros(n+1);
B = zeros(n,1);
for i = 1 : n+1
    for j = i:n+i
        A(i,j-i+1) = sum (x.^(j-1)); 
    end
    B(i,:)=sum(x.^(i-1).*y);
end
X=A\B;
disp(A)
disp(B)
disp(X)