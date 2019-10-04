function prob = estimate_Real_Roots(N,L, deg)

count = 0;

for i = 1:N
    poly = find_roots(L, deg);
    if max(imag(poly)) == 0
        count = count + 1;
    end
end

prob = count / N;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function val = find_roots(L, deg)

for i = 1:deg+1
    c(i) = 2*L*rand() - L;
end
val = roots(c);
