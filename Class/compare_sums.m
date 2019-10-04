function val = compare_sums()

n = 0;
err = 1;
tol = 0.000001;

while err > tol
    n = n+1;
    
    % compute sum for a_(n-1)
    sum1 = 0;
     for j= 1:(n-1)^2
        sum1 = sum1 + (n-1) / ((n-1)^2 + j^2);
     end
    
     % compute sum for a_(n)
    sum2 = 0;
    for j=1:n^2
        sum2 = sum2 + n / (n^2 +j^2);
    end
    
    % compare a_(n-1) to a_(n) 
    err = abs(sum1 - sum2);
end

N = n