s1=0;
n=0;
a=1;
y=ones(1,10000);
x=0:9999;
while a>0.0001
    n=n+1;
    a=1/n;
    s1=s1+((-1)^(n-1))*a;
    y(n)=s1;
end
disp(s1)
plot(x,y)