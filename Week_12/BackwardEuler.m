function [t,u] = BackwardEuler(f, tRange, u0, N)
% Use backward (implicit) Euler to solve a system of first order
% ODEs of the form u'=f(t,u). Here f = name of an m-file which
% defines "du = f(u,t)" to compute the RHS of the ODE as a row
% vector. tRange = [t0,t1], where the solution will be computed
% for t0<=t<=t1. Also
% u0 = column vector of initial values for u at t0
% N  = number of equally-sized steps from t0 to t1
% t  = row vector of values of t
% u  = matrix whose n-th row is the approx. solution at t(n).

t      = zeros(N+1,1);                     % initialize t
t(1)   = tRange(1);
h      = (tRange(2)-tRange(1))/N;
u(:,1) = u0;                               % u0 (transpose)
for n = 1 : N
  t(n+1)   = t(n) + h;
  options = optimset('Display','off');
  [u(:,n+1),Fval,exitflag]  = fsolve(@(x) x - u(:,n) - ...
    h*feval(f,t(n+1),x),u(:,n),options);
end
