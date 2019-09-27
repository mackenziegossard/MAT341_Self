%
% function that determines the limit of tn as n gets large
% takes two inputs: m - value to test in sequence
%                   n - nth value in sequence
% returns the limit
%

function val = square_Root_Sequence(m,n)

m = 43;
n = 100; % pick an arbitary large number 
val = 0; % initvalize value at 0

for i=1:n
    % the mod statements check if n is even or odd
    % if n is even it uses the if statement to get the right signs
    % if n is odd it uses the elseif statement 
    if mod(n,2) == 0
        % takes the square root of (m plus the previous value) 
        val = sqrt(m + (-1)^(i-1)*val); 
    elseif mod(n,2) == 1
        val = sqrt(m + (-1)^(i)*val);
    end
end
val

% for m = 7, the sequence converges to 3
% for m = 31, the sequence converges to 5
% for m = 43, the sequence converges to 6