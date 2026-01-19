figure(1)
set(1,'position',[10 10 600 300])
set(1,'papersize',[6 3])
set(1,'paperposition',[0 0 6 3])
t=-2:.01:-.04;
plot(t,zeros(size(t)),'linewidth',2);
hold on
t=-.01:.01:2;
plot(t,ones(size(t)),'linewidth',2);
plot(0,0,'o','linewidth',1,'markersize',7)
plot(0,1,'o','linewidth',3,'markersize',4)
hold off
set(gca,'fontsize',14)
xlabel('Time (s)')
ylabel('Magnitude')
axis([-2 2 -.5 1.5])
print -f1 -dpdf step.pdf