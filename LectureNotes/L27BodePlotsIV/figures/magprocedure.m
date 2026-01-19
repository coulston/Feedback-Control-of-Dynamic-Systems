figure(1)
clf
set(1,'position',[300 400 600 300])
axes
set(gca,'xscale','log','fontsize',14,'xtick',[.1 1 10 100 1000],'xticklabel',{'.1','1','10','100','1000'},'box','on')
axis([.1 500 -70 45])
hold on
plot(1,7.69,'.','markersize',16,'color','blue')
hold off
xlabel('\textsf{Frequency} $\omega$ \textsf{(rad/s)}')
ylabel('\textsf{Magnitude (dB)}')
grid

plotpdftex(1,['magprocedure1'],[1.4 1])

figure(2)
clf
set(2,'position',[300 400 600 300])
axes
set(gca,'xscale','log','fontsize',14,'xtick',[.1 1 10 100 1000],'xticklabel',{'.1','1','10','100','1000'},'box','on')
axis([.1 500 -70 45])
hold on
plot(1,7.69,'.','markersize',16,'color','blue')
line([.1 1],[47.69 7.69 ],'linewidth',3,'color','blue')
hold off
xlabel('\textsf{Frequency} $\omega$ \textsf{(rad/s)}')
ylabel('\textsf{Magnitude (dB)}')
grid

plotpdftex(2,['magprocedure2'],[1.4 1])


figure(3)
clf
set(3,'position',[300 400 600 300])
axes
set(gca,'xscale','log','fontsize',14,'xtick',[.1 1 10 100 1000],'xticklabel',{'.1','1','10','100','1000'},'box','on')
axis([.1 500 -70 45])
hold on
plot(1,7.69,'.','markersize',16,'color','blue')
line([.1 1],[47.69 7.69 ],'linewidth',3,'color','blue')
line([1 10],[7.69 7.69-20],'linewidth',3,'color','blue')
hold off
xlabel('\textsf{Frequency} $\omega$ \textsf{(rad/s)}')
ylabel('\textsf{Magnitude (dB)}')
grid

plotpdftex(3,['magprocedure3'],[1.4 1])

figure(4)
clf
set(4,'position',[300 400 600 300])
axes
set(gca,'xscale','log','fontsize',14,'xtick',[.1 1 10 100 1000],'xticklabel',{'.1','1','10','100','1000'},'box','on')
axis([.1 500 -70 45])
hold on
plot(1,7.69,'.','markersize',16,'color','blue')
line([.1 1],[47.69 7.69 ],'linewidth',3,'color','blue')
line([1 10],[7.69 7.69-20],'linewidth',3,'color','blue')
line([10 50],[-12.31 -54.25],'linewidth',3,'color','blue')
line([50 200],[-54.25 -78.34],'linewidth',3,'color','blue')
hold off
xlabel('\textsf{Frequency} $\omega$ \textsf{(rad/s)}')
ylabel('\textsf{Magnitude (dB)}')
grid

plotpdftex(4,['magprocedure4'],[1.4 1])


