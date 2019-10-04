function run_ALOT_of_Dice()

NVec = [1:1:10 20:5:100 125:50:1000 1500:250:10000 15000:5000:1e5];

for i=1:length(NVec)
    
    probN = estimate_Die_Probability(NVec(i));
    err(i) = abs(probN - 1/6);
    
end

loglog(NVec, err, 'r*');
xlabel('N');
ylabel('Error');
set(gca, 'Fontsize',18);