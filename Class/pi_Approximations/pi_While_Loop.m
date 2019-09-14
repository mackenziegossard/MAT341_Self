function pi_While_Loop()

tol = 1e-4;
err = 1;
N = -1;  % initialized to -1 so pop into while loop gives N=0

while err > tol 
    % initialize to zero so not adding to previous
    % partial sum to new approximation 
    sum = 0;
    
    % bump up parital sum to order 1
    N = N+1;
    
    % find pi approx
    for i=0:N;
        sum = sum + 4 * (-1)^i * 1/(2*i+1);
    end
 
    err = abs(sum - pi);
end

N
