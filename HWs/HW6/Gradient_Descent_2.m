function N = Gradient_Descent_2(tol)

err = 1;
N = 0;
gamma = 0.5;

Xn = [1; 1.5];

while err > tol
    Xm = Xn - gamma * gradF(Xn);
    err = sqrt((Xm - Xn).' * (Xm - Xn));
    gamma = abs((Xm-Xn).'*(gradF(Xm)-gradF(Xn))) / ((gradF(Xm)-gradF(Xn)).'*(gradF(Xm)-gradF(Xn)));
    Xn = Xm;
    N = N+1;
end

function val = gradF(x)
val = [-cos(x(1)); sin(x(2))];

% It takes 6 iterations to achieve 1e?6 accuracy using the Barzilai-Borwein step-size
% It takes 7 iterations to achieve 1e?10 accuracy using the Barzilai-Borwein step-size
