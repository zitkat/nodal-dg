% Driver script for solving the 1D advection equations
Globals1D;

% Order of polymomials used for approximation 
N = 1;

% Generate simple mesh
[Nv, VX, K, EToV] = MeshGen1D(0.0,1.0,99);

% Initialize solver and construct grid and metric
StartUp1D;

% Set initial conditions
u =  exp(1./((10*(x - .2)).^2 - 1))/exp(1/(- 1)) .* (x > 0.1 & x <= 0.3);

% Solve Problem
FinalTime = .4;
[u] = Advec1D(u,FinalTime);
