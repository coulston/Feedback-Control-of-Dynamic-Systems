s=tf([1 0],[1]);
sysnom=2/(s^2+2*s+2);
[ynom,t]=step(sysnom);
[y1]=step(sysnom*(s+2)/2,t);
[y2]=step(sysnom*(s+10)/10,t);

figure(1)
clf
set(1,'position',[10 10 700 500])
set(1,'papersize',[7 5])
set(1,'paperposition',[0 0 7 5])
plot(t,ynom,'b--',t,y1,'g-','linewidth',2)
set(gca,'fontsize',14)
legend('Nominal','Extra Zero at -2')
xlabel('Time (s)')
ylabel('Magnitude')
title('Step Response')
grid
print -f1 -dpdf extrazero1

figure(2)
clf
set(2,'position',[10 10 700 500])
set(2,'papersize',[7 5])
set(2,'paperposition',[0 0 7 5])
plot(t,ynom,'b--',t,y2,'g-','linewidth',2)
set(gca,'fontsize',14)
legend('Nominal','Extra Zero at -10')
xlabel('Time (s)')
ylabel('Magnitude')
title('Step Response')
grid
print -f2 -dpdf extrazero2