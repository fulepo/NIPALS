function RESULTS = matrix_stat(X)

% function RESULTS = matrix_stat(X)
% 
% Written by: Filippo Amato, July 2015
% Ver. 1.0
% 
% The function performs statistical analysis of a numerical data matrix
% X submitted either as mat variable or data table.
% 
% The analysis is performed on the COLUMNS of X and includes:
% 
% 1_mean values
% 2_standard deviation
% 3_variance
% 4_skewness
% 5_kurtosis
% 6_sum of squares
% 

RESULTS.OriginalMatrix = X;

RESULTS.ColumnMeans = mean(X);
RESULTS.ColumnStdDev = std(X);
RESULTS.ColumnVar = var(X);
RESULTS.ColumnSkewness = skewness(X);
RESULTS.ColumnKurtosis = kurtosis(X);
RESULTS.ColumnSSE = sumsqr(X);

% for i=1:size(X,2)
% figure
% normplot(X(:,i))
% end






















