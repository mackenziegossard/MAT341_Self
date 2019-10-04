%FUNCTION: estimate probabilty of rolling a 5 on a fair dice

function prob = estimate_Die_Probabilty(n)

% input: 1) n: total number of dice rolls

count5 = 0;

for i=1:n
    val = roll_Dice();
    if val == 5
        count5 = count5 + 1;
    end
end
prob = count5 / n

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function val = roll_Dice()

% roll the dice to get a value btwn [0,6]
roll = 6 * rand(); %returns "random  number" btwn 0 and 1

% take ceiling to count as die value
val = ceil(roll);
