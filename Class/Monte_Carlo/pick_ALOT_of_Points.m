function pick_ALOT_of_Points()

NVec = [1:1:10 20:5:100 125:50:1000 1500:250:10000 15000:5000:1e5];

for i=1:length(NVec)
    distN(i) = estimate_Point_Distance(NVec(i),1); 
end

semilogx(NVec, distN, 'r*');
xlabel('N');
ylabel('Estimated Distance');
set(gca, 'Fontsize',18);

