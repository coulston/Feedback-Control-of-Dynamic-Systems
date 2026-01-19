figure(1)
clf
set(1,'papersize',[6 5])
set(1,'paperposition',[-.5 -.5 6.75 5.75])
subplot(2,1,1)
axis([1 10000 0 50])
h1=gca
set(h1,'xscale','log','xtick',[1 10 100 1000 10000],'ytick',[0:10:50],'xticklabel','','yticklabel','')
h1.GridAlpha =1;
h1.MinorGridAlpha =.8;
h1.GridLineStyle=':';

grid
subplot(2,1,2)
axis([1 10000 0 50])
h2=gca
set(h2,'xscale','log','xtick',[1 10 100 1000 10000],'ytick',[0:10:50],'xticklabel','','yticklabel','')
h2.GridAlpha =1;
h2.MinorGridAlpha =.8;
h2.GridLineStyle=':';
grid
print -f1 -dpdf blankbode