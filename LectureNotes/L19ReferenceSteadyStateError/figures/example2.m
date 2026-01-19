figure(1)
clf
set(1,'position',[10 10 600 400])
set(1,'papersize',[6 4])
set(1,'paperposition',[0 0 6 4])
sys=tf([10],[1 3 15 0])
[y,t]=step(sys,5);
plot(t,t,'b-',t,y,'g-','linewidth',2)
legend('reference','system output')
print -dpdf -f1 example2

figure(2)
clf
set(2,'position',[10 10 600 400])
set(2,'papersize',[6 4])
set(2,'paperposition',[0 0 6 4])
sys=tf([10],[1 3 5 10 0])
[y,t]=step(sys,10);
plot(t,t,'b-',t,y,'g-','linewidth',2)
legend('reference','system output','location','northwest')
print -dpdf -f2 example2b