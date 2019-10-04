function is_It_Prime(n)

% modular arthmetic 
% mod(4,2) = 4 mod 2

% codde we wrote in groups
for i = 2:ceil(sqrt(n))
    if mod(n,i) == 0 % n mod i
       n + " is not prime"
       break;
    end
end

% code we wrote in class
isPrime = 1; % flag that says number still appears prime
for i = 2:floor(sqrt(n))
    if mod(n,i) == 0
        isPrime = 0; % resets flag to 0 saying it is not prime
        break;
    end
end

if isPrime == 1
    str = 'number appears prime'
else
    str = 'number is not prime'
end
        