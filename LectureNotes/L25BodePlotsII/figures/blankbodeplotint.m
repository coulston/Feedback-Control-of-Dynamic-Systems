figure(1)
set(1,'position',[300 400 600 300])
set(1,'papersize',[6 3])
set(1,'paperposition',[0 0 6 3])
clf
ha=axes;
set(gca,'xscale','log')
set(gca,'xtick',[.01 .1 1 10 100],'xticklabel',{'$.01$','$.1$','$1$','$10$','$100$'},'fontsize',14);
set(gca,'ytick',[-60 -40 -20 0],'yticklabel',{'','$20\log_{10}K-20n$','$20\log_{10}K$',''});
axis([.01 100 -60 0]);
xlabel('\textsf{Frequency} $\omega$ (\textsf{rad/s})')
%ylabel('\textsf{Magnitude} (dB)')
grid

plotpdftex(1,'blankbodeplotint',[1.4 1])


figure(2)
set(2,'position',[300 400 600 300])
set(2,'papersize',[6 3])
set(2,'paperposition',[0 0 6 3])
clf
ha=axes;
axis([.01 100 -90 0]);
set(gca,'xscale','log')
set(gca,'xtick',[.01 .1 1 10 100 ],'fontsize',14,'ytick',[-90 -45 0],'yticklabel',{'','   $-90n$',''})
set(gca,'xticklabel',{'$.01$','$.1$','$1$','$10$','$100$'});
xlabel('\textsf{Frequency} $\omega$ (\textsf{rad/s})')
%ylabel('\textsf{Phase (degrees)}')
grid

plotpdftex(2,'blankbodeplotintphase',[1.4 1])

