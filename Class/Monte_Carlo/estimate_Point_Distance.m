function expected_dist = estimate_point_distance(N, Lx)

% input: 1) n: total number of trials

dist = 0;

for i=1:N
    dist = dist + pick_Points(Lx);
end

expected_dist = dist / N;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function val = pick_Points(Lx)

x1_value = Lx * rand();
x2_value = Lx * rand();
y1_value = rand();
y2_value = rand();

val = sqrt((x1_value - x2_value)^2 + (y1_value - y2_value)^2); 