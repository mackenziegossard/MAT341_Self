%
% Script that uses Newton's Method to find the minimum of a function
%
% Input: tol - error tolerance
%

function N = Newtons_1D_Opt(tol)

% initalizes error at 1
err = 1;
% initalizes the counter, N, at zero
N = 0;

% inital guesses 
xn = 0.25;

while err > tol
    % next guess is equal to the inital guess minus f'(x) divided by f''(x)
    xm = xn - (fd1(xn) / fd2(xn));
    
    % calculates the error
    err = abs(xm-xn);
    
    % sets xm as your new inital guess 
    xn = xm;
    
    % increments the counter by one
    N = N+1;
end

% functions we are trying to optimize 
function val = f(x)
val = .5 + x*exp(-(x^2));

% first derivative of the function
function val = fd1(x)
val = exp(-(x^2)) * (2*(x^2) - 1);

% second derivative of the function 
function val = fd2(x)
val = exp(-(x^2)) * (6*x - 4*(x^3));

% at x1 = .25 it takes 6 iteration to acehive 1e-8
% at x1 = 1.5 it takes 736 iteration to acehive 1e-8
% at each iteration you subtract a littel bit off from your inital guess so
% the higher you initial guess the more iterations it will take
