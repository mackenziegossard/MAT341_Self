%
% Function that prefroms linear least square on model function 
%

function fit_Polynomial_Series()

% generates data points
N = 250;
xData = linspace(-2*pi,2*pi,N);
yData = cos(xData)';

% Matrix A for 12th order polynomial
for i=1:N
    for j = 1:13
        A(i,j) = (xData(i)^(j-1));
    end
end

% Pseudo Inverse for model function
PI = inv(A.' * A) * A.' * yData

val = 0;
% function values for model function 
for i=1:N
    for j=1:13
        val = val + PI(j)*((xData(i))^(j-1));
    end
    Y(i) = val;
    val = 0;
end

% residule
R = yData - Y';
% l2-Norm for residule 
L_2_Norm = sqrt(R.' * R)


scatter(xData, yData, 'b', 'LineWidth', 6)
hold on
plot(xData, Y, 'r', 'LineWidth', 4)
hold off
xlabel('x Values');
ylabel('Cos Value');
legend('Data', 'Best Poly Fit')

% The l2-Norm when N=10 is 2.735
% The l2-Norm when N=50 is 5.150e-04
% The l2-Norm when N=250 is 0.001

% We can write cos(x) as a polynomial using a Taylor Series
% The coefficients are 0, -1/2!, 0, 1/4!, 0, -1/6!, 0, 1/8!, 0, -1/9!, 0, 1/10!, 0, -1/11!

% The coefficients I found were:
% 1, 0, -.5, 0, .0416, 0, -.0014, 0, .00002, 0, 0, 0, 0
% These are very similair coefficents to the ones we found 
