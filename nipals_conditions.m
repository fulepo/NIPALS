

if nargin == 1
    prepro = 0;
    a = cols;
    it = 20000;
    tol = 1e-5;
elseif nargin == 2
    a = cols;
    it = 20000;
    tol = 1e-5;
elseif nargin == 3
    it = 20000;
    tol = 1e-5;
elseif nargin == 4
    tol = 1e-5;
end