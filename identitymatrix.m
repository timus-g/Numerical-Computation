A=[9 6 8; 8 5 3;1 2 3];
n=length(A);
for k = 1:2
    for j = 1:n-1  % <-- do all the columns
        for i = j+1:n  % <-- do all the rows        
            A(i,:) = A(i,:) - A(i,j) / A(j,j)*A(j,:);
        end
    end
    A = A';
end
disp(A)