x=97;
while x ~= 1/sqrt(1+x^2)
    x=1/sqrt(1+x^2);
end
disp(x)