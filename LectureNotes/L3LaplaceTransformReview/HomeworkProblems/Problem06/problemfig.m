
figure(1)
set(1,'position',[10 10 600 300])
set(1,'papersize',[6 3])
set(1,'paperposition',[0 0 6 3])
t=-1:.01:3;
plot(t,2*(t>0 & t<=2),'linewidth',2);
set(gca,'fontsize',14)
xlabel('Time ($s$)','Interpreter','Latex')
ylabel('Magnitude','Interpreter','Latex')
axis([-1 3 -.5 2.5])

print -dpdf -f1 problemfig