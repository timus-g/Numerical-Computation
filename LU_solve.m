function res = LU_solve(X,b)
n= length(X);
U = X;
L=eye(n);
% LU decomposition...
for j = 1:n-1      
    for i = j+1:n   
        L(i,j)=U(i,j) / U(j,j); % creating the lower triangular matrix L.
        U(i,:) = U(i,:) - L(i,j)*U(j,:); % creating the upper triangular matrix U.   
    end 
end
% Forward substitution...
y=zeros(n,1);
for j=1:n
    y(j)=b(j);
    b(j+1:n)=b(j+1:n)-L(j+1:n,j)*y(j);
end
% Backward Substitution...
x=zeros(n,1);
for j=n:-1:1
    x(j)=y(j)/U(j,j);
    y(j-1:-1:1)=y(j-1:-1:1)-U(j-1:-1:1,j)*x(j);
end
res=x;