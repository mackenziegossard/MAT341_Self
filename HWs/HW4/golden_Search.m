function N = golden_Search(tol)

a = 0;
b = 2;
N = 0;
tau = (sqrt(5)-1)/2;

while (b-a) > tol
    x1 = b - tau*(b-a);
    x2 = a + tau*(b-a);
    if f(x1) > f(x2)
        a = x1;
    else f(x2) > f(x1)
        b = x2;
    end
    N = N+1;
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function val = f(x)
val = .5 - x*exp(-(x^2));

% It takes 40 iterations to acheive 1e-8 accuracy