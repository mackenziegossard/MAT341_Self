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
points = [0.35, 2.8; 4, 4; 4.5, 4.5];


% creates matrix of function values for vectors
fVec = [f(points(1,:)), f(points(2,:)), f(points(3,:))];

% sorts function values and reorders points
[fNew, indsVec] =  sort(fVec);
x1 = points(indsVec(1), :);
x2 = points(indsVec(2), :);
x3 = points(indsVec(3), :); 

while (abs(f(x1)-f(x3))) > tol
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

% Part a and b:
% It takes 27 itertions to achieve 1e-8 accuracy
% It appears to converge to (1.5708, 0.1250)
% The true point where the minima is located is (pi/2,0)
% This does not look like 1e-8 accuracy but the accuracy we are checking is
% how close the two function values are to each other not how close the
% functions value is to the true minimum 

% Part c:
% It takes 25 iterations to achieve 1e-8 accuracy
% It appears to converage to (1.5582, 0.0592)
% Because the second point is closer it converged faster

% Part d:
% It keeps running for these values