function N = golden_Search(tol)

% initializes a and b at the end points of an certain interval  
a = 0; 
b = 2;
tau = (sqrt(5)-1)/2;

% initializes the number of iterations, N, at 0
N = 0;

% run the golden search algorithm until b-a is less than the tolerance
while (b-a) > tol
    % creates a point a certain distane from the left-hand side of interval
    x1 = b - tau*(b-a);  
    % creates a second point equal distance from the right-hand side of
    % interval as x1 is from the left
    x2 = a + tau*(b-a);
    % if the f(x) is bigger for x1, reset the right-side of interval to x1
    if f(x1) > f(x2)
        a = x1;
    % if the f(x) is bigger for x2, reset the left-side of interval to x2
    else f(x2) > f(x1)
        b = x2;
    end
    % increments the iteration counter
    N = N+1;
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Function that you are trying to minimize
% Input: x value
%

function val = f(x)
val = .5 - x*exp(-(x^2));

% It takes 40 iterations to acheive 1e-8 accuracy