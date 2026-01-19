figure(1)
clf
set(1,'position',[300 400 600 300])
axes
set(gca,'xscale','log','fontsize',14,'ytick',[-90 -45 0 45 90],'xtick',[.01 .1 1 10 100],'box','on')
axis([.03 300 -100 100])
xlabel('Frequency \omega (rad/s)')
ylabel('Phase (degrees)')
grid

figure(2)
clf
set(2,'position',[300 400 600 300])
axes
set(gca,'xscale','log','fontsize',14,'ytick',[-90 -45 0 45 90],'xtick',[.01 .1 1 10 100],'box','on')
axis([.03 300 -100 100])
line([.03 300],[0 0],'linewidth',3);
xlabel('Frequency \omega (rad/s)')
ylabel('Phase (degrees)')
grid

figure(3)
clf
set(3,'position',[300 400 600 300])
axes
set(gca,'xscale','log','fontsize',14,'ytick',[-90 -45 0 45 90],'xtick',[.01 .1 1 10 100],'box','on')
axis([.03 300 -100 100])
line([.03 300],[0 0],'linewidth',3,'color',[.5 .5 .5]);
line([.03 1],[0 0],'linewidth',3);
line([1 100],[0 -90],'linewidth',3);
line([100 300],[-90 -90],'linewidth',3);
xlabel('Frequency \omega (rad/s)')
ylabel('Phase (degrees)')
grid

figure(4)
clf
set(4,'position',[300 400 600 300])
axes
set(gca,'xscale','log','fontsize',14,'ytick',[-90 -45 0 45 90],'xtick',[.01 .1 1 10 100],'box','on')
axis([.03 300 -100 100])
line([.03 300],[0 0],'linewidth',3,'color',[.5 .5 .5]);
line([.03 1],[0 0],'linewidth',3,'color',[.5 .5 .5]);
line([1 100],[0 -90],'linewidth',3,'color',[.5 .5 .5]);
line([100 300],[-90 -90],'linewidth',3,'color',[.5 .5 .5]);
line([.03 .1],[0 0],'linewidth',3);
line([.1 10],[0 90],'linewidth',3);
line([10 300],[90 90],'linewidth',3);
xlabel('Frequency \omega (rad/s)')
ylabel('Phase (degrees)')
grid

figure(5)
clf
set(5,'position',[300 400 600 300])
axes
set(gca,'xscale','log','fontsize',14,'ytick',[-90 -45 0 45 90],'xtick',[.01 .1 1 10 100],'box','on')
axis([.03 300 -100 100])
line([.03 300],[0 0],'linewidth',3,'color',[.5 .5 .5]);
line([.03 1],[0 0],'linewidth',3,'color',[.5 .5 .5]);
line([1 100],[0 -90],'linewidth',3,'color',[.5 .5 .5]);
line([100 300],[-90 -90],'linewidth',3,'color',[.5 .5 .5]);
line([.03 .1],[0 0],'linewidth',3,'color',[.5 .5 .5]);
line([.1 10],[0 90],'linewidth',3,'color',[.5 .5 .5]);
line([10 300],[90 90],'linewidth',3,'color',[.5 .5 .5]);
xlabel('Frequency \omega (rad/s)')
ylabel('Phase (degrees)')
grid

