%
% Checks the probability of landing in the square for different size radii
% and plots the probilites and radii to a graph
%

function vary_Radii_PLot()

rVec=[0.01:0.005:0.10 0.1:0.01:0.5];
N = 1e5;

for i=1:length(rVec)
    probR(i) = estimate_Coin_In_Square_Probability(rVec(i),N);
end

plot(rVec, probR, 'r*');
xlabel('radius');
ylabel('probabilty of being in square');
set(gca, 'Fontsize',18);

% r = .14 and r = .15 give estimated probability of 0.5
% r = .34 and r = .35 give estimated probability of 0.1
% r = .44 and r = .45 give estimated probability of 0.01