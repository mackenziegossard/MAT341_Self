% 
% Nelder Mead Algorithm 
% 1) pick three points X1 = (x1,y1), X2 = (x2, y2), X3 = (x3,y3)
% 2) order pts by function eval from smallest to largest so that
%       f(X1) < f(X2) < f(X3)
% 3) find midpoint between f(X1) and f(X2)
%       Xm = 1/2(X1 + X2)
% 4) compute a "reach vector"
%       Xr = Xm + (Xm - X3)
% 5) tranformation step
%       

function val = Nelder_Mead(tol)

n = 0;

% creates vectors with x and y points and stores in matrix
points = [0.35, 2.8; -.25, .3; 1.5, 0.5];


% creates matrix of function values for vectors
fVec = [f(points(1,:)), f(points(2,:)), f(points(3,:))];

% sorts function values and reorders points
[fNew, indsVec] =  sort(fVec);
x1 = points(indsVec(1), :);
x2 = points(indsVec(2), :);
x3 = points(indsVec(3), :); 

while (abs(x1-x3)) > tol
    % compute midpoint between x1 and x2
    xm = .5*(x1 - x3);
    
    % compute reach vector
    xr = xm + (xm - x3);
    
    % transformation step
    if f(xr) < f(x3)
        x3 = xr;
    elseif f(xr) >= f(x3)
        xc = .5*(xm + x3);
        if f(xc) < f(x3)
            x3 = xc; 
        else 
            x2 = .5*(x1 + x2);
            x3 = .5*(x1 + x3);
        end
    end
    
    % reinitilizes matrix of vectors
    points = [x1;x2;x3];
    % reinitilizes matrix of function values for vectors
    fVec = [f(x1), f(x2), f(x3)];
    % sorts function values and reorders points
    [fNew, indsVec] =  sort(fVec);
    x1 = points(indsVec(1), :);
    x2 = points(indsVec(2), :);
    x3 = points(indsVec(3), :);
    
    n = n+1;
end

n
x1

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function val = f(x)
val = -(sin(x(1)) + cos(x(2)));
