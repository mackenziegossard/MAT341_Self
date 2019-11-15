% Least Squares - trying to find a function that best fits the data
%
% y = f(x; B) 
%   for a line       y = B0 + B1x
%   for a polynomial y = B0 + B1x + B2x^2 + B3x^3  
%                    y = B0 + B1sin(x) + B2e^-x
%                    y = B0sin(B1x + B2)
%
% Linear Least Square Model
% f(x; B) = summation from j=1 to m of Bj * phi_j(x)
% for each date point (xi, yi) 
%   ri = yi - f(xi, B) 
%   ri - residual
%
% Problem - given n data points (xi,yi) for a part function f(x,B) we want
%           to find a B such that we minimize S = ||r|| = summation of rj^2