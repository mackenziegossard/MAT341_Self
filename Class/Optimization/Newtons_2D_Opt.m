% Newton's Method 2D - 
% F(X) = (f(x,y); g(x,y)) = (0;0)
% guess at root: xn = (xn, yn)
% next guess: xm = xn + h
%               (xm; ym) = (xn; yn) + (h1; h2)
%
% Finding perturbative amount h - 
% F(Xn + h) = (f(xn + h1), yn+h1); g(xn + h1), yn+h2) = (0;0)
%           = (f(xn, yn) + 2f/2x(xn,yn)h1 + 2f/2y(xn,yn)h2) = 0
%           = (g(xn, yn) + 2g/2x(xn,yn)h1 + 2g/2y(xn,yn)h2) = 0
%
% 2f/2x(xn,yn)h1 + 2f/2y(xn,yn)h2) = -f(xn, yn)
% 2g/2x(xn,yn)h1 + 2g/2y(xn,yn)h2) = -g(xn, yn)
%
% J = [2f/2x, 2f/2y; 2g/2x, 2g/2y] * (h1; h2) = (-f(xn,yn); g(xn,yn))
% J[F]h = -F(Xn)
% h = J[F]^-1 * -F(Xn)
%
% Multivarible Newtons:
%   1. Root Finding: Xm = (xn; yn) + (h1; h2)
%                    Xm = (xn; yn) - J^-1(f(xn, yn); g(xn, yn))
%   2. Optimization: min f(x,y)
%                    want to set gradf(x,y) = (2f/2x; 2f/2y) = 0
%                    J = [2^2f/2x^2, 2^2f/2x2y; 2^2f/2y2x, 2^2f/2y^2] - at previous guess
%                    Xm = Xn - J^-1(gradf)

function N = Newtons_2D_Opt()

