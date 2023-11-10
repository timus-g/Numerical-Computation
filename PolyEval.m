function res=PolyEval(coeff,x)
y=length(coeff);
p=y-1:-1:0;
pol=x'.^p;
p=coeff.*pol;
res=p*ones(y,1);