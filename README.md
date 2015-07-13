# NIPALS
Multivariate Data Analysis

Functions to perform principal components analysis by NIPALS decomposition of a data matrix are given.

The functions are written to run under MATLAB 2015a.
To run the function it is necessary also the "scaledata.m" function. It is available
in the present repository but it can also be found on MatlabExchange (developed by Ani) 
downloadable at: http://www.mathworks.com/matlabcentral/fileexchange/submissions/15561/v/1/download/m

RECOMMENDATIONS ON DATA PREPARATION

Prepare your data in excel or txt format. The data matrix should be transposed so that OBJECTS are on the ROWS and 
VARIABLES on the COLUMNS.
The first column in the xlsx file should contain the object NAMES.
The first row in the xlsx file should contain the variables NAMES.

Read the data with the MATLAB command 'readtable' giving also as optional parameters the following:

'ReadRowNames', true

PERFORM THE PCA 

Launch the function with the command:

RESULTS = nipals(X, number)

number can be 0, 1 or 2. Such values correspond to RAW data matrix, COLUMN-CENTERED data matrix and AUTOSCALED data 
matrix, respectively.

Other optional parameters are described in the file 'nipals.m'.

ANALYSIS OF RESIDUALS

At the end of NIPALS decomposition of the data matrix X, statistical 
evaluation of the residual matrix is performed by the function 'matrix_stat'
available in the repository.
Type: help matrix_stat for further infos. 
