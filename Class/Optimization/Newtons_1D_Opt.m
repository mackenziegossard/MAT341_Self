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
