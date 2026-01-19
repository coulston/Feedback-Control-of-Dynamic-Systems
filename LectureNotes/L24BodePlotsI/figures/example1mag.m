figure(1)
clf
set(1,'position',[300 400 600 300])
axes
set(gca,'xscale','log','fontsize',14,'xtick',[.01 .1 1 10 100],'box','on')
axis([.03 300 -45 25])
xlabel('Frequency \omega (rad/s)')
ylabel('Magnitude (dB)')
grid

figure(2)
clf
set(2,'position',[300 400 600 300])
axes
set(gca,'xscale','log','fontsize',14,'xtick',[.01 .1 1 10 100],'box','on')
axis([.03 300 -45 25])
line([.03 300],[-20 -20],'linewidth',3);
xlabel('Frequency \omega (rad/s)')
ylabel('Magnitude (dB)')
grid

figure(3)
clf
set(3,'position',[300 400 600 300])
axes
set(gca,'xscale','log','fontsize',14,'xtick',[.01 .1 1 10 100],'box','on')
axis([.03 300 -45 25])
line([.03 300],[-20 -20],'linewidth',3,'color',[.5 .5 .5]);
line([.03 10],[0 0],'linewidth',3);
line([10 300],[0 -29.54],'linewidth',3);
xlabel('Frequency \omega (rad/s)')
ylabel('Magnitude (dB)')
grid

figure(4)
clf
set(4,'position',[300 400 600 300])
axes
set(gca,'xscale','log','fontsize',14,'xtick',[.01 .1 1 10 100],'box','on')
axis([.03 300 -45 25])
line([.03 300],[-20 -20],'linewidth',3,'color',[.5 .5 .5]);
line([.03 10],[0 0],'linewidth',3,'color',[.5 .5 .5]);
line([10 300],[0 -29.54],'linewidth',3,'color',[.5 .5 .5]);
line([.03 1],[0 0],'linewidth',3);
line([1 17.78],[0 25],'linewidth',3);
xlabel('Frequency \omega (rad/s)')
ylabel('Magnitude (dB)')
grid

figure(5)
clf
set(5,'position',[300 400 600 300])
axes
set(gca,'xscale','log','fontsize',14,'xtick',[.01 .1 1 10 100],'box','on')
axis([.03 300 -45 25])
line([.03 300],[-20 -20],'linewidth',3,'color',[.5 .5 .5]);
line([.03 10],[0 0],'linewidth',3,'color',[.5 .5 .5]);
line([10 300],[0 -29.54],'linewidth',3,'color',[.5 .5 .5]);
line([.03 1],[0 0],'linewidth',3,'color',[.5 .5 .5]);
line([1 17.78],[0 25],'linewidth',3,'color',[.5 .5 .5]);
xlabel('Frequency \omega (rad/s)')
ylabel('Magnitude (dB)')
grid

