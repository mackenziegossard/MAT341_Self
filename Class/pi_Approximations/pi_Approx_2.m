%
% Function: gives approximations of pi and checks error
% Input: N: scaler 
%

function val = pi_Approx2(N)
format long

sum = 0;
N = 6;

% calculates pi_approx 
for i=0:N;
    sum = sum + (-1)^i * (sqrt(3)^(2*i+1))/(2*i+1);
end
pi_approx = 3 * sum

% checks error
error = abs(pi_approx - pi)