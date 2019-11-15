%
% Gradient Descent: finds minimua for f: R^n -> R
% Xm = Xn + h
%
% gradF = rate of change
% +gradF = move up the mountain 
% -gradF = move down towards a valley 
%
% Xm = Xn - gammaN * gradF(x) where gammaN= step size of nth iteration
%
% Barzalai-Borwein Step Size:
% gammaN = |(Xm-Xn)^t * (gradF(Xm)-gradF(Xn)| / ||gradF(Xm)-gradF(Xn)||2

function val = gradient_Desecent()

err = 1;
tol = 1e-8;
N = 0;

gamma_n = 0.9;
Xn = [1; 1.5];

while err > tol
  
    Xm = Xn - gamma_n * gradF(Xn);
    err = sqrt((Xm - Xn).' * (Xm - Xn));
    gamma_n = abs((Xm-Xn).'*(gradF(Xm)-gradF(Xn))) / ((gradF(Xm)-gradF(Xn)).'*(gradF(Xm)-gradF(Xn)))
    Xn = Xm;
    N = N+1;
end
Xn
N

function val = gradF(x)
val = [-cos(x(1)); sin(x(2))];

% when gamma = 0.5, n = 28
% when gamma = 0.9, n = 10
