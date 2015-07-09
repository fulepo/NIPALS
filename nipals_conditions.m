

if nargin == 1
    prepro = 0;
    a = cols;
    it = 20000;
    tol = 1e-10;
elseif nargin == 2
    a = cols;
    it = 20000;
    tol = 1e-10;
elseif nargin == 3
    it = 20000;
    tol = 1e-6;
elseif nargin == 4
    tol = 1e-10;
end