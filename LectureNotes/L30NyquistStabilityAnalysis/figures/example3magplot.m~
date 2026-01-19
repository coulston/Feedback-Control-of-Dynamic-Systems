figure(1)
clf
set(1,'position',[300 400 600 300])
axes
set(gca,'xscale','log','fontsize',14,'xtick',[.01 .1 1 10 100],'xticklabel',{'.01','.1','1','10','100'},'box','on')
line([.04 2],[40 0],'linewidth',3,'color','blue')
line([2 100],[0 -40*1e.7],'linewidth',3,'color','blue')
axis([.01 100 -60 40])
xlabel('\textsf{Frequency} $\omega$ \textsf{(rad/s)}')
ylabel('\textsf{Magnitude (dB)}')
grid

plotpdftex(1,['example3magplot'],[1.4 1])
