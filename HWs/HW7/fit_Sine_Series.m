%
% Function that prefrom linear least square on particulat sine function 
%

function fit_Sine_Series()

% generates data points
N=500;
xData=linspace(-pi,pi,N);
yData=( (0.25*xData.^2).* cos(xData).^4.* sin(xData).^7 )';
M = 40;

% Matrix A for sine function
for i=1:N
    for j = 1:M
        A(i,j) = sin(j*xData(i));
    end
end

% Pseudo Inverse for model function
PI = inv(A.' * A) * A.' * yData;

val = 0;
% function values for model function 
for i=1:N
    for j=1:M
        val = val + PI(j)*sin(j*xData(i));
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
ylabel('y Value');
legend('Data', 'Best Sine Series Fit')

% The l2-Norm when M=5 is .0813
% The l2-Norm when M=10 is .0096
% The l2-Norm when M=20 is 2.142e-6
% The l2-Norm when M=40 is 3.920e-9

% This series is called the Fourier Sine Series