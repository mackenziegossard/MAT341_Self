%
% Finds the proabilty that the center of the circle (0,0) is contained
% within the traingle formed by three random points along the circle
% Input: 1) N = number of trials
%

function prob = estimate_Triangle_Center_Circle_Probability(N)

count = 0;

% checks if center is in triangle for N trails
for i = 0:N
    flag = check_center();
    if flag == 1
        count = count + 1; % if the center is in the triangle the count increase by one
    end
end
prob = count/N 


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function val = check_center()

% point one
x1 = 4*rand() - 2;
y1 = sqrt(4 - x1^2); % get corresponding y value using the equation of a circle 
if rand() < .5 % randomizes y to be positve or negative 
  y1 = y1 * -1;  
end

% point 2
x2 = 4*rand() - 2;
y2 = sqrt(4 - x2^2);
if rand() < .5
  y2 = y2 * -1; 
end

%point 3
x3 = 4*rand() - 2;
y3 = sqrt(4 - x3^2);
if rand() < .5
  y3 = y3 * -1; 
end

flag1 = 0; % tripped if center is in triangle

% checks that y1 is on the opposite side of the y-axis from y2 and y3
if (y1 > 0 && y2 < 0 && y3 < 0) | (y1 < 0 && y2 > 0 && y3 > 0)
    % checks that x1 is on the opposite side of the x-axis from x2 or x3 or both
    if (x1 > 0 && (x2 < 0 | x3 < 0)) | (x1 < 0 && (x2 > 0 | x3 > 0))
        % checks that -x1 is between x2 and x3
        if (-x1 > x2 && -x1 < x3) | (-x1 < x2 && -x1 > x3)
            flag1 = 1;
        end
    end
end

% runs same checks as above with point 2 being opposite from points 1 and 3
if (y2 > 0 && y1 < 0 && y3 < 0) | (y2 < 0 && y1 > 0 && y3 > 0)
    if (x2 > 0 && (x1 < 0 | x3 < 0)) | (x2 < 0 && (x1 > 0 | x3 > 0))
        if (-x2 > x1 && -x2 < x3) | (-x2 < x1 && -x2 > x3)
            flag1 = 1;
        end
    end
end

% runs same checks as above with point 3 being opposite from points 1 and 2
if (y3 > 0 && y1 < 0 && y2 < 0) | (y3 < 0 && y1 > 0 && y2 > 0)
    if (x3 > 0 && (x1 < 0 | x2 < 0)) | (x3 < 0 && (x1 > 0 | x2 > 0))
        if (-x3 > x1 && -x3 < x2) | (-x3 < x1 && -x3 > x2)
            flag1 = 1;
        end
    end
end
val = flag1;