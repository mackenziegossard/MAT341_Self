%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% FUNCTION: creates data, {(x_i,y_i)}, for EXAMPLE 2 for students to
%           practice LINEAR LEAST SQUARES.
%
%           Input: N <-- # of data points to create
%
%           Output: MAT <-- Matrix of (x,y) values, where each row is a
%           different data point (x_i,y_i), e.g., MAT(i,:) = [x_i y_i]
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function MAT = give_Least_Squares_Data_2(N)

%
% get random values for data points
%
xVec = linspace(0.05,3,N);                                          % gives N-equally spaced points between [0.05,3]
yVec = 10*sin(xVec) - exp(xVec) + 5./xVec + 2 + 10*(2*rand(1,N)-1); % computes randomly assorted y-data for each corresponding x-Pt

% initialize matrix 
MAT = zeros(N,2);

% put x-Data and y-Data into 1st and 2nd columns of matrix MAT, respectively
MAT(:,1) = xVec;
MAT(:,2) = yVec;

% Matrix A for model function 
for i=1:N
    A(i, :) = [1, sin(xVec(i)), exp(xVec(i)), 1/(xVec(i))];
end

% Matrix B = yVec
B = zeros(N,1);
B(:, 1) = yVec;

% Pseudo Inverse
PI = inv(A.' * A) * A.' * B;

for i=1:N
    % function values for model function
    Y(i) = PI(1) + PI(2)*sin(xVec(i)) + PI(3)*exp(xVec(i)) + PI(4)/(xVec(i));
end

scatter(xVec, yVec, 'r')
hold on
plot(xVec, Y, 'b')
hold off

