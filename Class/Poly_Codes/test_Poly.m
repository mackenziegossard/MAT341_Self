function test_Poly()

a = [1 1.5 2.5];

x = 77;

% test poly code 1
val1 = p1(x)

% test poly code 2
val2 = p2(a(1), a(2), a(3), x)

% test poly code 3
val3 = p3(a, x)

% vector of x-values
xVec = -3:0.01:4.5;

length(xVec)
size(xVec)

% try putting vector into input for p3
% val_Vec = p3(a,xVec)

for i=1:length(xVec);
    yVec(i) = p3(a,xVec(i));
end 

%
% Plotting attributes
%
lw = 5;
fs = 28;

plot(xVec,yVec, 'r', 'LineWidth',lw); 
xlabel('x');
ylabel('Quadratic value');
leg = legend('2nd Order Poly');
set(gca, 'FontSize', fs);