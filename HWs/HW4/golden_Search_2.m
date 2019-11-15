function val = golden_Search_2(tol)

a = 0;
b = 2;
tau = (sqrt(5)-1)/2;

x1 = a - (1-tau)*(b-a);  
x2 = a + tau*(b-a);
f1 = f(x1);
f2 = f(x2);

N = 0;

while (b-a) > tol
    if f1 > f2
        a = x1;
        x1 = x2;
        f1 = f2;
        x2 = a + tau*(b-a);
        f2 = f(x2);
    else 
        b = x2;
        x2 = x1;
        f2 = f1;
        x1 = a + (1-tau)*(b-a);
        f1 = f(x1);
    end
    N = N+1;
end
N

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function val = f(x)
val = .5 - x*exp(-(x^2));
        