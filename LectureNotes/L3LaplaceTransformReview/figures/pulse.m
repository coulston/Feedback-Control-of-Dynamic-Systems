figure(1)
set(1,'position',[10 10 600 300])
set(1,'papersize',[6 3])
set(1,'paperposition',[0 0 6 3])
t=-2:.01:2;
plot(t,(t>0 & t<=.5),'linewidth',2);
text(.55,1.1,'$\frac{1}{t_{0}}$')
set(gca,'fontsize',14)
set(gca,'xtick',[0 .5])
set(gca,'ytick',[]);
set(gca,'xticklabel',['0|$t_0$'])
xlabel('Time (s)')
ylabel('Magnitude')
axis([-2 2 -.5 1.5])

plotpdftex(1,'pulse.pdf',[1.5,1])