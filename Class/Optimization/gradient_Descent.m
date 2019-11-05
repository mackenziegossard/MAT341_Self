%
% Gradient Descent: finds minimua for f: R^n -> R
% Xm = Xn + h
%
% gradF = rate of change
% +gradF = move up the mountain 
% -gradF = move down towards a valley 
%
% Xm = Xn - gammaN * gradF(x) where gammaN= step size of nth iteration
%
% Barzalai-Borwein Step Size:
% gammaN = |(Xm-Xn)^t * (gradF(Xm)-gradF(Xn)| / ||gradF(Xm)-gradF(Xn)||2

function val = gradient_Desecent()