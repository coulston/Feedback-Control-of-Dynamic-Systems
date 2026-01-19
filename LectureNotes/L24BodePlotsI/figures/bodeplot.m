sys=tf([1],[1 1]);

figure(1)
set(1,'position',[300 400 600 300])
set(1,'papersize',[6 3])
set(1,'paperposition',[0 0 6 3])
clf
ha=axes;
[mag,phase]=bode(sys,[.01 .1 1 10 100]);
mag=squeeze(mag);
semilogx([.01 .1 1 10 100],20*log10(mag),'.','markersize',20);
hold on
[mag,phase,w]=bode(sys);
mag=squeeze(mag);
semilogx(w,20*log10(mag),'-','linewidth',2);
axis([.01 100 -45 5]);
set(gca,'xtick',[.01 .1 1 10 100],'xticklabel',{'$.01\sigma$','$.1\sigma$','$\sigma$','$10\sigma$','$100\sigma$'},'fontsize',14);
set(gca,'ytick',[-40 -30 -20 -10 0],'yticklabel',{'\tiny$20\log_{10}K-40$','\tiny$20\log_{10}K-30$','\tiny$20\log_{10}K-20$','\tiny$20\log_{10}K-10$','\tiny$20\log_{10}K$'},'fontsize',14);
xlabel('\textsf{Frequency} $\omega$ (\textsf{rad/s})')
ylabel('~')
grid

plotpdftex(1,'bodeplot',[1.4 1])

figure(2)
set(2,'position',[300 400 600 300])
set(2,'papersize',[6 3])
set(2,'paperposition',[0 0 6 3])
clf
ha=axes;
[mag,phase]=bode(sys,[.01 .1 1 10 100]);
phase=squeeze(phase);
semilogx([.01 .1 1 10 100],phase,'.','markersize',20);
hold on
[mag,phase,w]=bode(sys);
phase=squeeze(phase);
semilogx(w,phase,'-','linewidth',2);
axis([.01 100 -100 10]);
set(gca,'xtick',[.01 .1 1 10 100],'fontsize',14,'ytick',[-90 -45 0],'xticklabel',{'$.01\sigma$','$.1\sigma$','$\sigma$','$10\sigma$','$100\sigma$'});
xlabel('\textsf{Frequency} $\omega$ (\textsf{rad/s})')
ylabel('\textsf{Phase (degrees)}')
grid

plotpdftex(2,'bodeplotphase',[1.4 1])
