N1 = 20;
u0 = 1.0;
addpath("/Volumes/HOME/tex/classes/IMATH/ODEs/Octave")
[t,u] = ForwardEuler('my_ode', [0.0,2.0], u0, N1);
plot(t,u,'-bo','MarkerFaceColor','b');
hold on
N2 = 4;
[t1,u1] = ForwardEuler('my_ode', [0.0,2.0], u0, N2);
axis equal, axis([0 2 0 1]), xlabel('t'), ylabel('u')
plot(t1,u1,'-go','MarkerFaceColor','g');
plot(t,exp(-t),'-r','LineWidth',2);
