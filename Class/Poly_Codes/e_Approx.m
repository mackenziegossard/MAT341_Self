function val = e_Approx(N)

% e^x = sum of x^n/n!
% e = 1/n!
% write a script to compute the Nth partial sum of the Taylor Series for e
% find N such that ab(val - exp(1)) <10^-14

val = 0;
N = 500;

for i=1:N;
    val = val + 1/factorial(i-1);
end
