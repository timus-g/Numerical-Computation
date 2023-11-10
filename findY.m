A = [16 -120 240 -140;-120 1200 -2700 0;240 -2700 6480 -4200;-140 1680 -4200 2800]; % putting y = 0
n=length(A);
X=ones(n,1);
b=[-4 6 -180 140]';
M = A*X; % calculating matrix b with y = 0.
y = b(2)-M(2); % getting the actual value of y.
disp(y)