function N = successive_Parabolic_Interpolation(tol)

x1 = 0;
x2 = .6;
x3 = 1.2;
N = 0;

while abs(x3 - x1) > tol
    A = [x1^2, x1, 1, f(x1); x2^2, x2, 1, f(x2); x3^2, x3, 1, f(x3)];
    B = rref(A);
    xMin = -B(2,4) / (2*B(1,4));
    x3 = x2;
    x2 = x1;
    x1 = xMin;
    N = N + 1;
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function val = f(x)
val = .5 - x*exp(-(x^2));

% It takes 7 iterations to acheive 1e-8 accuracy
% Changing x3 = 2, it takes 186 iterations to achieve 1e-8 accuracy
% I did not get any warnings 