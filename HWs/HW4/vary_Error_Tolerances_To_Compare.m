%
% Functions that calculates the number of iterations, N, need to achieve
% varying error tolerances for two different algorithms, golden search and 
% succesive parabolic interpolation, and graphs the results
%

function vary_Error_Tolerances_To_Compare()

% error tolerance to test
errTolVec = [1e-1 1e-2 1e-3 1e-4 1e-5 1e-6 1e-7 1e-8 1e-9 1e-10 1e-11 1e-12];

% loops over all the tolerances
for i = 1:length(errTolVec)
    % runs the golden search algorithm for a specific tolerance
    golden(i) = golden_Search(errTolVec(i));
    % runs the successive parabolic interpolation algorithm for a specific
    % tolerance
    parabolic(i) = successive_Parabolic_Interpolation(errTolVec(i));
end

lw = 5;

% plot using logarithmic axis in the horizontal direction 
figure(1)
semilogx(errTolVec, golden, 'LineWidth',lw)
hold on
semilogx(errTolVec, parabolic, 'r', 'LineWidth', lw)
hold off
xlabel('tol');
ylabel('N');
legend('Golden Search','Succ. Para. Interp.')

% plot using logarithmic axis in both direction
figure(2)
loglog(errTolVec, golden, 'LineWidth',lw)
hold on
loglog(errTolVec, parabolic, 'r', 'LineWidth', lw)
hold off
xlabel('tol');
ylabel('N');
legend('Golden Search','Succ. Para. Interp.')

% The Successive Parabolic Interpolation converges faster 
% for less accuarte tolerances
%
% Once you increase the tolerance threshold past 1e-8 
% the Golden Search converages faster
% 