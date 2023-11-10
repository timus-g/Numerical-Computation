tic
x=[1 2 3 4 5 6];
y=[1 5 6 9 15 27];
co_eff=Coeff(x,y);
x1= [1.5 2.3 3.78];
y1 = PolyEval(Transpose(co_eff),x1);
disp(y1)
toc