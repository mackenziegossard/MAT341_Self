function find_Divisors(n)

% # of divisors so far 
q = 0; 

for i = 1:n
    % test if number divides evenly 
    if mod(n,i) == 0
        % increment flag
        q = q+1; 
        
        % add divisor into vector 
        div(q) = i;
    end
end
div   