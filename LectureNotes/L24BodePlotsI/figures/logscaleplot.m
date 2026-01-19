figure(1)
clf
set(1,'position',[300 400 600 300])
set(1,'papersize',[6 3])
set(1,'paperposition',[0 0 6 3])
axes
axis([1 1000 0 1])
set(gca,'xscale','log','fontsize',14)
set(gca,'xtick',[1:10,20:10:100,200:100:1000])
set(gca,'xticklabel',{'1','2','','','5','','','','','10','20','','','50','','','','','100',...
    '','','','','','','','','1000'})
grid
print -f1 -dpdf logscaleplot.pdf



% figure(2)
% set(2,'position',[300 400 600 300])
% axes
% set(gca,'fontsize',14)
% axis([0 3 0 1])
% grid