function practice_Ifs()

% case 1
x = 8;
if x < 5
    A = 10;  
else
    A = 57.5;
end


% case 2
y = 37;
if y < 5
    B = 2*y-1;
elseif y < 10
    B = 3*y^2 + 2;
end


% case 3
x = 3;
if x < 2 
    C = 1;
elseif x < 5
    C = 2;
elseif x < 10
    C = 3;
elseif x < 100
    C = 4;
else 
    C = 5;
end


% case 4
x = 3;
if x < 2 
    D = 1;
end

if x < 5
    D = 2;
end

if x < 10
    D = 3;
end

if x < 100
    D = 4;
end

if x < 1000;
    D = 5;
end


% case 5
x = 5;
y = 3;
if x <= y % less than or equal to
    A = 1;
end

if x>= y % greater than or equal to
    A = 2;
end

if x == y % equal to
    A = 3;
end

if x ~= y % NOT equal to
    A = 4;
end

if ((x <= y) && (x ~= y)) % AND (if BOTH statements are TRUE do something)
    A = 5;
end

if ((x>y) || (x<y)) % OR (if EITHER statement (or both) is TRUE do something)
    A = 6;
end