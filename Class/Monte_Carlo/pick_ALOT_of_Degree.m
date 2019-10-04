function pick_ALOT_of_L()

DVec = [0:1:20];

for i=1:length(DVec)
    exp_prob(i) = estimate_Real_Roots(2.5e4, 1, DVec(i)); 
end

plot(DVec, exp_prob, 'r*');
xlabel('Polynomial Degree');
ylabel('Probabilty of Real Roots');
set(gca, 'Fontsize',18);