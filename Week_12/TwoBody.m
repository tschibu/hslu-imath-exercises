function ydot = TwoBody(t,y)
r = sqrt(y(1)^2 + y(3)^2);
ydot = [y(2); -y(1)/r^3; y(4); -y(3)/r^3];
