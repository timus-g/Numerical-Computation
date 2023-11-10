function X = gaug(A,b)
n = length(A);
k=n;
A=[A,b]; % Appending b vector to A.
for j = 1:n-1  
    for i = j+1:n % Creating a lower triangular matrix out of A.     
        A(i,:) = A(i,:) - A(i,j) / A(j,j)*A(j,:);
    end 
    for i = k-1:-1:1 % Back Substitution       
        A(i,:) = A(i,:) - A(i,k) / A(k,k)*A(k,:);
    end
    k=k-1;
end
for k = 1:n
    A(k,k)=A(k,n+1)/A(k,k);
end
X = diag(A); % Displaying the solution vector.
