S2=[1/2 3/4];
n=2;
while S2(n)-S2(n-1)>0.0000000001
    n=n+1;
    S2(n)=S2(n-1)+ 1/2^n;
end
x=1:length(S2);
plot(S2,x)
