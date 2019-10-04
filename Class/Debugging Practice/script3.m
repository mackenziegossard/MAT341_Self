function val = script3()

tol = 1e-10;
err = 1;
sum = 0;
n = -1;

while err > tol
    sum = 0;
    n = n+1;

    for i = 0:n
        sum = sum + (1/2)^i;
    end
    
    err = abs(sum - 2);
end
val = sum;