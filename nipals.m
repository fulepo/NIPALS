function RESULTS = nipals(X, prepro, a, it, tol)

%%
% This function requires the function scaledata.m available at:
% http://www.mathworks.com/matlabcentral/fileexchange/15561-data-scaling
%
%  This function requires the function convert2table.m available at:
% http://www.mathworks.com/matlabcentral/fileexchange/52170-convert2table
%
% Written by: Filippo Amato July 2015
% 
%   RESULTS = nipals(X, prepro, a, it, tol)
%   
%   X = data matrix (if it is not a TABLE it will be converted)
%   prepro = type of matrix preprocessing (see below)
%   a = number of components
%   it = maximum number of iterations for one component
%   tol = tolerance. default = 20000 
% 
%   Submit data matrix in the form of a TABLE. This form is
%  prefearable. 
% Objects on the ROWS and variables on the COLUMNS.
% Select the proper preprocessing method:
% 
% 0 = raw matrix
% 1 = matrix column-centered
% 2 = autoscaled matrix
%
% 
% HIGHLY IMPORTANT
% 
% If the labels for the objects are in the first column of the table
% and they were not given as TABLE.Properties.RowNames, then launch 
% the function with the command:
%
%       nipals(X(:,2:end), .....)
% In general submit only the numerical part of X.
%
% to automatically generate rownames import the data from xlsx 
% (object names in the first column) file with
% the command:
%
%   X = readtable('file.xlsx', 'ReadRowNames', true)

%=========================================================================

set(0,'DefaultFigureWindowStyle','docked');

ExistTable = istable(X);
if ExistTable==1
    TABLE = X;
    X = table2array(X);
    [a,LargeX] = max(std(X));
elseif ExistTable ==0
    X = convert2table(X);
    TABLE = X;
    X = table2array(X);
    [a,LargeX] = max(std(X));
end

[rows, cols] = size(X);
Z = X;

run('nipals_conditions.m')
run('nipals_prepro.m')
    
RESULTS = nipals_decomp(Z,rows, cols, a, it, tol, LargeX);

    run('nipals_figures.m')










