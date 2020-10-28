clear,clc
A = [5 -2 -2;
    -2 4 -1;
    -2 -1 4]
b = [0;
    0;
    0.012
    ]
x = [0; 0; 0.003]

n=size(x,1);
normVal=Inf;

tol=1e-6;
itr=0;

while normVal>tol
 xold=x;

 for i=1:n
 sigma=0;

 for j=1:n

 if j~=i
 sigma=sigma+A(i,j)*x(j);
 end

 end

 x(i)=(1/A(i,i))*(b(i)-sigma);
 end

 itr=itr+1;
 
 normVal=abs(xold-x);
 
end

fprintf('Solution of the system is : \n%f\n%f\n%f\n%f \n in %d iterations',x,itr);