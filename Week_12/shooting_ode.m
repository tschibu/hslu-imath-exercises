function du = shooting_ode(t,u)
% du = shooting_ode(x,u) is the RHS for the system of first
%  order ODEs arising from second order ODE u'' - u = 0
% x is the independent variable
% u is the dependent variable

du = [u(2); u(1)];
