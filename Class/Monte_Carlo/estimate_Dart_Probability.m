%FUNCTION: estimate probabilty of pi by throwing darts 

function prob = estimate_Dart_Probability(n)

% input: 1) n: total number of dart throws

count_in_circle = 0;

for i=1:n
    distance = throw_Dart();
    if distance <= 1/2
        count_in_circle = count_in_circle + 1;
    end
end

prob = count_in_circle / n
pi_estimation = 4 * prob

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function val = throw_Dart()

x_value = 1/2 * rand();
y_value = 1/2 * rand();
val = sqrt(x_value^2 + y_value^2); 