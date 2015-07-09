# NIPALS
Multivariate Data Analysis

Functions to perform principal components analysis by NIPALS decomposition of a data matrix are given.

The functions are written to run under MATLAB 2015a.

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


