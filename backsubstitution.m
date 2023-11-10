U=[1 2 3; 4 5 6; 7 8 9];
b=[1;2;3];
% Call function
b = myBackwardSubstitution(U,b);
function b=myBackwardSubstitution(U,b)
    d=size(U,1);
    L=diag(U);
for i=1:d
    for j=i+1:d
        % You haven't defined L
        b(i)=b(i)-L(i,j)*b(j);
    end
    b(i)=b(i)/L(i,i);
end
end