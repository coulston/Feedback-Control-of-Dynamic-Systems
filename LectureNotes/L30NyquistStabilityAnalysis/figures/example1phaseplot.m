figure(1)
clf
set(1,'position',[300 400 600 300])
axes
set(gca,'xscale','log','fontsize',14,'ytick',[-225 -180 -135 -90 -45 0],'xtick',[.1 1 10 100],'xticklabel',{'.1','1','10','100','1000'},'box','on')
axis([.05 200 -225 0])
line([.05 .1],[-180 -180],'linewidth',3,'color','blue')
line([.1 .2],[-180 -180+45*.3],'linewidth',3,'color','blue')
line([.2 1],[-180+45*.3 -180+45*.3+.7*90],'linewidth',3,'color','blue')
line([1 10],[-180+45*.3+.7*90 -180+45*.3+.7*90+45],'linewidth',3,'color','blue')
line([10 20],[-180+45*.3+.7*90+45 -180+45*.3+.7*90+45],'linewidth',3,'color','blue')
line([20 100],[-180+45*.3+.7*90+45 -180+45*.3+.7*90+45-45*.7],'linewidth',3,'color','blue')
line([100 200],[-90 -90],'linewidth',3,'color','blue')
xlabel('\textsf{Frequency} $\omega$ \textsf{(rad/s)}')
ylabel('\textsf{Phase (deg)}')
grid

plotpdftex(1,['example1phaseplot'],[1.4 1])

