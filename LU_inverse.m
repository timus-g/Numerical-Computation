function res = LU_inverse(U)
n=length(U);
L=eye(n);
for j = 1:n-1  
    for i = j+1:n   
        L(i,j)=U(i,j) / U(j,j); % creating the lower triangular matrix L.
        U(i,:) = U(i,:) - L(i,j)*U(j,:); % creating the upper triangular matrix U.   
    end 
end
% calling our own "inverse" function. 
U_inv = inverse(U); % calculating U^-1.
L_inv = inverse(L); % calculating L^-1.
res = U_inv*L_inv; % calculating A^-1 = (LU)^-1 = U^-1*L^-1.
