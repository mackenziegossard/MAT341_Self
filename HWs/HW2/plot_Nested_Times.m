%
% functions that takes no inputs
% records the time it takes to calculate nested for loops
% and plots those to a logarithmic graph 
%

function plot_Nested_Times()

% array of values to calculte the run time for
N = [1:1:10 20:10:100 125 150 175 200 225 250]; 

% stores times in a new array 
for i=1:length(N);
    time(i) = calculate_Nested_For_Loop_Time(i);
end

%changes the line width
lw = 3;

% plots times on graph
loglog(N,time, 'm', 'LineWidth',lw)
xlabel('N');
ylabel('Times');