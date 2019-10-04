function pick_ALOT_of_L()

LVec = [1e-3:0.5e-3:9e-3  1e-2:0.5e-2:9e-2  1e-1:0.5e-1:9e-1  1e0:0.5e0:10];

for i=1:length(LVec)
    exp_prob(i) = estimate_Real_Roots(2.5e4, LVec(i)); 
end

loglog(LVec, exp_prob, 'r*');
xlabel('Length  of  the  Interval');
ylabel('Probability of Real Roots');
set(gca, 'Fontsize',18);