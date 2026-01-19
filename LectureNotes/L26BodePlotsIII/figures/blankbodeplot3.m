figure(1)
set(1,'position',[300 400 600 300])
set(1,'papersize',[6 3])
set(1,'paperposition',[0 0 6 3])
clf
ha=axes;
set(gca,'xscale','log')
%set(gca,'xtick',[.1 1 10 100 1000],'xticklabel',{'$.1$','$1$','$10$','$100$','$1000$'},'fontsize',14);
set(gca,'xtick',[.01 .1 1 10 100 1000],'xticklabel',{'.01','.1','1','10','100','1000'},'fontsize',14);
set(gca,'ytick',[-40 -20 0 20]);
axis([.01 1000 -40 20]);
%xlabel('\textsf{Frequency} $\omega$ (\textsf{rad/s})')
%ylabel('\textsf{Magnitude (dB)}')
xlabel('Frequency \omega (rad/s)')
ylabel('Magnitude (dB)')
grid

%plotpdftex(1,'blankbodeplot',[1.4 1])


figure(2)
set(2,'position',[300 400 600 300])
set(2,'papersize',[6 3])
set(2,'paperposition',[0 0 6 3])
clf
ha=axes;
axis([.01 1000 0 180]);
set(gca,'xscale','log')
set(gca,'xtick',[.01 .1 1 10 100 1000],'xticklabel',{'.01','.1','1','10','100','1000'},'fontsize',14);
set(gca,'ytick',[0 45 90 135 180]);
%set(gca,'xtick',[.1 1 10 100 1000],'fontsize',14,'ytick',)
%xlabel('\textsf{Frequency} $\omega$ (\textsf{rad/s})')
%ylabel('\textsf{Phase (degrees)}')
xlabel('\omega (rad/s)')
ylabel('Phase (degrees)')
grid

%plotpdftex(2,'blankbodeplotphase',[1.4 1])

