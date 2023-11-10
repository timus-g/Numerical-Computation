X_obs=[1 2 3];
X_est=[1 2.5 3];
n=length(X_obs);
R=X_obs-X_est;
RM=sqrt(R^2*ones(n,1)/n);
disp(RM)