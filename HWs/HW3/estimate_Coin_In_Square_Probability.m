%
% Estimates the probability that a coin is in a 1x1 square by 
% randomly generating a point within the square to be the center 
% of the circle and checking if the top, bottom, left side, and
% right side are in the square
%
% Inputs: 1) r = radius of the circle
%         2) N = number of trials
%

function prob = estimate_Coin_In_Square_Probability(r,N)

count = 0; 

for i = 1:N
    % generates a center point
    x = rand();
    y = rand();

    % finds edges by adding center + radius
    x1 = x + r; % right side of circle
    x2 = x - r; % left side of circle
    y1 = y + r; % top of circle
    y2 = y - r; % bottom of circle
    
    % checks if the edges of the circle are in the square
    if x1 < 1 & x2 > 0 & y1 < 1 & y2 > 0
        count = count + 1;
    end
end

prob = count / N