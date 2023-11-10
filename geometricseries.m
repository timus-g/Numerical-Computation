
    x=0.95;
    y=1/(1-x);
    s=[0];
    for n=0:50
        s(n+2)= s(n+1)+x^n;
    end
    plot(s,y)
    