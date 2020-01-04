function du = my_ode(t,u)
% du = my_ode(t,u) is the RHS function for the ODE u'=-u
% t is the independent variable
% u is the dependent variable
% du is u'

du = -u;
