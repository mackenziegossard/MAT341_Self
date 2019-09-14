%
% Function: gives approximations of pi and checks error
% Input: N: scaler 
%

function val = pi_Approx3(N)
format long

sum = 0;
N = 1000;

% calculates pi_approx 
for i=0:N;
    sum = sum + (-1)^i * (1/sqrt(3))^(2*i+1) * (1/(2*i+1));
end
pi_approx = 6 * sum 

% checks error
error = abs(pi_approx - pi)

