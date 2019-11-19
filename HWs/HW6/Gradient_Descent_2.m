function N = Gradient_Descent_2(tol)

% initilizes error at 1
err = 1;
% initilizes counter at 0
N = 0;
% initilzes step size at 0.5
gamma = 0.5;

% intial guess 
Xn = [1; 1.5];

% gradeint descent algorithm to find minimum  
while err > tol
    % sets Xn+1 to Xn - gamma * grad of Xn
    Xm = Xn - gamma * gradF(Xn);
    % finds error using l^2-Norm 
    err = sqrt((Xm - Xn).' * (Xm - Xn));
    % changes step size using Barzilai-Borwein step-size
    gamma = abs((Xm-Xn).'*(gradF(Xm)-gradF(Xn))) / ((gradF(Xm)-gradF(Xn)).'*(gradF(Xm)-gradF(Xn)));
    % sets Xn to Xn+1
    Xn = Xm;
    % increments counter by 1
    N = N+1;
end

% function value we are trying to minimize 
function val = gradF(x)
val = [-cos(x(1)); sin(x(2))];

% It takes 6 iterations to achieve 1e?6 accuracy using the Barzilai-Borwein step-size
% It takes 7 iterations to achieve 1e?10 accuracy using the Barzilai-Borwein step-size
