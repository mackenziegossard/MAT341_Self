function plot_Nested_Times()

N = [1:1:10 20:10:100 125 150 175 200 225 250];

for i=1:length(N);
    time(i) = calculate_Nested_For_Loop_Time(i);
end

lw = 3;
loglog(N,time, 'm', 'LineWidth',lw)
xlabel('N');
ylabel('Times');