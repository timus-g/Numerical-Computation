%Thomas Algorithm for Tridiagonal Matrix
clear;
close all;
clc;
A = input("Enter Tridiagonal Matrix A: ");
B = input("Enter Matrix B: ");
n = length(B);
for i = 2:n
    A(i,i) = A(i,i)-A(i,i-1)/A(i-1,i-1)*A(i-1,i);
    B(i) = B(i)-A(i,i-1)/A(i-1,i-1)*B(i-1);
end
disp(A)
%Backward substitution
X=zeros(n,1);
for i=n:-1:1
    X(i)=B(i)/A(i,i);
    B(i-1:-1:1)=B(i-1:-1:1)-A(i-1:-1:1,i)*X(i);
    fprintf('\n the value of x%d = %f',i,X(i))
end