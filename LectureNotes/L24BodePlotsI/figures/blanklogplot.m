figure(1)
clf
set(1,'position',[300 400 600 300])
axes
set(gca,'xscale','log','fontsize',14,'ytick',[-60 -40 -20 0 20],'xtick',[.01 .1 1 10 100],'xticklabel',{'.01','.1','1','10','100'},'box','on')
axis([.03 300 -70 30])
xlabel('Frequency \omega (rad/s)')
grid

figure(2)
clf
set(2,'position',[300 400 600 300])
axes
set(gca,'xscale','log','fontsize',14,'ytick',[-225 -180 -135 -90],'xtick',[.01 .1 1 10 100 1000],'xticklabel',{'.01','.1','1','10','100','1000'},'box','on')
axis([.03 3000 -240 -80])
xlabel('Frequency \omega (rad/s)')
grid