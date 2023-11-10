function[l,u]=LU_decompose(A)
n=length(A);
l=eye(n);
for j = 1:n-1  
    for i = j+1:n   
        l(i,j)=A(i,j) / A(j,j);
        A(i,:) = A(i,:) - l(i,j)*A(j,:);     
    end 
end
u=A;
disp(u)

