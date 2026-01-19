sys=tf([1 4],poly([0 -8 -4+4j -4-4j]))
[p,z]=pzmap(sys)
figure(1)
clf
set(1,'position',[10 10 500 400])
set(1,'papersize',[5 4])
set(1,'paperposition',[0 0 5 4])
hold on
axis([-10 2 -8 8])
line([0 0],[-8 8],'color','k')
line([-10 2],[0 0],'color','k')
plot(p,'x','markersize',14)
plot(z+.00001j,'o','markersize',14)
hold off
grid
set(gca,'fontsize',14)
xlabel('Real Axis')
ylabel('Imaginary Axis')
print -f1 -dpdf polezeromap