figure(1)
clf
set(1,'position',[300 400 600 300])
axes
set(gca,'xscale','log','fontsize',14,'ytick',[-90 -45 0],'xtick',[.01 .1 1 10 100],'xticklabel',{'.01a','.1a','a','10a','100a'},'box','on')
line([.01 .1],[0 0],'linewidth',3);
line([.1 10],[0 -90],'linewidth',3);
line([10 100],[-90 -90],'linewidth',3);
axis([.01 100 -100 10])
xlabel('Frequency \omega (rad/s)')
ylabel('Phase (degrees)')
grid

figure(2)
clf
set(2,'position',[300 400 600 300])
axes
set(gca,'xscale','log','fontsize',14,'ytick',[0 45 90],'xtick',[.01 .1 1 10 100],'xticklabel',{'.01a','.1a','a','10a','100a'},'box','on')
line([.01 .1],[0 0],'linewidth',3);
line([.1 10],[0 90],'linewidth',3);
line([10 100],[90 90],'linewidth',3);
axis([.01 100 -10 100])
xlabel('Frequency \omega (rad/s)')
ylabel('Phase (degrees)')
grid

figure(3)
clf
set(3,'position',[300 400 600 300])
axes
set(gca,'xscale','log','fontsize',14,'ytick',[-180 -90 0],'xtick',[.01 .1 1 10 100],'xticklabel',{'.01','.1','','10','100'},'box','on')
line([.01 .1],[0 0],'linewidth',3);
line([.1 10],[0 -180],'linewidth',3);
line([10 100],[-180 -180],'linewidth',3);
axis([.01 100 -200 10])
xlabel('Frequency \omega (rad/s)')
ylabel('Phase (degrees)')
grid

figure(4)
clf
set(4,'position',[300 400 600 300])
axes
set(gca,'xscale','log','fontsize',14,'ytick',[0 90 180],'xtick',[.01 .1 1 10 100],'xticklabel',{'.01','.1','','10','100'},'box','on')
line([.01 .1],[0 0],'linewidth',3);
line([.1 10],[0 180],'linewidth',3);
line([10 100],[180 180],'linewidth',3);
axis([.01 100 -10 200])
xlabel('Frequency \omega (rad/s)')
ylabel('Phase (degrees)')
grid

