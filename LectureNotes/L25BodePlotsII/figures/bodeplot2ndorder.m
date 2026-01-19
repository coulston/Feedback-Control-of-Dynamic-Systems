
figure(1)
clf
ha=axes;
set(1,'position',[350 400 600 300])
set(1,'papersize',[6 3])
set(1,'paperposition',[.05 .05 5.96 2.95])
set(gca,'xscale','log')
a=get(gca,'position')
a(2)=.2;
a(4)=.7;
set(gca,'position',a)
hold on
omegan=1;
for i=1:3:10,
    zeta=0.1*i,
    sys=tf([omegan^2],[1 2*zeta*omegan omegan^2])
    [mag,phase,w]=bode(sys);
    mag=squeeze(mag);
    phase=squeeze(phase);
    semilogx(w,20*log10(mag),'-b','linewidth',2);
end;
text(.7,-20,'$\zeta=1$','interpreter','latex','horizontalalignment','right','fontsize',14)
arrow([.7 -16],[1.5 -10],'length',5)
text(.6,-9,'$\zeta=.7$','interpreter','latex','horizontalalignment','right','fontsize',14)
arrow([.6 -6],[1 -3],'length',5)
text(.4,10,'$\zeta=.4$','interpreter','latex','horizontalalignment','right','fontsize',14)
arrow([.4 7],[.8 3],'length',5)
text(2,10,'$\zeta=.1$','interpreter','latex','fontsize',14)
arrow([2 7],[1.3 4],'length',5)
    axis([.01 100 -65 20]);
    set(gca,'box','on','xtick',[.01 .1 1 10 100],'ytick',[-60 -40 -20 0],'xticklabel',{'.01\omega_{\itn}','.1\omega_{\itn}','\omega_{\itn}','10\omega_{\itn}','100\omega_{\itn}'},'fontsize',14);
xlabel('Frequency $\omega$ (rad/s)','interpreter','latex')
ylabel('Magnitude (dB)','interpreter','latex')
grid
set(gca,'fontname','times')
%plotpdftex(1,'bodeplot2ndorder',[1.4 1])
print -f1 -dpdf bodeplot2ndorder

figure(2)
clf
ha=axes;
set(2,'position',[350 400 600 300])
set(2,'papersize',[6 3])
set(2,'paperposition',[.05 .05 5.96 2.95])
set(gca,'xscale','log')
a=get(gca,'position')
a(2)=.2;
a(4)=.7;
set(gca,'position',a)
hold on
omegan=1;
for i=1:3:10,
    zeta=0.1*i;
    omega=logspace(-2,2,50);
    sys=tf([omegan^2],[1 2*zeta*omegan omegan^2])
    [mag,phase,w]=bode(sys,omega);
    mag=squeeze(mag);
    phase=squeeze(phase);
    semilogx(w,phase,'-b','linewidth',2);
end;
text(.2,-80,'$\zeta=1$','interpreter','latex','horizontalalignment','right','fontsize',14)
arrow([.2 -68],[.4 -50],'length',5)
text(.17,-47,'$\zeta=.7$','interpreter','latex','horizontalalignment','right','fontsize',14)
arrow([.17 -45],[.4 -35],'length',5)
text(1.4,-10,'$\zeta=.4$','interpreter','latex','fontsize',14)
arrow([1.3 -10],[.45 -20],'length',5)
text(2,-50,'$\zeta=.1$','interpreter','latex','fontsize',14)
arrow([1.8 -50],[1 -45],'length',5)
    axis([.01 100 -200 10]);
    set(gca,'box','on','xtick',[.01 .1 1 10 100],'ytick',[-180 -90 0],'xticklabel',{'.01\omega_{\itn}','.1\omega_{\itn}','\omega_{\itn}','10\omega_{\itn}','100\omega_{\itn}'},'fontsize',14);
    xlabel('Frequency $\omega$ (rad/s)','interpreter','latex')
ylabel('Phase (deg)','interpreter','latex')
grid
set(gca,'fontname','times')
print -f2 -dpdf bodeplot2ndorderphase
%plotpdftex(2,'bodeplot2ndorderphase',[1.4 1])
