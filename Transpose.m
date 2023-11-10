function res = Transpose(x)
y=size(x);
for n = 1:y(1)
    res(:,n)=x(n,:);
end