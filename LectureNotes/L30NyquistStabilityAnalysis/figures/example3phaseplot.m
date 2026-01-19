figure(1)
clf
set(1,'position',[300 400 600 300])
axes
set(gca,'xscale','log','fontsize',14,'ytick',[-180 -135 -90 -45 0],'xtick',[.01 .1 1 10 100],'xticklabel',{'.01','.1','1','10','100'},'box','on')
axis([.01 100 -200 0])
line([.01 .2],[-90 -90],'linewidth',3,'color','blue')
line([.2 20],[-90 -90-45*2],'linewidth',3,'color','blue')
line([20 100],[-180 -180],'linewidth',3,'color','blue')
xlabel('\textsf{Frequency} $\omega$ \textsf{(rad/s)}')
ylabel('\textsf{Phase (deg)}')
grid

plotpdftex(1,['example3phaseplot'],[1.4 1])

