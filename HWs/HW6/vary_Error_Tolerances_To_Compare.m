%
% Script that varies the error tolerence for gradeint decent using a fixed
% step size and gradient decesnt using the Barzilai-Borwein step-size
% Plots the number of iterations needed to find the minimum vs the error
% tolerance for both gradeint descent methods 

function vary_Error_Tolerances_To_Compare()

% error tolerence to try
errTolVec = [1e-1 1e-2 1e-3 1e-4 1e-5 1e-6 1e-7 1e-8 1e-9 1e-10 1e-11];

% runs the gradient descent for a specific error tolerance
for i = 1:length(errTolVec)
    % fixed step size
    gradient_1(i) = Gradient_Descent_1(errTolVec(i), 0.5);
    % Barzilai-Borwein step-size
    gradient_2(i) = Gradient_Descent_2(errTolVec(i));
end

lw = 5;

% plot with logarithmic axis in the horizontal direction
figure(1)
hold on
% fixed step size  
semilogx(errTolVec, gradient_1, 'b', 'LineWidth', lw)
% Barzilai-Borwein step-size
semilogx(errTolVec, gradient_2, 'r', 'LineWidth', lw)
hold off
xlabel('errTolVec');
ylabel('# of iterations');
legend('Fixed Step', 'Barzilai-Borwein')

% plot with logarithmic axis in both directions
figure(2)
hold on
% fixed step size
loglog(errTolVec, gradient_1, 'b', 'LineWidth', lw)
% Barzilai-Borwein step-size
loglog(errTolVec, gradient_2, 'r', 'LineWidth', lw)
hold off
xlabel('errTolVec');
ylabel('# of iterations');
legend('Fixed Step', 'Barzilai-Borwein')

% The fixed step-size appears to converge faster to the minimum when gamma = 1
% The Barzilai-Borwein step-size appears to converge faster to the minimum when gamma = 0.5

% One advantge of using the Barzilai-Borwein step-size is that it takes
% roughly the same number of iteration regardless of tolerance level

% I would probably used the fixed step-size methods because finding the
% gradeint can be hard