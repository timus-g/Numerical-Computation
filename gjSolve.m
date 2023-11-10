function X = gjSolve(A,b)
n = length(A);
k=n;
A=[A,b]; % Appending b vector to A.
for j = 1:n-1  
    for i = j+1:n % Creating a lower triangular matrix out of A.     
        A(i,:) = A(i,:) - A(i,j) / A(j,j)*A(j,:);
    end 
    for i = k-1:-1:1 % Creating an upper triangular matrix out of A.       
        A(i,:) = A(i,:) - A(i,k) / A(k,k)*A(k,:);
    end
    k=k-1;
end
X = (A./diag(A)); % Making A an identity matrix.
X = X(:, n+1); % Displaying the solution vector.