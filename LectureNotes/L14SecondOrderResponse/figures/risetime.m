figure(1)
clf
set(1,'position',[10 10 600 400])
set(1,'papersize',[6 4])
set(1,'paperposition',[0 0 6 4])
zeta=.5;
omegalist=[1 2];
stylelist={'-','--'};
colorlist={'b','g'};
ylist=[];
i=1;
for omega=omegalist,
 sys=tf([omega^2],[1 2*zeta*omega omega^2])
 [y,t]=step(sys,12);
plot(t,y,'linewidth',2,'color',colorlist{i},'linestyle',stylelist{i})
i=i+1;
hold on
end;
hold off
xlabel('Time (s)')
legend('$\omega=1$ \','$\omega=2$ \');
set(gca,'fontsize',14)
plotpdftex(1,'risetime1',[1.4 1])


figure(2)
clf
set(2,'position',[10 10 600 400])
set(2,'papersize',[6 4])
set(2,'paperposition',[0 0 6 4])
omega=1;
zetalist=[.1 .5 .7 1];
stylelist={'-','--','-.',':'};
colorlist={'b','r','g','c'};
ylist=[];
i=1;
for zeta=zetalist,
 sys=tf([omega^2],[1 2*zeta*omega omega^2])
 [y,t]=step(sys,12);
plot(t,y,'linewidth',2,'color',colorlist{i},'linestyle',stylelist{i})
i=i+1;
hold on
end;
hold off
set(gca,'fontsize',14)
axis([0 12 0 2.2])
legend('$\zeta=.1$','$\zeta=.5$','$\zeta=.7$','$\zeta=1$\,');
xlabel('Normalized Time ($t_n$)')
plotpdftex(2,'risetime2',[1.4 1])
 