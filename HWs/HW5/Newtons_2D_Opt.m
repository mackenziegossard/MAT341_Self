%
% Script that uses the Multivariable Newton?s Method to find a local 
% mimimum of a function 
%
% Input: tol - tolerance level 
%

function N = Newtons_2D_Opt(tol)

% initalizes error at 1
err = 1;
% initalizes the counter, N, at zero
N = 0;

% inital guess
Xn = [-4.5; 4.5];

while err > tol
    % next guess is equal to inital guess minus the inverse of the hessian 
    % matrix times the gradient of the function
    Xm = Xn - H(Xn(1), Xn(2)) * gradF(Xn(1), Xn(2));
    
    % calculates the l^2-error
    err = sqrt((Xm - Xn).' * (Xm - Xn));
    
    % sets Xm as you new inital guess 
    Xn = Xm;
    
    % increments the counter by one
    N = N+1;
end
Xm
N

% gradiant of the function
function val = gradF(x,y)
val = [-cos(x); sin(y)];

% inverse hessian of the function 
function val = H(x,y)
val = inv([sin(x), 0; 0, cos(y)]);

% a) it took 5 iterations to find a minimum of (-4.7124,0)
% b) it took 4 iterations to find a minimum of (-4.7124,0)
