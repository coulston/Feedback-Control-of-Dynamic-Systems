sys=tf([.0002],poly([-.01+.01j -.01-.01j]))
figure(1)
clf
set(1,'position',[10 10 500 400])
set(1,'papersize',[5 4])
set(1,'paperposition',[0 0 5 4])
[y,t]=step(sys,1000);
y=[zeros(10,1);y];
dt=t(2)-t(1);
t=[(-10*dt:dt:-dt)';t];
subplot(2,1,1)
plot(t,(t>=0)+68,'-g','linewidth',2)
set(gca,'fontsize',14)
axis([min(t) max(t) 68 69.5])
ylabel('Temperature (deg)')
legend('Input: Setpoint')
subplot(2,1,2)
plot(t,y+68,'linewidth',2)
axis([min(t) max(t) 68 69.5])
set(gca,'fontsize',14)
legend('Output: Room Temperature ')
xlabel('Time (s)')
ylabel('Temperature (deg)')
print -f1 -dpdf tempstepresponse.pdf
