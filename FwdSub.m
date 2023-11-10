 L = [1 0;0.5 1];
 b=[1;2];
 n=length(L);
x=zeros(n,1);
for j=1:n
    x(j)=b(j)/L(j,j);
    b(j+1:n)=b(j+1:n)-L(j+1:n,j)*x(j);
end
disp(b)
