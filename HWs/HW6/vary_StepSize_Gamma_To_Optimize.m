%
% Script that runs the gradient descent methods with varying step sizes, 
% gamma, and plots the number of iterations needed to find the minimum for
% that particular gamma
%

function vary_StepSize_Gamma_To_Optimize()

% gamma values to test
gamma = [.1 .2 .3 .4 .5 .6 .7 .8 .9 1 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9];

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