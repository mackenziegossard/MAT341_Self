%
% script that finds the minimum of a particualr fuction using the gradient 
% descent method with a fixed step size
%
% Inputs: 1. tol - tolerance 
%         2. gamma - fixed step size 
%

function N = Gradient_Descent_1(tol, gamma)

% initilizes error at 1
err = 1;
% initilizes counter at 0
N = 0;

% initial guess
Xn = [1; 1.5];

% gradeint descent algorithm to find minimum  
while err > tol
    % sets Xn+1 to Xn - gamma * grad of Xn
    Xm = Xn - gamma * gradF(Xn);
    % finds error using l^2-Norm
    err = sqrt((Xm - Xn).' * (Xm - Xn));
    % sets Xn to Xn+1
    Xn = Xm;
    % increments counter by 1
    N = N+1;
end

% function value we are trying to minimize 
function val = gradF(x)
val = [-cos(x(1)); sin(x(2))];

% It takes 35 iterations to achieve 1e ? 10 accuracy using gamma = 0.5
% It takes 12 iterations to achieve 1e ? 10 accuracy using gamma = 0.9
% It takes 34 iterations to achieve 1e ? 10 accuracy using gamma = 1.5