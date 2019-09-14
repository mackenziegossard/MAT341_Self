function pi_While_Loop_Faster()

tol = 1e-8;
err = 1;
N = -1;  % initialized to -1 so pop into while loop gives N=0
sum = 0;

while err > tol 
    % bump up parital sum to order 1
    N = N+1;
    
    % find pi approx
    sum = sum + 4 * (-1)^N * 1/(2*N+1);
 
    % calculates error
    err = abs(sum - pi);
end

N