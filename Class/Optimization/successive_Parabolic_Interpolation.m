function N = successive_Parabolic_Interpolation(tol)

% initilizes three points along the function
x1 = 0;
x2 = .6;
x3 = 1.2;

% initializes the number of iterations, N, at 0
N = 0;

% run the algorithm until x3-x1 is less than the tolerance
while abs(x3 - x1) > tol
    % finds a parabola through the three points using a linear system
    A = [x1^2, x1, 1, f(x1); x2^2, x2, 1, f(x2); x3^2, x3, 1, f(x3)];
    B = rref(A);
    % finds the minimum value of the parabola 
    xMin = -B(2,4) / (2*B(1,4));
    % reset x1, x2, x3
    x3 = x2;
    x2 = x1;
    x1 = xMin;
    % increments the iteration counter
    N = N + 1;
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Function that you are trying to minimize
% Input: x value
%

function val = f(x)
val = .5 - x*exp(-(x^2));

% It takes 7 iterations to acheive 1e-8 accuracy
% Changing x3 = 2, it takes 186 iterations to achieve 1e-8 accuracy
% I did not get any warnings 