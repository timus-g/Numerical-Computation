clear
clc
close all
load sunspot.dat
t=sunspot(:,1);
data=sunspot(:,2);
f= mean(data);
plot(t,data,'b-')
a1 = sin(2*pi*t/3);
a2 = sin(2*pi*t/7);
a3 = sin(2*pi*t/50);
a4 = cos(2*pi*t/20);
A = [sum(a1.*a1) sum(a2.*a1) sum(a3.*a1) sum(a4.*a1);
    sum(a1.*a2) sum(a2.*a2) sum(a3.*a2) sum(a4.*a2);
    sum(a1.*a3) sum(a2.*a3) sum(a3.*a3) sum(a4.*a3);
    sum(a1.*a4) sum(a2.*a4) sum(a3.*a4) sum(a4.*a4)];
B =[sum(data.*sin(2*pi*t/3));
    sum(data.*sin(2*pi*t/7));
    sum(data.*sin(2*pi*t/50));
    sum(data.*cos(2*pi*t/20))];
X = A\B;
y_t=X(1)*sin(2*pi*t/3)+X(2)*sin(2*pi*t/7)+X(3)*sin(2*pi*t/50)+X(4)*cos(2*pi*t/20);
plot(t,data,'bo',t,y_t+f,'r-')
xlabel('year')
ylabel('sunspot')
legend('data','y(t)','location','northwest')