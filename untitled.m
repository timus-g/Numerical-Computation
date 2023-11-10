tic
n=10;
for i =1 :n
    for k = n-i:-1:1
        fprintf(" ")
    end
    fprintf(" ")
    for j=1:i
        fprintf("0")
        fprintf(" ")
    end
    fprintf("\n")
end
toc