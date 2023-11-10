function res=VecMat(x)
y=length(x);
for n=1:y
 m(n,:)=y:-1:0;
end
res=x'.^m;