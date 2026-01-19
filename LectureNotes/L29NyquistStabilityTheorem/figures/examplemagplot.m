figure(1)
clf
set(1,'position',[300 400 600 300])
axes
set(gca,'xscale','log','fontsize',14,'xtick',[.1 1 10 100 1000],'xticklabel',{'.1','1','10','100','1000'},'box','on')
line([.05 1],[12 12],'linewidth',3,'color','blue')
line([1 2],[12 12+20*.3],'linewidth',3,'color','blue')
line([2 10],[12+20*.3 12+20*.3-20*.7],'linewidth',3,'color','blue')
line([10 200],[12+20*.3-20*.7 12+20*.3-20*.7-40*1.3],'linewidth',3,'color','blue')
axis([.05 200 -70 45])
xlabel('\textsf{Frequency} $\omega$ \textsf{(rad/s)}')
ylabel('\textsf{Magnitude (dB)}')
grid

plotpdftex(1,['examplemagplot'],[1.4 1])
