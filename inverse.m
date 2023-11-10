function X = inverse(A)
[n,m] = size(A);
if n ~=m % Checking for a square matrix.
    disp("Entered matrix is not a square matrix.Inverse not possible!")
elseif det(A)==0 % Checking for non singular matrix.
        disp("Enteed matrix is a singular matrix. Inverse not possible!")
else
    k=n; 
    A=[A,eye(n)]; % Appending a identity matrix to A.
    for j = 1:n-1  
        for i = j+1:n   % Creating a lower triangualr matrix out of A.     
            A(i,:) = A(i,:) - A(i,j) / A(j,j)*A(j,:);
        end 
        for i = k-1:-1:1 % Creating a upper triangualr matrix out of A.        
            A(i,:) = A(i,:) - A(i,k) / A(k,k)*A(k,:);
        end
        k=k-1;
    end
    X = (A./diag(A)); % Making A a identity matrix.
    X = X(:, n+1 : end); % Displaying the A inverse (formed from the identity matrix)
end