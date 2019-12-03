% 
% Function that row-reduces an NxN matrix and then puts the matrix in
% row-reduced echelon form
% 
% Input: N - Dimensions of the matrix 

function OpCount = go_Go_Gaussian_Elimination(N)

% creates an NxN matrix of random numbers
A = rand(N,N);
% initilizes Opertion count at 0
OpCount = 0;

% Row-reduce matrix A to echelon form 
for m = 1:N
    % Divide by diagonal
    for i=1:N
        A(m,i) = A(m,i) / A(m,m);
        % increases operation count by 1
        OpCount = OpCount + 1;
    end
   
    % Sets numbers below diagonal equal to zero 
    for i = 1:N
        for j = m+1:N
            A(j,i) = A(j,i) - (A(j,m) * A(m,i));
            % increases operation count by 2
            OpCount = OpCount + 2;
        end
    end
end

% Get matrix A in reduced-row echelon form
% Sets numbers above diagonal equal to zero 
for m = 2:N
    for i = m:N
        for j = 1:m-1
            A(j,i) = A(j,i) - (A(j,m) * A(m,i));
            % increases opertion count by 2
            OpCount = OpCount + 2;
        end
    end
end