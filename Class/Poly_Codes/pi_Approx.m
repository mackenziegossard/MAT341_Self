%
% Function: gives three different approximations of pi
% Input: N: scaler 

function val = pi_Aprox(N)

val1 = 0;
val2 = 0;
val3 = 0;
N = 50; 

% first approximation of pi
for i=0:N;
    val1 = val1 + (-1)^i * 1/(2*i+1);
end
approx1 = 4 * val1

% second approxiamtion of pi
for i=0:N;
    val2 = val2 + (-1)^i * (sqrt(3)^(2*i+1))/(2*i+1);
end
approx2 = 6 * val2 

% third approxiamtion of pi
for i=0:N;
    val3 = val3 + (-1)^i * (1/sqrt(3))^(2*i+1) * (1/(2*i+1));
end
approx3 = 3 * val3 

    