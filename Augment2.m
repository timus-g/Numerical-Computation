A=[24 2 5 34; 10 17 33 2;16 32 44 21; 15 16 23 12];
det(A)
eig(A)
disp(A)
A(2,:) = A(2,:)-A(2,1)/A(1,1).*A(1,:);
disp(A)
A(3,:) = A(3,:)-A(3,1)/A(1,1).*A(1,:);
disp(A)
A(4,:) = A(4,:)-A(4,1)/A(1,1).*A(1,:);
disp(A)
A(3,:) = A(3,:)-A(3,2)/A(2,2).*A(2,:);
disp(A)
A(4,:) = A(4,:)-A(4,2)/A(2,2).*A(2,:);
disp(A)
A(4,:) = A(4,:)-A(4,3)/A(3,3).*A(3,:);
disp(A)
det(A)
eig(A)