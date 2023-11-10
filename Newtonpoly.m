function pol = Newtonpoly(x,y,x1) 
n=length(x);
p=ones(n);
for i = 2:n
    p(:,i)=x'-x(i-1);
    p(:,i)=p(:,i).*p(:,i-1);
end
co_eff=p\y';
n1=length(x1);
pol=ones(1,n1);
for j=1:n1
  y1=ones(n);
 for i = 2:n
    y1(:,i)=x1(j)-x(i-1);
    y1(:,i)=y1(:,i).*y1(:,i-1);
 end
 pol(j)=sum(co_eff'.*y1(n,:));
end