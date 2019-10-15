%
% Finds the LCM of two integars
% Inputs: 1) x = first integar value 
%         2) y = second integar value
%

function lcm_val = calculate_LCM(x,y)

% the value we are multiplying x by
i = 0; 

% flag gets tripped when lcm is found
flag1 = 0;

while flag1 == 0;
    i = i+1; % increses the multiplication factor by one 
    x_product = x*i; 
    if mod(x_product, y) == 0 % check if the x_product is divisible by y
        flag1 = 1; 
    end
end

lcm_val = x_product % set the x_product equal to the lcm and print it
