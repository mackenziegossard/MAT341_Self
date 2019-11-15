%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% FUNCTION: creates data, {(x_i,y_i)}, for EXAMPLE 1 for students to
%           practice LINEAR LEAST SQUARES.
%
%           Input: N <-- # of data points to create
%
%           Output: MAT <-- Matrix of (x,y) values, where each row is a
%           different data point (x_i,y_i), e.g., MAT(i,:) = [x_i y_i]
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function MAT = give_Least_Squares_Data_1(N)

% get random values for data points
xVec = linspace(0,1,N);                         % gives N-equally spaced points between [0,1]
yVec = linspace(0,1,N)' + 0.5*(2*rand(N,1)-1);  % computes randomly assorted y-data for each corresponding x-Pt

% initialize matrix 
MAT = zeros(N,2);

% put x-Data and y-Data into 1st and 2nd columns of matrix MAT, respectively
MAT(:,1) = xVec;
MAT(:,2) = yVec;

% Matrix B = yVec
B = zeros(N,1);
B(:, 1) = yVec;

% Matrix A for model function 1
A1 = zeros(N,2);
A1(:,1) = 1;
A1(:, 2) = xVec;

% Peusdo Inverse for model function 1
PI_1 = inv(A1.' * A1) * A1.' * B;

for i=1:N
    % function values for model function 1
    Y1(i) = PI_1(1) + PI_1(2)*xVec(i);
end

%%%%%%%%%%%%%%%%%%%%%%%%
for i=1:N
    % Matrix A for model function 2 
    A2(i,:) = [1, xVec(i), (xVec(i))^2, (xVec(i))^3];
end

% Pseudo Inverse for model function 2
PI_2 = inv(A2.' * A2) * A2.' * B;

for i=1:N
    % function values for model function 2
    Y2(i) = PI_2(1) + PI_2(2)*xVec(i) + PI_2(3)*(xVec(i))^2 + PI_2(4)*(xVec(i))^3;
end

% plot (xi, yi)
scatter(xVec, yVec,'r');
hold on
% plot model function 1
plot(xVec,Y1,'m');
% plot model function 2
plot(xVec,Y2,'b');
hold off


