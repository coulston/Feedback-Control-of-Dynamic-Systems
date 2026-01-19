sys=tf([45],[1 2 2.25^2])
[y,t]=step(sys,5);
y = y+.1*randn(size(y));
figure(1)
set(gca,'fontsize',14)
set(1,'position',[50 50 500 400])
set(1,'papersize',[5 4])
set(1,'paperposition',[0 0 5 4])
plot(t,y,'linewidth',2)
xlabel('Time (s)')
ylabel('Voltage (V)')
grid


sys=tf([12],[1 5])
[y,t]=step(sys,2);
y = 2+y+.1*randn(size(y));
figure(2)
set(gca,'fontsize',14)
set(2,'position',[50 50 500 400])
set(2,'papersize',[5 4])
set(2,'paperposition',[0 0 5 4])
plot(t,y,'linewidth',2)
xlabel('Time (s)')
ylabel('Distance  (m)')
grid

print -f1 -dpdf prob1a
print -f2 -dpdf prob1b
