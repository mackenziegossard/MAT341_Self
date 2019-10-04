function val = compute_gcd(x,y)

q = 1; 
r = 1;

% compute the divisors of x
for i = 1:x
    if mod(x,i) == 0
        div_x(q) = i;
        q = q+1;
    end
end

% compute the divisors of y
for i = 1:y
    if mod(y,i) == 0
        div_y(r) = i;
        r = r+1;
    end
end

% compare divisors 
for l = 1:length(div_x)
    for k = 1:length(div_y)
        if div_x(l) == div_y(k)
            max = div_y(k);
        end
    end
end
max