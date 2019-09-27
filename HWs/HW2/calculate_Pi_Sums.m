%
% function that takes no inputs
% calculates two different pi approximations
% finds the smallest N for which the apporoximation
% is smaller than the tolerance
%

function calculate_Pi_Sums()

format long

tol = 1e-6; % tolerance away from pi
err1 = 1;

% first approximation of pi
Na = -1;  % initialized to -1 so pop into while loop gives N=0
sum1 = 0;

while err1 > tol
    % bump up parital sum to order 1
    Na = Na+1;
    
    % find pi approx
    sum1 = sum1 + (6/sqrt(3)) * (-1)^Na / (3^Na*(2*Na+1))
    
    % calculates error
    err1 = abs(sum1 - pi);
end
Na

% second approximation of pi
err2 = 1;
Nb = -1;  % initialized to -1 so pop into while loop gives N=0
sum2 = 0;

while err2 > tol
    % bump up parital sum to order 1
    Nb = Nb+1;
    
    % find pi approx
    sum2 = sum2 + (16*(-1)^Nb / (5^(2*Nb+1)*(2*Nb+1))) - (4*(-1)^Nb / (239^(2*Nb+1)*(2*Nb+1)))
    
    % calculates error
    err2 = abs(sum2 - pi);
end
Nb