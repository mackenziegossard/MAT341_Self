% Multivarible Newtons:
%   1. Root Finding: Xm = (xn; yn) + (h1; h2)
%                    Xm = (xn; yn) - J^-1(f(xn, yn); g(xn, yn))
%   2. Optimization: min f(x,y)
%                    want to set gradf(x,y) = (2f/2x; 2f/2y) = 0
%                    J = [2^2f/2x^2, 2^2f/2x2y; 2^2f/2y2x, 2^2f/2y^2] - at previous guess
%                    Xm = Xn - J^-1(gradf)

function N = Newtons_2D_Opt(tol)

err = 1;
N = 0;

Xn = [-0.25; 0.25];
Xm = [0; 0];

while err > tol
    Xm = Xn - H(Xn(1), Xn(2)) * gradF(Xn(1), Xn(2));
    err = sqrt((Xm - Xn).' * (Xm - Xn));
    Xn = Xm;
    N = N+1;
end
Xn
N

function val = gradF(x,y)
val = [-cos(x); sin(y)];
   
function val = H(x,y)
val = inv([sin(x), 0; 0, cos(y)]);

