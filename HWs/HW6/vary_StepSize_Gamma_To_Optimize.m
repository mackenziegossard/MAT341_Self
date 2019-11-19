%
% Script that runs the gradient descent methods with varying step sizes, 
% gamma, and plots the number of iterations needed to find the minimum for
% that particular gamma
%

function vary_StepSize_Gamma_To_Optimize()

% gamma values to test
gamma = [0.1:0.02:1.5];

% loops over all the gamma
for i = 1:length(gamma)
    % runs the gradient descent for a specific tolerance
    gradient(i) = Gradient_Descent_1(.02, gamma(i));
end

lw = 5;
semilogx(gamma, gradient, 'b', 'LineWidth',lw)
xlabel('gamma');
ylabel('# of iterations');
legend('Fixed Step')

% The best step-size, gamma, seems to be 1