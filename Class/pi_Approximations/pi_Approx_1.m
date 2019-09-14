%
% Function: gives approximations of pi and checks error
% Input: N: scaler 
%

function val = pi_Approx1(N)
format long

sum = 0;
N = 100;

% calculates pi_approx 
for i=0:N;
    sum = sum + 4* (-1)^i * 1/(2*i+1)
end

% checks error 
error = abs(sum - pi)