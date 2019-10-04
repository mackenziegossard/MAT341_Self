function pick_ALOT_of_Points()

LVec = [1:1:10 20:5:100 125:50:1000 1500:250:10000 15000:5000:1e5];

for i=1:length(LVec)
    exp_dist(i) = estimate_Point_Distance(10^4, LVec(i)); 
end

loglog(LVec, exp_dist, 'r*');
xlabel('Aspect Ratio');
ylabel('Expected Distance');
set(gca, 'Fontsize',18);