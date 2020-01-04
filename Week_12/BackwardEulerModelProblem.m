function [t,u] = BackwardEulerModelProblem(tRange, u0, N)
% Use the backward Euler method to solve the model
% problem u' = -u subject to initial conditions u(0)=u0
% tRange = [t0,t1], where the solution will be computed,
% therefore t0 <= t <= t1. Also
% u0 = column vector of initial values for u at t0
% N  = number of equally-sized steps from t0 to t1
% t  = row vector of values of t
% u  = matrix whose n-th row is the approx. solution at t(n).

t      = zeros(N+1,1);            % initialize t
t(1)   = tRange(1);
h      = (tRange(2)-tRange(1))/N;
u(:,1) = u0;                     % u0
for n = 1 : N
  t(n+1)   = t(n) + h;
  u(:,n+1) = 1/(1 + h) * u(:,n);
end
