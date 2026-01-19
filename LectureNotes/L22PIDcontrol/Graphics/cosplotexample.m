printopt=1;
figure(1)
clf
set(1,'position',[10 100 500 300])
set(1,'papersize',[5.2 3.2])
set(1,'paperposition',[.1 .1 5 3])
t=-1/6:.01:1;
plot(t,3*cos(3*pi*t+pi/4),'linewidth',2)
t=[-1/12 1/12 1/4];
hold on
plot(t,3*cos(3*pi*t+pi/4),'*','linewidth',2,'markersize',12)
hold off
axis([-1/6 1 -3 3])
set(gca,'fontsize',14)
set(gca,'xtick',[-1:6]/6,'xticklabel','-1/6|0|1/6|2/6|3/6|4/6|5/6|1')
title('3cos(3\pit+\pi/4)')
xlabel('Time (s)')
ylabel('Magnitude')
grid
if printopt==1,
  print -f1 -dpdf cosplotexample.pdf
end;
