function du = LinearODE_01(t,u)
global LAMBDA
du = [u(2); LAMBDA*u(1)+(LAMBDA-1)*u(2)];
