function N = Newton_Method_Roots(tol)

xn = .25;
xm = 0;
err = 1;
N = 0;

while err > tol
    xm = xn - (f(xn) / fd1(xn));
    err = abs(xm-xn);
    xn = xm;
    N = N+1;
end
xn

% functions we are trying to optimize 
function val = f(x)
val = (x-1)*(x+3);

% first derivative of the function
function val = fd1(x)
val = 2*x + 2;

function val = g(x)
val = (x-1)^2;

function val = gd1(x)
val = 2*(x-1);