function MAT = give_Least_Squares_Data_1

% get random values for data points
xVec = linspace(-2*pi,2*pi,500);                   
yVec = cos(xVec);

% initialize matrix 
MAT = zeros(500,2);

% Matrix B = yVec
B = zeros(500,1);
B(:, 1) = yVec;

% Matrix A for 4th order polynomial
for i=1:500
    for j =1:12
        A(i,j) = (xVec(i)^(j-1));
    end
end


% Pseudo Inverse for model function
PI = inv(A.' * A) * A.' * B

val = 0;

% function values for model function 
for i=1:500
    for j=1:12
        val = val + PI(j)*((xVec(i))^(j-1));
    end
    Y(i) = val;
    val = 0;
end

scatter(xVec, yVec, 'r')
hold on
plot(xVec, Y, 'b')
hold off

