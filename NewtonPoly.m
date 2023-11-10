x=[1 2 3 4];
y=[1 5 6 9];
n=length(x);
co_eff=Coeff(x,y);
x1=[1 5 6 9];
;
c=1;
for k=1:n  
  for i = 1:n
    y1(k) = y1(k) + c*co_eff(i);
    for j = 1:i
        c=c*(x1(k)-x(j));
    end
  end
end
disp(y1)
