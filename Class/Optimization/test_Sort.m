function test_Sort()

% pick three points between [2,0]
x1 = 1.75;
x2 = 1.25;
x3 = 0.6;

% make a vector of points
xVec = [x1, x2, x3];

% create vector of function values
fVec = [f(x1), f(x2), f(x3)];

% sort function value vector
[fNew, indsVec] = sort(fVec);

xLeast = xVec(indsVec(1));
xMiddle = xVec(indsVec(2));
xGreat = xVec(indsVec(3));
  
 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%                             
function val = f(x)
val = .5 - x*exp(-(x^2));
