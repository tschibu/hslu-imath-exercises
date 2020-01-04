function ComputeOrbits

  y0 = [1; 0; 0; 1];

  N  = 50;
  [t, y] = ForwardEuler('TwoBody',[0,pi],y0,N);
  plot(y(1,:),y(3,:),'g-');
  hold on

  N  = 100;
  [t, y] = ForwardEuler('TwoBody',[0,pi],y0,N);
  plot(y(1,:),y(3,:),'c-');

  N  = 50;
  [t, y] = BackwardEuler('TwoBody',[0,pi],y0,N);
  plot(y(1,:),y(3,:),'b-');

  N  = 100;
  [t, y] = BackwardEuler('TwoBody',[0,pi],y0,N);
  plot(y(1,:),y(3,:),'m-');

  N  = 100;
  [t, y] = CrankNicolson('TwoBody',[0,2*pi],y0,N);
  plot(y(1,:),y(3,:),'r-');
  axis equal
  xlabel('u'), ylabel('v')
  axis([-1.5,1.8,-1.5,1.5])  

  plot(0,0,'ko')
  plot(1,0,'ro')

  legend('fE-50','fE-100','bE-50','bE-100','CN-100',5)
end
