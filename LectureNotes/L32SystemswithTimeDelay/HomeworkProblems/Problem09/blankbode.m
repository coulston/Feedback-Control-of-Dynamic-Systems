figure(1)
clf
set(1,'papersize',[6 5])
set(1,'paperposition',[-.5 -.5 6.75 5.75])
subplot(2,1,1)
axis([1 1000 0 40])
h1=gca
set(h1,'xscale','log','xtick',[1 10 100 1000],'ytick',[0:10:40],'xticklabel','','yticklabel','')
grid
ax = gca;
ax.GridAlpha =1;
ax.MinorGridAlpha =.8;
ax.GridLineStyle=':';

subplot(2,1,2)
axis([1 1000 0 40])
h2=gca
set(h2,'xscale','log','xtick',[1 10 100 1000],'ytick',[0:10:40],'xticklabel','','yticklabel','')
grid
ax = gca;
ax.GridAlpha =1;
ax.MinorGridAlpha =.8;
ax.GridLineStyle=':';
print -f1 -dpdf blankbode