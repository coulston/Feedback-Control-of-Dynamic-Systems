sys=tf([2],[1 2 2])
figure(1)
clf
set(1,'position',[10 10 500 400])
set(1,'papersize',[5 4])
set(1,'paperposition',[.1 .1 4.9 3.9])
[y,t]=step(sys*tf([1],[1 0]),20);
y=[zeros(10,1);y];
dt=t(2)-t(1);
t=[(-10*dt:dt:-dt)';t];

subplot(2,1,1)
plot(t,t.*(t>=0),'g-','linewidth',2)
set(gca,'fontsize',14)
legend('Input: Target Position','Location','Northwest')
ylabel('Position (m)')
axis([min(t) max(t) 0 20])

subplot(2,1,2)
plot(t,y,'linewidth',2)
axis([min(t) max(t) 0 20])
set(gca,'fontsize',14)
legend('Output: Antenna Position','Location','Northwest')
xlabel('Time (s)')
ylabel('Position (m)')
print -f1 -dpdf antennarampresponse.pdf
