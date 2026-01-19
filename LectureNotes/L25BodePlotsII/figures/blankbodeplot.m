figure(1)
set(1,'position',[300 400 600 300])
set(1,'papersize',[6 3])
set(1,'paperposition',[0 0 6 3])
clf
ha=axes;
set(gca,'xscale','log')
%set(gca,'xtick',[.1 1 10 100 1000],'xticklabel',{'$.1$','$1$','$10$','$100$','$1000$'},'fontsize',14);
set(gca,'xtick',[.1 1 10 100 1000],'xticklabel',{'.1','1','10','100','1000'},'fontsize',14);
set(gca,'ytick',[-120 -100 -80 -60 -40 -20]);
axis([.1 1000 -120 -20]);
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
axis([.1 1000 -180 0]);
set(gca,'xscale','log')
set(gca,'xtick',[.1 1 10 100 1000],'fontsize',14,'ytick',[-180 -135 -90 -45 0])
%set(gca,'xticklabel',{'$.1$','$1$','$10$','$100$','$1000$'});
set(gca,'xticklabel',{'.1','1','10','100','1000'});
%xlabel('\textsf{Frequency} $\omega$ (\textsf{rad/s})')
%ylabel('\textsf{Phase (degrees)}')
xlabel('\omega (rad/s)')
ylabel('Phase (degrees)')
grid

%plotpdftex(2,'blankbodeplotphase',[1.4 1])

