clear; close all; clc;
format short
x=[1 2 3 4 5 6];
y=[23.6 27.45 24.54 25.73 22.73 15.99];
x1 = x.*10 + 1945;
plot(x1,y,'bo')
title ('Maharashtra state decadal population growth rate');
xlabel ('Year');
ylabel ('Population Density');
xlim ([1940 2030]);
ylim ([10 30]);
grid on
hold on
n = length(x)-1;
X = zeros(n);
chi_2 = zeros(n,1);
for k = 1 : n
    A = zeros(k+1);
    B = zeros(k+1,1);
    for i = 1 : k+1
        for j = i:k+i
            A(i,j-i+1) = sum (x.^(j-1)); 
        end
        B(i,:)=sum(x.^(i-1).*y);
    end
    X(1:k+1,k)=A\B;
    x2 =-1:0.1:8;
    y2 =(PolyEval(flip((X(1:k+1,k))'),x2));
    x3 = x2.*10+1945;
    plot(x3,y2,'k--')
    pol = PolyEval(flip((X(1:k+1,k))'),x);
    chi_2 (k)= sum(sum(((y-pol).^2)./y));
end
[m,n] = min(chi_2(2:end));
x2 =-1:0.1:8;
y2 =(PolyEval(flip((X(1:n+2,n+1))'),x2));
x3 = x2.*10+1945;
x = 7;
y = (PolyEval(flip((X(1:n+2,n+1))'),x));
disp(y)
plot(x3,y2,'r-',x,y,'ro')
legend('data','Liinear','2nd Degree','3rd Degree','4th Degree','5th Degree','3deg fit','2011-2020','location','northeast')