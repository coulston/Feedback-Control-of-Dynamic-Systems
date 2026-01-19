clear all
syslist{1}=tf(160*[1 1],conv([1 3 4],[1 10]));
ax{1,1}=[-70 50];
ax{1,2}=[-180 90];
yticklist{1,1}=-60:20:40;
yticklist{1,2}=-180:45:90;
omega=logspace(log10(.05),log10(200),50);

for i=1:1,
    sys=syslist{i}
[mag,phase,w]=bode(sys,omega);

figure(1)
set(1,'position',[300 400 600 300])
set(1,'papersize',[6 3])
set(1,'paperposition',[0 0 6 3])
clf
ha=axes;
mag=squeeze(mag);
semilogx(w,20*log10(mag),'-','linewidth',2);
axis([.05 200 ax{i,1}]);
set(gca,'xtick',[.1 1 10 100],'xticklabel',{'$.1$','$1$','$10$','$100$'},'fontsize',14);
set(gca,'ytick',yticklist{i,1});
xlabel('\textsf{Frequency} $\omega$ (\textsf{rad/s})')
ylabel('\textsf{Magnitude (dB)}')
grid

plotpdftex(1,['examplebodeplot_1'],[1.4 1])

figure(2)
set(2,'position',[300 400 600 300])
set(2,'papersize',[6 3])
set(2,'paperposition',[0 0 6 3])
clf
ha=axes;
phase=squeeze(phase);
semilogx(w,phase,'-','linewidth',2)
axis([.05 200 ax{i,2}]);
set(gca,'xtick',[.1 1 10 100],'xticklabel',{'$.1$','$1$','$10$','$100$'},'fontsize',14);
set(gca,'ytick',yticklist{i,2});
xlabel('\textsf{Frequency} $\omega$ (\textsf{rad/s})')
ylabel('\textsf{Phase (deg)}')
grid

plotpdftex(2,['examplebodeplot_2'],[1.4 1])


end