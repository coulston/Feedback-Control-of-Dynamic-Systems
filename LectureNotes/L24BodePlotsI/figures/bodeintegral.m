figure(1)
clf
set(1,'position',[300 400 600 300])
axes
set(gca,'xscale','log','fontsize',14,'xtick',[.01 .1 1 10 100],'xticklabel',{'.01','.1','1','10','100'},'yticklabel',{''},'box','on')
axis([.01 100 -45 5])
xlabel('Frequency \omega (rad/s)')
%ylabel('Magnitude (dB)')
grid

