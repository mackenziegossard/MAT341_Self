% 
% Function that calcutes the number of operations it takes to compute the 
% reduced row echelon form of a NxN matrix

function plot_Gaussian_Elimination_Scaling()

% Different size matrixes
NVec = 2:1:100

% calcaultes operation count for matrixs of varying sizes 
for i = 1:length(NVec)
    OpCount(i) = go_Go_Gaussian_Elimination(i);
end
OpCount

% plots Size of matrix vs the operation count
figure(1)
loglog(NVec, OpCount, 'b', 'LineWidth',5)
xlabel('Size of Matrix, N');
ylabel('Operatoin Count');

figure(2)
plot(NVec, OpCount, 'b', 'LineWidth',5)
xlabel('Size of Matrix, N');
ylabel('Operatoin Count');

% As the size of the matrix increases the number of operations required
% increases exponetially
% It appears to increase cubically. This make sense since we know the
% number of operation to row reduce a matrix is N^3 
