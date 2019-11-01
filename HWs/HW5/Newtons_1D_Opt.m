% Newton's Method:
%   roots of equation: f(x) = 0
%   use derivative to speed up convergence to a root
%
% Algorithm for optimization:
%   1. guess xn
%   2. while err > tol
%       xm = xn - f'(xn)/f''(xn)
%   3. xn = xm
%

function N = Newtons_1D_Opt(tol)

xn = .25;
xm = 0;
err = 1;
N = 0;

while err > tol
    xm = xn - (fd1(xn) / fd2(xn));
    err = abs(xm-xn);
    xn = xm;
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
